Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF37E2026E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvR809gY15LZFd7haC7hWbehJanNs6OlZ1r/20uUFic=; b=GVdlYv1tuJm/tU
	jft/yF36BghIWKlJrBqsmXE/SRooom86O0yC9U4L60Bf6xtYwesrISMgKMBHDsAI1sgIDB6CKG4CQ
	fyt3TwN/vcxMInQQlAlv3xvSCw9Hg8pCKxfyVjKKjtUl4AYJ9q9AO+c2sLMNJuVY6XQF86b6a5iuu
	iPJHPfLAg9/C0ReZkRDZePYX/+EH2UYN5RQufqva1g6rqqxJvhifp/yO8++GZLvwkGm7guOUmwDgq
	qP48dgpDZUAPMDzetTU6zp0c8mZz8TyPtxV2AyJ9APU76zh2M3TyNIc566uaWCYHwGC4ft4GKBpWi
	XiIhGlnoQCCiRw4+G18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCas-00087J-Am; Thu, 16 May 2019 09:22:30 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCak-00086v-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:22:24 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 530A520198;
 Thu, 16 May 2019 11:22:21 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 3CA6C1FF3E;
 Thu, 16 May 2019 11:22:21 +0200 (CEST)
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix the get_irq error cases
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1557932949-15912-1-git-send-email-fabrice.gasnier@st.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <366a1437-cd12-c0f9-cfa1-49b6524fdb1e@free.fr>
Date: Thu, 16 May 2019 11:22:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557932949-15912-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu May 16 11:22:21 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_022222_841198_5704ABBD 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wolfram Sang <wsa@the-dreams.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2019 17:09, Fabrice Gasnier wrote:

> During probe, return the "get_irq" error value instead of -EINVAL which
> allows the driver to be deferred probed if needed.
> Fix also the case where of_irq_get() returns a negative value.
> Note :
> On failure of_irq_get() returns 0 or a negative value while
> platform_get_irq() returns a negative value.
> 
> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver")
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 26 ++++++++++++++------------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
> index 4284fc9..14fb105 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -25,7 +25,6 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> -#include <linux/of_irq.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <linux/pinctrl/consumer.h>
> @@ -1812,15 +1811,14 @@ static struct i2c_algorithm stm32f7_i2c_algo = {
>  
>  static int stm32f7_i2c_probe(struct platform_device *pdev)
>  {
> -	struct device_node *np = pdev->dev.of_node;
>  	struct stm32f7_i2c_dev *i2c_dev;
>  	const struct stm32f7_i2c_setup *setup;
>  	struct resource *res;
> -	u32 irq_error, irq_event, clk_rate, rise_time, fall_time;
> +	u32 clk_rate, rise_time, fall_time;
>  	struct i2c_adapter *adap;
>  	struct reset_control *rst;
>  	dma_addr_t phy_addr;
> -	int ret;
> +	int irq_error, irq_event, ret;
>  
>  	i2c_dev = devm_kzalloc(&pdev->dev, sizeof(*i2c_dev), GFP_KERNEL);
>  	if (!i2c_dev)
> @@ -1832,16 +1830,20 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
>  		return PTR_ERR(i2c_dev->base);
>  	phy_addr = (dma_addr_t)res->start;
>  
> -	irq_event = irq_of_parse_and_map(np, 0);
> -	if (!irq_event) {
> -		dev_err(&pdev->dev, "IRQ event missing or invalid\n");
> -		return -EINVAL;
> +	irq_event = platform_get_irq(pdev, 0);
> +	if (irq_event < 0) {
> +		if (irq_event != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Failed to get IRQ event: %d\n",
> +				irq_event);
> +		return irq_event;
>  	}
>  
> -	irq_error = irq_of_parse_and_map(np, 1);
> -	if (!irq_error) {
> -		dev_err(&pdev->dev, "IRQ error missing or invalid\n");
> -		return -EINVAL;
> +	irq_error = platform_get_irq(pdev, 1);
> +	if (irq_error < 0) {
> +		if (irq_error != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "Failed to get IRQ error: %d\n",
> +				irq_error);
> +		return irq_error;

As far as I understand, if platform_get_irq() returns 0, that is an error
as well.

https://patchwork.kernel.org/patch/10006651/
https://yarchive.net/comp/linux/zero.html

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
