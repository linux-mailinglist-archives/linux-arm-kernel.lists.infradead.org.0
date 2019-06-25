Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEDA526D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IHF+MSSDGSleeGRAOgI6Tnd0yDP6oj+m2E6CNWGotho=; b=EiulCCBI08kcQ3
	svshNg9Fjm8Rtamm8rUzimLHNC0kwPgBmWJYX6Z3VoGXp0OpYoN0p3J0M1SPlTiBEGngnLKjqocKs
	33EXXbxy29k0VzV4qDi3DfQMUPg5XAvDR+mvS+oh/XthVgHh4W7GmRE0KtyoL/+nta3vDpqY2i+UF
	OSY4n848ysTO7nOsZ743VrEBb2anCHkgepiYbkVLYc7HLYUni1PRlxXugwTztSPCiSsQ/6aH8xOpz
	f+QLQxvrT6w/VOWG03Z/suFEBALFJmVQBo4Q7wOAt/6Ez6z9/Lz/zoRH42/P3ltgUB/l1PqJxZVFy
	VMq713pexnjkUrqb9TGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfh08-0002ML-RP; Tue, 25 Jun 2019 08:40:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgzt-0002Lp-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 08:40:14 +0000
Received: by mail-lj1-x244.google.com with SMTP id 205so6574077ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 01:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ejxOd2mS2m5aGppcIAyiv0cZFZaSK9s/NYtz62kszvs=;
 b=wxQwoaSkbLLPQJPL+BoL1Icf1FXMBP7ECaYVSMRazAL/TZoV5FN//Ms7trRiw+SuQd
 581CzTIQTx/N9fE/sUXLZ7PfZgODwh0P87yWl+eKphHagimtQhjRUDz0I9oMrRT3Rdlx
 WrZho37U3od1bUGfg1nka8v2ot5UPnsBTSgHDliSu3xpGEfq6UlYG4A4Zj9hwI10Ql0K
 0hcqQDO+Gs8C1fHcg+250AaE3Dt+ta0TLprAYJt2lTuyAOO7Ca9iNKoZLmOHRMm4T8on
 wR07J71PBuWBLFz8YcY3eSEEwtH/PX+v6KA7LIsYG8EonQf7uo3yNxz4rPvnIQ2c8+Eq
 H2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ejxOd2mS2m5aGppcIAyiv0cZFZaSK9s/NYtz62kszvs=;
 b=LKaweQTaitMF0bVx15px7QQm91/+bZA3cMkSzrlmjGvT5hwwW8fAKaZ/NXa5kNKiA+
 VxU6OYil8dXRWONLZ7+mwDUlQC3D3oWsbEXhAeiaTVxuIbke5sQYzvOPMCBK2a0zs1F6
 NoXsYJaVODr1G5fPQvQQghrVPW2sE95+ea+EJXZcSRIIEAYFsmeIrpFoSgCuGeUxN8Fe
 xE5zkPflF6dzrwIIjmeWC/TmVUHceeg1xFJESPyogoEZ1oXOVOen6YONL60TBCSoFLV7
 TbDY8woIYNJuIh0ZZvx4Pvm9NWWDQrL7IhNkdMd+Q/Bs3I9I6KVIaSsqToYaImjSsJAt
 J49g==
X-Gm-Message-State: APjAAAVy2bSm8cavjE0MtuJotR0yCkmEzmoU7nGRPk4uXyzUxAsa/uP8
 JEXJxqf3qiGgdg0o2CLCodgxd15A1f2GLFI217JNMA==
X-Google-Smtp-Source: APXvYqyB4Z1lLvFvTlYxXutc/tB2HRL2IRjyx5/sUSP/WDd11DGWzAgBW9dlPUP+BvKIc2buVVM1H0owHVNURRDGGzY=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr60880342ljg.62.1561452011834; 
 Tue, 25 Jun 2019 01:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-1-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 10:40:00 +0200
Message-ID: <CACRpkdYsunrq7CY4HhosxH-MVxBGLqLPGnraqx1=_gZ8DxYZLQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: imx: Add pinctrl binding doc for
 i.MX8MN
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_014013_774061_5635B91D 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Stefan Agner <stefan@agner.ch>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Olof Johansson <olof@lixom.net>, Jagan Teki <jagan@amarulasolutions.com>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms+renesas@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 2:24 PM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add binding doc for i.MX8MN pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
