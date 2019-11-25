Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5661094F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 22:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1M8hcMdkCwBhstxYP4veJ7xijLoM+hmIWTAtr+3GQ4=; b=Lv8aepBvvJ/TPZ
	xgUTDHtayKXDhkRB5pIowjOZH+LNZiQXIUy0KHSFGEoMT9C9/q8XzHvJZ08w3SGb3TCe7kW+ONSn1
	I3Z184Xm+7iGahgpv8LxIBpFuQwx0gTo9KG9X9woVK2HJtidce9OnA/wW/rmL58A7QYji7+6YLIvk
	bTKRoWzPhOaun2rWADxjnN0j0+TtwzJFNfUNRSKGVPQ2t6OCbmq142iFAhf/H8rLWJq68KS4xGvVC
	ViYwXO4BFGbaOb6cFemxgUA5fIYCxbSdVq+rj3OvGJPYwhZsNFkHz5HjMlnwxGDNdP49deKaTfrvl
	F8+7lKz7Uc/VuNjBf/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZLfw-0007hB-A5; Mon, 25 Nov 2019 21:13:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZLfn-0007gq-2j
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 21:13:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id q17so7796051pgt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 13:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/KuqJB5l3VS5YWmc0ZRh/KWLxhoYbWPz8odAlgDuw5E=;
 b=NKKJVh9N0BEXFJtAG/HZvrC45bHCRpqAZL7I9nZGpsPTNettqxVqNsm3WLBAubJnHm
 GhqcNR2nJhudApwm+ND9QK3ahkZEXJDrbYRxJnTKxQX4e6/SNjAyDzygP+ZKc01nTn6g
 xZdOMw9rZWHvRnNtiUj0KBYdWbottuDPH39VvbfbzvguoneDBBcNv3+ZVCqb6a+7+PXa
 +WVY9X20H6rXncAfrRCnItQ8L4miZrNU3OK1cXcOw6bHdzU8NHEVs5u28oauy0ngxLHe
 /8RyFl0MXjwstc1m6VUXQT58kJe1Bv9qK7vrdutHf3OK+QcU4JHWXxo9/koZGVaV2dLK
 1sgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/KuqJB5l3VS5YWmc0ZRh/KWLxhoYbWPz8odAlgDuw5E=;
 b=IjVmnxsf/rAOJAseBiDxcn76u3qi4SCcHNXnZcM50U7j8aPMgFKv7C703EcRvvrp3e
 9ThICLGs828pi7sQ2OefZwky0sOpGMXxAjC4lMgM1t3pkDG1+CZkkjsBRWtreizgafCa
 Yug8+4ekJZYMyVLuildIdstGDmSFf8kSkgmwFXoU5VCMeVpw/paxvOI4Lnpwj/G0Qxdm
 4ykL7fkEz6dW2tfFm/linpYOCZUGjkZFp3ZQ94BK/I//NRx7iVMSIaQ23ELi7VvA0EDu
 ufXGJMCuJ5QU1xOm4nXvZ849/A/ebUD2vjlC8VhUUt0xFx5rhlGLZ7gTWM3RL211L+GP
 6Fag==
X-Gm-Message-State: APjAAAUjA3MXZKwPuUeMOyBCRhrm9HpOKCN/x/E3dDklx241wIxRNJnt
 PFUGJLsXqI54af616JDzXPYJh5vb
X-Google-Smtp-Source: APXvYqxew5KZZ0qrR2YDEIwvTVxAgRRS29CLv9+5Uv8FOh6XgoMumNo2U1uue2OLUxkoZs5+qbdvVg==
X-Received: by 2002:a63:3741:: with SMTP id g1mr15023503pgn.434.1574716409329; 
 Mon, 25 Nov 2019 13:13:29 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 186sm9611305pfe.141.2019.11.25.13.13.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 13:13:28 -0800 (PST)
Date: Mon, 25 Nov 2019 13:13:26 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Robin van der Gracht <robin@protonic.nl>
Subject: Re: [PATCH v4] input: keyboard: snvs_pwrkey: Send key events for
 i.MX6 S, DL and Q
Message-ID: <20191125211326.GK248138@dtor-ws>
References: <20191125161210.8275-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125161210.8275-1-robin@protonic.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_131331_146149_FB04BB85 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Adam Ford <aford173@gmail.com>, Marco Felsch <m.felsch@pengutronix.de>,
 "linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input @ vger . kernel . org" <linux-input@vger.kernel.org>,
 RobinGong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel @ lists . infradead . org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 05:12:10PM +0100, Robin van der Gracht wrote:
