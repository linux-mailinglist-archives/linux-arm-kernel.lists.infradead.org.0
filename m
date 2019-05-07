Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBA61627D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qA2v0aDlicOCMqYGK6ds3X/B+4dSyRBZhtOXQtShwYc=; b=UP/jfR0aabK01R
	iXpFyUFjKucYWpzmA1PRyqVlVJLO62l/nVOn5XJWcKRuOWd1RQ0r+Y/BPqkqwNJY4QZsrHsEqgXph
	PwO4mk6OaAhGu+pc0cExV9O6nB1BZMlYz4ofzksco7n8AAq00rJSPhkKBzjzjQMKN/aXxI1B50bME
	sEwMffs9t/MGEvXw6asprcsYNXay0r3HxXU/tMO+n6eUW2RZ2BHk/phRbioEdtTbZqRGEsVckMi9S
	cSPzNBUpssg106T+Ezo7bGLJ8pr7w1Z89c7qWDvVOSDX1pKDSsiCtoRKSR8mqnxJr+8e8F2aSz7zu
	Rbf7YqSwbsdLc+UZQ30w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxot-0004zn-BC; Tue, 07 May 2019 10:59:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxkm-00089x-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:55:31 +0000
Received: by mail-lj1-x243.google.com with SMTP id f23so13918516ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 03:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VXRQC0UsjauveYOiCa1HYIm6GnidpMCvjvUYDOoy8Kk=;
 b=VYDBlMQM/nMdmQESkPNOIOO0h9ONTG/hgvDy8XsTml1o4qUTDLnhRfle9wOL/Zaklv
 va6dq8w70Itj6U1a0GNuU53NVSeQs+Q9lAbDTHZiUh+C+h/TgpwHaZIBejQg3Qw7TqiJ
 o0ISt0SNZCrwyBVZwDgyDHFTeGtQXJZmLvamAW0ayMpIs26LlnmNy7C4hivNW+Rq4Sdm
 HzBc0KFQsIdMtAqpLaeadJXI0mSLZcJOFcmIIejiZZtn1YNFT/XUO9vCu2ckz5yrNVTZ
 aqPylUWrfsjepkTy7Al4ppslefHU6G3Xu6BjPt/OyzO1KDl75KQip4qak1B1XeKUb4ep
 qTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VXRQC0UsjauveYOiCa1HYIm6GnidpMCvjvUYDOoy8Kk=;
 b=OYS+JyLCS42Y8RG09ZcL6q96W97kyCWG5q3f294U6m+ABisnvz6MQBUJOkOMVrcvA0
 OY+oNIYsb103tP4H1yc4I3sktmaTGIbXYkl5JItukHfLgISgtxEdmwgusM3SpvU1n5nn
 /XYeB3a2KWZhXF6gXaxbS1pdwHntV+FbPqXBu2d6JmJLyYMr+MAB/AdcPkccJ/2AtdTm
 BuEL+uFdnRqPfgpyJbfPNPGlNOrembvQhd6Tvyw1RlSBKTyyRGBXQeILKTrRaj/WQw+R
 RpfR/ASdV+3aZb5hiRn7yUnUDkAbR7tcx/EHjKgfq1a3skmsXJPUY83tphEhd1BRTxin
 SRGw==
X-Gm-Message-State: APjAAAUp8v2OyMxeTgwkNwwJIlnb8nsW9q+/hoz40yFm/IHNwsLhkQ0X
 mq72d/3ocU70mH18CD9LCZYZG2ro/5dxpjght2I=
X-Google-Smtp-Source: APXvYqzG7AIMRfvZsHfREXhwZ2Vicp5dmMb3CrEXJw5WkOuq4TRI1BSQoriBbA7VwVewocx0xBmOjkzmaCaPMCXnOmg=
X-Received: by 2002:a2e:390c:: with SMTP id g12mr18105225lja.174.1557226518508; 
 Tue, 07 May 2019 03:55:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557215047.git.agx@sigxcpu.org>
 <299e28042e0a24c0cde593873bdfb15e18187a92.1557215047.git.agx@sigxcpu.org>
In-Reply-To: <299e28042e0a24c0cde593873bdfb15e18187a92.1557215047.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 07:55:23 -0300
Message-ID: <CAOMZO5CQXmmw50J3Pjy8wKOr+BBEo_-B9ChV32bq1Re4_0-4CQ@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] phy: Add driver for mixel mipi dphy found on
 NXP's i.MX8 SoCs
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035521_345874_B7A92850 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCA0OjQ3IEFNIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNw
dS5vcmc+IHdyb3RlOgo+Cj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBNaXhlbCBEUEhZIGFz
IGZvdW5kIG9uIGkuTVg4IENQVXMgYnV0IHNpbmNlCj4gdGhpcyBpcyBhbiBJUCBjb3JlIGl0IHdp
bGwgbGlrZWx5IGJlIGZvdW5kIG9uIG90aGVycyBpbiB0aGUgZnV0dXJlLiBTbwo+IGluc3RlYWQg
b2YgYWRkaW5nIHRoaXMgdG8gdGhlIG53bCBob3N0IGRyaXZlciBtYWtlIGl0IGEgZ2VuZXJpYyBQ
SFkKPiBkcml2ZXIuCj4KPiBUaGUgZHJpdmVyIHN1cHBvcnRzIHRoZSBpLk1YOE1RLiBTdXBwb3J0
IGZvciBpLk1YOFFNIGFuZCBpLk1YOFFYUCBjYW4gYmUKPiBhZGRlZCBvbmNlIHRoZSBuZWNlc3Nh
cnkgc3lzdGVtIGNvbnRyb2xsZXIgYml0cyBhcmUgaW4gdmlhCj4gbWl4ZWxfZHBoeV9kZXZkYXRh
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiBD
by1kZXZlbG9wZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJvYmVydC5jaGlyYXNAbnhwLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBSb2JlcnQgQ2hpcmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+CgpSZXZp
ZXdlZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
