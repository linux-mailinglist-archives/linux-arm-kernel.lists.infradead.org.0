Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9594A54E40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXR0g/qE4SCF2iloBNc8Gdfefag1bR936Vd7eDvch5E=; b=GBdJ9xZFUFCMfM
	uMuS8HHxNCwsE3a2n7s9dUxGRD651Aj41o0gY/3Tv5Lyzxc2VZTLmNReolG52OcbWp05zB1v8ALbd
	Otg1jB6KhDIKlZjKNlDaJhmPcfmTq5OnWxjOaP8U0YPuh8V+fHsI1v87FEWQ5vP1jUHBJQgbT0Jjh
	77ZM+gFPxK8QUS7FSla5cdKyDDuIc+mxKaYNW4eIM06WhLtIhSCAce2Al9yNdrZkIaPrVR64dIyYh
	mRk4dMk2HnUq/f3N6OlQPcV8MCXNI07cnMmK7YitSuRxzW6vNumkwIoYUnHjjtX0iib9Q402E83ec
	Mi/l29mII6XiP/Tav67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkBj-0008Gq-1N; Tue, 25 Jun 2019 12:04:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBL-0008CO-2o
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so15942983lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MTaXFhiDZEd62Z5mE7TC2m/vAQtoMaPKiXz9ckOWLS4=;
 b=us5k95P5kQLh6vWHzPt0pknqczxg7lZM4niAQDNnpnUjCxveDbJ03FGPeUJNL0ECeS
 3r7aM+Adtud+ys2ChfCeWsqAR2jcF/cU864nwEwnlZx0LVic/yQ4E9OiKlanzowuPwCS
 Mr1bSwsPghBFuvVzrJEd1MTrCqdHKwEMnJsI0HbNjsYH8rJ6rDU5UyL/Wpt7Xacj1JvS
 L+XJ7Np5NcgwFqPTfyhUQFmdpGKDs8ttRBdXW4p6ag+0XVOjqgwtbXE6t960mMHZzm+L
 iBBAL0BCZk9FsfL5L9mdkZfYEgBosh5RyFXy7yR0CDi/djy6FyrjfitcO/YztbQ7BBBt
 mCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MTaXFhiDZEd62Z5mE7TC2m/vAQtoMaPKiXz9ckOWLS4=;
 b=MeRtXnM5Fef7z/It3LH93a+K4NN6gfZPrVdiImCkBiMvGVkXfdsWis8L5zWDxFk9FC
 kw70LYwZIStoH941qlWNfOl+RGKqi/PSsvg6K/IEkUkJfIstw9PWozWLEwa97gRv4LOg
 zaHKJ8Nto0dOmI26IAYpsGzQf+nbIxJRjXhu1U7X5Fel2KYcPnqYDEtGD7Fxm2aHybgd
 MFSUdPey7YStbiVb1R1xjDd6jZ4qyhv0Xq6BM5VQ/Z13RUke8Pf7Lzm1yrNDMOOxWbwb
 DTJrCotX8L7m2N+ulnmuNJaDIoB+SIHDHwLqwWT4tfeoVITq9JdZ8xW/P/3TRYDCH/ak
 PTSA==
X-Gm-Message-State: APjAAAV9bSxXhDcG0+qdBXaUsfbaH0QY2gdcn/djiORLu7K8VcRsIIj3
 JaWJJeKx31n6OAgHEEF/Qjc8dA==
X-Google-Smtp-Source: APXvYqw8tAzK6jRYaXNqCi1o40923NIG+QIj9pBXy8vcDnpGMn1y9d4umHEV8bRbBIV0gdnLreBtbA==
X-Received: by 2002:a2e:80c8:: with SMTP id r8mr34627882ljg.168.1561464253075; 
 Tue, 25 Jun 2019 05:04:13 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z83sm2230908ljb.73.2019.06.25.05.04.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:12 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:16:34 -0700
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 1/6 v2] Broadcom devicetree changes for 5.2
Message-ID: <20190625111634.5ucqrq2vufzvvyys@localhost>
References: <20190612025028.13118-1-f.fainelli@gmail.com>
 <20190623032909.16375-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623032909.16375-1-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050415_231566_4A2CA29F 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, arnd@arndb.de,
 Lukas Wunner <lukas@wunner.de>, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, arm@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 08:29:09PM -0700, Florian Fainelli wrote:
> The following changes since commit e8bd76dccd792b371a934336c3e7d8c389755d9f:
> 
>   ARM: dts: bcm: Add missing device_type = "memory" property (2019-05-20 09:29:47 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.3/devicetree-v2
> 
> for you to fetch changes up to dfa84bb99285b4335e5b2a23b772991362e47ee6:
> 
>   ARM: dts: BCM5301X: Fix most DTC W=1 warnings (2019-06-22 19:28:41 -0700)
> 
> ----------------------------------------------------------------
> This pull request contain Broadcom ARM-based SoCs Device Tree changes
> for 5.3 please pull the following:
> 
> - Lukas enables DMA support for the BCM2835 (Raspberry Pi) SPI
>   controller
> 
> - Florian fixes a number of dtc W=1 warnings in the Broadcom DTS files
>   and provides a fix for devices failing to boot after the removal of
>   skelton.dtsi (that commit has been submitted as a separate fix)
> 
> ----------------------------------------------------------------
> Florian Fainelli (8):
>       Merge tag 'tags/bcm2835-dt-next-2019-06-01' into devicetree/next
>       ARM: dts: Fix BCM7445 DTC warnings
>       ARM: dts: Cygnus: Fix most DTC W=1 warnings
>       ARM: dts: bcm-mobile: Fix most DTC W=1 warnings
>       ARM: dts: BCM53573: Fix DTC W=1 warnings
>       ARM: dts: BCM63xx: Fix DTC W=1 warnings
>       ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
>       ARM: dts: BCM5301X: Fix most DTC W=1 warnings
> 
> Lukas Wunner (1):
>       ARM: bcm283x: Enable DMA support for SPI controller


Better, merged now!


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
