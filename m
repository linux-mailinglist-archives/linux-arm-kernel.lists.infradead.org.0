Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53AA1623F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:53:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SkXbgQ/WXmiOEfR3nyc+BkFIQ2UsB07qFRaf7kDlEwc=; b=BNnCW6jiCht/HJ
	qrH/WE+Ij+u7EEFrIfDxPnlXPtdqKfMOBfGREFNQUx2Oeed8Vgrs5SMHquemn0N0XX9mJxhI6si7r
	GMuV7jz7hjhT0F8jZmxmFmj5hLnD5XIyKD7NLS50vICbZw55B1Z0FGZ+LmeQcF83KS86KPuhHBtSY
	REV6rSssPX+VflJuonMTtqF0yPMGK6tKpUrMebXviMdEMTdCx3FxytKX8sqP426joeNKdcWMKu1PI
	zOQMlLLwaQ5JVdBC17vJHf8mxT8cD8awmxYjmm9o6w45KPwX8Y3a1XF0hVkj1dkHielVClhnIzuCv
	T+rRQxg0X/KPdBZnV+Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zYw-0004vy-RW; Tue, 18 Feb 2020 09:53:06 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zYn-0004vY-93
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:52:59 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0D59FE0002;
 Tue, 18 Feb 2020 09:52:46 +0000 (UTC)
Date: Tue, 18 Feb 2020 10:52:46 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
Message-ID: <20200218095246.GA3385@piout.net>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_015257_593366_086F2339 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Alessandro Zummo <a.zummo@towertech.it>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck LENORMAND <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 23:24:33+0200, Leonard Crestez wrote:
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
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

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

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
