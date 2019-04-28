Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5237B684
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqCOs+OvzVy2aE+hnD9a76eYb+P5uVfSJCsbm1FxfJ8=; b=n6w0hGWNnINba7
	bQ86M8z1t1hA1oupxaw0BDJMQ4D7FAag8CGFYEidMABZ8+Ava58eR5DX5SkbuWjOsg3oN3fnWuVOA
	bKAURZV5qNEGSqefs+VbWAwsWQ55HORUlB9pdGZ85IabTFETH9grgCcNxp1OqRFCvZxxkNmCjkKzh
	dpHWv/VB05GEN81xcK0Wwu+pYt1P9nJchbbWLo5PXDINc6JdAbSy7j1JkAthPevidNy17cB6e0/zu
	dumZRgQ8JH+UjsbmT13yvHaXCqoxgalcHAicV4lJcLYbWpQpD2eI0ALmVR6Cgg+6p/fNd/iqeNzT0
	aUv2Vjf1jiFrJe8VCccw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqIy-0002EF-E6; Sun, 28 Apr 2019 20:21:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGd-0007Q9-Pg
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:21 +0000
Received: by mail-lf1-x142.google.com with SMTP id k18so6191418lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uESuT2/vnwdwZQtp15hl2eU9W6ZryEUdBWnC24mtDbc=;
 b=Q+HzDHwxmu2t+8UWUOpHwnDONDplN9zUqvzAzbjCZ1R+PE+3t5XDGMRnMQfUDDTxr1
 c8qERfMdevNSqJHiwM65qqCV47diHE0enbGZL1sKCsW+6NBNXDnrn4zVTSo8zqW5QjcX
 H1gd3dJnaKgU//Q4WdplAp2RxsV77Ddoh2pVZwSAU5vcvXFJc+MBiGKo7IxjiOOA2NbG
 J7suF0cl/fqWSXWUPMcsS2GHYI5Dg89gtPpQ5k7Lg9TtUc/+KzmUinLtyQVUwzgVOS/+
 oPyhaPB+jXdYGmimTR+dT3r8HVZhMudeCdMSRrjIJtA4GClnmHMAIGgQMB7k64KycBS/
 Xp4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uESuT2/vnwdwZQtp15hl2eU9W6ZryEUdBWnC24mtDbc=;
 b=Ntv8yhYe0YgbTZ+pITlQGxRMW8HcxlowtD/QFJaTt0tn2Ob3bFTN5T+d7s5Inb9s9b
 ZMvbySBJwByuQMnQdk7AmmD95PtQFbIq7HBr/cNEdYrHBCEjo/YpIOdoCiZBLHLCrpFV
 xTlXTFpUOdqSgHtXQRyQqYAKvp7JEcP+TecF9/wxduI9aIK2Uq7/u+avBJosSgmuK8KG
 2Uk4zEVH4bxWWrz8ndeUkgs+zvxajqe4yNm/NGTMzH7M3eape2WYKJ9NUesBVZZv2IAW
 u9sBq4sHbhbC/YcW/S3I/qhg65/VSQukDJAqaW8fXZS9OT7WVv4AkRWK3o7DJGDA6qrk
 35GQ==
X-Gm-Message-State: APjAAAUGOUG8QZtDgY/O/eUDeLGjMnsRYw/ZHCtB7i5DNcqAluIV8OKO
 tjh40aWvP6TELUywXytnBLc6MXWL4R+X1g==
X-Google-Smtp-Source: APXvYqzf+yLJ2dbX/Ee+19ZL31b583qb9g/WwsfcQOKRLKlLHvm8pYB//8DO/eSB3B2QQ+2A/KK/IA==
X-Received: by 2002:ac2:51da:: with SMTP id u26mr30416845lfm.32.1556482758253; 
 Sun, 28 Apr 2019 13:19:18 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p19sm6943032lfc.48.2019.04.28.13.19.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:16 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:17:21 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: dts changes for 5.2
Message-ID: <20190428191721.v76bkirt4tiufnfd@localhost>
References: <CACPK8XdevZ9LHtVVu=fHbTxSKfDugym3jT0ueKEpa9qhLYbFnw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XdevZ9LHtVVu=fHbTxSKfDugym3jT0ueKEpa9qhLYbFnw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131919_844182_85742F65 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 05, 2019 at 03:47:38AM +0000, Joel Stanley wrote:
> Hello ARM Maintainers,
> 
> Here's the first ASPEED device tree pull request for 5.2. There might be a
> second one later as I pushed out a pair of patches for review today.
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.2-devicetree

Thanks for easing copy-paste!

> 
> for you to fetch changes up to 6d00c6f8d2e781e3c821fc9c614f404cc981804d:
> 
>   ARM: dts: aspeed: Add RTC node (2019-04-05 14:08:20 +1030)
> 
> ----------------------------------------------------------------
> ASPEED device tree updates for 5.2
> 
>  - RTC and GFX DRM driver went upstream this cycle
> 
>  - Miscellaneous board updates for Facebook and IBM BMCs

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
