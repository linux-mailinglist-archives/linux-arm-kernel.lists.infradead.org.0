Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1B59334
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:08:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKcN+T1FaLaRC9xFR5FaxrUEPkeSjLAN0Iy4sSvBDFI=; b=a0tkKg80hBIl5T
	TKQXl18am9G1qUKzV2gKMEm4xUIZQTr8nBE1CFce7S8+JGC1e6AvaV9/DLNwxOtFPVxnkq9qKrnWm
	UhBy6GW25ErkuZkaKiVuC7p5ZOhahS2L0CkBYq3hyeBLbJjBWab+Y//y4WG0O/jyy/D3m3VZtQXlv
	zSK19HR24Z0lbHv5nYD3DOQ6LaH1XKPddeASJuVhYd7hDBvnLzQuNoYf5+XPQGZbOidn98zic4ag0
	tP1XBe5h37QPsPH3fDfOm4CWdorOEb0WI3eBGuW9w6lc32N4S8NwK5zH/ZlPITJ5PlxnjKku34YS8
	cbY1Xtwq9ge4MJrh7cLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgj7M-0003xl-JU; Fri, 28 Jun 2019 05:08:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgj78-0003xQ-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:08:00 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26E392086D;
 Fri, 28 Jun 2019 05:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561698478;
 bh=xFjUUYnHTlg0g5AYzulJrQaNU77kJnwSuVIIBo91h8E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yo/rqnMJ4hlPwrOvSoY8j4fj8kRDmq/UzXkHIEsIiE55ez/1kSq9Sxw6kzUVUG87e
 Si78lWfLXiya9n/vIWVBJ7gX/mBLezd1CrKLb+sbBvcGjxcKDtZ/qLbfSBKiFHnXUW
 E85tlj7Bs+eB1YcVVsxR6PrA9SHIKThyel2Weehs=
