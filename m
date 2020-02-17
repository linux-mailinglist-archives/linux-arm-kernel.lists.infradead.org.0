Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161CE160A58
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD+YbqDuGtV7bp5uTyKF9JB/hXh7N3wsSiru4L4YIxc=; b=O162aLukrKaoCv
	uwDjGYvEBGKNLjFchsoeN3Z9xTEmV75BdvMv54XcAUiXszGQ8DFxB4GRpmsdqnJ60isPvKmm0Rj2T
	updnftmuvjukf5uq2gROdmpY45cnqyD6BeG2c11dcDQKasL6qogUGDn3Knwtq6AyzZqGPybV7yfLN
	Q9Ap85IuuPVmqvRxQ5Ixc6qNn9/fk15Ozu4Eausq8f4ZOhF0bfjCrQtuW2LTLvVl4UYUGKIxKhfUN
	gINbFk40ny0vBWsX6HA8GP+QM/clxI8ykL/zF5OU+e5hSP9ij4fbnGEsW7fU/6rD7TvQnYOj7eGSf
	8squSWp38ALR0ovfE5ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Zn2-00025J-35; Mon, 17 Feb 2020 06:21:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Zmt-000247-Q2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:21:49 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B40A2206F4;
 Mon, 17 Feb 2020 06:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581920507;
 bh=rC6oahDiZclQyeUyM7BlELanY3Kd/ZiKCR7pIt7VJfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l88BFXQFqpgRZOZLijUcaDoSmag2aNGSm/9EW3dkh3N+Zn+CQLNJ4818ZNMomB0Fr
 vJBWmwJ4MUX1BUwtu5ygj+0Uhk4VZy50uwZc4h5tfqaWVWUfEG0AzmQMWKbyheK1Hg
 zYR5tcx+JoP/absMmsZ2PJtNKb2kS4PLXheO+Uyk=
Date: Mon, 17 Feb 2020 14:21:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
Message-ID: <20200217062129.GB6790@dragon>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_222147_890279_454C5C1F 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck LENORMAND <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 11:24:33PM +0200, Leonard Crestez wrote:
> The imx SC api strongly assumes that messages are composed out of
> 4-bytes words but some of our message structs have sizeof "6" and "7".
> 
> This produces many oopses with CONFIG_KASAN=y:
> 
> 	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0
> 
> It shouldn't cause an issues in normal use because these structs are
> always allocated on the stack.
> 
> Cc: stable@vger.kernel.org

Should we have a fixes tag and send it for -rc?

Shawn

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
> ---
>  drivers/clk/imx/clk-scu.c               | 8 ++++----
>  drivers/firmware/imx/misc.c             | 8 ++++----
>  drivers/firmware/imx/scu-pd.c           | 2 +-
>  drivers/pinctrl/freescale/pinctrl-scu.c | 4 ++--
>  drivers/rtc/rtc-imx-sc.c                | 2 +-
>  drivers/soc/imx/soc-imx-scu.c           | 2 +-
>  6 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> index fbef740704d0..b8b2072742a5 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -41,16 +41,16 @@ struct clk_scu {
>  struct imx_sc_msg_req_set_clock_rate {
>  	struct imx_sc_rpc_msg hdr;
>  	__le32 rate;
>  	__le16 resource;
>  	u8 clk;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct req_get_clock_rate {
>  	__le16 resource;
>  	u8 clk;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct resp_get_clock_rate {
>  	__le32 rate;
>  };
>  
> @@ -82,11 +82,11 @@ struct imx_sc_msg_get_clock_parent {
>  	struct imx_sc_rpc_msg hdr;
>  	union {
>  		struct req_get_clock_parent {
>  			__le16 resource;
>  			u8 clk;
> -		} __packed req;
> +		} __packed __aligned(4) req;
>  		struct resp_get_clock_parent {
>  			u8 parent;
>  		} resp;
>  	} data;
>  };
> @@ -119,11 +119,11 @@ struct imx_sc_msg_req_clock_enable {
>  	struct imx_sc_rpc_msg hdr;
>  	__le16 resource;
>  	u8 clk;
>  	u8 enable;
>  	u8 autog;
> -} __packed;
> +} __packed __aligned(4);
>  
>  static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
>  {
>  	return container_of(hw, struct clk_scu, hw);
>  }
> diff --git a/drivers/firmware/imx/misc.c b/drivers/firmware/imx/misc.c
> index 4b56a587dacd..d073cb3ce699 100644
> --- a/drivers/firmware/imx/misc.c
> +++ b/drivers/firmware/imx/misc.c
> @@ -14,30 +14,30 @@
>  struct imx_sc_msg_req_misc_set_ctrl {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 ctrl;
>  	u32 val;
>  	u16 resource;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_req_cpu_start {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 address_hi;
>  	u32 address_lo;
>  	u16 resource;
>  	u8 enable;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_req_misc_get_ctrl {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 ctrl;
>  	u16 resource;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_resp_misc_get_ctrl {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 val;
> -} __packed;
> +} __packed __aligned(4);
>  
>  /*
>   * This function sets a miscellaneous control value.
>   *
>   * @param[in]     ipc         IPC handle
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index b556612207e5..af3ae0087de4 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -59,11 +59,11 @@
>  /* SCU Power Mode Protocol definition */
>  struct imx_sc_msg_req_set_resource_power_mode {
>  	struct imx_sc_rpc_msg hdr;
>  	u16 resource;
>  	u8 mode;
> -} __packed;
> +} __packed __aligned(4);
>  
>  #define IMX_SCU_PD_NAME_SIZE 20
>  struct imx_sc_pm_domain {
>  	struct generic_pm_domain pd;
>  	char name[IMX_SCU_PD_NAME_SIZE];
> diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
> index 73bf1d9f9cc6..23cf04bdfc55 100644
> --- a/drivers/pinctrl/freescale/pinctrl-scu.c
> +++ b/drivers/pinctrl/freescale/pinctrl-scu.c
> @@ -21,16 +21,16 @@ enum pad_func_e {
>  
>  struct imx_sc_msg_req_pad_set {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 val;
>  	u16 pad;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_req_pad_get {
>  	struct imx_sc_rpc_msg hdr;
>  	u16 pad;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_resp_pad_get {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 val;
>  } __packed;
> diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
> index cf2c12107f2b..a5f59e6f862e 100644
> --- a/drivers/rtc/rtc-imx-sc.c
> +++ b/drivers/rtc/rtc-imx-sc.c
> @@ -35,11 +35,11 @@ struct imx_sc_msg_timer_rtc_set_alarm {
>  	u8 mon;
>  	u8 day;
>  	u8 hour;
>  	u8 min;
>  	u8 sec;
> -} __packed;
> +} __packed __aligned(4);
>  
>  static int imx_sc_rtc_read_time(struct device *dev, struct rtc_time *tm)
>  {
>  	struct imx_sc_msg_timer_get_rtc_time msg;
>  	struct imx_sc_rpc_msg *hdr = &msg.hdr;
> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
> index fb70b8a3f7c5..20d37eaeb5f2 100644
> --- a/drivers/soc/imx/soc-imx-scu.c
> +++ b/drivers/soc/imx/soc-imx-scu.c
> @@ -23,11 +23,11 @@ struct imx_sc_msg_misc_get_soc_id {
>  		} __packed req;
>  		struct {
>  			u32 id;
>  		} resp;
>  	} data;
> -} __packed;
> +} __packed __aligned(4);
>  
>  struct imx_sc_msg_misc_get_soc_uid {
>  	struct imx_sc_rpc_msg hdr;
>  	u32 uid_low;
>  	u32 uid_high;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
