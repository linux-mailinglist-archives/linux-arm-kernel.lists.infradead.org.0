Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B1D6C207
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 22:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvXf3X0fGH8LH5AXJtrM8J95hTcxujgUqVvcSncQGPs=; b=aYvVzTkmQ2GDgl
	68OVqTKTj/yrru9Jf//I+VVUPi3q72U9aBJNUCKGqJmVrBGgSaZkZHhnixHmq7ixqUWJJHbrOJOT8
	Jv9t+NE+40Bebv1cVCgL4ZDhDYQGjYv6iFa09/NPm1v2BoVIwN0XWpTsqLa92Fn9Y0ZfDBFLwLriD
	2zsvxV+WXk2Bn15k438CHBZxcMzEZlBDT2Z1m4T0q05/MeuFC4wqIUEaK7tVZyPvl4ME0mbvOHPkT
	ARAUIUiayuLuaDkzebMioVJCDRdqaztZgRtt86vagHMbyMlpkCl+08jBiKKuR+FoV6kOe2JobfACv
	tve3n2P7AoVWxvS8SwNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnqN4-0006Oa-V3; Wed, 17 Jul 2019 20:17:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnqMm-0006OC-BL
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 20:17:33 +0000
Received: by mail-wm1-x344.google.com with SMTP id h19so19956763wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 13:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jDSjE56feL4M57HMVhhU1D7CrADaIyXAujaY2b7p0Rs=;
 b=h5g8BUNGvMProBfMdpTh+q7hvyw/nnXkMstQBN2l2v0wVMu9JjnNFLf8G8UBbs8VVJ
 ZK1iHpAE+DvFSamesInpnEeoVI7xvalKz1Gr9FkCem95LcYk+5ODLi/XzMcjGid6sc8C
 pfG2Z66DSfSavp1cmi6zv6zOx7BuBuZbevyK4SKIOAgNp8oueRhPqcaoS0ZdE6CvUW7d
 n7GO8Ye+0B1LccBd5UAITT+B1QMYYalCoox9TW0MC1y9eG5iGRKYKj1n91/3N9VLJPwU
 mXp7GJRKEKpnMrR5jvH6/JMvGAIHZj5mS0z2YZ6N6pSWA0C+f3B2Xrhtt5JBsIJ6ESqR
 esww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jDSjE56feL4M57HMVhhU1D7CrADaIyXAujaY2b7p0Rs=;
 b=PjSMwhhPL/q8kTKpxzPRtfX23ttPvFv2KuDVdMRa8ccomZ5m/roJeWHYDwiLjqneIo
 ylaQxwqF7IAhMP9K8VM+0sk3kzgLPi+J1mbc9j0iYSRqlTmWYspQYxtMqVVkOfzIo39D
 X3UJ0opNE4CYVfjn+BSzFNyocg3CarDccN3u0u7LL0Q9bifbSEVBuTRh7Mpdqc1rzvZc
 WWIR0vhxghCYfl17CQy7pcDKW2i5ft4HVSZeoZ6dH6XfF7F/yh9FsD4g73VAyCTd5wUH
 GnEGzQJQ8VXYhDMGJFKYZVWqlsPU7TPLP6BVpX34BX3hMC2U/E6M5pdkNsAXeaPYLWoG
 smzg==
X-Gm-Message-State: APjAAAVXDXKpbe3SC0m1q2YBYI4LN2A/mdqlTEoo+/7aHLrpnaiFke6t
 jZp9xGo6gdTUTFPKZSoCs6OTPkcVv2MJgQ9Ly9JxNI09
X-Google-Smtp-Source: APXvYqxJ1bxS+Q8Df3UVfk+sVuMPo1SAEUkpQeAGT7wfV8seECEYiuw8rjMehNQ1vuSUoRjtsWP7h6JvJ5NmHMiYEWw=
X-Received: by 2002:a1c:96c7:: with SMTP id y190mr35132650wmd.87.1563394650383; 
 Wed, 17 Jul 2019 13:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190702152007.12190-1-daniel.baluta@nxp.com>
