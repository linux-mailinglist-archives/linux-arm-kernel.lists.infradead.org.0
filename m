Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080771B38F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 12:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPnp2uVPeZ1zXyi8NjF99PjiF68TaQl1dTPU2rxHd1A=; b=RKfUZ4sVCTKgpr
	q+EE2h/+gOw86+Cn7U6lzloJ89Xz5R4SNDD5DAQQ4cFUkBAcTygGABPxYz2X//i6MWWS4UlL1gvd6
	uYJkn3J6byuE3bDRotRTd49zB07VW+oD1qgj1fBV9BDr0vjNJR+a2/NtM8I0U/KuVzry9lILixOXf
	AZyP3A2yMdsRftR+UuN9xYJUPHAFWDnUdSM1wFWDaKuDy9rhTULD2CiUNYxcywrR80OVopDKmW35p
	j7HSco1UB61T4aM5CeA4fpofSgDYIkR2PO0sds7qqaN0//VYLUTG2VMJXMl3hMufk0XFYUMNnG9yZ
	xH8/CQIVmzIaXw1Ym6Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ7me-0008Lq-T2; Mon, 13 May 2019 10:02:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ7mX-0008K1-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 10:02:06 +0000
X-Originating-IP: 80.215.106.0
Received: from localhost (unknown [80.215.106.0])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9B95724000F;
 Mon, 13 May 2019 10:01:50 +0000 (UTC)
Date: Mon, 13 May 2019 12:01:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, wens@csie.org, catalin.marinas@arm.com,
 will.deacon@arm.com, davem@davemloft.net,
 mchehab+samsung@kernel.org, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com,
 paulmck@linux.ibm.com, andy.gross@linaro.org, olof@lixom.net,
 bjorn.andersson@linaro.org, jagan@amarulasolutions.com,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190513100149.w3uvpnuqql4eqwid@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512223955.6lhclj6jr2akmsdx@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190512223955.6lhclj6jr2akmsdx@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_030205_297863_7EFCAB01 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMTMsIDIwMTkgYXQgMTI6Mzk6NTVBTSArMDIwMCwgT25kxZllaiBKaXJtYW4g
d3JvdGU6Cj4gPiArCS8qCj4gPiArCSAqIGNsa2luID0gMjRNSHoKPiA+ICsJICogVCBhY3F1aXJl
ID0gY2xraW4gLyAoU1VONTBJX1RIU19DVFJMMF9UX0FDUSArIDEpCj4gPiArCSAqICAgICAgICAg
ICA9IDIwdXMKPiA+ICsJICovCj4gPiArCXJlZ21hcF93cml0ZSh0bWRldi0+cmVnbWFwLCBTVU41
MElfVEhTX0NUUkwwLAo+ID4gKwkJICAgICBTVU41MElfVEhTX0NUUkwwX1RfQUNRKDQ3OSkpOwo+
ID4gKwkvKiBhdmVyYWdlIG92ZXIgNCBzYW1wbGVzICovCj4gPiArCXJlZ21hcF93cml0ZSh0bWRl
di0+cmVnbWFwLCBTVU41MElfSDZfVEhTX01GQywKPiA+ICsJCSAgICAgU1VONTBJX1RIU19GSUxU
RVJfRU4gfAo+ID4gKwkJICAgICBTVU41MElfVEhTX0ZJTFRFUl9UWVBFKDEpKTsKPiA+ICsJLyog
cGVyaW9kID0gKFNVTjUwSV9INl9USFNfUENfVEVNUF9QRVJJT0QgKyAxKSAqIDQwOTYgLyBjbGtp
bjsgfjEwbXMgKi8KPiA+ICsJcmVnbWFwX3dyaXRlKHRtZGV2LT5yZWdtYXAsIFNVTjUwSV9INl9U
SFNfUEMsCj4gPiArCQkgICAgIFNVTjUwSV9INl9USFNfUENfVEVNUF9QRVJJT0QoNTgpKTsKPgo+
IEFsc28gdGhpcyBtYXRoIGlzIG5vdCBhbGwgdGhhdCBjbGVhcjoKPgo+ICAgcGVyaW9kID0gKFNV
TjUwSV9INl9USFNfUENfVEVNUF9QRVJJT0QgKyAxKSAqIDQwOTYgLyBjbGtpbjsgfjEwbXMKPgo+
IFNVTjUwSV9INl9USFNfUENfVEVNUF9QRVJJT0QgaXMgYSBtYWNybyB3aXRoIGFuIGFyZ3VtZW50
LiBTbyBob3cgZG9lcwo+IHRoaXMgd29yaz8KPgo+IEFsc28sIHJlbGF0ZWQgdG8gdGhpcywgSSd2
ZSBub3RpY2VkIHRoYXQgeW91IHJlbW92ZWQgdGhlIGludGVycnVwdAo+IHByb2Nlc3NpbmcgZnJv
bSB0aGUgb3JpZ2luYWwgZHJpdmVyLiBXaXRob3V0IHRoYXQgeW91IGhhdmUgdG8gbWFrZSBzdXJl
Cj4gdGhhdCBPRiBjb250YWlucyBub24temVybyBwb2xsaW5nLWRlbGF5IGFuZCBwb2xsaW5nLWRl
bGF5LXBhc3NpdmUuCj4KPiBOb256ZXJvIHZhbHVlcyBhcmUgbmVjZXNzYXJ5IGZvciBlbmFibGlu
ZyBwb2xsaW5nIG1vZGUgb2YgdGhlIHR6IGNvcmUsCj4gb3RoZXJ3aXNlIHR6IGNvcmUgd2lsbCBu
b3QgcmVhZCB2YWx1ZXMgcGVyaW9kaWNhbGx5IGZyb20geW91ciBkcml2ZXIuCj4KPiBZb3Ugc2hv
dWxkIGRvY3VtbWVudCBpdCBpbiB0aGUgRFQgYmluZGluZ3MsIHRvby4gT3Iga2VlcCB0aGUgaW50
ZXJydXB0Cj4gaGFuZGxpbmcgZm9yIFRIUy4KCklmIHRoZXJlJ3MgaW50ZXJydXB0cyBmb3IgdGhp
cyBpbiB0aGUgSDYsIHllYWggd2Ugc2hvdWxkIHVzZSB0aGVtIG92ZXIKcG9sbGluZy4KCk1heGlt
ZQoKLS0KTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVu
Z2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
