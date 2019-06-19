Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC964B314
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=so3rsb4f9z44fERDDn/4gtoVJ9GmqOG2BLnqab+P9aQ=; b=iH+xaUR4ax9Z1c
	+g6NoXFweJDqqih6w0wKXFelLYrSMyTo9XhkEqg56EzCgsHe4LV/HJtRhQB1TroFO/eyS9W03wkju
	oix3ii2VU2xQbCoOZwe/7fgT8tYhiqefFS1cV7MdoKfpeFyUg4uzBxKyNf1KOhTMxV+YjGEWrRb+R
	bCulwF7Gy+aL3JC7nbiL184TDqs+dkn03qmFPKia5cAhfI6S7S6i+KNWtfQo5Fp1AT8O2VMwUI5D0
	WvvdPVBiYK3FO07Lok1BFSEhXc4bF/T2Xa9c7iriQhkzd83OVwhCXc0br83wuz0F0f1prF8VrygZN
	dKREFvtlO8n7vnw+Fj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdV2D-0004gN-B3; Wed, 19 Jun 2019 07:29:33 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdV23-0004ez-DG; Wed, 19 Jun 2019 07:29:25 +0000
Received: from [192.168.178.24] ([109.104.35.35]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MplTn-1iONBF3oT7-00qFFZ; Wed, 19 Jun 2019 09:29:12 +0200
Subject: Re: [PATCH v2] pwm: bcm2835: improve precision of pwm
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Stefan Wahren <wahrenst@gmx.net>
References: <20190603090058.qd3tbiffmdgqm34d@gofer.mess.org>
 <1c7dc4ba-eb6e-b6da-3bfd-4b872f9c6498@gmx.net>
 <20190619072251.vhncrs2cnmtudrsj@pengutronix.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <59eed6bc-b99a-40b3-2dac-93dcbc7e922b@i2se.com>
Date: Wed, 19 Jun 2019 09:29:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619072251.vhncrs2cnmtudrsj@pengutronix.de>
Content-Language: en-US
X-Provags-ID: V03:K1:q+Ew8d7vNFYFS3bCuXaasPOdIBTKb0lmlRMp+RQ83w4/sidq44Z
 JvGpInr17U43YbO7CgkSWfS2pqgAVgMqXuXcuUfUBFpwh8zdMiNQ4YnlLnY+DXk9yUI3a7m
 e+8JyV05POdH/UtIKuUWizAn+AlfrlwRdPOLWsOipjyB9Y9eJrULqWUiou8Y/FhqqLRapmu
 gDytjSkpf7Y+uRKFfNzZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vj/yBWuJUIE=:AxUbfKLXrwTewZ05RMKwWY
 o4mBWEuyCUjD7LuJJ50ioUtRhaJOKRDX1dRXdxh+L5ZygAmPA0oj1k5usrIh+qcFKnwqLwTLo
 jjYUmjb5V8ad0pi1YbPT729RZWLLOHHQdeDYDCipgFTZLj7jGQMKV523qy0RuOZoRPlWOHQXY
 uuFUlPCLK7UYvnSXlOwxDxt7aiJaVL/vVKF67dd4nTeKV2sngePk+XA2dG9K8O31oreCIZm/R
 +qsI5Nru7hNm6z5aA+8uzJaN7HySQbJi2K+66ro4vIus4GrBU0r9q4gB7sUyw38jdnOxN62L2
 qmr1axSuhIHRmcRwvKIg5gDH3dmJUUu1ucD2CuNUlh5snwzNiLoGZ0bs7VE5MFDnPleO7VLvf
 A5UB5VFOJRfeh8KnidAoHTrWgk/o+edxS7E8kpdi+knM7BAJbEBAv9qVR4IjI8AjSs/KhBz+B
 uzliCINM/thrXCZvVSFwMHdjC2luZHk9q+REfW/A769DYuYrOMijcRAc7hUG/Ucub8CuDgCNy
 vmtg4mhPGvBI184U2ZotTrWjm6Nk8SC0tHszlNaHb2IOF4RRwDzWrwWEzbxYgXoN5VrQoDaqT
 qjLSImPT+qTP3BK/IO1IlFl51pYZ393wgUzUEWlRlP5Vn4KiSuBJkaji5pT3ygK2LMbI5Ffbn
 ZfS8BS3W23U1cM9zQJh8T0HpQKIUv7nK6zeMzhqRa2ezx11DQnQbRRoL8ORpNvgAnLje3OKHc
 auOicfixNllwzhD00OdmFrGQhUjwoTUgx83YjXDGpg2KSEEjHgfaTHKYKug=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_002923_738046_44CC69B8 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
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
Cc: linux-pwm@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Sean Young <sean@mess.org>, Scott Branden <sbranden@broadcom.com>,
 Andreas Christ <andreas@christ-faesch.ch>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gMTkuMDYuMTkgMDk6MjIsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEhh
bGxvIFN0ZWZhbiwKPgo+IE9uIFdlZCwgSnVuIDE5LCAyMDE5IGF0IDA3OjIxOjQzQU0gKzAyMDAs
IFN0ZWZhbiBXYWhyZW4gd3JvdGU6Cj4+IEFtIDAzLjA2LjE5IHVtIDExOjAwIHNjaHJpZWIgU2Vh
biBZb3VuZzoKPj4+IElmIHNlbmRpbmcgSVIgd2l0aCBjYXJyaWVyIG9mIDQ1NWtIeiB1c2luZyB0
aGUgcHdtLWlyLXR4IGRyaXZlciwgdGhlCj4+PiBjYXJyaWVyIGVuZHMgdXAgYmVpbmcgNDc2a0h6
LiBUaGUgY2xvY2sgaXMgc2V0IHRvIGJjbTI4MzUtcHdtIHdpdGggYQo+Pj4gcmF0ZSBvZiAxME1I
ei4KPj4+Cj4+PiBBIGNhcnJpZXIgb2YgNDU1a0h6IGhhcyBhIHBlcmlvZCBvZiAyMTk4bnMsIGJ1
dCB0aGUgYXJpdGhtZXRpYyB0cnVuY2F0ZXMKPj4+IHRoaXMgdG8gMjEwMG5zIHJhdGhlciB0aGFu
IDIyMDBucy4gU28sIHVzZSBESVZfUk9VTkRfQ0xPU0VTVCgpIHRvIHJlZHVjZQo+Pj4gcm91bmRp
bmcgZXJyb3JzLCBhbmQgd2UgaGF2ZSBhIG11Y2ggbW9yZSBhY2N1cmF0ZSBjYXJyaWVyIG9mIDQ1
NC41a0h6Lgo+Pj4KPj4+IFJlcG9ydGVkLWJ5OiBBbmRyZWFzIENocmlzdCA8YW5kcmVhc0BjaHJp
c3QtZmFlc2NoLmNoPgo+Pj4gU2lnbmVkLW9mZi1ieTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9y
Zz4KPj4gQWNrZWQtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5kZT4KPiB5b3UgYWxy
ZWFkeSBhY2tlZCB0aGF0IHdpdGggYSBzbGlnaHRseSBkaWZmZXJlbnQgbWFpbCBhZGRyZXNzIGEg
d2Vlawo+IGFnby4gV2FzIHRoaXMgaW50ZW5kZWQ/Cgp0aGFua3MuIFBsZWFzZSBpZ25vcmUgdGhp
cyBlbWFpbCB0aGlzIHdhcyBhIHR5cG8uIFRoZSBjb3JyZWN0IGRvbWFpbiB3YXMKZ214Lm5ldC4K
ClN0ZWZhbgoKPgo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
