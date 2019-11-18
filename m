Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84371008F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 17:13:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HZFLEXpsTYkY7vUCuqeVZdnlHzgjz2hwYi9eUzfN4o=; b=pmU7uEuD1dO9dE
	1OxL2KhgKfblj3JTgNmqA+BdFW4EJG3AlkfBMVyJkIhcYWcds5vSwMGmPiFb9LT43W28P38wTs3ev
	jYjF9DdcEvNKqcjGEMib3QwpdXyTP+MHUNcVt9xuTNTd2izT7dvu11dNXUmqCZ/m8XgHYSGAEMRPi
	rFuMHn3SZnqDfRmEYt1z95Z42V3GCQcZPbD/bUE5llL1wbqHmqmkRj8CygQGjH3m8KKveSJm69/TB
	SpTeL5iOth7wa1Y7pGsELT2tCfRVNU1R+WLXCUBAi1KM16ZRWXerzMDpMMvwQwpTYBm+pBhFhm2zz
	EwGdlBaoxvtgi/Sn7qVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWjes-0006XE-Ad; Mon, 18 Nov 2019 16:13:46 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWjek-0006Wu-2h
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 16:13:39 +0000
Received: by mail-ua1-x942.google.com with SMTP id z9so5436564uan.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 08:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NOBGWjB9W9cl6b9pfrkUqhdUPzJMZSOyNn3PCn+PlXY=;
 b=ps7FFNxzjiPoJQ9IWxSNspdjSavrBxSIb1/8hgO4fWvVZk3MuL/IzGWMJZlojzw3N0
 fsMp2esNGEi5i7cLybVfBTMe5AUg6rCbtcqdMnTMp8wbzCoKZzhKiLdlhUP9yKiDuUfp
 KKdlty3s6yP+fwKvzjCYP4pIFsukDMiwP7YssOF7Nq68TNAEU5S/N84rdbG85zHFNVV+
 F4a6yxpANHANYfDOXhHn640c6Ov6vGJPOv105ib3SAmGOuAh4PR2naRaNSQQBas0D6Zv
 JpTRJbFuLDa6N7ItMBFdIDDjXI4Jss54WFJME0xUKUeJ/1icuNZ5mvUxAG/qOqlWJktQ
 qFIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NOBGWjB9W9cl6b9pfrkUqhdUPzJMZSOyNn3PCn+PlXY=;
 b=mIY/J5wdo9UIqOPu8COf0bbmr7pQ9oabcXOBDYNGO/E6kAPjJp9dTZxSnEUkIr8dzI
 Uj0aT0KgRr6L/MV6k+rgwFLPAxv5MGCv/AwgE8mW166VFT1m2tT5QJ8EWot7SX8pbyZg
 hBvoPQisWKEM9GfvpbD1z6n026DBGjNYWXF3SnfFSxbUBj2nFaoZm6ylmyuLqg5dJ7R+
 L20kc8UKRSdu8nXH5nd1P8zD441gntR7gaMWZ3P2LyY2vqvCU7IhoZ+57JSPIJU4G+ii
 3mpArWVkcAKdkEjszhr/yeomxBhzQlVUXPhlEQLAjNWsr3UBx/DIYz0qqBNsjqzmU3HV
 jtqQ==
X-Gm-Message-State: APjAAAVereYDIFZs9ZlyGXPNnBxih9CukTGS8GyA2pMdlBK0zCUIMfLH
 NLpdtn2tcpPrlh0fywP2/qQ+xMAs8UIBE4vCyLv5xw0K
X-Google-Smtp-Source: APXvYqyTTuF9zUwn83r+XQtchUtpg488WrjBXUa0RFM7kN+FgCR66+bwwvVp4jVfObasrgnWGDp1Mqi76P5PIhrTWYs=
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr17698085uaq.104.1574093616414; 
 Mon, 18 Nov 2019 08:13:36 -0800 (PST)
MIME-Version: 1.0
References: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 Nov 2019 17:13:00 +0100
Message-ID: <CAPDyKFrkRPuJ5+1sdLevY9tqO6CoKQu6eGDKGpbYoqOUaghnPA@mail.gmail.com>
Subject: Re: [PATCH 1/1] firmware: imx: scu-pd: do not power off console domain
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_081338_150277_F0B476C6 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <dongas86@gmail.com>, Linux PM <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 17 Nov 2019 at 14:07, Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> Do not power off console domain in runtime pm.

Would it be possible to configure a remote wakeup for the console
while the device becomes runtime suspended, rather than preventing the
power off altogether?

Kind regards
Uffe

>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  drivers/firmware/imx/scu-pd.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index b556612207e5..770e3681bbbf 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -85,6 +85,8 @@ struct imx_sc_pd_soc {
>         u8 num_ranges;
>  };
>
> +int imx_con_rsrc;
> +
>  static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
>         /* LSIO SS */
>         { "pwm", IMX_SC_R_PWM_0, 8, true, 0 },
> @@ -173,6 +175,23 @@ to_imx_sc_pd(struct generic_pm_domain *genpd)
>         return container_of(genpd, struct imx_sc_pm_domain, pd);
>  }
>
> +static void imx_sc_pd_get_console_rsrc(void)
> +{
> +       struct of_phandle_args specs;
> +       int ret;
> +
> +       if (!of_stdout)
> +               return;
> +
> +       ret = of_parse_phandle_with_args(of_stdout, "power-domains",
> +                                        "#power-domain-cells",
> +                                        0, &specs);
> +       if (ret)
> +               return;
> +
> +       imx_con_rsrc = specs.args[0];
> +}
> +
>  static int imx_sc_pd_power(struct generic_pm_domain *domain, bool power_on)
>  {
>         struct imx_sc_msg_req_set_resource_power_mode msg;
> @@ -233,6 +252,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
>                       const struct imx_sc_pd_range *pd_ranges)
>  {
>         struct imx_sc_pm_domain *sc_pd;
> +       bool is_off = true;
>         int ret;
>
>         sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL);
> @@ -251,6 +271,10 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
>                          "%s", pd_ranges->name);
>
>         sc_pd->pd.name = sc_pd->name;
> +       if (imx_con_rsrc == sc_pd->rsrc) {
> +               sc_pd->pd.flags = GENPD_FLAG_RPM_ALWAYS_ON;
> +               is_off = false;
> +       }
>
>         if (sc_pd->rsrc >= IMX_SC_R_LAST) {
>                 dev_warn(dev, "invalid pd %s rsrc id %d found",
> @@ -260,7 +284,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
>                 return NULL;
>         }
>
> -       ret = pm_genpd_init(&sc_pd->pd, NULL, true);
> +       ret = pm_genpd_init(&sc_pd->pd, NULL, is_off);
>         if (ret) {
>                 dev_warn(dev, "failed to init pd %s rsrc id %d",
>                          sc_pd->name, sc_pd->rsrc);
> @@ -326,6 +350,8 @@ static int imx_sc_pd_probe(struct platform_device *pdev)
>         if (!pd_soc)
>                 return -ENODEV;
>
> +       imx_sc_pd_get_console_rsrc();
> +
>         return imx_scu_init_pm_domains(&pdev->dev, pd_soc);
>  }
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
