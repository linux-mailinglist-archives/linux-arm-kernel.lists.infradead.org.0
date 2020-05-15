Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF7D1D4E24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 14:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwfRm0QbpvGGEemMWnvJO8gwlC8+Atu6nfrgpN6kYYA=; b=Uc6N+vyFqxQmn/
	01+pLGr9HOpxCQ4mwtUv+NCD+6bItjhAMhAtX5qkXrCDpjZwCDcxcyNCLPza/jvA5ZJMkXZ5L76NB
	su5MYvREKmkI+Y+C1KTuFrCJuT6rLL33vsuuR1opTffGE5LAiDlsAZ/WeVGkOUOnYo1UkwkUspLIj
	qsSj732UwuHLYJkNxbVpBdC+MnDR3pRcDfzCMGAHphHlBWQ3YqmJ0q+IoISWHmGiq8P8ygLsHHNLE
	MA59S+4FJB2AwiMFAouI3lmIaxBSB76iPDiSh2P1yevf2WFU7Me6fN8iXUfZ9tPYHxgPK2HSKJimt
	+ysMPbymlGvTfiGwXDiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZZqh-0001qn-IJ; Fri, 15 May 2020 12:53:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZZqX-0001py-2S
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 12:53:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B96E81042;
 Fri, 15 May 2020 05:53:47 -0700 (PDT)
