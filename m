Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B4D78715
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHJ4ULvEyfPyIk6UMU0Z+kgDhDRv6as0G37vfIlUOks=; b=furohYzo985Frf
	7I8CZNzxaNSWeTR8XAq/uf49KXD+mw/xg1N2MDAbfLw4qr7S0sUngOS4ZotGUIw77BXDQpxnLUtCn
	WWGfVsslSdMeoRvRd7rLCj0Bny094qg289aJ5TBrpe/ktcf4UnIuXS5P8z76HI6SRBdgPiasq14aV
	Snh1Mh8Cm5YJ71qDf91nOXFoUr7zp+TEAD2dg2vjAOXXNwHkSBiaTRYTl4d9n+0xRPDsKDm4B4Pge
	qPiaoTvsPY3fxdHNCbk2xt0LIatGoRwmFBE+Yl+VzqY9VBjknIwwk7g7UMgVLbWJ2T4+Cz5Al1cQl
	SeD2wMw4QnMOHnxaR97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0mo-0006wQ-RC; Mon, 29 Jul 2019 08:13:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0md-0006w3-Hu
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:13:28 +0000
Received: by mail-wm1-x344.google.com with SMTP id s15so31217483wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 01:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SyFl8pL1iDZjmoOSkzXlnQ91ZUZpLkZdLRiM5vUWoME=;
 b=RMc4NRl9Idazs+XYRc2PCVJrla+XcMB5QI9fW4vskcW4AWdCAjW114u0ltcwv3J3kS
 MejM0+8lWjKST59WU3AMIZxd4/R8oxvP5WYmQZ/s+MfdW0r6aFSv4SZMNIv8js7Nr4IX
 7Gaa0m/10cn1v9XCIjcejFparxRsgjkUPGkLrC907ae/L4wg583BzHLdcoNoI1Xw+JJL
 J4QUDcdP7QMkggQGmKsgFfCqz9l+OvK80s89AN0hnR8wIaN8/pIPLxO/Jq7oo4ieNU4W
 2n2Ym18F3HuEavyXhWQ9Wbjei3xF1zzsbxx0b3hGtD55UjczEVPEeLSlS6D+SvQpiqid
 wP1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SyFl8pL1iDZjmoOSkzXlnQ91ZUZpLkZdLRiM5vUWoME=;
 b=IIWpWYOEju3RBNGVzxV5E3czqRgQnSmH1KJesPaQcCX8wLCbrH6iWRKISPfzsEng59
 jCpDQqQMDwfJZjAAez+/01N9XNxB9pUnnuOSCC9swzPdzZMIm4DsRmrCzanDicTo/F42
 anw8YH2HywPHrFgZC8Ns0A+DyFPP/a4Jj0T+DHcE+WFOjxJehuotFhwHT3bRwM0GSz9G
 IxiQHQrAIk2GuFGCRJ16k2f1dd/30aOjBilYEJBUsjyq+bySPJ8GtAXuPu/GNw3I7q0h
 /A1cvCI6zG8IGx/jlUGKQ6M366Jel98qSjUSiYlvC+3qnD3KpxmO3DeUfdI+SBpgDfgE
 MK9w==
X-Gm-Message-State: APjAAAVP1CuWHtAyN6pFbrvVbtcB7eaOhhekUzwPMvLbdwlpP8pm+qES
 qKk0ybI6Tefdydi2HnpGFb6FaFxrm7tPUefWpnU=
X-Google-Smtp-Source: APXvYqyJSF9giFQVsItTxUvBm5InpdKI0AD91vYK8YMt/vMVNe8Bcy9zHxVTrPIj7PKEgF2MKDJZ8Wm9t5JIOx9xuEE=
X-Received: by 2002:a7b:c247:: with SMTP id b7mr102240187wmj.13.1564388004695; 
 Mon, 29 Jul 2019 01:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
 <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
 <DB3PR0402MB3916233A56CF5DF778115716F5C30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZCrZybzcy__u4p_Eq4zSVc2ESyfKLk5sPf1JYba1JSOiA@mail.gmail.com>
 <20190727161736.4dkfqgwftre67v56@fsr-ub1664-175>
 <DB3PR0402MB391600891BA75DFFA9674058F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZB6tmYFA8wwh0Fm49LTTDuCLq-SWVfrcUkRWWBo=0U13w@mail.gmail.com>
 <DB3PR0402MB391627F725AA7237BCACBE87F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAEnQRZBrmikenTvnh7syhy=PDPcTL3fn2TJ+ya=ToZ+SFmH5tw@mail.gmail.com>
 <CAEnQRZDSjmcU8Q7+kMeFf12tx0NuMNjrcsgnXayvHpu4ChwHGA@mail.gmail.com>
 <DB3PR0402MB3916F32F03E542AEFBD39A43F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916F32F03E542AEFBD39A43F5DD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 29 Jul 2019 11:13:12 +0300
Message-ID: <CAEnQRZBqdGY9A69ew=ukdp1iWVR_jvJih-cZPx_XzAri+xWppA@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_011327_620422_1FCA758C 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "edubezval@gmail.com" <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:49 AM Anson Huang <anson.huang@nxp.com> wrote:

> > We are all set then. Thanks Anson for clarifications!
>
> Thanks, so we are all clear about this issue, need to wait thermal maintainer to review
> the rest patch in this series, but I did NOT receive any response from thermal sub-system
> maintainer for really long time, NOT sure when the thermal patches can be accepted.

This is really unfortunate. I think it is safe to do a RESEND of the
patches as it has
been at least 3 weeks since your first send them.

Pick any reviewed-by you got and do a resend.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
