Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F36CBC637
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 13:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ucaeiVpPeAvGlbcGPWkx/A5EPCSvZ5IWl/9a1HHQWU=; b=Vu2apYUzVI9a4G
	s9Xv5qgcaQ6iwHu0WnC2vCB0b8HrQ+NMzTrQWKTujLhJyd+L6urdf7pj547I0f/t5jBMuWAZpEb8v
	97LPfLQy7RO9QLzuIECkAEoXD3E6QS5sSwbv1RhTGyzlhsClRcxolSUsYCNSU7Q/+4YCVv91t+Bz8
	pHA9kUvE/fqxspRRRLoXMlTJa2OYCPPhUL78uAQcgipqT8aIEc9RpFIrvGueP/2fcTD9Ukx7jrI5N
	YrBe+LPQgaI26KFQwRRgH11pc9fv2OQhbpZUYYEb26/KkUHSgaT8pwG+nvTq/tRksni4hu16Apb4P
	WYN43TZRmrI2L+CStaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiet-0008Ja-IJ; Tue, 24 Sep 2019 11:07:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCieb-0008JB-Ma
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 11:06:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 32D60AE39;
 Tue, 24 Sep 2019 11:06:40 +0000 (UTC)
Date: Tue, 24 Sep 2019 13:06:39 +0200
From: Petr Tesarik <ptesarik@suse.cz>
To: Sergey Brutyan <sergey_brutyan@ehayq.am>
Subject: Re: ARM core blob list
Message-ID: <20190924130639.5485a21a@ezekiel.suse.cz>
In-Reply-To: <214b72fe-3162-6c7b-dd6a-ddba9e5851ce@gmx.net>
References: <7c52fab5-825a-b019-ec46-6fb731336cfe@ehayq.am>
 <214b72fe-3162-6c7b-dd6a-ddba9e5851ce@gmx.net>
