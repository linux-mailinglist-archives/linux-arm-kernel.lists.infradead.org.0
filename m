Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC4B18CB8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:26:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9WKJ1Fi2LtUTjn59PR3jy+Ei6cnM0w92ioJwZtFHgzs=; b=e9kjV8XUB2wPEboLeKQAG2Puy
	AVrG6JhUsVqWNqnppTcw+WwByndBFwly7vVrr2oxl91fKDNKqE1rmRr9JoHR8uVqlannTTQ5sqcnL
	kcSgo2uoeX+313dryYMCT4cv0lH2Cv4PEuBLzkHRZIbev6A8PrezsyGg1ltLxYVUYivJkjBZwVqub
	7yAUJB8hU3AXczwl1JcGLbXzJNntq2v36XsVRra3FDEXgVfNzlZrIZQ8f0B/q+YUvTvkU/VYZQUvc
	tOH9J+V9qxDOt74GDXUKd02Hr25dlISha2/uebG/1xHpQGd6QwDhdelPhCelGukdQP10Nuw5ghoiB
	XG0D3z8pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFErF-0007Ys-En; Fri, 20 Mar 2020 10:26:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFEr4-0007Xj-Hl; Fri, 20 Mar 2020 10:26:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D07DD31B;
 Fri, 20 Mar 2020 03:26:17 -0700 (PDT)
Received: from [10.57.21.157] (unknown [10.57.21.157])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3C1B83F305;
 Fri, 20 Mar 2020 03:26:13 -0700 (PDT)
Subject: Re: [PATCH 2/2] Documentation/vmcoreinfo: Add documentation for
 'KERNELPACMASK'
To: John Donnelly <John.P.Donnelly@Oracle.com>,
 linux-arm-kernel@lists.infradead.org
References: <1584603551-23845-1-git-send-email-amit.kachhap@arm.com>
 <1584603551-23845-2-git-send-email-amit.kachhap@arm.com>
 <5235269c-e3c7-efff-6083-a05a39699735@Oracle.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <3d8eb414-c70c-f97b-b2e0-376ebd99403c@arm.com>
Date: Fri, 20 Mar 2020 15:56:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5235269c-e3c7-efff-6083-a05a39699735@Oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_032618_633449_D2B65E84 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzLzE5LzIwIDc6MjEgUE0sIEpvaG4gRG9ubmVsbHkgd3JvdGU6Cj4gT24gMy8xOS8y
MCAyOjM5IEFNLCBBbWl0IERhbmllbCBLYWNoaGFwIHdyb3RlOgo+PiBBZGQgZG9jdW1lbnRhdGlv
biBmb3IgS0VSTkVMUEFDTUFTSyB2YXJpYWJsZSBiZWluZyBhZGRlZCB0byB2bWNvcmVpbmZvLgo+
Pgo+PiBJdCBpbmRpY2F0ZXMgdGhlIFBBQyBiaXRzIG1hc2sgaW5mb3JtYXRpb24gb2Ygc2lnbmVk
IGtlcm5lbCBwb2ludGVycyBpZgo+PiBBUk12OC4zLUEgUG9pbnRlciBBdXRoZW50aWNhdGlvbiBm
ZWF0dXJlIGlzIHByZXNlbnQuCj4+Cj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFy
aW5hc0Bhcm0uY29tPgo+PiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4gQ2M6
IE1hcmsgUnV0bGFuZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+IENjOiBKYW1lcyBNb3JzZSA8
amFtZXMubW9yc2VAYXJtLmNvbT4KPj4gQ2M6IERhdmUgQW5kZXJzb24gPGFuZGVyc29uQHJlZGhh
dC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEFtaXQgRGFuaWVsIEthY2hoYXAgPGFtaXQua2FjaGhh
cEBhcm0uY29tPgo+PiAtLS0KPj4gwqAgRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVtcC92
bWNvcmVpbmZvLnJzdCB8IDYgKysrKysrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAv
dm1jb3JlaW5mby5yc3QgCj4+IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9rZHVtcC92bWNv
cmVpbmZvLnJzdAo+PiBpbmRleCAwMDdhNmI4Li41Y2MzZWU2IDEwMDY0NAo+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2FkbWluLWd1aWRlL2tkdW1wL3ZtY29yZWluZm8ucnN0Cj4+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vYWRtaW4tZ3VpZGUva2R1bXAvdm1jb3JlaW5mby5yc3QKPj4gQEAgLTM5Myw2ICsz
OTMsMTIgQEAgS0VSTkVMT0ZGU0VUCj4+IMKgIFRoZSBrZXJuZWwgcmFuZG9taXphdGlvbiBvZmZz
ZXQuIFVzZWQgdG8gY29tcHV0ZSB0aGUgcGFnZSBvZmZzZXQuIElmCj4+IMKgIEtBU0xSIGlzIGRp
c2FibGVkLCB0aGlzIHZhbHVlIGlzIHplcm8uCj4+ICtLRVJORUxQQUNNQVNLCj4+ICstLS0tLS0t
LS0tLS0tCj4+ICsKPj4gK0luZGljYXRlcyB0aGUgUEFDIGJpdHMgbWFzayBpbmZvcm1hdGlvbiBp
ZiBQb2ludGVyIEF1dGhlbnRpY2F0aW9uIGlzCj4+ICtlbmFibGVkIGFuZCBhZGRyZXNzIGF1dGhl
bnRpY2F0aW9uIGZlYXR1cmUgaXMgcHJlc2VudC4KPj4gKwo+PiDCoCBhcm0KPj4gwqAgPT09Cj4+
Cj4+Cj4gCj4gCj4gSGksCj4gCj4gRG9lcyB0aGlzIHJlcXVpcmUgY2hhbmdlcyB0byB0aGXCoCBt
YWtlZHVtcGZpbGUgb3IgY3Jhc2ggdXRpbGl0aWVzID8KCkkgZGlkIHRoZSBjb3JyZXNwb25kaW5n
IGNoYW5nZSBpbiBjcmFzaCB0b29sLiBUaGUgbGluayBpcyBtZW50aW9uZWQgaW4gCmZpcnN0IHBh
dGNoIG9mIHRoZSBzZXJpZXMuCgpUaGFua3MsCkFtaXQgRGFuaWVsCj4gCj4gCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
