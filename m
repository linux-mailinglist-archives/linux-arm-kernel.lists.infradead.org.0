Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAD777406
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 00:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb/LePN42E4IFcXTG/AFBGiNi+quIsN5kbXfVE0XEJE=; b=k6gJNLmrpl5oeV
	wCgBv/fJUaH1XZVtJdq7EBi6rxU+jhKAV+9cchJurMAOB2yWlfFHXSpD1whEfM9zRzM8CGdBYe2CS
	v7TP/dEsDCMm+ksky8guQ1pp1fqtNukg4HHsGk9FDx4q+1UQ3f1YLQIm6NYHTqIewN+IbvMEMtk5o
	iIn4Pr744CxLprcwX6fBeQ0W7Hu122oZ1hkWHWEG6uj+nZy9p9wKB7wIbOaToaKOP2zCDb/BMo4Ut
	JFmyefUTJKEj1k3Fa0buPybjhoturoTLwdYSusqxAKILCY72TFVW6qV+ZfbyyTi0ZWfNuPH7CAiG3
	XiilaDFxkIiWy48HoEsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8gL-0007T5-5C; Fri, 26 Jul 2019 22:27:21 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8g5-0007S3-CE
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 22:27:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so44717799wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 15:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pLIvL1ELNjaZefRkSo34EEeqZ5ctkKw3Nhc4gJBc33s=;
 b=ePOopMHVtBJWVbqlKtDxoGAEJq2W+MrKFCPb2aExEk+4Js7x0XFa33YynjU0aYy+Zd
 cy8SOMYIf8ILafKjZKdQNPmN5l+a6/AtmSX16476xaqtwIhafaF+Tkr3Hhy8mEupfqD1
 l1Fxv4/EWdfc3Znt515XrTWt1Gpj/K2hQoYPL5Cr9SGL6Y1I8TqxbhGeL1OoCedTXnsz
 WDJ33syVp6qDMLPxtq5zlNFdpUAgGk8NfG0/NIPKuHicwUUS0OIkT0oli/9bAznmh+rR
 IPghhpH766v1ZEoaeXrdL+5+dmvIE7ZsoovhwgJdcWh2/YKaxv8k+WD3GA7eCwtwaCLI
 a9nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pLIvL1ELNjaZefRkSo34EEeqZ5ctkKw3Nhc4gJBc33s=;
 b=aaw6RK/YkaV7urNqEjlhamfrYb3EOOqDX+/8sN768CMy900JjR3luiboV3/4OLkyXB
 4CSX9b+nalI2v1T5cnAThoy/24l1dG6PTPKtz9zKoqAKMd6U19sEpbeYFIAQAeAQpfzE
 U2U4VSLgpknlprdyHTULQ+KJ8u5OLNSGKslyyyEXY/t5T6fkcysk6PkSpPouoEj9AamP
 WC0MmRJtH54DQpeK4j44zFytKVlJkRnj4rI0tIC/0fqIenOtck5aVLc1fLuZGvWFfTeu
 OKeN8jjn6GJSTmrELqnyeZ127cNbVUg7JnpwSTcRyggobA0Uvtvghzv9kN6C+0EGmTRj
 MCpw==
X-Gm-Message-State: APjAAAWh0/T2iimulVSuGQexV7tTJrL8QyFlJ/rElhUp/IPRFwEUroqv
 LB61cJsEWPmpAWxiPG2pUiVflhhZJKZ/1ZDDVso=
X-Google-Smtp-Source: APXvYqxg4Ing4cAKxRNOyIS5IE4D6JXVjbgrCbkFHO/3jK45VR23Z9xnWOALa5i4VOTyOCbFR45W/I9i3pdpSHZMPSA=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr80069646wmd.87.1564180022241; 
 Fri, 26 Jul 2019 15:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-5-Anson.Huang@nxp.com>
In-Reply-To: <20190705045612.27665-5-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 27 Jul 2019 01:26:50 +0300
Message-ID: <CAEnQRZAZNMBx3ApVmRP8hYPw0XY_QgR-saE6WLcT8oZmHPCxSA@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: imx8mq: Remove CLK_IS_CRITICAL flag for
 IMX8MQ_CLK_TMU_ROOT
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_152705_420825_D9D4A90D 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Carlo Caione <ccaione@baylibre.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, daniel.lezcano@linaro.org,
 dl-linux-imx <Linux-imx@nxp.com>, rui.zhang@intel.com,
 Michael Turquette <mturquette@baylibre.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, edubezval@gmail.com,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

latest linux-next hangs at boot.

commit fde50b96be821ac9673a7e00847cc4605bd88f34 (HEAD -> master, tag:
next-20190726, origin/master, origin/HEAD)
Author: Stephen Rothwell <sfr@canb.auug.org.au>
Date:   Fri Jul 26 15:18:02 2019 +1000

    Add linux-next specific files for 20190726

    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>


I know this is crazy but reverting commit:

commit 431bdd1df48ee2896ea9980d9153e3aeaf0c81ef (refs/bisect/bad)
Author: Anson Huang <Anson.Huang@nxp.com>
Date:   Fri Jul 5 12:56:11 2019 +0800

    clk: imx8mq: Remove CLK_IS_CRITICAL flag for IMX8MQ_CLK_TMU_ROOT

    IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
    should manage this clock, so no need to have CLK_IS_CRITICAL flag
    set.



makes the boot work again.

Any idea?

On Fri, Jul 5, 2019 at 8:07 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> IMX8MQ_CLK_TMU_ROOT is ONLY used for thermal module, the driver
> should manage this clock, so no need to have CLK_IS_CRITICAL flag
> set.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
> index d407a07..91de69a 100644
> --- a/drivers/clk/imx/clk-imx8mq.c
> +++ b/drivers/clk/imx/clk-imx8mq.c
> @@ -539,7 +539,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
>         clks[IMX8MQ_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
>         clks[IMX8MQ_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_dcss);
>         clks[IMX8MQ_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_dcss);
> -       clks[IMX8MQ_CLK_TMU_ROOT] = imx_clk_gate4_flags("tmu_root_clk", "ipg_root", base + 0x4620, 0, CLK_IS_CRITICAL);
> +       clks[IMX8MQ_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
>         clks[IMX8MQ_CLK_VPU_DEC_ROOT] = imx_clk_gate2_flags("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
>         clks[IMX8MQ_CLK_CSI1_ROOT] = imx_clk_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
>         clks[IMX8MQ_CLK_CSI2_ROOT] = imx_clk_gate4("csi2_root_clk", "csi2_core", base + 0x4660, 0);
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
