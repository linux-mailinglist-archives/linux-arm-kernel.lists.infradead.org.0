Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4B929BB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 18:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/Tfs8aGwZ6VG6BSUT04qi6wpvDHXsRWzusDSXwiRqc=; b=J2GQ2SoF/j0oQx
	p/tJtpPH+/6a5xezylrujLbcjEGOtHU0nVnm01tY+KI+zA/MYF3OFrhz4My6VLL4rIuX/z/wwtS/D
	RKNCERTCzA5Pi+3ksji7u4lEkxnH+3pJOXJuWbkiKPSR5/t5o2vtBZMEfnL4TidMRlWPdjudGBs3M
	RWbTPSYoXu2DiI/pPI8fbSoRXYnrhYyjQzSeraT10r+uuRkdk2SHOPkaEvObZN6M/S7IlThPw1L1i
	LqmGx5DLfv0NmRrBuJX08f0+tL2etYAHnyLkmNaeNABZUj6hmvGVlNqJBOISsAzzTgUJsKXrVg7R+
	rxSYkVOXUN6SbKgXVK0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUCeb-0008ME-Al; Fri, 24 May 2019 16:02:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUCeT-0008Lp-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 16:02:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4OG2N36065251;
 Fri, 24 May 2019 11:02:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558713743;
 bh=82zkqOODzgXEEfhiAtp0BSNOoGMWl3VWrMQOdMYRK6U=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=a1QoxT9HOVb0yKW/r/Z18wbv7GGr4dP3coCINnIzlQLAN0T3Y2O0X/EMQaLSnGc9O
 +y+hwl21RjJuf9ktK/lW4hk49OV/UQ4dS3QyUDxwoimujA06OpUgYabXlrRzA8lITO
 Js4SrKIH2CLNRU/uOzrQttmE1xq4ReAj+43IW4Tc=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4OG2NBY019968
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 May 2019 11:02:23 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 24
 May 2019 11:02:23 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 24 May 2019 11:02:23 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4OG2GWg025692;
 Fri, 24 May 2019 11:02:17 -0500
Subject: Re: [PATCH v11 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
To: Fabio Estevam <festevam@gmail.com>, =?UTF-8?Q?Guido_G=c3=bcnther?=
 <agx@sigxcpu.org>
References: <cover.1557657814.git.agx@sigxcpu.org>
 <2000bc4564175abd7966207a5e9fbb9bb7d82059.1557657814.git.agx@sigxcpu.org>
 <CAOMZO5BaFYJxh1v46n2mdPyc+-jg6LgvoGR1rTE+yHZg_0Z8PA@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <69fcb327-8b51-df9e-12d9-d75751974bce@ti.com>
Date: Fri, 24 May 2019 21:31:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOMZO5BaFYJxh1v46n2mdPyc+-jg6LgvoGR1rTE+yHZg_0Z8PA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_090237_938781_653AA1EE 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>, Li Jun <jun.li@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Sam Ravnborg <sam@ravnborg.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Abel Vesa <abel.vesa@nxp.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE
 IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAyNC8wNS8xOSA1OjUzIFBNLCBGYWJpbyBFc3RldmFtIHdyb3RlOgo+IEhpIEtpc2hv
biwKPiAKPiBPbiBTdW4sIE1heSAxMiwgMjAxOSBhdCA3OjQ5IEFNIEd1aWRvIEfDvG50aGVyIDxh
Z3hAc2lneGNwdS5vcmc+IHdyb3RlOgo+Pgo+PiBUaGlzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIE1p
eGVsIERQSFkgYXMgZm91bmQgb24gaS5NWDggQ1BVcyBidXQgc2luY2UKPj4gdGhpcyBpcyBhbiBJ
UCBjb3JlIGl0IHdpbGwgbGlrZWx5IGJlIGZvdW5kIG9uIG90aGVycyBpbiB0aGUgZnV0dXJlLiBT
bwo+PiBpbnN0ZWFkIG9mIGFkZGluZyB0aGlzIHRvIHRoZSBud2wgaG9zdCBkcml2ZXIgbWFrZSBp
dCBhIGdlbmVyaWMgUEhZCj4+IGRyaXZlci4KPj4KPj4gVGhlIGRyaXZlciBzdXBwb3J0cyB0aGUg
aS5NWDhNUS4gU3VwcG9ydCBmb3IgaS5NWDhRTSBhbmQgaS5NWDhRWFAgY2FuIGJlCj4+IGFkZGVk
IG9uY2UgdGhlIG5lY2Vzc2FyeSBzeXN0ZW0gY29udHJvbGxlciBiaXRzIGFyZSBpbiB2aWEKPj4g
bWl4ZWxfZHBoeV9kZXZkYXRhLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8
YWd4QHNpZ3hjcHUub3JnPgo+PiBDby1kZXZlbG9wZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVy
dC5jaGlyYXNAbnhwLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0
LmNoaXJhc0BueHAuY29tPgo+PiBSZXZpZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1A
Z21haWwuY29tPgo+PiBSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3Jn
Pgo+IAo+IFdvdWxkIHlvdSBoYXZlIGFueSBjb21tZW50cyBvbiB0aGlzIHNlcmllcywgcGxlYXNl
PwoKSSBkb24ndCBoYXZlIGFueSBjb21tZW50cy4gSSdsbCBxdWV1ZSB0aGlzIG9uY2UgSSBzdGFy
dCBxdWV1aW5nIHBhdGNoZXMgZm9yIHRoZQpuZXh0IG1lcmdlIHdpbmRvdy4KClRoYW5rcwpLaXNo
b24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