> The first generation i.MX6 processors does not send an interrupt when the
> power key is pressed. It sends a power down request interrupt if the key is
> released before a hard shutdown (5 second press). This should allow
> software to bring down the SoC safely.
> 
> For this driver to work as a regular power key with the older SoCs, we need
> to send a keypress AND release when we get the power down request irq.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>

Applied, thank you.

> ---
> 
> Changes v3 -> v4:
>  * The key release irq handler is now emitting the press and release
>    events directly, instead of the debounce timer handler.
> 
>  drivers/input/keyboard/Kconfig       |  2 +-
>  drivers/input/keyboard/snvs_pwrkey.c | 28 +++++++++++++++++++++++++---
>  2 files changed, 26 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 7c4f19dab34f..937e58da5ce1 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -436,7 +436,7 @@ config KEYBOARD_SNVS_PWRKEY
>  	depends on OF
>  	help
>  	  This is the snvs powerkey driver for the Freescale i.MX application
> -	  processors that are newer than i.MX6 SX.
> +	  processors.
>  
>  	  To compile this driver as a module, choose M here; the
>  	  module will be called snvs_pwrkey.
> diff --git a/drivers/input/keyboard/snvs_pwrkey.c b/drivers/input/keyboard/snvs_pwrkey.c
> index 5342d8d45f81..4888e137cc5d 100644
> --- a/drivers/input/keyboard/snvs_pwrkey.c
> +++ b/drivers/input/keyboard/snvs_pwrkey.c
> @@ -19,6 +19,7 @@
>  #include <linux/mfd/syscon.h>
>  #include <linux/regmap.h>
>  
> +#define SNVS_HPVIDR1_REG 0xF8
>  #define SNVS_LPSR_REG	0x4C	/* LP Status Register */
>  #define SNVS_LPCR_REG	0x38	/* LP Control Register */
>  #define SNVS_HPSR_REG	0x14
> @@ -37,6 +38,7 @@ struct pwrkey_drv_data {
>  	int wakeup;
>  	struct timer_list check_timer;
>  	struct input_dev *input;
> +	u8 minor_rev;
>  };
>  
>  static void imx_imx_snvs_check_for_events(struct timer_list *t)
> @@ -67,13 +69,29 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void *dev_id)
>  {
>  	struct platform_device *pdev = dev_id;
>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
> +	struct input_dev *input = pdata->input;
>  	u32 lp_status;
>  
> -	pm_wakeup_event(pdata->input->dev.parent, 0);
> +	pm_wakeup_event(input->dev.parent, 0);
>  
>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
> -	if (lp_status & SNVS_LPSR_SPO)
> -		mod_timer(&pdata->check_timer, jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
> +	if (lp_status & SNVS_LPSR_SPO) {
> +		if (pdata->minor_rev == 0) {
> +			/*
> +			 * The first generation i.MX6 SoCs only sends an
> +			 * interrupt on button release. To mimic power-key
> +			 * usage, we'll prepend a press event.
> +			 */
> +			input_report_key(input, pdata->keycode, 1);
> +			input_sync(input);
> +			input_report_key(input, pdata->keycode, 0);
> +			input_sync(input);
> +			pm_relax(input->dev.parent);
> +		} else {
> +			mod_timer(&pdata->check_timer,
> +			          jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
> +		}
> +	}
>  
>  	/* clear SPO status */
>  	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO);
> @@ -94,6 +112,7 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
>  	struct input_dev *input = NULL;
>  	struct device_node *np;
>  	int error;
> +	u32 vid;
>  
>  	/* Get SNVS register Page */
>  	np = pdev->dev.of_node;
> @@ -123,6 +142,9 @@ static int imx_snvs_pwrkey_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  	}
>  
> +	regmap_read(pdata->snvs, SNVS_HPVIDR1_REG, &vid);
> +	pdata->minor_rev = vid & 0xff;
> +
>  	regmap_update_bits(pdata->snvs, SNVS_LPCR_REG, SNVS_LPCR_DEP_EN, SNVS_LPCR_DEP_EN);
>  
>  	/* clear the unexpected interrupt before driver ready */
> -- 
> 2.20.1
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
