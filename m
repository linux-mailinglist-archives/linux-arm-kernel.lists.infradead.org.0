Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A61C9305
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 22:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsHcAmZbrU39kFJS22tIG+YLBecER5Ful5UKaTfG5js=; b=tlJzyltsqNcJ8e
	UsWWOKnl0P4jJjHc2xR7HeUnNLmfh1qDRxPMvFJRW5nVLo+mwUr8z2iAG7kdxs4z3EFcmBBTzHzQq
	tGg0mxbFc0iPLXcj+T7oQ2tv/xkFuloV5MMgMr0Qntg7RgVFJNmxLkz5Ugoy0nh/WyiTi39lRlvlR
	ik7b36OohKEJ0QV4Wk8MtSDd5hXhKY2D7seBkOXu/BX+Cty+yYfqfEmsWqhuTHdB43/f5/wqEET+/
	EQMq7I6mY3eHmaQQQA5IsXWeKf4KLUEJSf4s+qP+IPCphN2eq4MoeBphKetvswi6l6xsiuu2fLj0Y
	x944Op2CYCGTfu4R20Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFlVl-0003BH-7h; Wed, 02 Oct 2019 20:46:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFlVN-00032U-4z
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 20:45:51 +0000
Received: from [192.168.1.25] (cpe-70-114-128-244.austin.res.rr.com
 [70.114.128.244])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 777D321848;
 Wed,  2 Oct 2019 20:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570049144;
 bh=hv35gJ916It5E5n4NQJZ6lmL2zLdtKh89Gx4VKZT4C4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=1IeAaA31jERyEi5J8bXqM5vUgEanRiXBnjNwZSvkrbF5Ctk6qRtdBcLoPAPbhGGSh
 tUhyeIJEOGIqlhflGzcq3Sbxy4q9YlHhXLrWbNRhk/ZEy1qVC73lOWQ+i58jG8bjuo
 iSskn9ScsqrfG3WO7vYfve2WN9WfvlA1sJgJERSk=
Subject: Re: [PATCHv3] ARM: drivers/amba: release and cleanup the resource to
 allow for deferred probe
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191002143551.32288-1-dinguyen@kernel.org>
 <20191002173209.GT25745@shell.armlinux.org.uk>
From: Dinh Nguyen <dinguyen@kernel.org>
Openpgp: preference=signencrypt
Autocrypt: addr=dinguyen@kernel.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <e3154e63-f52c-f91b-92dc-a86b1697c743@kernel.org>
Date: Wed, 2 Oct 2019 15:45:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002173209.GT25745@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_134549_640152_A1995021 
X-CRM114-Status: GOOD (  30.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: p.zabel@pengutronix.de, linus.walleij@linaro.org,
 thor.thayer@linux.intel.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/2/19 12:32 PM, Russell King - ARM Linux admin wrote:
> On Wed, Oct 02, 2019 at 09:35:51AM -0500, Dinh Nguyen wrote:
>> With commit "79bdcb202a35 ARM: 8906/1: drivers/amba: add reset control to
>> amba bus probe", the amba bus driver needs to be deferred probe because the
>> reset driver is probed later. However with a deferred probe, the call to
>> request_resource() in the driver returns -EBUSY. The reason is the driver
>> has not released the resource from the previous probe attempt.
>>
>> This patch fixes how we handle the condition of EPROBE_DEFER that is returned
>> from getting the reset controls. For this condition, the patch will jump
>> to defer_probe, which will iounmap, dev_pm_domain_detach, and release the
>> resource.
>>
>> Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to
>> amba bus probe")
>> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
>> ---
>> v3: jump to defer_probe where the driver will unmap and pm_detach the
>>     driver resource for the next probe attempt
>> v2: release the resource when of_reset_control_array_get_optional_shared()
>>     returns EPROBE_DEFER
>> ---
>>  drivers/amba/bus.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
>> index f39f075abff9..4a021b1dab3d 100644
>> --- a/drivers/amba/bus.c
>> +++ b/drivers/amba/bus.c
>> @@ -409,9 +409,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>>  		 */
>>  		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
>>  		if (IS_ERR(rstc)) {
>> -			if (PTR_ERR(rstc) != -EPROBE_DEFER)
>> +			ret = PTR_ERR(rstc);
>> +			if (ret == -EPROBE_DEFER)
>> +				goto defer_probe;
>> +			else
>>  				dev_err(&dev->dev, "Can't get amba reset!\n");
>> -			return PTR_ERR(rstc);
>> +			return ret;
> 
> So, if of_reset_control_array_get_optional_shared() returns an error,
> we end up leaking the ioremap(), the resource claim, the pclk enable
> and pm domain?  If it returns -EPROBE_DEFER, we end up leaking the
> pclk enable?
> 
> I think this is going to be quicker if I write the patch - I haven't
> build-tested this yet though.  Please check whether this works for
> you.
> 
> Thanks.
> 
> 8<=====
> From: Russell King <rmk+kernel@armlinux.org.uk>
> Subject: [PATCH] drivers/amba: fix reset control error handling
> 
> With commit 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control
> to amba bus probe") it is possible for the the amba bus driver to defer
> probing the device for its IDs because the reset driver may be probed
> later.
> 
> However when a subsequent probe occurs, the call to request_resource()
> in the driver returns -EBUSY as the driver has not released the resource
> from the initial probe attempt - or cleaned up any of the preceding
> actions.
> 
> Fix this both for the deferred probe case as well as a failure to get
> the reset.
> 
> Fixes: 79bdcb202a35 ("ARM: 8906/1: drivers/amba: add reset control to amba bus probe")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/amba/bus.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index f39f075abff9..fe1523664816 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -409,9 +409,11 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>  		 */
>  		rstc = of_reset_control_array_get_optional_shared(dev->dev.of_node);
>  		if (IS_ERR(rstc)) {
> -			if (PTR_ERR(rstc) != -EPROBE_DEFER)
> -				dev_err(&dev->dev, "Can't get amba reset!\n");
> -			return PTR_ERR(rstc);
> +			ret = PTR_ERR(rstc);
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(&dev->dev, "can't get reset: %d\n",
> +					ret);
> +			goto err_reset;
>  		}
>  		reset_control_deassert(rstc);
>  		reset_control_put(rstc);
> @@ -472,6 +474,12 @@ static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
>  	release_resource(&dev->res);
>   err_out:
>  	return ret;
> +
> + err_reset:
> +	amba_put_disable_pclk(dev);
> +	iounmap(tmp);
> +	dev_pm_domain_detach(&dev->dev, true);
> +	goto err_release;
>  }
>  
>  /*
> 

Tested-by: Dinh Nguyen <dinguyen@kernel.org>

Thanks,
Dinh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
