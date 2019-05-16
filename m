Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCA620E09
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zHoldsV4AdZ9CF7FfJARRimYD4UfF6ZANUxiVuffF7Y=; b=hrkjBODdopKuBS
	kHO2SJVy0bsPvPnfprCxiSph8qQDt9cQWkLgcrr47gPT61MexYF3hFbtBSoz68t+9suV5bN+jYtBk
	AG/A6fQguQelAzN5zb4/NrIZwMlareIDIOfGxgYcU59CBm8AG25uIEXjOvGAEn2hoDlOPAPCGIjCz
	+MQV8h9nAVqsAorN237IK7BS3TjmSGOeQkaYoCKFmETbHFqiL033yqbx6DjJz4jdh4PY6SaB06o3+
	0ctlq8GPrR4RxmvJcKG/B/7/mGVEffn+V6LJTAHtsv6ZgaQsgnV/Ngx6iXuNf9bpl0FqESbU7s65H
	lMZV+aEh/WTXcw/yNvRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKJT-0007Wa-MM; Thu, 16 May 2019 17:37:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKJK-0007Vl-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:36:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558028210; bh=Jbc9aeVDZK4IVUtlH1rcpyyERggWBjuR3RQpcFzD1T0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MlzYyqsQURfuYpPc0op+qkOyLkPN7dYIRo4j+mrkhYHYwLuQlaIADILnCGtJtfM/p
 RYtugzjmO7W2kVQcT7sWXDmiim8a3h/ixlJwffwkjNodM1ejasX5tJQxeVlwlHpes7
 kiNj2m5G9DqxzV/jlVa7mK4k/8GmC7OxVxUcO1Fk=
Date: Thu, 16 May 2019 19:36:49 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190516173649.5s2s32ol43kbbhzg@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 daniel.lezcano@linaro.org, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, linux-pm@vger.kernel.org, wens@csie.org,
 jagan@amarulasolutions.com, andy.gross@linaro.org,
 rui.zhang@intel.com, devicetree@vger.kernel.org,
 marc.w.gonzalez@free.fr, edubezval@gmail.com,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 olof@lixom.net, davem@davemloft.net
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
 <20190516150252.hf4u3bloo37chy6q@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516150252.hf4u3bloo37chy6q@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_103655_397538_CD4D7AA8 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, Yangtao Li <tiny.windzz@gmail.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, bjorn.andersson@linaro.org,
 marc.w.gonzalez@free.fr, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, daniel.lezcano@linaro.org, wens@csie.org,
 jagan@amarulasolutions.com, andy.gross@linaro.org, rui.zhang@intel.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, edubezval@gmail.com,
 olof@lixom.net, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 linux-arm-kernel@lists.infradead.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, enric.balletbo@collabora.com,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gTWF4aW1lLAoKT24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDU6MDI6NTJQTSArMDIwMCwg
