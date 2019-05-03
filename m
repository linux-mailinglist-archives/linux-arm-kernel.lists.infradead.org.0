Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A59A1318D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fsmGA1zGOx0lFqYrO+WoIYMI9WyghMw/JRiGfLKlqk=; b=fhuB2L3ecCJr0K
	8PTPQfPIk4d87nWgd39bLfNXowZAn78qs9KcM7J61PM+t8hOFbw8tcdSkTVMpElDjeQKAjNJa6Cq7
	6urdtJxBVqACUUfy3rszCgCigjvE4iCTHKRU49X1DAHTpYC0Vu4O7tAijXTevXDOdoeO0RXPPShmO
	hzMADVad6OnyIVWrqEHt4XM/y/F42jAeqa6PihdezCMp+bydRBNd7lsR5IOhLX8SYnS4q/bzeCTv7
	LQ25XD8J/9lrHTcBsyovSlC2xfkCzkZ/zHPuBrpWvpj91qn5/9YfxjpLB/i1gr5z72SDJ6a74ZgYO
	2NOOEFqWeXkC177vwAlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaW2-0004R6-Li; Fri, 03 May 2019 15:54:26 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaVN-0003fQ-RG
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 15:53:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1ovIMkK7qwjA8XxjzuMVd+9HRLITFhDeveuvPvxFSoM=; b=RcoRRZMpu/3NuYhjh2Sfp6eVJK
 TIt0/gJEmu62nrAYnrIBtjv7gtV0fDVB871B9DmjDoyHTy/Z4O0PvwfpiSiV5+8v1fWBNw8qS74Q0
 6JWOsFlXFSJvUk/bjZWTPfvXWWkhj46ZjY1NLGWrAk4S6Ja+kt6SphqdNz9APKy26Gd9pKyXS85KU
 qGD5u5IafhnSpyCa9M4DACj50lnuNuExgnJy4kE7mN7Lhezj4vOihOI+Qs4Iy5FWiO5Sp307iv66e
 W0H9Sh/zrnSX+/mJFXWDzolysMwd3iec5TcdWWvo47X1leUDyUWRzdyyuAS0BKyNJ8MzcrP5Z+bZe
 NYE9X2SQ==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaVJ-0001yT-NB
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:53:43 +0000
X-Originating-IP: 90.66.53.80
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id ECAF2C000E;
 Fri,  3 May 2019 15:53:02 +0000 (UTC)
Date: Fri, 3 May 2019 17:53:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [PATCH] rtc: imxdi: remove unused variable
Message-ID: <20190503155302.GF22550@piout.net>
References: <20190503154217.13205-1-anders.roxell@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503154217.13205-1-anders.roxell@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_165341_774872_59DC5562 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMvMDUvMjAxOSAxNzo0MjoxNyswMjAwLCBBbmRlcnMgUm94ZWxsIHdyb3RlOgo+IFRoaXMg
dmFyaWFibGUgaXMgbm8gbG9uZ2VyIHVzZWQgYW5kIHRoZSBjb21waWxlciByaWdodGx5IGNvbXBs
YWlucyB0aGF0Cj4gaXQgc2hvdWxkIGJlIHJlbW92ZWQuCj4gCj4gLi4vZHJpdmVycy9ydGMvcnRj
LWlteGRpLmM6IEluIGZ1bmN0aW9uIOKAmGRyeWljZV9ydGNfc2V0X2FsYXJt4oCZOgo+IC4uL2Ry
aXZlcnMvcnRjL3J0Yy1pbXhkaS5jOjYzMzoxNjogd2FybmluZzogdW51c2VkIHZhcmlhYmxlIOKA
mG5vd+KAmSBbLVd1bnVzZWQtdmFyaWFibGVdCj4gICB1bnNpZ25lZCBsb25nIG5vdzsKPiAgICAg
ICAgICAgICAgICAgXn5+Cj4gCj4gUmV3b3JrIHRvIHJlbW92ZSB0aGUgdW51c2VkIHZhcmlhYmxl
Lgo+IAo+IEZpeGVzOiA2MjlkNDg4YTNlYjYgKCJydGM6IGlteGRpOiByZW1vdmUgdW5uZWNlc3Nh
cnkgY2hlY2siKQo+IFNpZ25lZC1vZmYtYnk6IEFuZGVycyBSb3hlbGwgPGFuZGVycy5yb3hlbGxA
bGluYXJvLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9ydGMvcnRjLWlteGRpLmMgfCAxIC0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPiAKQXBwbGllZCwgdGhhbmtzLgoKLS0gCkFsZXhh
bmRyZSBCZWxsb25pLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJp
bmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
