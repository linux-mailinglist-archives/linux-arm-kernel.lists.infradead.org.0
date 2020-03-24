Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE761919FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 20:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AiAELhp7hICxsyP6AXFd3vsRFEWkn0YYaUxvMLvSp4=; b=joNRz3/PcaF92g
	wKHToKoXWO24XZ09jUGPCBb7VHieG6kUTwW6GNEAaX7XkfKbZNEdr3WH6e6QwtFDB43V1yj/Kv2kI
	ZV32jeHDbId1u4/DR1Bfj7Ae+ztqbCCfNY85rRBikZmLLUaL4JhASB7a4NnJnsA6V1vhi1txP+CYV
	kO2OEH25HCDjiBwSK90NwQuaKkUrDW8u3Zg8/ENfhKmK1P2UoQIsm2iBdN+PX+/Fz1NQeyoq+8crI
	Dg5fxmqqD3kJ5eORDiUQh8wlGJ3XHGAY4MItEhA6uOErABHhsgAEOR78GRb4SLQe2szHA9N8mDNqr
	da/wmjxuleS24K6RJmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGpJn-0008K9-7b; Tue, 24 Mar 2020 19:34:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGpJg-0008Jg-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 19:34:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id j15so14285451lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 12:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BuW1pgtMi1nFDluniTHUYAMhP+ECNJICP5kvAttrp90=;
 b=djAXMRGpfX/uYnxHJ3wl2qCQUySXiH6H9DG4JMMCYNMq+CNKLKGF43SapUWG/r/Sf4
 9jJQY9v5nX2vWjGcBkQV6PJN0djRJL8yL7kzP7wOERKNka2dR1DI6/7IZ1iDLorQSymH
 g4ha+k4Hg7vSp7GajygnZJtjf2DJuxcohHO4EZ6207TwbQg2DpmeWx425DGGClfDKQds
 9pl/yqXmqdStvtaXrMDpMHP/+g3ZF+mlT1jkDlTJN5lZ3clkfzHhb5YCor7FDdD7Q5R5
 ogEIx2Fuiom+0hLoUv/fY2iD3A3SXawE2a/bd3OenLkmaq6gxfuSXqBlTV1Hoxo5m1au
 dc8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BuW1pgtMi1nFDluniTHUYAMhP+ECNJICP5kvAttrp90=;
 b=AV94+j4EXCFVmRSHgt2ko49jxAh63grZmYmu8qb1OsewA/nCJNhfIVMb2/71SOl6CJ
 M2SucdeA/DuDNuokOphWYiX9sqAhWXsl2Je/jshcKRzDioI+67BCvy5JMRUSUaz70HiY
 8ia3Av5nPMf+8CNtSps7eJ0EXdWgu7pEsr3IS7GakwmT+VN/pDQ/tW2nq6KDB7nKq6OI
 lefjMynxC/uIA3r+s8dqDj1/Iwkj13WcnTd7G/c90HxoOSYErtv1MlBBGM6DzCW2ldhv
 TZGWvioJw27Wf880EzZ2nODVWeXerF/FIMF1tGfbqRwn5rnzgc64rxYwwQA6eR/Uv2i6
 frSw==
X-Gm-Message-State: ANhLgQ3EAAvZFJ2s7uCUFSareb83QIwsW78S3xnZPDhvU2yvXRFx8bBw
 cyqTWDVSCvtTrpTJ+XG8/NqCmW/ukdlqsit5Rew=
X-Google-Smtp-Source: ADFU+vtCUdIkmuQsY4QzJUMqNYV6lYZDkx1LNuGCgcfEy8vGbUSEMIGt5lO92LiWyGxs7J1Z7ulaFxz0Vq1YTqoUtYA=
X-Received: by 2002:a05:6512:3b7:: with SMTP id
 v23mr1260787lfp.66.1585078462025; 
 Tue, 24 Mar 2020 12:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584730033.git.agx@sigxcpu.org>
 <c7fd138e00608a108dae3651ab10d583a60040fc.1584730033.git.agx@sigxcpu.org>
In-Reply-To: <c7fd138e00608a108dae3651ab10d583a60040fc.1584730033.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 24 Mar 2020 16:34:13 -0300
Message-ID: <CAOMZO5Dhy7ahcR-S=QG=pumxXa8HnQoWpg0TdFyeu_Levdh9_Q@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_123424_839364_BE81CD94 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Lee Jones <lee.jones@linaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXIgMjAsIDIwMjAgYXQgMzo0OSBQTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IFRoZSBOb3J0aHdlc3QgTG9naWMgTUlQSSBEU0kgSVAgY29yZSBj
YW4gYmUgZm91bmQgaW4gTlhQcyBpLk1YOCBTb0NzLgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8g
R8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiBUZXN0ZWQtYnk6IFJvYmVydCBDaGlyYXMgPHJv
YmVydC5jaGlyYXNAbnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2Vy
bmVsLm9yZz4KPiBBY2tlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgoKUmV2
aWV3ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