TWF4aW1lIFJpcGFyZCB3cm90ZToKPiBIaSwKPiAKPiBPbiBTdW4sIE1heSAxMiwgMjAxOSBhdCAx
MTo0MToyOFBNICswMjAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiA+ID4gPiArc3RhdGljIGlu
dCB0c2Vuc19nZXRfdGVtcCh2b2lkICpkYXRhLCBpbnQgKnRlbXApCj4gPiA+ID4gK3sKPiA+ID4g
PiArCXN0cnVjdCB0c2Vuc29yICpzID0gZGF0YTsKPiA+ID4gPiArCXN0cnVjdCB0c2Vuc19kZXZp
Y2UgKnRtZGV2ID0gcy0+dG1kZXY7Cj4gPiA+ID4gKwlpbnQgdmFsOwo+ID4gPiA+ICsKPiA+ID4g
PiArCXJlZ21hcF9yZWFkKHRtZGV2LT5yZWdtYXAsIHRtZGV2LT5jaGlwLT50ZW1wX2RhdGFfYmFz
ZSArCj4gPiA+ID4gKwkJICAgIDB4NCAqIHMtPmlkLCAmdmFsKTsKPiA+ID4gPiArCj4gPiA+ID4g
KwlpZiAodW5saWtlbHkodmFsID09IDApKQo+ID4gPiA+ICsJCXJldHVybiAtRUJVU1k7Cj4gPiA+
Cj4gPiA+IEknbSBub3Qgc3VyZSB3aHkgYSB2YWwgZXF1YWxzIHRvIDAgd291bGQgYmUgYXNzb2Np
YXRlZCB3aXRoIEVCVVNZPwo+ID4KPiA+IFRoZXJtYWwgem9uZSBkcml2ZXIgY2FuICh3aWxsKSBj
YWxsIGdldF90ZW1wIGJlZm9yZSB3ZSBnb3QgdGhlCj4gPiBmaXJzdCBpbnRlcnJ1cHQgYW5kIHRo
ZSB0aGVybWFsIGRhdGEuIEluIHRoYXQgY2FzZSB2YWwgd2lsbCBiZSAwLgo+ID4KPiA+IFJlc3Vs
dGluZyBpbjoKPiA+Cj4gPiAgKHZhbCArIG9mZnNldCkgKiBzY2FsZSA9ICgtMjc5NCkgKiAtNjcg
PSAxODcxOTgKPiA+Cj4gPiAxODfCsEMgYW5kIGltbWVkaWF0ZSBzaHV0ZG93biBkdXJpbmcgYm9v
dCAtIGJhc2VkIG9uIGNpcnRpY2FsCj4gPiB0ZW1wZXJhdHVyZSBiZWluZyByZWFjaGVkLgo+ID4K
PiA+IEJ1c3kgaGVyZSBtZWFucywgZ2V0X3RlbXAgZG9lcyBub3QgeWV0IGhhdmUgZGF0YS4gVGhl
cm1hbCB6b25lCj4gPiBkcml2ZXIganVzdCByZXBvcnRzIGFueSBlcnJvciB0byBkbWVzZyBvdXRw
dXQuCj4gCj4gQWgsIHRoYXQgbWFrZXMgc2Vuc2UuCj4gCj4gSSBndWVzcyBpZiB3ZSdyZSBzd2l0
Y2hpbmcgdG8gYW4gaW50ZXJydXB0LWJhc2VkIGRyaXZlciwgdGhlbiB3ZSBjYW4KPiBqdXN0IHVz
ZSBhIHdhaXRxdWV1ZSwgb3IgaXMgZ2V0X3RlbXAgc3VwcG9zZWQgdG8gYmUgYXRvbWljPwoKSSdt
IG5vdCBlbnRpcmVseSBzdXJlLCBiZWNhdXNlIEkgbWlnaHQgaGF2ZSBpbmFkdmVyZW50bHkgdXNl
ZCBhIGNvbWJpbmF0aW9uIG9mCmludGVycnVwdCBhbmQgcG9sbGluZyB3aGVuIHRlc3RpbmcgdGhp
cy4gSXQgbWF5IGJlIHRoYXQgaWYgd2Ugc2V0IHBvbGxpbmctZGVsYXkKdG8gMCBpbiBkdHMsIHRo
YXQgdHogY29yZSB3aWxsIG5vdCB0cnkgdG8gY2FsbCBnZXRfdGVtcCBwcmVtYXR1cmVseSBhdCBh
bGwsIGFuZAp3aWxsIHNpbXBseSB3YWl0IGZvciB0ZW1wZXJhdHVyZSB1cGRhdGUgZnJvbSB0aGUg
aW50ZXJydXB0LgoKSSBndWVzcyB0aGlzIG5lZWRzIHRvIGJlIHRlc3RlZC9jaGVja2VkIGluIHR6
IGNvZGUuCgpyZWdhcmRzLAoJby4KCj4gTWF4aW1lCj4gCj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBC
b290bGluCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8v
Ym9vdGxpbi5jb20KCgoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
