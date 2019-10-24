Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5329CE320B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lmKgdviJsfQH1GavQX0HA3Rb3/jfMPf3XFNuKociw0M=; b=c43rtkj3iKOORmDqFpwtAJ5ws
	WvivnHNU1tqsVgW3r1yFEpneRyYAL3l2VuePC/gsDfNtzp46Zthz/dp19+GGSJceW4V/M1Le46Q16
	hrjKrZcw3Is+MbOB2kBg2dE8E8JOyEeoivZSqSMu6DAuUY2POF0wgRNmO7BfyDpZfZl+WGKZU4BU6
	H3RXM5ot4eXbTvnFWWGvd3r5k5y86C82m7wlN+nFI4qVYqn2ndGbJ8qOQ+Wja8FYQkBRneelOVOBt
	gle5fFdMy546hJHKGzKZ0kvXX6bityKyjrY03b/PcytN21+3YuuwswO0AMitO29a+HnINKrl6TrKA
	jiXzSV+4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNc1P-000675-NQ; Thu, 24 Oct 2019 12:15:19 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNc1E-0005dX-To; Thu, 24 Oct 2019 12:15:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so2600228wme.1;
 Thu, 24 Oct 2019 05:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=1HdoKxCH13MhX+wY4v0MQbEUNC0dud5C0FawbOHFKJk=;
 b=V6MrqlY9ozevW1R6YKVE0uuFqoLoW7t+JHkyA8dCCZbmTOR9wYzXhGRsh/4JV3TwVy
 OMlPAsTXhu9CsRLv5KPWjzJgV240XROTbnRLiz5zZ4gBShXdydMG9InpeypRiq5amT5D
 5uG1iNdk4xPL9iNh53hLcRjMdN/helK4HcI7rWe6SHZiliQz5z9ibMe5XIFdzYbiIF0z
 O9cisVIeE9MXGi4ZbICOC776EclnlOhJ57GpafrIBWM+6yEtPEevYANt2deXx+O0Aeti
 i8soDpRzthnXF1h3+FCRd7v8XMH9eC/v8yDvd61SPUbNHy1U+7QIv8Sx1aCMIhwfPnbU
 QEEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=1HdoKxCH13MhX+wY4v0MQbEUNC0dud5C0FawbOHFKJk=;
 b=ZDUnw98bS185rpkF/JRaqgZC19amMaPGg6KFWlPolhEHOprmbyvXMtPzbI666X6AlO
 omz3ejGu6Y0yrh6JDNhc/+spmdrIJJ6C4kvqEYDiLSHFMD/4Tfti/uS1GNcU7NPvgcpb
 GlF+qVj8DW6pHuAFdmGi9HwOjOL+5nc3Qt1qBf1oxgmdFC6oejqYd+HlITzmE3sqDIcU
 5/yabagT3jLVwyBckUqIc7MT9LYvymtuV3aAXYPRSdJIc6AeqgtQkyIm/yDVkWv6puf2
 /v7gGI9r91/SiTk8TD60rua2n+6TpnoYJJGrRQadtjYa9FKv0Q6Gu0ZLnhvThqR9Q85N
 QV0w==
X-Gm-Message-State: APjAAAWS2XN3POJ4nMpm7E6aBfqLBRiD8W3o4fFoRmOPRx6OXGDa+Q1V
 tVUTtbBKm1sUJQclk/u1Y/U=
X-Google-Smtp-Source: APXvYqxBcd8BLvHSAVN5kLuTz06g4yJEi0VLnAey0to6tDb8lIPP461HYyv2PaCFermlz+dFvhIOBw==
X-Received: by 2002:a7b:c7d9:: with SMTP id z25mr4950200wmk.127.1571919306799; 
 Thu, 24 Oct 2019 05:15:06 -0700 (PDT)
Received: from localhost ([94.73.41.211])
 by smtp.gmail.com with ESMTPSA id i1sm2679073wmb.19.2019.10.24.05.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 05:15:05 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Thu, 24 Oct 2019 14:15:04 +0200
MIME-Version: 1.0
Message-ID: <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com>
In-Reply-To: <877e4wj7ly.fsf@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
 <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com> <877e4wj7ly.fsf@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_051509_000066_1ED22C23 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday, October 23, 2019 8:31:21 AM CEST, Felipe Balbi wrote:
> Hi,
>
> (sorry for the long delay)
>
> Vicente Bergas <vicencb@gmail.com> writes:
>
>> On Tuesday, August 27, 2019 2:16:20 PM CEST, Vicente Bergas wrote: ...
>
> I meant something like this:
>
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c 
> b/drivers/usb/dwc3/dwc3-of-simple.c
> index bdac3e7d7b18..e64754be47b4 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -110,12 +110,9 @@ static int dwc3_of_simple_probe(struct 
> platform_device *pdev)
>  	return ret;
>  }
>  
> -static int dwc3_of_simple_remove(struct platform_device *pdev)
> +static void __dwc3_of_simple_teardown(struct dwc3_of_simple *simple)
>  {
> -	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
> -	struct device		*dev = &pdev->dev;
> -
> -	of_platform_depopulate(dev);
> +	of_platform_depopulate(simple->dev);
>  
>  	clk_bulk_disable_unprepare(simple->num_clocks, simple->clks);
>  	clk_bulk_put_all(simple->num_clocks, simple->clks);
> @@ -126,13 +123,27 @@ static int dwc3_of_simple_remove(struct 
> platform_device *pdev)
>  
>  	reset_control_put(simple->resets);
>  
> -	pm_runtime_disable(dev);
> -	pm_runtime_put_noidle(dev);
> -	pm_runtime_set_suspended(dev);
> +	pm_runtime_disable(simple->dev);
> +	pm_runtime_put_noidle(simple->dev);
> +	pm_runtime_set_suspended(simple->dev);
> +}
> +
> +static int dwc3_of_simple_remove(struct platform_device *pdev)
> +{
> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
> +
> +	__dwc3_of_simple_teardown(simple);
>  
>  	return 0;
>  }
>  
> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
> +{
> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
> +
> +	__dwc3_of_simple_teardown(simple);
> +}
> +
>  static int __maybe_unused 
> dwc3_of_simple_runtime_suspend(struct device *dev)
>  {
>  	struct dwc3_of_simple	*simple = dev_get_drvdata(dev);
> @@ -190,6 +201,7 @@ MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>  static struct platform_driver dwc3_of_simple_driver = {
>  	.probe		= dwc3_of_simple_probe,
>  	.remove		= dwc3_of_simple_remove,
> +	.shutdown	= dwc3_of_simple_shutdown,
>  	.driver		= {
>  		.name	= "dwc3-of-simple",
>  		.of_match_table = of_dwc3_simple_match,
>
> Can you make sure it works as you intended?

Hi Felipe,
just applied your approach to v5.3.7 and it is working properly.

Thanks,
  Vicente.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
