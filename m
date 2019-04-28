Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F241B68D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udoJlkBR/OjKu8XSCOBQAy+RcpbmjpW9C1I9Sey8/l8=; b=EttHSwmZflE4z4
	MJr5ObNNGGQSMuYuy3yQ580iZYpGjnjFxjL+WPc/57zkSbscRHUZ3jNOS0OYHgDsZnsRZCbUO8MZC
	uxTsEmQPBablGy4n+1EkeBu+lpSgeUd+4WU18yAEAX/SLnxUp410jBtwOapc/CkDj2Qng+ycisNcj
	O/H2JSdGuHWJKfckgPgsyg9U2v9gB14Lyuh0FvAFKlWYGtAPliJt/xptjqoNS2hfkMH0buwHi56Jl
	bgnQ2gHPtBoDCyuGXdOVNEkAnGGoN5rq58sATecgLe84pF3Ytiw6KU9E/GSZEmZ+5qvhDPmDO59Bb
	04Q+n4EDu9WxDAr2N9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqKX-0004UT-1u; Sun, 28 Apr 2019 20:23:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGy-0007qF-Eu
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:50 +0000
Received: by mail-lj1-x241.google.com with SMTP id z26so7498544ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=D6EA7kQO5XvwDFoUVKlrU/XYtc7AzagwuWUAw8fHqok=;
 b=xl//irrBmwrGybfWXEWzg/jDbrVkEH7xHY8J6FxXXKDl3Ty74ou4ElvjHph9AT4hpU
 s8jhLWMkdbvff+Fx2VIY+HsS/CThVQ51mJYmis7vWQ8FbjeoZGRzN9+WmO5D79KbmoVC
 YhL66MZN593+3Ndy5qvJ8xbH/y34uLNVwfOOHZgsoxVI9w/E54MUBWq/XdXr/orCNQBr
 /s8zPe2KdnFaNt3OXUo9QMXtda66duDa5Oyiv8lO0DjROqzfTbWm0CELirJXIDd+yNdC
 mqRoo1woOToDFTr0vijIC2caWFbKgM+6emFzHYpAC/Ym86ZMolg+q3/3gCr1l6ZTf/Aa
 oJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D6EA7kQO5XvwDFoUVKlrU/XYtc7AzagwuWUAw8fHqok=;
 b=t1+LKyuXt1sCdHBGcn+zm1cDmxS9N4H5/hqPSWGi+hFvhs3LnwryyBL0eLyA7vmoQC
 2EiPOVtc29FbsRTs9QdBxhK9RGT0H8TCAh9Zq3leLST+eaHx+nMwhKrm/o05y+OVtNLD
 IvVTceD8djzwTEBtdgMzpZ/wK7zX6rd6ZxqAT7ZXsROoo7+uc5drtWM54QqE3j+JFrVO
 aJImL5bdu5L4euqS/9ocZLi8BOsNO/zBsNYr7XHcJmQCberajdpx4S7k4557GFSmguZ1
 Q5CDvzP8lQ8MeaxjvREL2xX2rOTSMZfxYddZfLG7+BBRXeNzJphatDNwjVN/MXMlM8MW
 7HwQ==
X-Gm-Message-State: APjAAAWlv0Z7WB892S2gHCrDlZv3ueZR0Gp6VcGyKXEsHu4+znYTarme
 2hcXaVaNI6m3ynC+xIvGx6rbaA==
X-Google-Smtp-Source: APXvYqwqcpBPSE6yW2dDtqKrMcZZT1lU/EfZuB78N9AbQ+LxU1RyL/AYkqglTJ98AJPb3gekx+lSHg==
X-Received: by 2002:a2e:9594:: with SMTP id w20mr12901728ljh.10.1556482778888; 
 Sun, 28 Apr 2019 13:19:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id d16sm7005672lfi.75.2019.04.28.13.19.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:37 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:38:16 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL 1/3] SoCFPGA DTS updates for v5.2
Message-ID: <20190428193816.i2w2kbcd7lfgcwuu@localhost>
References: <20190416151140.2598-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190416151140.2598-1-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131940_989390_8978C3AA 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 10:11:38AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these SoCFPGA DTS updates for v5.2.
> 
> Thanks,
> Dinh
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.2
> 
> for you to fetch changes up to 4b36daf9ada30a66c93f8701e8c6f23bc3ce94e2:
> 
>   arm64: dts: agilex: Add initial support for Intel's Agilex SoCFPGA (2019-04-05 16:36:07 -0500)
> 
> ----------------------------------------------------------------
> SoCFPGA DTS updates for v5.2
> - Add base support for Agilex platform
> - Add 'cap-mmc-highspeed' Stratix10 and 32-bit SoCFPGA platform
> - Increase Stratix10 QSPI support to 100 MHz
> 
> ----------------------------------------------------------------
> Dinh Nguyen (4):
>       ARM: dts: socfpga: enable MMC highspeed support
>       arm64: dts: stratix10: enable MMC highspeed support
>       arm64: dts: stratix10: increase QSPI max frequency to 100MHz
>       arm64: dts: agilex: Add initial support for Intel's Agilex SoCFPGA
> 
>  arch/arm/boot/dts/socfpga_arria10_socdk_sdmmc.dts  |   1 +
>  arch/arm64/Kconfig.platforms                       |   5 +
>  arch/arm64/boot/dts/Makefile                       |   1 +
>  .../boot/dts/altera/socfpga_stratix10_socdk.dts    |   3 +-
>  arch/arm64/boot/dts/intel/Makefile                 |   1 +
>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi      | 444 +++++++++++++++++++++
>  arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts |  75 ++++

Merged, even though it's unclear to me if it makes sense to add this under
a new intel/ directory or next to existing socfpga platforms. 


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
