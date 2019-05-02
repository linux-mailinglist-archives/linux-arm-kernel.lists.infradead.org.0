Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A66D111D9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNGXkDfngvgP8wi29Wsvt/6vmL13O3I9y8zXhKuiXmQ=; b=Pr1/abM+3jwXoc
	WIVNujJTUZ+Qamazs5X5IhRn9PRjy4xRg7gt+dJumVnxDMD47wBC6TblEwn2ujYqPcgZ/wDKhzoZw
	85L9LdiH3ZLcJOVi7w+sVaLQMATSWJNVd+uk4c2ExEefKwDkp08aR+inaR9CUwlA3BsYSnsDKcjui
	iQkCalf50NInK1PU/6018NvUHG9yrt1zCAHXVmaBoNi+5nIQQ6q717e2QmuZdkHQfjUJIJxTZEQ1s
	y0KI1dQYpd98EHoJo0+Z4YJ4QoRdnKCiVZx1fXVxLFM1LxSZQJkPI3IsUNAmvl1tYOMCvwM/Sqaxm
	c1BkluY6s9jxGYFBmzMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDlF-00088J-LK; Thu, 02 May 2019 15:36:37 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDl9-00087x-3G
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:36:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E6DF5AB91;
 Thu,  2 May 2019 15:36:28 +0000 (UTC)
Subject: Re: [PATCH v9 2/2] phy: Add driver for mixel mipi dphy found on NXP's
 i.MX8 SoCs
To: =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
 Robert Chiras <robert.chiras@nxp.com>
References: <cover.1556633413.git.agx@sigxcpu.org>
 <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <4ce62b78-64ac-ca84-733f-bc4d10a67c54@suse.de>
Date: Thu, 2 May 2019 17:36:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <b999b07673e59c676d2e43a786b635beb056e9bf.1556633413.git.agx@sigxcpu.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_083631_283955_EC13ABEC 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Li Jun <jun.li@nxp.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Johan Hovold <johan@kernel.org>, dri-devel@lists.freedesktop.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thierry Reding <treding@nvidia.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gMzAuMDQuMTkgdW0gMTY6NDAgc2NocmllYiBHdWlkbyBHw7xudGhlcjoKPiBUaGlzIGFkZHMg
c3VwcG9ydCBmb3IgdGhlIE1peGVsIERQSFkgYXMgZm91bmQgb24gaS5NWDggQ1BVcyBidXQgc2lu
Y2UKPiB0aGlzIGlzIGFuIElQIGNvcmUgaXQgd2lsbCBsaWtlbHkgYmUgZm91bmQgb24gb3RoZXJz
IGluIHRoZSBmdXR1cmUuIFNvCj4gaW5zdGVhZCBvZiBhZGRpbmcgdGhpcyB0byB0aGUgbndsIGhv
c3QgZHJpdmVyIG1ha2UgaXQgYSBnZW5lcmljIFBIWQo+IGRyaXZlci4KPiAKPiBUaGUgZHJpdmVy
IHN1cHBvcnRzIHRoZSBpLk1YOE1RLiBTdXBwb3J0IGZvciBpLk1YOFFNIGFuZCBpLk1YOFFYUCBj
YW4gYmUKPiBhZGRlZCBvbmNlIHRoZSBuZWNlc3Nhcnkgc3lzdGVtIGNvbnRyb2xsZXIgYml0cyBh
cmUgaW4gdmlhCj4gbWl4ZWxfZHBoeV9kZXZkYXRhLgo+IAo+IENvLWF1dGhvcmVkLWJ5OiBSb2Jl
cnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+CgpUaGlzIHNob3VsZCBiZSBDby1kZXZl
bG9wZWQtYnkgYW5kIGlzIGxhY2tpbmcgYSBTaWduZWQtb2ZmLWJ5IGZyb20gdGhhdAphdXRob3Iu
IFJvYmVydCwgY2FuIHlvdSBwbGVhc2UgcHJvdmlkZSBvbmU/CgpodHRwczovL3d3dy5rZXJuZWwu
b3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI3doZW4t
dG8tdXNlLWFja2VkLWJ5LWNjLWFuZC1jby1kZXZlbG9wZWQtYnkKCj4gU2lnbmVkLW9mZi1ieTog
R3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KVGhhbmtzLApBbmRyZWFzCgotLSAKU1VT
RSBMaW51eCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkKR0Y6
IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAo
QUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