Date: Thu, 27 Jun 2019 22:07:56 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 02/10] crypto: sa2ul: Add crypto driver
Message-ID: <20190628050756.GD673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-3-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-3-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_220759_049334_12C74EEA 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMjgsIDIwMTkgYXQgMDk6NTc6MzdBTSArMDUzMCwgS2VlcnRoeSB3cm90ZToK
PiBUaGUgU2VjdXJpdHkgQWNjZWxlcmF0b3IgKFNBMl9VTCkgc3Vic3lzdGVtIHByb3ZpZGVzIGhh
cmR3YXJlCj4gY3J5cHRvZ3JhcGhpYyBhY2NlbGVyYXRpb24gZm9yIHRoZSBmb2xsb3dpbmcgdXNl
IGNhc2VzOgo+IOKAoiBFbmNyeXB0aW9uIGFuZCBhdXRoZW50aWNhdGlvbiBmb3Igc2VjdXJlIGJv
b3QKPiDigKIgRW5jcnlwdGlvbiBhbmQgYXV0aGVudGljYXRpb24gb2YgY29udGVudCBpbiBhcHBs
aWNhdGlvbnMKPiAgIHJlcXVpcmluZyBEUk0gKGRpZ2l0YWwgcmlnaHRzIG1hbmFnZW1lbnQpIGFu
ZAo+ICAgY29udGVudC9hc3NldCBwcm90ZWN0aW9uCj4gVGhlIGRldmljZSBpbmNsdWRlcyBvbmUg
aW5zdGFudGlhdGlvbiBvZiBTQTJfVUwgbmFtZWQgU0EyX1VMMAo+IAo+IFNBMl9VTCBzdXBwb3J0
cyB0aGUgZm9sbG93aW5nIGNyeXB0b2dyYXBoaWMgaW5kdXN0cnkgc3RhbmRhcmRzIHRvIGVuYWJs
ZSBkYXRhIGF1dGhlbnRpY2F0aW9uLCBkYXRhCj4gaW50ZWdyaXR5IGFuZCBkYXRhIGNvbmZpZGVu
dGlhbGl0eS4KPiAKPiBDcnlwdG8gZnVuY3Rpb24gbGlicmFyeSBmb3Igc29mdHdhcmUgYWNjZWxl
cmF0aW9uCj4gbyBBRVMgb3BlcmF0aW9uCj4gbyAzREVTIG9wZXJhdGlvbgo+IG8gU0hBMSBvcGVy
YXRpb24KPiBvIE1ENSBvcGVyYXRpb24KPiBvIFNIQTIg4oCTIDIyNCwgMjU2LCAzODQsIDUxMiBv
cGVyYXRpb24KPiAKPiBBdXRoZW50aWNhdGlvbiBzdXBwb3J0ZWQgdmlhIGZvbGxvd2luZyBoYXJk
d2FyZSBjb3Jlcwo+IG8gU0hBMQo+IG8gTUQ1Cj4gbyBTSEEyIC0yMjQKPiBvIFNIQTItMjU2Cj4g
byBTSEEyLTM4NAo+IG8gU0hBMi01MTIKCldoYXQgYWJvdXQgSE1BQz8gIAoKWW91ciBhY3R1YWwg
ZHJpdmVyIG9ubHkgZXhwb3NlcyBITUFDLVNIQSosIG5vdCBTSEEqIGFueXRoaW5nLgoKV2hhdCBk
b2VzIHRoZSBoYXJkd2FyZSBhY3R1YWxseSBzdXBwb3J0PwoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9jcnlwdG8vS2NvbmZpZyBiL2RyaXZlcnMvY3J5cHRvL0tjb25maWcKPiBpbmRleCA2MDM0MTNm
MjhmYTMuLmI5YTNmYTAyNmM3NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2NyeXB0by9LY29uZmln
Cj4gKysrIGIvZHJpdmVycy9jcnlwdG8vS2NvbmZpZwo+IEBAIC03ODUsNCArNzg1LDIxIEBAIGNv
bmZpZyBDUllQVE9fREVWX0NDUkVFCj4gIAo+ICBzb3VyY2UgImRyaXZlcnMvY3J5cHRvL2hpc2ls
aWNvbi9LY29uZmlnIgo+ICAKPiArY29uZmlnIENSWVBUT19ERVZfU0EyVUwKPiArCXRyaXN0YXRl
ICJTdXBwb3J0IGZvciBUSSBzZWN1cml0eSBhY2NlbGVyYXRvciIKPiArCWRlcGVuZHMgb24gQVJD
SF9LMyB8fCBDT01QSUxFX1RFU1QKPiArCXNlbGVjdCBBUk02NF9DUllQVE8KPiArCXNlbGVjdCBD
UllQVE9fQUVTCj4gKwlzZWxlY3QgQ1JZUFRPX0FFU19BUk02NAo+ICsJc2VsZWN0IENSWVBUT19T
SEExCj4gKwlzZWxlY3QgQ1JZUFRPX01ENQo+ICsJc2VsZWN0IENSWVBUT19BTEdBUEkKPiArCXNl
bGVjdCBDUllQVE9fQVVUSEVOQwo+ICsJc2VsZWN0IEhXX1JBTkRPTQo+ICsJZGVmYXVsdCBtIGlm
IEFSQ0hfSzMKPiArCWhlbHAKPiArCSAgS2V5c3RvbmUgZGV2aWNlcyBpbmNsdWRlIGEgc2VjdXJp
dHkgYWNjZWxlcmF0b3IgZW5naW5lIHRoYXQgbWF5IGJlCj4gKwkgIHVzZWQgZm9yIGNyeXB0byBv
ZmZsb2FkLiAgU2VsZWN0IHRoaXMgaWYgeW91IHdhbnQgdG8gdXNlIGhhcmR3YXJlCj4gKwkgIGFj
Y2VsZXJhdGlvbiBmb3IgY3J5cHRvZ3JhcGhpYyBhbGdvcml0aG1zIG9uIHRoZXNlIGRldmljZXMu
CgpUaGlzIHNob3VsZG4ndCBiZSBlbmFibGVkIGJ5IGRlZmF1bHQuICBOb3RlIHRoYXQgYXJtNjQg
ZGVmY29uZmlnIHNldHMgQVJDSF9LMyBhcwp3ZWxsIGFzIGxvdHMgb2Ygb3RoZXIgQVJDSF8qIG9w
dGlvbnMsIHNvIGNsZWFybHkganVzdCBiZWNhdXNlIEFSQ0hfSzMgaXMgc2V0CmRvZXNuJ3QgbWVh
biB0aGUga2VybmVsIGlzIGJlaW5nIGJ1aWx0IHNwZWNpZmljYWxseSBmb3IgeW91ciBwbGF0Zm9y
bS4KCj4gKy8qCj4gKyAqIE1vZGUgQ29udHJvbCBJbnN0cnVjdGlvbnMgZm9yIHZhcmlvdXMgS2V5
IGxlbmd0aHMgMTI4LCAxOTIsIDI1Ngo+ICsgKiBGb3IgQ0JDIChDaXBoZXIgQmxvY2sgQ2hhaW5p
bmcpIG1vZGUgZm9yIGVuY3J5cHRpb24KPiArICovCj4gK3N0YXRpYyB1OCBtY2lfY2JjX2VuY19h
cnJheVszXVtNT0RFX0NPTlRST0xfQllURVNdID0gewo+ICsJewkweDIxLCAweDAwLCAweDAwLCAw
eDE4LCAweDg4LCAweDBhLCAweGFhLCAweDRiLCAweDdlLCAweDAwLAo+ICsJCTB4MDAsIDB4MDAs
IDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsCj4gKwkJMHgw
MCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMAl9LAo+ICsJewkweDIxLCAweDAw
LCAweDAwLCAweDE4LCAweDg4LCAweDRhLCAweGFhLCAweDRiLCAweDdlLCAweDAwLAo+ICsJCTB4
MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAs
Cj4gKwkJMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMAl9LAo+ICsJewkw
eDIxLCAweDAwLCAweDAwLCAweDE4LCAweDg4LCAweDhhLCAweGFhLCAweDRiLCAweDdlLCAweDAw
LAo+ICsJCTB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4MDAsIDB4
MDAsIDB4MDAsCj4gKwkJMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMCwgMHgwMAl9
LAo+ICt9OwoKVXNlICdjb25zdCcgZm9yIHN0YXRpYyBjb25zdGFudHMuCgo+ICtzdGF0aWMgaW50
IHNhX2Flc19jYmNfc2V0a2V5KHN0cnVjdCBjcnlwdG9fYWJsa2NpcGhlciAqdGZtLCBjb25zdCB1
OCAqa2V5LAo+ICsJCQkgICAgIHVuc2lnbmVkIGludCBrZXlsZW4pCj4gK3sKPiArCXN0cnVjdCBh
bGdvX2RhdGEgKmFkID0ga3phbGxvYyhzaXplb2YoKmFkKSwgR0ZQX0tFUk5FTCk7CgpOZWVkIHRv
IGNoZWNrIGZyb20gZXJyb3IgZm9yIGFsbCBtZW1vcnkgYWxsb2NhdGlvbnMuCgo+ICtzdGF0aWMg
c3RydWN0IHNhX2FsZ190bXBsIHNhX2FsZ3NbXSA9IHsKPiArCXsudHlwZSA9IENSWVBUT19BTEdf
VFlQRV9BQkxLQ0lQSEVSLAoKYWJsa2NpcGhlciBBUEkgaXMgZGVwcmVjYXRlZC4gIFVzZSBza2Np
cGhlciBpbnN0ZWFkLgoKKFRvIGJlIGNsZWFyLCB0aGVzZSBhcmUganVzdCBhIGZldyB0aGluZ3Mg
SSBoYXBwZW5lZCB0byBub3RpY2UgZnJvbSB2ZXJ5IHF1aWNrbHkKc2tpbW1pbmcgdGhyb3VnaCB0
aGlzIHBhdGNoLiAgSSBkb24ndCBoYXZlIHRpbWUgdG8gZG8gYSBwcm9wZXIgcmV2aWV3IG9mIHJh
bmRvbQpkcml2ZXJzLikKCi0gRXJpYwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
