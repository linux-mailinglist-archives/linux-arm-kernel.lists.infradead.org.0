Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB5F297F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqPvC/i/ch8xbDla0qZ/S1IAVwK3APKWTAcZWHPn4HQ=; b=FM/N9hlOk/vmYi
	ap7Xr2q6XYaWt713FO2t0zrc83hld6ZK86fqgsKdkh2fahzMMLFNsfsRjQt9KXFN3nFkZ2PDnsUiF
	2Jsp0+Afs+RPiiF9yTwcnw+7U79ZpwxzTjD450NU7HGqdSyFMh5/BaB77rbwbhSptFhjEMX/ascGx
	pHZxgWfgQL7lvmKSReEp3Rh2M57c2bDz2SHmj6plKXnP1Sf5R/JcQeHnlooW/d8ixWv8aBo1bT3Lu
	e6UNqkkYzvBiI/zGMmVB+JA6T0KH8cfd0H30xDAXSQXBHZ+mMDvOyv1IqndByGxbJzYR3hWPlfgSX
	NP0m0rNTVr2HrN3AZicQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9Eb-0006gH-3B; Fri, 24 May 2019 12:23:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9ET-0006ft-S4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:23:35 +0000
Received: by mail-lf1-x143.google.com with SMTP id x132so7021432lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 05:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=C+myfdGRYFPLLSybMtkNtVx2Tt/XQimBNXiCQ/VdObg=;
 b=hZ0bD/CUdsrgatmNXy5higdZbx3OSCJT8sw3LgkqkYgqbLtDn/gLs9c3g8mirUEDrG
 l+4o7a9TAxKLDBrPxE1t79fM9XPEqezMkBejfXLFW1INWkfF6OniubiwX8l6JtdYRW5M
 tFXRga1iZyPaMA5IfgLcUNsVq0/n8CPAA7ngiZ2vlfacytZlLloQGm7izI50MYXleqvm
 ISGNwOfcAGX8Xe6oTUH7CHfM9HQ/3MXe5c0F3fumRQ20D6mMK9Uiok4uhyMArRoFFH+q
 u4G3Opyv18dM583Kp0bxWnPFYDg/9AdqBdoV4pWXcATSuvokXHnSxlg9lkFRrlKRVbRQ
 1utQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=C+myfdGRYFPLLSybMtkNtVx2Tt/XQimBNXiCQ/VdObg=;
 b=BYNWrM/ZtFhALCgRszOd8lkJTcMl3L4PUhGHandr+698Aj4frlrnpKwMKo56RwUPAj
 83AbMQEMDdxRIXBr8j3KuwNMXUN0klOWzMmmgoBkYscF9KDIWS7tpUWhuj72i6/Mwejb
 2OWpxo0g5iMpw/LSQrrr68Bl2X2Y9vUU5WwlAveEYzI5F6M4Ub11jys9oApP7R8SFEo0
 OMTFpsnI4Rek6Zl6nIhp4yVX13IzbyjdO7/IZOgz1qMHsW0kDxxGg1ZkCa0nssGljfg8
 TSQ/j9Oke/n5COLtCLcqx78fx1fanu3X3WJ+N6Or/HuTJA4ZzIlrQrxtgGqfXFObX/m+
 ORDg==
X-Gm-Message-State: APjAAAU9vpLbiFQQAyWXMa8Hqd+0Bldj2D9zT4iAHxW+JDCFhjO0CCTN
 sRUS8QSjI3aLAdRgv5P6Bo/n2C11goNA45nOGRA=
X-Google-Smtp-Source: APXvYqzNQQPTSEiT9TgbJ91HH92JPe3O9NL20r1waVsd3eYrkSbkO8SrKpooDjZEBXWcbK0tw4yY2uokVzdzBVZa5zc=
X-Received: by 2002:ac2:4428:: with SMTP id w8mr46274166lfl.99.1558700610795; 
 Fri, 24 May 2019 05:23:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557657814.git.agx@sigxcpu.org>
 <2000bc4564175abd7966207a5e9fbb9bb7d82059.1557657814.git.agx@sigxcpu.org>
In-Reply-To: <2000bc4564175abd7966207a5e9fbb9bb7d82059.1557657814.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 24 May 2019 09:23:30 -0300
Message-ID: <CAOMZO5BaFYJxh1v46n2mdPyc+-jg6LgvoGR1rTE+yHZg_0Z8PA@mail.gmail.com>
Subject: Re: [PATCH v11 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_052333_934013_72D380D0 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Li Jun <jun.li@nxp.com>,
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
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgS2lzaG9uLAoKT24gU3VuLCBNYXkgMTIsIDIwMTkgYXQgNzo0OSBBTSBHdWlkbyBHw7xudGhl
ciA8YWd4QHNpZ3hjcHUub3JnPiB3cm90ZToKPgo+IFRoaXMgYWRkcyBzdXBwb3J0IGZvciB0aGUg
TWl4ZWwgRFBIWSBhcyBmb3VuZCBvbiBpLk1YOCBDUFVzIGJ1dCBzaW5jZQo+IHRoaXMgaXMgYW4g
SVAgY29yZSBpdCB3aWxsIGxpa2VseSBiZSBmb3VuZCBvbiBvdGhlcnMgaW4gdGhlIGZ1dHVyZS4g
U28KPiBpbnN0ZWFkIG9mIGFkZGluZyB0aGlzIHRvIHRoZSBud2wgaG9zdCBkcml2ZXIgbWFrZSBp
dCBhIGdlbmVyaWMgUEhZCj4gZHJpdmVyLgo+Cj4gVGhlIGRyaXZlciBzdXBwb3J0cyB0aGUgaS5N
WDhNUS4gU3VwcG9ydCBmb3IgaS5NWDhRTSBhbmQgaS5NWDhRWFAgY2FuIGJlCj4gYWRkZWQgb25j
ZSB0aGUgbmVjZXNzYXJ5IHN5c3RlbSBjb250cm9sbGVyIGJpdHMgYXJlIGluIHZpYQo+IG1peGVs
X2RwaHlfZGV2ZGF0YS4KPgo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2ln
eGNwdS5vcmc+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFz
QG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0Bu
eHAuY29tPgo+IFJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+
Cj4gUmV2aWV3ZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KCldvdWxkIHlv
dSBoYXZlIGFueSBjb21tZW50cyBvbiB0aGlzIHNlcmllcywgcGxlYXNlPwoKVGhhbmtzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
