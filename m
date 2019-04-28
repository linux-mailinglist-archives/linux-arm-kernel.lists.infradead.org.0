Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A81B687
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewaMWAzBfItFn9ueDwklJxABPri3Bk85a36rEcJHzW8=; b=QO1oa3tSgpJTqa
	N8N8LArHpURo33fjsFAnx3iVdU5gbAwbuElrxdk50PRd15uTZP5r1rh5z1L0jaS5DHhiV6j+2OafT
	cJvDKGeY+R4L2gdNxkQwUAbTEVS2D2bECvc+Tb1cDhiYXQ301xCc7WzrjH5OBZe2H4iowLzPwupQF
	A8Ztf3JA3Xysxa1wAv8j1/imaf7pD0SEFcGXfn1ZnAxKOTyOTnmCwkb5PToiF7gmW+bIf5/IivZPB
	+xd6HwZdLZG28h67Hl3d+SOed9L6excE2Tz6p30aJTGyft3yB7DkaIZ82F8g8h0887KYaI0wVJu/3
	XZoNHoq85bkpuhOYZxJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqJV-0002zh-G2; Sun, 28 Apr 2019 20:22:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGm-0007Xa-4f
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:32 +0000
Received: by mail-lf1-x143.google.com with SMTP id t11so6206887lfl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m5G0ZYcf9IjrWASeBFD7kWmvvr5oebcAUaFd3mv0bR8=;
 b=Ex/mj8ZlmBpG6HbMNicv95+YaDtmf0+vnZd9mFB+6bVnElAj1v+XkOFTBl9+soVSwl
 S44ciWDlnZKyd1rEwsxcmAJ3RtVJoyaCVM8mFU2vgu/H3U/lctjSttJ4nwKYtPzjgzMe
 0FBRweWMYyhNT557qd+8mV/FjxucSyxYNGmt5niVvroJkYmp6hFSNIkbKKhi56GI/RRm
 aaBMxaS/rc9nBSqThaeCqFN7xGFi++kVxLtzx6ReMp/mnTAXDM9WTLPFyqZQlk5ZnMup
 j8fY6f73OSeaaljHgBwfeCQxHYPAe44m/FNRM431FGzRACt+ig4nTf42qsbrXCUG5Vuu
 ojjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m5G0ZYcf9IjrWASeBFD7kWmvvr5oebcAUaFd3mv0bR8=;
 b=eBijpbKHIOnt/quctx1zkJKpBGFkLPUkPtFTxAeSnG6cBXHOYklt157ybjFOgNCwpQ
 KEMsTYWV4EVo/tgnNO4CMZEPJXFrgBcIZSFCOn71c1GULF4xgvlQaaQo1w+Q+wXhzoKS
 pyIMkUixdu1qj6YR5WhPjiVs2iW4QZ1XiXK5y8JzWVkZZQB+Yvh0XLv8Ui2aowtVkTMn
 h54FjXLhFcOpOwRKo3DbHVF6EtqgYrtfmgPzS4WwpXe++lLXpu5mmyOjXWsqzPkoRsn3
 WYyy1NiM9zODe+C3Cy01gdKf7sL9wD1FbdIq3gCFjkOFflwyC+0afcnHEnFYMow9obq+
 UVyg==
X-Gm-Message-State: APjAAAV6L4X2KmT3ssCsY7rKrCb/tiC5AmmhQVmTpqKYmiithBtJfqSk
 4Nywjs2cWJrRKxc2X8nZhKW5pg==
X-Google-Smtp-Source: APXvYqw9LWXgAKTsHMfjUlepncCzZNfZNIiDe+WUFHS4Xt04W2kPLw5qw1f0/WSJF7vzc64N1kQ1rA==
X-Received: by 2002:ac2:54a9:: with SMTP id w9mr30316294lfk.125.1556482765511; 
 Sun, 28 Apr 2019 13:19:25 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i12sm1616629ljg.47.2019.04.28.13.19.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:24 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:30:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 2/3] arm64: dts: exynos: Changes for v5.2
Message-ID: <20190428193009.qfpczki7eyhj4cvu@localhost>
References: <20190414154805.10188-1-krzk@kernel.org>
 <20190414154805.10188-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190414154805.10188-2-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131928_688508_B88A9A65 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 14, 2019 at 05:48:04PM +0200, Krzysztof Kozlowski wrote:
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.2
> 
> for you to fetch changes up to 77fc46976e0bfcd78d30fb4c9f0169752b4339c9:
> 
>   arm64: dts: exynos: Add SlimSSS to Exynos5433 (2019-03-20 19:29:57 +0100)
> 
> ----------------------------------------------------------------
> Samsung DTS ARM64 changes for v5.2
> 
> 1. Use proper clock rates for GSCALER module on TM2 boards.
> 2. Add clocks for local paths on DECON and GSCALER modules of
>    Exynos5433.
> 3. Add Slim SecuritySubSystem to Exynos5433.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