Organization: SUSE Linux, s.r.o.
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_040645_884409_EB1CA46C 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMCBTZXAgMjAxOSAxODozNjo1MCArMDIwMApTdGVmYW4gV2FocmVuIDx3YWhyZW5z
dEBnbXgubmV0PiB3cm90ZToKCj4gSGkgU2VyZ2V5LAo+IAo+IEFtIDIwLjA5LjE5IHVtIDEyOjE1
IHNjaHJpZWIgU2VyZ2V5IEJydXR5YW46Cj5bLi4uXQo+ID4gwqDCoMKgIEJyb2FkY29tIEJDTTI4
MzcgIAo+IAo+IGhlcmUgaXMgdGhlIGxpc3QgZm9yIExpbnV4IDUuMzoKPiAKPiBjcHVmcmVxL3Jh
c3BiZXJyeXBpLWNwdWZyZXEuYwo+IGdwaW8vZ3Bpby1yYXNwYmVycnlwaS1leHAuYwo+IGNsay9i
Y20vY2xrLXJhc3BiZXJyeXBpLmMKPiBzdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1hdWRp
by9iY20yODM1LXBjbS5jCj4gc3RhZ2luZy92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9h
cm0vdmNoaXFfYXJtLmMKPiBzdGFnaW5nL3ZjMDRfc2VydmljZXMvYmNtMjgzNS1jYW1lcmEvbW1h
bC12Y2hpcS5jCj4gZmlybXdhcmUvcmFzcGJlcnJ5cGkuYwo+IGh3bW9uL3Jhc3BiZXJyeXBpLWh3
bW9uLmMKPiBzb2MvYmNtL3Jhc3BiZXJyeXBpLXBvd2VyLmMgKCopCj4gCj4gKCopIFRoZXJlIGlz
IGFscmVhZHkgYSBibG9iLWZyZWUgZHJpdmVyIGNhbGxlZCBzb2MvYmNtL2JjbTI4MzUtcG93ZXIu
YywKPiBidXQgaXQgc3RpbGwgbmVlZHMgaW1wcm92ZW1lbnRzLgo+IAo+IFNpbmNlIHRoZSBBUk0g
Y29yZXMgZG9lc24ndCBoYXZlIGZ1bGwgYWNjZXNzLCBpdCBtYXkgbm90IHBvc3NpYmxlIHRvCj4g
cmVwbGFjZSBhbGwgdGhlc2UgZHJpdmVycy4gQW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2ggZm9yIGJs
b2ItZnJlZW5lc3Mgb24KPiBCQ00yODM3IHdvdWxkIGJlIGFuIG9wZW4gVkM0IGZpcm13YXJlIFsx
XS4KPiAKPiBbMV0gLSBodHRwczovL2dpdGh1Yi5jb20vY2hyaXN0aW5hYS9ycGktb3Blbi1maXJt
d2FyZQoKVGhpcyBwcm9qZWN0IGhhcyBiZWVuIG9uIGhvbGQuIE5vdGUgdGhhdCB0aGUgVkM0IHBs
YXRmb3JtIGl0c2VsZiBpcwpyZXZlcnNlLWVuZ2luZWVyZWQsIGFuZCB0aGVyZSBpcyBubyBvZmZp
Y2lhbCBzdXBwb3J0IGluIGJpbnV0aWxzIGFuZApnY2MsIGFsdGhvdWdoIGl0IG1pZ2h0IGJlIHBv
c3NpYmxlIHRvIHJlYmFzZSB0aGUgZXhpc3RpbmcgY29kZSBvbiBhCm1vcmUgY3VycmVudCB2ZXJz
aW9uLgoKQW5vdGhlciBjYXZlYXQgaXMgdGhhdCB0aGUgYWJvdmUgZmlybXdhcmUgcHJvamVjdCB3
YXMgbWVhbnQgdG8gYmUKbG9hZGVkIGRpcmVjdGx5IGJ5IHRoZSBST00gY29kZSwgaS5lLiBpdCB3
b3VsZCByZXBsYWNlIGJvb3Rjb2RlLmJpbiBvbgphIFJQaTMuIFdpdGggUlBpNCwgdGhpcyBjb2Rl
IGhhcyBtb3ZlZCBpbnRvIHRoZSBFRVBST00gYW5kIHJlcXVpcmVzIGEKc2lnbmF0dXJlLCBvdGhl
cndpc2UgdGhlIFJPTSBjb2RlIHdpbGwgcmVmdXNlIHRvIHJ1biBpdC4KCkFGQUlDVCBpdCBzaG91
bGQgYmUgcG9zc2libGUgdG8gYnVpbGQgdGhlIG9wZW4gZmlybXdhcmUgYXMgc3RhcnQuZWxmIG9y
CnN0YXJ0NC5lbGYsIHdoaWNoIG5lZWQgbm90IGJlIHNpZ25lZC4KCklmIHlvdSdyZSBzdGlsbCBp
bnRlcmVzdGVkLCBmZWVsIGZyZWUgdG8gY29udGFjdCBtZS4KCkdvb2QgbHVjayEKUGV0ciBUCgo+
IEdvb2QgbHVjawo+IAo+IFN0ZWZhbgo+IAo+ID4gwqDCoMKgIFJlYWx0ZWsgUlREMTM5NQo+ID4g
wqDCoMKgIE1lZGlhVGVrIE1UNzYyM04KPiA+Cj4gPgo+ID4gQW5kIGFsc28gcGxlYXNlIG9mZmVy
IHVzIHdoaWNoIGlzIHRoZSBiZXN0IFNvQyBmb3IgYmxvYi1mcmVlIGxpbnV4Cj4gPiBkZXZlbG9w
bWVudC4KPiA+Cj4gPiBCZXN0IHJlZ2FyZHMuIFNlcmdleS4KPiA+Cj4gPgo+ID4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
PiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbCAgCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
