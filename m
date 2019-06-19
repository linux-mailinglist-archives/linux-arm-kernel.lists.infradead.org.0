Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E3D4BDBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmeG2msE6EPYb1Nk/w2bSIE83d4yg1lqNdfWQJw50iU=; b=hScx6efH90Y1Co
	1r064KHXVOnybOov1HVLn03BWnqqIlkO6QuNIuEp0dVYtSBnnPglZAV2ZIzh2aL9oaGc5iIK+X1ys
	luEv3SEPRUeKe5s3zXeUdat0Z/8iDkgtFYqci5GJsD8x1KwPLE6TINUzTrn6wnyj8DB2/UF51h7DY
	1GRH4zLnvGaxTu2T77luMR/7aEPpPL6/2H3J99M7kaqcZ8UKSDK1+x8rz+gj2iaRdeAPXtBNW17F5
	HkgyydNDO4HdqujQOJVYNJzsKtSZBEl4gqdhgnWEQb5Zul+kSzBbi01vZnFnSwDQBP/877rBmNiyz
	HkxoBfUJiCN6lmmwaJNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdd9c-0003lZ-PN; Wed, 19 Jun 2019 16:09:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdd8w-0003Ky-PX
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:09:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id a21so3817939ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FwM0C1IuzXoDmxVSsjRWRQvEqYtZpgAlsaW+te4zpMw=;
 b=aE3EUC4+qyv8yimIHiyggQM076PZNkUKkpBe+PI3ytMHmKz4F3yCMv6qg2yozu+sRy
 /o55NvHV5MPgXtGUA3K9noOz+gF8L1sHqA/DmLQ9L1sRGWvaV7VkDXjPgf3CDPKTurHH
 FbfmXfZZWJfPC5RW92GfBrWTEEtVxEsO0YZAqDiDI0wqzZE4RCiYN9ULYkT8H1AJh/3Y
 LHdYAUdHW3XY+Xtj58NMwmCRXVvukiqKvWWMSFLRt1HamJp9fcUX1gq8WtLVbRHPiWdW
 wSoz6Qb0a4igfOIPasETQSbkE0aH0lJ7vSvxtIddn7Xs6yaHUxr2LUA2cV5vNkMp9eeP
 uYhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FwM0C1IuzXoDmxVSsjRWRQvEqYtZpgAlsaW+te4zpMw=;
 b=C4oFyB4yO87tfdLu0747dUi9rkTGqPMIC0ZPOOjTysex3grakXHzLV+I7zc3Viycjm
 UAu3LqfmXfOXx5CdZWPKph6vNwl0Qd9nHhDB1gSZthOUuB7dSY78ybJjMefVktj/We5d
 8Aoc8IIzq3CqRsPmjrH7WHooI2SXqyrR/orlUY3Cc6W+80mJBNfWpjJC+TWmrdkL4/0U
 1miV0jga5r8Ftk0W162cu8NBncJ2Oq/XdiQxaQFT2eV2gK2GPOJlpPpTT7AD/GKE1L9L
 xnCwhYYbRtJO6nNc7gTPjKkIE71e1jqgMpWZO3T+bl+Kf93YiG/FJS1vJH36Vm33Eokj
 aFAw==
X-Gm-Message-State: APjAAAU3ZPezIW8am2zRqa8nExrIaDSYng6bHMXmtfvN6aUhmti6kgnX
 py7ACN8juovcyIzRvuqRVEQTLA==
X-Google-Smtp-Source: APXvYqzvoXD79nY5yUINgzS8ibwGXK4fvnCbZQpYg8cu9sOPARDEi2ppbAlk6Bi8lnN2gmmVQ2vvHQ==
X-Received: by 2002:a2e:5b1b:: with SMTP id p27mr55975926ljb.97.1560960539953; 
 Wed, 19 Jun 2019 09:08:59 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g4sm2106830lfb.31.2019.06.19.09.08.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 09:08:59 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:03:55 -0700
From: Olof Johansson <olof@lixom.net>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [GIT PULL] Texas Instruments K3 SoC changes for 5.3
Message-ID: <20190619160355.w35g64mxbzqx7zq7@localhost>
References: <479002be-d9cf-38d6-e7a7-82e71d439ff7@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <479002be-d9cf-38d6-e7a7-82e71d439ff7@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_090902_851070_B6835E92 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, "tony@atomide.com" <tony@atomide.com>, "J,
 Keerthy" <j-keerthy@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, arm@kernel.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 03:06:45PM +0300, Tero Kristo wrote:
> Hello arm-soc maintainers,
> 
> Please pull the changes for Texas Instruments K3 SoC family changes for 5.3.
> 
> Thanks,
> Tero
> 
> ---
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/kristo/linux
> tags/ti-k3-soc-for-v5.3
> 
> for you to fetch changes up to 78eccc2ac98e4166def294f02283f21cefd89591:
> 
>   arm64: dts: ti: k3-j721e: Add the MCU SRAM node (2019-06-19 11:59:49
> +0300)
> 
> ----------------------------------------------------------------
> Texas Instruments K3 SoC family changes for 5.3
> 
> - Add support for the new J721e SoC, includes basic peripherals needed for
>   booting up the device
> - New peripheral support added for AM654x:
>   * TI SCI irqchip
>   * GPIO
>   * MCU SRAM
>   * R5Fs
>   * MSMC RAM
>   * SERDES and PCIe

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