Received: from bogus (unknown [10.37.12.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4DAD3F305;
 Fri, 15 May 2020 05:53:45 -0700 (PDT)
Date: Fri, 15 May 2020 13:53:42 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 5/7] firmware: smccc: Refactor SMCCC specific bits
 into separate file
Message-ID: <20200515125342.GB1591@bogus>
References: <20200506164411.3284-1-sudeep.holla@arm.com>
 <20200506164411.3284-6-sudeep.holla@arm.com>
 <20200515114953.GE67718@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515114953.GE67718@C02TD0UTHF1T.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_055349_160616_72E5A1E8 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMTI6NDk6NTNQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIFdlZCwgTWF5IDA2LCAyMDIwIGF0IDA1OjQ0OjA5UE0gKzAxMDAsIFN1ZGVlcCBI
b2xsYSB3cm90ZToKPiA+IEluIG9yZGVyIHRvIGFkZCBuZXdlciBTTUNDQyB2MS4xKyBmdW5jdGlv
bmFsaXR5IGFuZCB0byBhdm9pZCBjbHV0dGVyaW5nCj4gPiBQU0NJIGZpcm13YXJlIGRyaXZlciB3
aXRoIFNNQ0NDIGJpdHMsIGxldCB1cyBtb3ZlIHRoZSBTTUNDQyBzcGVjaWZpYwo+ID4gZGV0YWls
cyB1bmRlciBkcml2ZXJzL2Zpcm13YXJlL3NtY2NjL3NtY2NjLmMKPiA+Cj4gPiBXZSBjYW4gYWxz
byBkcm9wIGNvbmR1aXQgYW5kIHNtY2NjX3ZlcnNpb24gZnJvbSBwc2NpX29wZXJhdGlvbnMgc3Ry
dWN0dXJlCj4gPiBhcyBTTUNDQyB3YXMgdGhlIHNvbGUgdXNlciBhbmQgbm93IGl0IG1haW50YWlu
cyB0aG9zZS4KPiA+Cj4gPiBObyBmdW5jdGlvbmFsaXR5IGNoYW5nZSBpbiB0aGlzIHBhdGNoIHRo
b3VnaC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xsYUBh
cm0uY29tPgo+ID4gLS0tCj4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICB8ICA5
ICsrKysrKysrKwo+ID4gIGRyaXZlcnMvZmlybXdhcmUvTWFrZWZpbGUgICAgICAgfCAgMyArKy0K
PiA+ICBkcml2ZXJzL2Zpcm13YXJlL3BzY2kvcHNjaS5jICAgIHwgMTkgKysrKy0tLS0tLS0tLS0t
LS0tLQo+ID4gIGRyaXZlcnMvZmlybXdhcmUvc21jY2MvTWFrZWZpbGUgfCAgMyArKysKPiA+ICBk
cml2ZXJzL2Zpcm13YXJlL3NtY2NjL3NtY2NjLmMgIHwgMjYgKysrKysrKysrKysrKysrKysrKysr
KysrKysKPiA+ICBpbmNsdWRlL2xpbnV4L2FybS1zbWNjYy5oICAgICAgIHwgMTEgKysrKysrKysr
KysKPiA+ICBpbmNsdWRlL2xpbnV4L3BzY2kuaCAgICAgICAgICAgIHwgIDIgLS0KPiA+ICA3IGZp
bGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+ID4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2Zpcm13YXJlL3NtY2NjL01ha2VmaWxlCj4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvZmlybXdhcmUvc21jY2Mvc21jY2MuYwo+ID4KPiA+IEhpIE1h
cmssIExvcmVuem8sCj4gPgo+ID4gSSBoYXZlIHJlcGxpY2F0ZWQgUFNDSSBlbnRyeSBpbiBNQUlO
VEFJTkVSUyBmaWxlIGFuZCBhZGRlZCBteXNlbGYgdG8KPiA+IGZvciBTTUNDQyBlbnRyeS4gSWYg
eW91IHByZWZlciBJIGNhbiBtZXJnZSBpdCB1bmRlciBQU0NJLiBMZXQgbWUga25vdwo+ID4geW91
ciBwcmVmZXJlbmNlIGFsb25nIHdpdGggb3RoZXIgcmV2aWV3IGNvbW1lbnRzLgo+Cj4gPiArU0VD
VVJFIE1PTklUT1IgQ0FMTChTTUMpIENBTExJTkcgQ09OVkVOVElPTiAoU01DQ0MpCj4gPiArTToJ
TWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPiA+ICtNOglMb3JlbnpvIFBpZXJh
bGlzaSA8bG9yZW56by5waWVyYWxpc2lAYXJtLmNvbT4KPiA+ICtNOglTdWRlZXAgSG9sbGEgPHN1
ZGVlcC5ob2xsYUBhcm0uY29tPgo+ID4gK0w6CWxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+ID4gK1M6CU1haW50YWluZWQKPiA+ICtGOglkcml2ZXJzL2Zpcm13YXJlL3NtY2Nj
Lwo+ID4gK0Y6CWluY2x1ZGUvbGludXgvYXJtLXNtY2NjLmgKPgo+IEFzIHBlciB0aGUgYWJvdmUs
IEknbSBmaW5lIHdpdGggaGF2aW5nIHRoaXMgc2VwYXJhdGUgZnJvbSB0aGUgUFNDSQo+IGVudHJ5
LCBhbmQgSSdtIGZpbmUgd2l0aCBzaGFyaW5nIHRoaXMgbWFpbnRhaW5lcnNoaXAuCj4KClRoYW5r
cy4KCj4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9hcm0tc21jY2MuaCBiL2luY2x1ZGUv
bGludXgvYXJtLXNtY2NjLmgKPgo+ID4gKy8qKgo+ID4gKyAqIGFybV9zbWNjY192ZXJzaW9uX2lu
aXQoKSAtIFNldHMgU01DQ0MgdmVyc2lvbiBhbmQgY29uZHVpdAo+ID4gKyAqIEB2ZXJzaW9uOiBT
TUNDQyB2ZXJzaW9uIHYxLjEgb3IgYWJvdmUKPiA+ICsgKiBAY29uZHVpdDogU01DQ0NfQ09ORFVJ
VF9TTUMgb3IgU01DQ0NfQ09ORFVJVF9IVkMKPiA+ICsgKgo+ID4gKyAqIFdoZW4gU01DQ0N2MS4x
IG9yIGFib3ZlIGlzIG5vdCBwcmVzZW50LCBkZWZhdWx0cyB0byBBUk1fU01DQ0NfVkVSU0lPTl8x
XzAKPiA+ICsgKiBhbmQgU01DQ0NfQ09ORFVJVF9OT05FIHJlc3BlY3RpdmVseS4KPiA+ICsgKi8K
PiA+ICt2b2lkIF9faW5pdCBhcm1fc21jY2NfdmVyc2lvbl9pbml0KHUzMiB2ZXJzaW9uLCBlbnVt
IGFybV9zbWNjY19jb25kdWl0IGNvbmR1aXQpOwo+Cj4gR2l2ZW4gd2Ugb25seSBleHBlY3QgdGhl
IFBTQ0kgY29kZSB0byBjYWxsIHRoaXMsIGNvdWxkIHdlIGF2b2lkIHB1dHRpbmcKPiB0aGlzIGlu
IGEgaGVhZGVyIGFuZCBqdXN0IGRlZmluZSBpdCB3aXRoaW4gcHNjaS5jPwo+CgpTdXJlIEkgd2ls
bCBkbyB0aGF0LCBJIHdhcyBwbGF5aW5nIG9uIHNhZmVyIHNpZGUgdG8gYXZvaWQgYW55IHRvb2xz
IHBpY2tpbmcgb24Kc3VjaCB0cml2aWFsIHRoaW5ncyDwn5iECgo+IEVpdGhlciB3YXk6Cj4KPiBB
Y2tlZC1ieTogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPgoKVGhhbmtzIGFn
YWluLgoKLS0KUmVnYXJkcywKU3VkZWVwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
