Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C568D211
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRdWIT7MoxsRJCHi/1FgeDjpGkEMuvLDJ/leRJADNro=; b=krRvDBgpLNZOi+
	tANC6b9hIq4IVJtzKdPHoX4nvat4W3xTSh8JRxH2IlygtlVzYV8mbk2MCijRgqO5kbcY7v+KuWM61
	zQnYeuP7RneDlnxJNhzOIFzlAZdRMUiCpvwC+Clm0a3yIjSZw4QGhi8lQwW04ik9Lz8l1kCDYsHZa
	WJ9h1ORaoOfTs54kZInITNaYp5b4r2ynJM99CMlgzoe2K8znHC0mcNSton0ZDnKksuGCKKRUyMS8s
	/kfRpFTnDjS+IaNZicqXVjaK0s33Wi6Mc27X96Kahdc8Nmfv1xZHm9DdXZxqi8rlOHCaZVxSk7VK4
	qzoRunG20H8zTa5zgEuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrPD-0007Wt-Kb; Wed, 14 Aug 2019 11:25:27 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrOw-00079C-Qa
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:25:13 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 345585C0169;
 Wed, 14 Aug 2019 13:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565781907;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AG3FIHoSz/S/uC8/2eFW2H8gDg4D2SCe14To8Yfg+Dc=;
 b=H+/3PUDRznE2MvEVCJ5i3mZVSiO4GwePtNPLn4NWficXmss/i5diEK5m3mkjt5qX0Ju6yu
 GkhmLHk283XOhZHygHsQocrGKqzw27AO6z8k/NMDjvfGc8tJXvetkDJfB4BPxsOXi5K9w6
 FSbI/3pQ9LjeqkIWGG9nWJp7TJP01Yk=
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 13:25:05 +0200
From: Stefan Agner <stefan@agner.ch>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [EXT] Re: [PATCH v2 09/15] dt-bindings: display: Add max-res
 property for mxsfb
In-Reply-To: <1565781243.3209.55.camel@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-10-git-send-email-robert.chiras@nxp.com>
 <491aff3d08f24ab4d79a4f8c139d2e44@agner.ch>
 <1565781243.3209.55.camel@nxp.com>
Message-ID: <33feedd20e0fc154c5b736f882d24569@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_042511_163375_F35D9EE7 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, marex@denx.de, kernel@pengutronix.de,
 devicetree@vger.kernel.org, airlied@linux.ie, shawnguo@kernel.org,
 agx@sigxcpu.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 robh+dt@kernel.org, dl-linux-imx <linux-imx@nxp.com>, daniel@ffwll.ch,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOC0xNCAxMzoxNCwgUm9iZXJ0IENoaXJhcyB3cm90ZToKPiBIaSBTdGVmYW4sCj4g
