Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AA718B880
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 15:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bF3EwJ//8Axmk3c4I9hbdtYDgEWsV+vx42Agsx4OxaM=; b=YIXSnnDc0Lvnze
	FNJQJpYYiCMnAeJUIHHU+C+dtkjP1d8t/hJQlSSslVa54SPa6JBu/IkdmwGWO27vKX4HTlpNrj0t8
	em6QY/NCRtDo2GsIeATIKouoB++IZ4gfCfsiKLGCBKi0+O5KLj6FIDX0tXz6OQScVYqpaaOH4nezr
	E9mc58LH3yBVClLjwlzx0VX4KdUqCOnvGb34quBX5DyBqiKkCLw1/4agX4feSJTYbb9v/0cVlS/Pj
	vDfDyk97N7mEnbK/PBsaTsdq6OlqzF+FjHNLsLoi8GdSJ1m8fs9VIyHC8Q6UrMmpjhmHU7/8c5dmN
	rWRHnpURnqbi2Mn00miw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvjr-00050L-Ii; Thu, 19 Mar 2020 14:01:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvji-0004zs-G1; Thu, 19 Mar 2020 14:01:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id i9so3097665wrx.12;
 Thu, 19 Mar 2020 07:01:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AKfKixYunr8acU9EKxMbpxcmQFyK603ftvwA9L+/SD4=;
 b=QfrmVs7plt//YETSc+/owSuFJ61VH3rGKKnCR+Js6F8T2DpMaVMYdMwM6n+fpXMuW1
 WVeV783ja/9Cmh+El5E2y138kEJko3XDtQIJAl+PjP9VkePmx6y30TIjL9mveADQ2yIw
 jmwt30GRfG78XnHXqkMj0eCzYi7wIj3LOV6/Vw1exhLRz99JCOFjweCSNKsxUe7SLhCs
 Fdkdxv1I8DuM0WbmPWcIPC3kLp7SlQIB2Y/kjjCLXxsQ3iovIj0F7OrZaK1GvarikolY
 U+PxylQWr9CBeA6TkQtltMnx872PB80aFDJGV/NvMZxptQW5zvnwAvTYUnR/XjTlZf9I
 WVFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AKfKixYunr8acU9EKxMbpxcmQFyK603ftvwA9L+/SD4=;
 b=Pvg1D6K7+KvJRI7qeFIgNWJDa7BqbgBOeMmp7bd+J6w3oVMNFXtP35CDhu24FTkizr
 gWJ0ov82TvqUjlrAATbwtFYGh9gmXzbsVLK4DmVu55kpbdwXRUUl2I50zyFx+6dfLQKH
 e642umNGtJcDUbvbklV7BqR3APOqwhJmywF/POf5F6GgjF8Ukm2izzjjx5rzsYgsBRJu
 4ejEITThdKl8BRapnrbyvgOkL+pXilIrfuPUTGgx7YwfafvXMgf0Q+hxhi0yXTgK03JZ
 gHvTMcJcdVKbTg3Vdp30R9L3EYoxEJbFg8Ha+mj2fI3CGuQvXggPjwK2A2t3pXQGTG8x
 rTog==
X-Gm-Message-State: ANhLgQ2d2BTxhN6B6UFbap88tpzn1Zjgmx2vPIpG7CR9gEVrxbmMtEh1
 EZtAZSQUk8fEp+A/jeUcfXoYPfRQ
X-Google-Smtp-Source: ADFU+vu1VD+Vv4fiPbuRPt6ywzDJB+mqX1BMAOsNjxLh7T4rDR50T1cBacWaKUofi38Vf5WIJYmvSQ==
X-Received: by 2002:adf:db41:: with SMTP id f1mr4684099wrj.247.1584626484738; 
 Thu, 19 Mar 2020 07:01:24 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b12sm3471485wro.66.2020.03.19.07.01.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 07:01:23 -0700 (PDT)
Subject: Re: [RFC PATCH 2/2] phy: phy-rockchip-inno-usb2: remove support for
 rockchip, rk3366-usb2phy
To: Robin Murphy <robin.murphy@arm.com>, kishon@ti.com
References: <20200318192901.5023-1-jbx6244@gmail.com>
 <20200318192901.5023-2-jbx6244@gmail.com>
 <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <625d2904-458b-1edc-d91c-21614653a274@gmail.com>
Date: Thu, 19 Mar 2020 15:01:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <233769c3-a44a-0ebd-7a2c-6fab17fb56f2@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_070126_538451_9A4CCF91 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Some questions.
Can Rockchip or Heiko explain why we have half finished support in the
upstream kernel for rk3366? What happened?
Are any plans to add a rk3366.dtsi?
How wide spread was the use of rk3366? Products?
ie. When does support stop?

There's also a rk3368. Is there a need for "rockchip,rk3368-usb2phy"?

We'll keep "rockchip,rk3366-usb2phy" aboard for v2.

Thanks

On 3/19/20 2:07 PM, Robin Murphy wrote:
> Hi Johan,
> 
> On 2020-03-18 7:29 pm, Johan Jonker wrote:
>> 'phy-rockchip-inno-usb2.txt' is updated to yaml, whereby
>> the compatible string 'rockchip,rk3366-usb2phy' was removed,
>> because it's not in use by a dts file, so remove support
>> in the code as well.
> 
> Here's a DT using it:
> 
> https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3366.dtsi#L820
> 
> 
> Please note that although DT bindings happen to be primarily maintained
> in the upstream kernel tree at the moment, it is mostly as a consequence
> of Linux being the source of most active development. Bindings should
> not be considered to be "owned" by upstream Linux since there are many
> other consumers, both downstream, and in completely different projects
> like the BSDs. As far as I'm aware there is still a long-term plan to
> eventually flip the switch and move maintenance to a standalone repo:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git
> 
> 
> Things like PCI Device IDs and ACPI HIDs aren't even documented as
> formally as DT bindings, so by the reasoning here we could arguably
> delete the majority of drivers from the kernel...
> 
> Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
