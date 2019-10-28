Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CDCE78AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 19:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9/G9+lZV8DOZ6J9R8rL7MGZhrIJFdmgFb0l7+KcJ7g=; b=t7NXQlV2LRfVk0
	CrTEr6MZACI8F9kflliitDv+Rioj5UxyiIiNEogdFKLLc/F8mQZ8J475mWgX+EStnMSaBtTKffLqm
	OazH2KJ4sFHmoWlRE8SalURYj964pcQkU8wPEEr4YNw9KiUzI5fKcEcA/G7Gv5U47EPTeMpGeZNhO
	d1P2JszakiMQSr2bAX2fXN4Uwra8g+OaBn4GJ+zsF0FYQY8LV6H3mj5p2p/37RbiHf2/NWcTAP1wN
	iVo7dJiV6KQu0eZLo+OGqNmv/8CtGfzC2YvSSin/3e9BbevEgu2tOM7IqUn4Qy/60e5CAMM+8JeYa
	lgk3zouNLsVOs6/ANSlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP9z6-0000Hk-0f; Mon, 28 Oct 2019 18:43:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP9yu-0000H3-9v
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 18:43:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B12681F1;
 Mon, 28 Oct 2019 11:43:06 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C9E543F71F; Mon, 28 Oct 2019 11:43:05 -0700 (PDT)
