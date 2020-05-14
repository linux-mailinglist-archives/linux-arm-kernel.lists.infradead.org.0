Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265271D2838
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 08:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySWwjOKv4cPiHUwTUJK87bXlNimNFbVWMnVfmjSB2Wk=; b=kbRGHrgmtEH/1I
	MLV/3gyoeAT+4NVNXsLghSZOL/atasILw2/F/b5de5YSAhZiIr6+AOqiMaA5iiV6+lIRdVVymrkjl
	6elxdabdqNzglrfVPyYS42B6XlnwdXgYijqqaj1/E1cSwhNQFT280VviqHZ8REbHFJvGU6YQoba6/
	2akB+Ymuet9LE2Vrjoilg+4xMotxqsexlO7INa4vVHiFNGFTkiO83x4FofuJMx2Zfu/wowocAd2bT
	8GOfcxwI1ZUwEWDtRy6gVUFPibNTlrJMz2fJMx8VsCQZFY0dhOgkAlIUBZTromlXLTTgBUM0PDTlv
	+IvcZxf/NUFAJ0yTxYVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7kO-000510-LA; Thu, 14 May 2020 06:53:36 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7k2-0004q0-1O
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 06:53:16 +0000
Received: by mail-vk1-xa41.google.com with SMTP id v192so503214vkd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 23:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AD73/gyPw537Xp1vDJOYvLHr7JMtBDUrFsijP0WuRks=;
 b=RdSLSskx2Wvw3alRl86UnDw5dnN1+ZHo+jEuOiDqNYvb3EfRrfuQ1fjHd8pEofVcmx
 OSOsg5Ki+jgXdahzTq8BYmydYLkEp/D/1CWEiD9WIoLB/oyMT0/XdOe73UgI9Xo/PX8Z
 vAsKTrb1XOhLWFCweUDfv5clUyY9/Ct0OqoS4jylDHfwnX2dZaBf96hPr9UjJyc9qJ54
 LfhUMigof8LCnYdiDSe3krEkaZ0cdi5WNh7X76KkQjTeQbosgpRBGY0UM/FYTbyUC8gZ
 fAmJrAfp1zGCiCU5/M/YWEfBTBFrgSdaXqABtBbjTfwTGLLBBjxmcCGYThD0EubKLklL
 Y/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AD73/gyPw537Xp1vDJOYvLHr7JMtBDUrFsijP0WuRks=;
 b=oqiKZa3adDKQOlZvY4ahcscAnSnvYjzkYrUVvIRzS6feQRsk/O6pMKxeVCL/PltG26
 8StW2pVUDvDpVbL6lUmjiRkT5Bw6WcCwM/16S1f1Iqf2ZTk2/6BUA/OazHYIMJIw6qVP
 Gbx+jYE/7GjZ27Sg4vVmZIpu+8HAqxsUwzq91oKIBn+p+3Yiu/1vuJmDpQfAU2uS++4J
 sYZyme22fnfb1+oiom9DRx/BYZtV3sFbJvLOkDoDH+9bsPxHtLLEW+NJHNxARcsR/iLN
 30fAleT9iIn6IPIS6QW0JygUIv4dNp9sE6JTnOa9Tnh+gi4nX9HFAMizy0Hr+PUveAXX
 FPIQ==
X-Gm-Message-State: AOAM531HL0o3A0PdrMr0ksC94Fq3aRKE0lAAPVVhF8WhlVs+45Cen0FW
 yGHphdy0dMkRSpQ2MDp+Q/wQtas41TgQ4sT/Tg1uiw==
X-Google-Smtp-Source: ABdhPJwqOdHWX9G/Vc1PEWvZMXQ69dsTzV+tAJwC+UvjMCX5pJg7UnTD2qxWptjx7wEK5anGtRzdU/mrdZoXOnfLCtw=
X-Received: by 2002:a1f:a786:: with SMTP id q128mr2448341vke.86.1589439192297; 
 Wed, 13 May 2020 23:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200514062836.190194-1-vkoul@kernel.org>
In-Reply-To: <20200514062836.190194-1-vkoul@kernel.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 14 May 2020 12:22:33 +0530
Message-ID: <CAHLCerN_pxkqJojJLL5ztbYCeFZ9Mco6oM-=0mdmh5iSydxrUg@mail.gmail.com>
Subject: Re: [PATCH] net: stmmac: fix num_por initialization
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_235314_169232_E0DBCCF4 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rahul Ankushrao Kawadgave <rahulak@qti.qualcomm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 netdev@vger.kernel.org, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 11:59 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> Driver missed initializing num_por which is por values that driver

Nit: s/is/is one of the/ ?

> configures to hardware. In order to get this values, add a new structure

Nit: s/this/these

> ethqos_emac_driver_data which holds por and num_por values and populate
> that in driver probe.
>
> Fixes: a7c30e62d4b8 ("net: stmmac: Add driver for Qualcomm ethqos")
> Reported-by: Rahul Ankushrao Kawadgave <rahulak@qti.qualcomm.com>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Otherwise,

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> index e0a5fe83d8e0..bfc4a92f1d92 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
> @@ -75,6 +75,11 @@ struct ethqos_emac_por {
>         unsigned int value;
>  };
>
> +struct ethqos_emac_driver_data {
> +       const struct ethqos_emac_por *por;
> +       unsigned int num_por;
> +};
> +
>  struct qcom_ethqos {
>         struct platform_device *pdev;
>         void __iomem *rgmii_base;
> @@ -171,6 +176,11 @@ static const struct ethqos_emac_por emac_v2_3_0_por[] = {
>         { .offset = RGMII_IO_MACRO_CONFIG2,     .value = 0x00002060 },
>  };
>
> +static const struct ethqos_emac_driver_data emac_v2_3_0_data = {
> +       .por = emac_v2_3_0_por,
> +       .num_por = ARRAY_SIZE(emac_v2_3_0_por),
> +};
> +
>  static int ethqos_dll_configure(struct qcom_ethqos *ethqos)
>  {
>         unsigned int val;
> @@ -442,6 +452,7 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>         struct device_node *np = pdev->dev.of_node;
>         struct plat_stmmacenet_data *plat_dat;
>         struct stmmac_resources stmmac_res;
> +       const struct ethqos_emac_driver_data *data;
>         struct qcom_ethqos *ethqos;
>         struct resource *res;
>         int ret;
> @@ -471,7 +482,9 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
>                 goto err_mem;
>         }
>
> -       ethqos->por = of_device_get_match_data(&pdev->dev);
> +       data = of_device_get_match_data(&pdev->dev);
> +       ethqos->por = data->por;
> +       ethqos->num_por = data->num_por;
>
>         ethqos->rgmii_clk = devm_clk_get(&pdev->dev, "rgmii");
>         if (IS_ERR(ethqos->rgmii_clk)) {
> @@ -526,7 +539,7 @@ static int qcom_ethqos_remove(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id qcom_ethqos_match[] = {
> -       { .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_por},
> +       { .compatible = "qcom,qcs404-ethqos", .data = &emac_v2_3_0_data},
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, qcom_ethqos_match);
> --
> 2.25.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
