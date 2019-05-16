Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953D41FFCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13kwtgx2LOTEE6Id5gRUpkbMfRyA8WsbyzJBjTWqW78=; b=avL6b2dnU7n1UT
	r0yIokszx0hwhfas9Pv1T4rfPFqXNHr2ss9pLIEFPmkSf5i32GieR6T72P0qT3QbDiX3gHlVAaYhQ
	G8XoWjmcI64TBDGtDtfamzE/4OhSPy3Okt8cDp1O4jHiXTghIWfIfqsw35/M8dlafL9v6bC2nCp8Y
	GJhIFotmmwyqoUh6yxcqzktRnGHzZcjv0BQzDu1+1gR5+zZJhcfJy43/ZkbRuBk8kkexjtVJYTCn8
	L0rehCzh6BlXaK4jssRNGrdBfEaoBzTGkGdKPyaXX/0ivxWvw7NntLN3h+4/DKA6+ZowZpOFDuyjo
	aqE0JZx1taJYxvJWD+IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA91-0007lF-D0; Thu, 16 May 2019 06:45:35 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA7O-0004iN-V6
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:44:04 +0000
Received: by mail-lj1-x244.google.com with SMTP id j24so2037434ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ierxK4ZQGi+aWEa2Ph1i719XCDGMZKo2rMWZhKVF1Dw=;
 b=hrG6wbDepq3YTtYbip3mTp/54Elj7pE2elU5/5rzyMZPdN3EY3isKNgqbk9GBvEJwZ
 BsEYXk5CMKoKdJkaldGmdmQ1HLRxTq3ZE2ifAMHC/Toni7Oi3r/+G0T6WsUmqNGR9/aL
 Z4FogoliR0ubby3thG5/XdUE7P5gg5bX5O6oCJagpIWfHAjFlKNqEUZDXOv7FmNNjbF1
 knveOMK21X7xZBDx8xTTxLaWZO3Uky4s8S4nDaNqPWr1qx7O73bpf3He8fzeGkIlldI0
 7R/fV2kRFxZ0JKd8vxsMbeFXperTfXoO8WUwqOQpudmP9epCOcC/AljmzWPjOH9pVYCw
 UU1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ierxK4ZQGi+aWEa2Ph1i719XCDGMZKo2rMWZhKVF1Dw=;
 b=KSpVIymHjzNxJxasOBv9bYyeB9kl8PQ+HTCWj0+cs0alLWdmz79G2OZn1RBIBioG6v
 tDTVGWr4SQuW8pnXBJB3tCtN0W4yLMaSzGDqPHrJdh7ZfakoVtHfuVoenPhoZFsNs2YR
 9sK/2TPXuy6kZJNDNz38jR3d3reSXlP8GY1BZCcZL+g8g6LKNFHBeT/NuP6w06CQjCAW
 ef9K/xiEO5OJBVvAqSEZaszyg27WKXf41MYG2V6Aq1TpwEGfw0fiP+PcyXqLtEVBQQIL
 4cLN+LsYv8AEo9iFup7t7/wXDvP+YNof7MSYAQAUbwenPnrmxK/suCPoKdJU+fTWN9Gv
 ECoA==
X-Gm-Message-State: APjAAAV8eqlfQ9WIga0XxxxbptEyQRFb3f923sbbQgl05G6mvZQuIUjZ
 8eMNfiSavts4nBRe681R0NwdlFBNm+E=
X-Google-Smtp-Source: APXvYqxkryLRV88jfKs2gdlozGt/U8xEDox58X7vzcMh7YV9aLILewaecxKOwUn+g02nJT8W1mn2cw==
X-Received: by 2002:a2e:d1a:: with SMTP id 26mr22896184ljn.147.1557989033442; 
 Wed, 15 May 2019 23:43:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y3sm776722lfh.12.2019.05.15.23.43.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 23:43:52 -0700 (PDT)
Date: Wed, 15 May 2019 23:23:16 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL] two fixes for omaps
Message-ID: <20190516062316.3amk72lykcmugnyu@localhost>
References: <pull-1556727306-300309@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1556727306-300309@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234355_460669_A2581F03 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 09:15:36AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 81717283cf2c4c4d9bf8fd618cd6e5bdfe082edd:
> 
>   Merge commit '7d56bedb2730dc2ea8abf0fd7240ee99ecfee3c9' into omap-for-v5.1/fixes (2019-04-01 09:36:25 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.1/fixes-rc6
> 
> for you to fetch changes up to 6a38df676a0a06bfc7ff8607ac62ccd6d95969ad:
> 
>   ARM: dts: logicpd-som-lv: Fix MMC1 card detect (2019-04-30 08:49:25 -0700)
> 
> ----------------------------------------------------------------
> Two regression fixes for omaps
> 
> Two one-liners to fix board-ams-delta booting regression and
> logicpd-som-lv MMC card detect to use GPIO_ACTIVE_LOW instead of
> IRQ_TYPE_LEVEL_LOW. Note that the board-ams-delta regression has
> been in there already since v5.0, so if necessary these can wait
> for the merge window.

Merged into arm/late for 5.2. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