T24gTWksIDIwMTktMDgtMTQgYXQgMTM6MDMgKzAyMDAsIFN0ZWZhbiBBZ25lciB3cm90ZToKPj4g
T24gMjAxOS0wOC0xNCAxMjo0OCwgUm9iZXJ0IENoaXJhcyB3cm90ZToKPj4gPgo+PiA+IEFkZCBu
ZXcgb3B0aW9uYWwgcHJvcGVydHkgJ21heC1yZXMnLCB0byBsaW1pdCB0aGUgbWF4aW11bSBzdXBw
b3J0ZWQKPj4gPiByZXNvbHV0aW9uIGJ5IHRoZSBNWFNGQl9EUk0gZHJpdmVyLgo+PiBJIHdvdWxk
IGFsc28gbWVudGlvbiB0aGUgcmVhc29uIHdoeSB3ZSBuZWVkIHRoaXMuCj4+Cj4+IEkgZ3Vlc3Mg
dGhpcyBuZWVkcyBhIHZlbmRvciBwcmVmaXggYXMgd2VsbCAoZnNsLG1heC1yZXMpLiBJIGFsc28K
Pj4gd291bGQKPj4gbGlrZSB0byBoYXZlIHRoZSBhY2sgb2YgdGhlIGRldmljZSB0cmVlIGZvbGtz
IGhlcmUuCj4gUm9iIEhlcnJpbmcgYWxzbyBha2VkIGJlIGFib3V0IHRoaXMsIGFuZCBJJ2xsIGNv
cHkgaGVyZSB0aGUgcmVwbHksIHdpdGgKPiBleHBsYW5hdGlvbnM6Cj4gCj4gSW5kZWVkLCB0aGlz
IGxpbWl0YXRpb24gaXMgYWN0dWFsbHkgZHVlIHRvIGJhbmR3aWR0aCBsaW1pdGF0aW9uLCBidXQK
PiB0aGUgcHJvYmxlbSBpcyB0aGF0IHRoaXMgbGltaXRhdGlvbiBjb21lcyBvbiBpLk1YOE0gKGtu
b3duIGFzIG1TY2FsZQo+IDg1MEQpLCB3aGVyZSB0aGUgbWVtb3J5IGJhbmR3aWR0aCBjYW5ub3Qg
c3VwcG9ydDogR1BVL1ZQVSB3b3JrbG9hZCBpbgo+IHRoZSBzYW1lIHRpbWUgd2l0aCBib3RoIERD
U1MgZHJpdmluZyA0a0A2MCBhbmQgZUxDRElGIGRyaXZpbmcgMTA4MHBANjAuCj4gU2luY2UgZUxD
RElGIGlzIGEgc2Vjb25kYXJ5IGRpc3BsYXkgd2UgdGhvdWdoIHRvIGFkZCB0aGUgcG9zaWJpbGl0
eSB0bwo+IGxpbWl0IGl0J3MgYmFuZHdpZHRoIGJ5IGxpbWl0aW5nIHRoZSByZXNvbHV0aW9uLgo+
IElmIHlvdSBzYXkgdGhhdCBtb3JlIGRldGFpbHMgYXJlIG5lZWRlZCwgSSBjYW4gYWRkIHRoZW0g
aW4gdGhlCj4gZGVzY3JpcHRpb24uCgpPaCBzb3JyeSBJIG1pc3NlZCB0aGF0LgoKUm9iIEhlcnJp
bmcgYWxzbyB3cm90ZToKPiBJIHN1cHBvc2Ugd2hhdCB5b3UgYXJlIGFmdGVyIGlzIGJhbmR3aWR0
aCBsaW1pdHM/IElJUkMsIHRoZXJlJ3MgYWxyZWFkeSAKPiBzb21lIGJpbmRpbmdzIGV4cHJlc3Np
bmcgc3VjaCBsaW1pdHMuIEFsc28sIHdvdWxkbid0IHlvdSBuZWVkIHRvIGFjY291bnQgCj4gZm9y
IGJwcCBhbmQgdXNpbmcgdGhlIDJuZCBwbGFuZSAoSUlSQyB0aGF0IHRoZXJlIGlzIG9uZSkuCgpJ
IGd1ZXNzIHRoZSBiaW5kaW5nIGhlIHJlZmVycyB0byBpcyBtYXgtbWVtb3J5LWJhbmR3aWR0aCwg
d2hpY2ggaXMgdXNlZAppbiBtdWx0aXBsZSBkcml2ZXIgYWxyZWFkeS4gSXQgbWFrZXMgc2Vuc2Ug
dG8gcmV1c2UgdGhpcyBwcm9wZXJ0eQppbnN0ZWFkIG9mIGludmVudGluZyBhIG5ldyBzZXQgb2Yg
cHJvcGVydHkgd2hpY2ggaXMgYWxzbyBub3QgdGFraW5nIGJwcAppbnRvIGFjY291bnQuLi4KClRo
ZSBwbDExMSBkcml2ZXIgaW1wbGVtZW50cyB0aGlzIHByb3BlcnR5LCBpdCBzaG91bGQgYmUgZmFp
cmx5IGVhc3kgdG8KYWRvcHQgdGhhdCBjb2RlLgoKLS0KU3RlZmFuCgoKCj4+Cj4+IC0tCj4+IFN0
ZWZhbgo+Pgo+PiA+Cj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2Jl
cnQuY2hpcmFzQG54cC5jb20+Cj4+ID4gLS0tCj4+ID4gwqBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQgfCA2ICsrKysrKwo+PiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L214c2ZiLnR4dAo+PiA+IGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXhzZmIudHh0Cj4+ID4gaW5kZXggNDcy
ZTFlYS4uNTVlMjJlZCAxMDA2NDQKPj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQKPj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQKPj4gPiBAQCAtMTcsNiArMTcsMTIgQEAg
UmVxdWlyZWQgcHJvcGVydGllczoKPj4gPiDCoFJlcXVpcmVkIHN1Yi1ub2RlczoKPj4gPiDCoMKg
wqAtIHBvcnQ6IFRoZSBjb25uZWN0aW9uIHRvIGFuIGVuY29kZXIgY2hpcC4KPj4gPgo+PiA+ICtP
cHRpb25hbCBwcm9wZXJ0aWVzOgo+PiA+ICstIG1heC1yZXM6wqDCoMKgYW4gYXJyYXkgd2l0aCBh
IG1heGltdW0gb2YgdHdvIGludGVnZXJzLCByZXByZXNlbnRpbmcKPj4gPiB0aGUKPj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhpbXVtIHN1cHBvcnRlZCByZXNvbHV0aW9uLCBpbiB0
aGUgZm9ybSBvZgo+PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoDxtYXhYPiwgPG1heFk+
OyBpZiBvbmUgb2YgdGhlIGl0ZW0gaXMgPDA+LCB0aGUKPj4gPiBkZWZhdWx0Cj4+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJpdmVyLWRlZmluZWQgbWF4aW11bSByZXNvbHV0aW9uIGZv
ciB0aGF0IGF4aXMgaXMKPj4gPiB1c2VkCj4+ID4gKwo+PiA+IMKgRXhhbXBsZToKPj4gPgo+PiA+
IMKgwqDCoMKgwqDCoGxjZGlmMTogZGlzcGxheS1jb250cm9sbGVyQDIyMjAwMDAgewo+IAo+IFRo
YW5rcywKPiBSb2JlcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
