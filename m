Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA51BB6AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwMuIyNWribnJ75J5ms0fDeVrqgqvtZfsInW1GYvSyw=; b=uZvaiYHS9OTCwT
	6aWZuqUOPLJalxY9k278SsSnqNisKHVyzvKGyuxJx+6C9VVi0bpOJ6qL4PeL40bxPQ38X0mUL7PrL
	AQ5sJV/N7UJM19Lo1zyPvCHWXmMBy9WptvicvvwUrYrEHsv8ThTNoFk8LDDEspwkdlVHdYiLaXg9m
	xtHv1/UPuZpmY+7UAhVEHh7d2ZWNaOLVJgUwwBRvwfNoUKjVffqYMP0tKI9oJbhs/+IXglnzbjhuZ
	XWIueY8xZeWeroM490Suivz79kbUYM7j4ozCHO+axLjzS7E08klYW1bHaKKQN1xWQhJwXi+MNVwn3
	L9/lJA43MQV2eZh7Ny/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqT7-00052I-5R; Sun, 28 Apr 2019 20:32:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqJ2-0002X2-Ar
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id o16so6340679lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RgbiDL07dTKFPAc6uMJqzgkYoJwjedSKQ3F7n39Y69I=;
 b=W4JqUTn4A1G5ms/g7thFSgy5LG7WmCS+c9hw6WF4LS25UXzFCjCbMpXDA08xS1v5DO
 cUM8uC5XN0cNcGMFFCitrzeDEWw2xGSMwCIr6c7S2ECE/Z8cRUCZo+BwqvNQ85u+2Q2r
 6T4FsulIqbQlIg/ArkJpuewFyfPNHIS9dmNoDp7PcQL5l23rHjLffNL5rPB6QkzHgjlj
 iYyISKDWlZHykykoZLAiWc0zd5EW80KCUJQvBonwleKAssp9vfqGhfs/BmOiRpDTe+Sg
 o61DSp13FsUoMkyBF4u7CmL5goGmJxbOfJiKwWdeqY7mA5NJlV2/agrhJb6RMJORX1px
 YbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RgbiDL07dTKFPAc6uMJqzgkYoJwjedSKQ3F7n39Y69I=;
 b=myO1oVSoOoVTvNB2G9YuFcexG3v3mX1IOkyVfOWnJ/i8rffDWxxrcnrACVkv9A6Soj
 e/mYaFksMSs9RJS0+LNjhgEU+IjzwOBaKLJvveq1oDE8shhwURu+pJe/SNZaBK3BEKrI
 ac6b7HBJWwIL5f5qa8FxtsfKz+KQ4tSHmhhIKETl3xa7c2KDym1LkHNCKyGgyBc8fIBx
 pXkZjiHamIco2/ynnCbKeWkA3WzXGhlNPb+LxTKzSc/ENAN4MhYoo0CGmnJSu1BZigd2
 P34ePpQlGoXTup0daztnIrckZPtt1L5QkhQisZlR/FWtWFInbAHf8JaR9giTYzoXRxUo
 p+zA==
X-Gm-Message-State: APjAAAWB/PCKJwao3dc7HE6V7o/R6VB98O4KzBRHs0O0PsetbgandMWY
 rZemvRd0t7srGFW6bE15ab8XNQ==
X-Google-Smtp-Source: APXvYqzCF0/cIOwHF8f/B8RBPGWtvZ81/d5WoyyHIu69Pgrzd86wGcBBhDgHOOy66wirmJWLNhpVqg==
X-Received: by 2002:ac2:43d8:: with SMTP id u24mr30290093lfl.94.1556482906787; 
 Sun, 28 Apr 2019 13:21:46 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a25sm882023ljd.32.2019.04.28.13.21.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:45 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:01:56 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.2 - Part 2
Message-ID: <20190428200156.lah6intqulauwy4b@localhost>
References: <1556252941-3865-1-git-send-email-agross@kernel.org>
 <1556252941-3865-2-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556252941-3865-2-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132149_270961_95B6DE47 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 25, 2019 at 11:29:01PM -0500, Andy Gross wrote:
> This depends on the first pull request for 5.2.
> 
> Thanks,
> 
> Andy
> 
> The following changes since commit 6ef7c11b31a57e43062da15a36fac54fcb97b533:
> 
>   arm64: dts: sdm845: Introduce ADSP and CDSP PAS nodes (2019-04-23 00:10:35 -0500)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/agross/linux.git tags/qcom-arm64-for-5.2-1
> 
> for you to fetch changes up to 060f4211f6c655e69ba24fe6d741c6e33fbfa108:
> 
>   arm64: dts: msm8998: thermal: Restrict thermal zone name length to under 20 (2019-04-25 23:05:35 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM64 Updates for v5.2 - Part 2
> 
> * Add ADC temp for temp alarm node on PM8998
> * Add ref clks for DSI PHYs on SDM845 and MSM8916
> * Add CPU capacity and topology on SDM845
> * Add display and gpu related nodes on MSM8996
> * Add sound and hdmi display support on DB820C
> * Fixup thermal nodes on MSM8998 platform

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