In-Reply-To: <20190702152007.12190-1-daniel.baluta@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 17 Jul 2019 23:17:19 +0300
Message-ID: <CAEnQRZB23GLVXp459+JieeqQdAKXBRyeTc=hxnovFZwje-tgCw@mail.gmail.com>
Subject: Re: [PATCH] clk: imx8: Add DSP related clocks
To: Daniel Baluta <daniel.baluta@nxp.com>, Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_131732_393435_1D89B531 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 Devicetree List <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 weiyongjun1@huawei.com, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Aisheng/Jacky,

Can you help with review on this?

On Tue, Jul 2, 2019 at 6:22 PM Daniel Baluta <daniel.baluta@nxp.com> wrote:
>
> i.MX8QXP contains Hifi4 DSP. There are four clocks
> associated with DSP:
>   * dsp_lpcg_core_clk
>   * dsp_lpcg_ipg_clk
>   * dsp_lpcg_adb_aclk
>   * ocram_lpcg_ipg_clk
>
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8qxp-lpcg.c     | 5 +++++
>  include/dt-bindings/clock/imx8-clock.h | 6 +++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> index fb6edf1b8aa2..c0aff7ca6374 100644
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> @@ -72,6 +72,11 @@ static const struct imx8qxp_lpcg_data imx8qxp_lpcg_adma[] = {
>         { IMX_ADMA_LPCG_I2C2_CLK, "i2c2_lpcg_clk", "i2c2_clk", 0, ADMA_LPI2C_2_LPCG, 0, 0, },
>         { IMX_ADMA_LPCG_I2C3_IPG_CLK, "i2c3_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_LPI2C_3_LPCG, 16, 0, },
>         { IMX_ADMA_LPCG_I2C3_CLK, "i2c3_lpcg_clk", "i2c3_clk", 0, ADMA_LPI2C_3_LPCG, 0, 0, },
> +
> +       { IMX_ADMA_LPCG_DSP_CORE_CLK, "dsp_lpcg_core_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 28, 0, },
> +       { IMX_ADMA_LPCG_DSP_IPG_CLK, "dsp_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 20, 0, },
> +       { IMX_ADMA_LPCG_DSP_ADB_CLK, "dsp_lpcg_adb_clk", "dma_ipg_clk_root", 0, ADMA_HIFI_LPCG, 16, 0, },
> +       { IMX_ADMA_LPCG_OCRAM_IPG_CLK, "ocram_lpcg_ipg_clk", "dma_ipg_clk_root", 0, ADMA_OCRAM_LPCG, 16, 0, },
>  };
>
>  static const struct imx8qxp_ss_lpcg imx8qxp_ss_adma = {
> diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
> index 4236818e3be5..673a8c662340 100644
> --- a/include/dt-bindings/clock/imx8-clock.h
> +++ b/include/dt-bindings/clock/imx8-clock.h
> @@ -283,7 +283,11 @@
>  #define IMX_ADMA_LPCG_PWM_IPG_CLK                      38
>  #define IMX_ADMA_LPCG_LCD_PIX_CLK                      39
>  #define IMX_ADMA_LPCG_LCD_APB_CLK                      40
> +#define IMX_ADMA_LPCG_DSP_ADB_CLK                      41
> +#define IMX_ADMA_LPCG_DSP_IPG_CLK                      42
> +#define IMX_ADMA_LPCG_DSP_CORE_CLK                     43
> +#define IMX_ADMA_LPCG_OCRAM_IPG_CLK                    44
>
> -#define IMX_ADMA_LPCG_CLK_END                          41
> +#define IMX_ADMA_LPCG_CLK_END                          45
>
>  #endif /* __DT_BINDINGS_CLOCK_IMX_H */
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
