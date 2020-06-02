Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24401EC4AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 23:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l5c1YxpWGdZ/X+GxBGDezx1DxdEJjWVeAOVu9T1Us8A=; b=jj5qRGh7GE/1xN
	C8JTr6SPQ0MlFubtfz6FHVCAsFQkxvv8KyK6+IiFM7mf1koiNjgN51lsZZitCwJAG27/gUCfgDwaT
	Xoc8Zo2D07ZUlyFYe7YoFZzpUTKBcmNWQzBjuI9fK/ivqKEaHxGGLybfKO+yCWxudHTvx5tnlQFFz
	uZOCLl1+U7sbphPilrXU+3UxpU4pVJSgGgp+66q4E8ArCJe7b/4xZAO6xS/cxTpKsyCuEnrYzmFU6
	Is0HlTQsm+d//uN94SpSi60/+WsAMdfe1TZGVA4Rj/jvp1lSbXCWOvSXGh28pJlkqLftgmHk7cayw
	3kcTVFzuP9jY/7t4BZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgEso-0005FK-7O; Tue, 02 Jun 2020 21:55:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgEsi-0005Ey-Bq
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 21:55:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id w20so211226pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 14:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0IolMfSisVxino/MKKftkabi/EGonQeZClfhpXkpxw0=;
 b=u5MYBT4tX/hslzwoAQaMfebiNzJDr17d8ZUHvwYODKZTkoY5ZvznCRWZ2RcCMGaJQv
 MGCKhVr18qnIpxLLq83h87AkkLImauiYt+fZMfYLlXncOT316jpvjhLZmTbbLvzDsnNY
 E9mMWLDmDSEU4sS+5Kxc2ZCUHHJwqpJOR07aV9HwseNMA/+/tvVGIHUMb6kCQ8NdvqLS
 3EL5svUm3s8LQcxNgyrmS2LAVrb0dzdLXTxJaZvSe+WTeXwZZALKkhqczx3+m4qS8BFw
 a0QnCN+pWeYuzuYkHmj8BuDpw8EpjNq7VHxsGGmWA9JUz6XV/MkNw2zF5PBz7QgJ9qdJ
 W8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0IolMfSisVxino/MKKftkabi/EGonQeZClfhpXkpxw0=;
 b=OJ6idQNk4lOfTh1g+nOa6+7Ko4UKdft9LCX9E5GMPZzjfa2xPN7ZJjEmR2O58a6WHT
 PgOao+loeVLzkGhyolc2rObK+eqkH3x2FZsXF99GNGulj5G5BThan42Rqq/hOXqC8qmj
 EvyalBs3fIDaiPmlTqGCllrarr2C6PgxO9Dl+kzQ0jd82YC7OK6/ThRQUllrNXuX0UE2
 INMC2Yc0kdfLZDVBdMAkJulw9WUDKiUTOS2BkkSma3QrHNlNNIUXCE9CftVt5UGN2iwh
 f8WPcAthakJDaQqArznJCS/QlVEl1YXVWSLPw6WTOCgm+xQGe/ZLkRveUBccpbeLq7zH
 cdEg==
X-Gm-Message-State: AOAM532laXrUrpkgmCMsfEiOcJRVSYmobKuRU3pf58agEi0pGJB7mzY+
 gUJiU8yMry/+GBIgCij36DQ/9OmC
X-Google-Smtp-Source: ABdhPJyeOe3U5WW1qU1+nRdPQfwTti0VtW1m3PPcEWtGuKliyAfZLtwgCZStaYSH1hvuk33A4bhTHg==
X-Received: by 2002:aa7:9431:: with SMTP id y17mr26053227pfo.33.1591134934858; 
 Tue, 02 Jun 2020 14:55:34 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id o14sm103913pfp.89.2020.06.02.14.55.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 14:55:34 -0700 (PDT)
Subject: Re: [PATCH 0/3] ARM: dts: NSP: Add support for Cisco Meraki NSP
 devices
To: Matthew Hagan <mnhagan88@gmail.com>
References: <cover.1591114003.git.mnhagan88@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <80fb3020-22ee-26a4-0286-137b5388a0ab@gmail.com>
Date: Tue, 2 Jun 2020 14:55:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <cover.1591114003.git.mnhagan88@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_145536_420473_67A9A3F0 
X-CRM114-Status: GOOD (  21.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthew,

On 6/2/2020 9:11 AM, Matthew Hagan wrote:
> This patch set adds support for the Meraki MX64(W) and MX65(W) security 
> devices. There are four devices in total, all using the same basic hardware.
> 
> The MX64 series has five ethernet ports connected to the BCM SRAB. The MX65
> series has two ports conected to the SRAB, and two QCA8337 switches connected 
> by SGMII to SRAB ports 4 and 5, each providing five additional ports.
> 
> The W variants of these devices have two BCM43520s on the PCIe bus. On the
> non-wireless variants PCIe is inactive, hence separate dts files.
> 
> 1/3 contains common bindings for both Meraki devices.
> 2/3 contains MX64 specific bindings.
> 3/3 contains MX65 specific bindings.

Glad to see those patches being submitted upstream to support those
devices, don't we need a change to arch/arm/boot/dts/Makefile to add
those DTS files to be built when ARCH_BCM_NSP is enabled?

> 
> Note that Chris Packham's "[PATCH 2/2] ARM: dts: NSP: avoid unnecessary probe
> deferrals" is also necessary.

Humm, I am not sure this patch is really the way to go, but I have to
look at it again.

> 
> Thanks,
> Matthew
> 
> Matthew Hagan (3):
>   ARM: dts: NSP: Add common bindings for Meraki MX64/65
>   ARM: dts: NSP: Add support for Cisco Meraki MX64(W)
>   ARM: dts: NSP: Add support for Cisco Meraki MX65(W)
> 
>  arch/arm/boot/dts/bcm958625-mx64.dts         |  15 +
>  arch/arm/boot/dts/bcm958625-mx64w.dts        |  23 ++
>  arch/arm/boot/dts/bcm958625-mx64x.dtsi       | 136 ++++++++
>  arch/arm/boot/dts/bcm958625-mx65.dts         |  15 +
>  arch/arm/boot/dts/bcm958625-mx65w.dts        |  23 ++
>  arch/arm/boot/dts/bcm958625-mx65x.dtsi       | 321 +++++++++++++++++++
>  arch/arm/boot/dts/bcm958625-mx6x-common.dtsi | 172 ++++++++++
>  7 files changed, 705 insertions(+)
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx64.dts
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx64w.dts
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx64x.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx65.dts
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx65w.dts
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx65x.dtsi
>  create mode 100644 arch/arm/boot/dts/bcm958625-mx6x-common.dtsi
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