Date: Mon, 28 Oct 2019 18:43:03 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: FF <figure1802@126.com>
Subject: Re: about the ptep_set_access_flags() for hardware AF/DBM
Message-ID: <20191028184303.GB6619@arrakis.emea.arm.com>
References: <22add3c1.16c1.16e0ca535d4.Coremail.figure1802@126.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22add3c1.16c1.16e0ca535d4.Coremail.figure1802@126.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_114308_387923_41857C45 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, julien.grall@arm.com, will.deacon@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, steve.capper@arm.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBPY3QgMjcsIDIwMTkgYXQgMDU6NTY6MjRQTSArMDgwMCwgRkYgd3JvdGU6Cj4gaSBz
ZWUgYSBwYXRjaCwgY29tbWl0IGlkOsKgNjZkYmQ2ZTYxYTUyICJhcm02NDogSW1wbGVtZW50IHB0
ZXBfc2V0X2FjY2Vzc19mbGFncygpIGZvciBoYXJkd2FyZSBBRi9EQk0iCj4gaW4gdGhpcyBwYXRj
aCwgdGhlIGF1dGhvciBzaG93IGEgaW5zdGVyZXN0aW5nIGNhc2Ugb2YgdGhlIHJhY3kgb2YgaGFy
ZHdhcmUgQUYvREJNLgo+IAo+IEhlcmUgaXMgdGhlIHNjZW5hcmlvOgo+IEEgbW9yZSBjb21wbGV4
IHNpdHVhdGlvbiBpcyBwb3NzaWJsZSB3aGVuIGFsbCBDUFVzIHN1cHBvcnQgaGFyZHdhcmUKPiAg
ICBBRi9EQk06Cj4gCj4gICAgYSkgSW5pdGlhbCBzdGF0ZTogc2hhcmVhYmxlICsgd3JpdGFibGUg
dm1hIGFuZCBwdGVfbm9uZShwdGUpCj4gICAgYikgUmVhZCBmYXVsdCB0YWtlbiBieSB0d28gdGhy
ZWFkcyBvZiB0aGUgc2FtZSBwcm9jZXNzIG9uIGRpZmZlcmVudAo+ICAgICAgIENQVXMKPiAgICBj
KSBDUFUwIHRha2VzIHRoZSBtbWFwX3NlbSBhbmQgcHJvY2VlZHMgdG8gaGFuZGxpbmcgdGhlIGZh
dWx0LiBJdAo+ICAgICAgIGV2ZW50dWFsbHkgcmVhY2hlcyBkb19zZXRfcHRlKCkgd2hpY2ggc2V0
cyBhIHdyaXRhYmxlICsgY2xlYW4gcHRlLgo+ICAgICAgIENQVTAgcmVsZWFzZXMgdGhlIG1tYXBf
c2VtCj4gICAgZCkgQ1BVMSBhY3F1aXJlcyB0aGUgbW1hcF9zZW0gYW5kIHByb2NlZWRzIHRvIGhh
bmRsZV9wdGVfZmF1bHQoKS4gVGhlCj4gICAgICAgcHRlIGVudHJ5IGl0IHJlYWRzIGlzIHByZXNl
bnQsIHdyaXRhYmxlIGFuZCBjbGVhbiBhbmQgaXQgY29udGludWVzCj4gICAgICAgdG8gcHRlX21r
eW91bmcoKQo+ICAgIGUpIENQVTEgY2FsbHMgcHRlcF9zZXRfYWNjZXNzX2ZsYWdzKCkKPiAKPiAg
ICBJZiBiZXR3ZWVuIChkKSBhbmQgKGUpIHRoZSBoYXJkd2FyZSAoYW5vdGhlciBDUFUpIHVwZGF0
ZXMgdGhlIGRpcnR5Cj4gICAgc3RhdGUgKGNsZWFycyBQVEVfUkRPTkxZKSwgQ1BVMSB3aWxsIG92
ZXJyaWRlIHRoZSBQVFJfUkRPTkxZIGJpdAo+ICAgIG1hcmtpbmcgdGhlIGVudHJ5IGNsZWFuIGFn
YWluLgo+IAo+IG15IHF1ZXN0aW9uIGlzOgo+IDEuIGluIHN0ZXAgYSwgaXQgc2F5LCB0aGUgaW5p
dGlhbCBzdGF0ZSB2bWEgaXMgOiBzaGFyYWJsZSArIHdyaXRhYmxlICsKPiBwdGVfbm9uZS4gbGV0
IHN1cHBvc2UgdGhpcyBpcyBhIGFub24gbWFwcGluZyBieSBtbWFwKCkgQVBJLgoKV2hhdCBJIGhh
ZCBpbiBtaW5kIGF0IHRoZSB0aW1lIHdhcyBhIGZpbGUgbWFwcGluZyByYXRoZXIgdGhhbiBhbm9u
eW1vdXMKb25lICh2bWFfaXNfYW5vbnltb3VzKCkgaXMgZmFsc2UgZm9yIHNoYXJlZCBtYXBwaW5n
cykuCgo+IHNvIHRoZSB2bWEtPnZtX3BhZ2VfcHJvdCBzaG91bGQgYmUgOiBWTV9SRUFEIHwgIFZN
X1dSSVRFIHwgVk1fU0hBUkVECj4gaW4gdm1fZ2V0X3BhZ2VfcHJvdCgpLCBpdCB3aWxsIGNoYW5n
ZSB0byBwdGUgYXR0cmlidXRl77yMaW4gbGludXgKPiBrZXJuZWwgaXQgaGFzIGEgcHJvdGVjdGlv
bl9tYXBbXSBhcnJheS4gaW4gdGhhdCBjYXNlLCBpdCBzaG91bGQgYmUKPiBfX1MwMTEgKFBBR0Vf
U0hBUkVEKS4gZm9yIFBBR0VfU0hBUkVELCB0aGUgcHRlIGF0dHJpYnV0ZSB3aWxsIHNldAo+IFBU
RV9XUklURe+8jHNvIFBURV9EQk0gaXMgc2V0LCBidXQgdGhlIFBURV9SRE9OTFkgc2hvdWxkIGJl
IHplcm8sCj4gcmlnaHQ/CgpQQUdFX1NIQVJFRCBpcyBpbmRlZWQgd3JpdGFibGUgYnV0IGhvdyBp
dCBlbmRzIHVwIGluIHRoZSBwdGUgZGVwZW5kcyBvbgp0aGUgbWFwcGluZy4gRm9yIGEgc2hhcmVk
IG1lbW9yeSBtYXBwaW5nLCBJIHRoaW5rIHlvdSBkbyBnZXQgYSB3cml0YWJsZQplbnRyeSBvbiBh
IHJlYWQgZmF1bHQuCgpGb3IgZmlsZSBtYXBwaW5ncywgdGhlIHdyaXRhYmxlIGF0dHJpYnV0ZSBp
cyBjbGVhcmVkIGZyb20gdm1fcGFnZV9wcm90CnZpYSB0aGUgdm1hX3NldF9wYWdlX3Byb3QoKSBm
dW5jdGlvbiBiZWNhdXNlIHZtYV93YW50c193cml0ZW5vdGlmeSgpIGlzCnRydWUuIEZpbGVzeXN0
ZW0gbm9ybWFsbHkgd2FudCB0byB0cmFjayB3aGljaCBwYWdlcyBoYXZlIGJlZW4gZGlydGllZCB0
bwp3cml0ZSBiYWNrLgoKPiBpbiBzdGVwIGMsIENQVTAgdHJpZ2dlciByZWFkIGZhdWx0IGFuZCBo
YW5kbGUgdGhlIHBhZ2UgZmF1bHQsIGl0IHdpbGwKPiBjYWxsIGRvX2Fub255bW91c19wYWdlKCks
IGFuZCB1c2luZyAgc3lzdGVtX3plcm9fcGFnZS4gaSBkb24ndCB3aGF0IGlzCj4gYSBjbGVhbiBw
dGU/ICBidXQgY3VycmVudGx5LCB0aGUgIFBURV9SRE9OTFkgaXMgemVybywgaXQgbWVhbnMgdGhp
cwo+IHB0ZSBpcyB3cml0YWJsZS4KCk5vdGUgdGhhdCB3ZSBjYW4ndCBpbnZva2UgZG9fYW5vbnlt
b3VzX3BhZ2UoKSBmb3IgVk1fU0hBUkVEIG1hcHBpbmdzLgpUaGlzIGlzIG9ubHkgZm9yIHByaXZh
dGUgbWFwcGluZ3MuIElmIHlvdSBsb29rIGF0IG1tYXBfcmVnaW9uKCksIHRoZSB2bWEKaXMgbm90
IHNldCB1cCBhcyBhbm9ueW1vdXMgaWYgTUFQX1NIQVJFRCBpcyBnaXZlbiBidXQgYXMgYSBzaG1l
bS4KCj4gd2hlbiB0aGUgQ1BVMiB3cml0ZSB0aGlzIG1lbW9yeSwgaXQgd2lsbCB1cGRhdGUgdGhl
IGRpcnR5IHN0YXRlIGxpa2UKPiBjbGVhciBQVEVfUkRPTkxZLCBidXQgbXkgcXVlc3Rpb25zLCB0
aGUgUFRFX1JET05MWSBpcyBzdGlsbCB6ZXJvLCBpbgo+IHN0ZXAgYX5kLCBzbyB3aHkgQ1BVMSB3
aWxsIG92ZXJyaWRlIFJUX1JET05MWSBiaXQgYW5kIG1hcmtpbmcgdGhlCj4gZW50cnkgY2xlYW4g
YWdhaW4uCgpBcyBJIHNhaWQgYWJvdmUsIHRoaXMgc2NlbmFyaW8gaXMgZm9yIHNoYXJlZCBmaWxl
IG1hcHBpbmdzIHdoZXJlIHlvdSBkbwpnZXQgYSBQVEVfUkRPTkxZIHNldCBmb3IgY2xlYW4gbWFw
cGluZ3MuCgotLSAKQ2F0YWxpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
