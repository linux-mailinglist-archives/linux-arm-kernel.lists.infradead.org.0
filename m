Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A12BB691
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdXiWpMOXF+7ccileigLRPmoan1zQ2ODuZh7NYUIWng=; b=tlGkCV3KAkvHn3
	OLd/ImUonf+24plHqIK3nGexQGqoZouQLF84VbrNviR9i+rhrO0nAemeagNSM/jbZyhdzuXnaLy4C
	nE314H+Iq3Gdv0fzCZz7CNps1A6gonNDlQ6E05qXR4y6/hfb+XAqdkJFUzF+sZKKjpgee0M96wsRM
	x5uv3davqF+wiScMlDu9x2IUYQCV7dZaWJc2LCpihojJvbpnKAbnUhB8FCKfVE60OFKIrXRnJw9Gk
	kc9xgtUmL6BYlP7AeTajkGX3D6e0m4RVeHn5z2TLMv+nvb1NGeV4MuNha6nF9wbYhI8z24ASiF34M
	TIWA+X9nOi3m7WZlIFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqLF-0005T5-O6; Sun, 28 Apr 2019 20:24:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqH7-00081S-0L
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id s7so4759102ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MUOTadd6wrN2f2yg9m7Q4ELqsv0D538hxXBB8HOWyzc=;
 b=ql3KGthE/5EaGu9wSsOxZPzfKo4zLZcmXs6InWrZvTuuJLdsLtnBzMQTdskvL3qVFC
 +JvZh8LR3lD3dT0StGdMcIYaNc+puTpgBOgcFAj6Mw4zxlkswmm5Pnh9a7xUPdC8GCYY
 ImXrNPsYXtFav4bbu5kARqOkOtTd9WWUMySO6fYnLBjEwdxpfjnIdbpS4Ra11Rv7OFF+
 e0AUFurmQhvEIXgop1o3o1ICi5m6ZNKWq4Sl0FKb590QF3FuzQeku1ZWVyjuGBozgz+H
 pLvphsV7ii469GEwItle+YheRo6nflYFuRCHFZcNtZdJRcM73WoW4SzVfoVpInPUOSza
 Spqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MUOTadd6wrN2f2yg9m7Q4ELqsv0D538hxXBB8HOWyzc=;
 b=FhqfKj0TFWzcCqMqRmTNLjvM6+eLtLDXYGevYWEZiojTMadv9TVQ5h05gRj+it5ot8
 Lj6kWnSWHZoujd7jLXLj8oOM+EIHgBv1TtjXPvgcfzqjUmzx50ZC5BQwvWVNnkNZMJO3
 NExWF0ntOxQR+xJ42MILyEbov8ahedt2iLb/6ouhk5GcirAdaR/vYdnHmmX48C40G2Te
 GcemrnvO8P8vQy4vCsyxs0fblHFqvjnLpHBMLkBzwjx2Gz4qL8dia6Gi9MY+ys6k9/00
 La11ZK6ymXqbV7YTRaud3/O1WuGEO1xarBFTapLRP7cfVv+1ZHCjwpWrIU0VP+cewquf
 TquA==
X-Gm-Message-State: APjAAAUdXGJM2JXeRjnmWL7aCQdWDxnEgDyu+FlcTWP2Avg0SoJ3oSwk
 BRcz5g9hvlPfkA3h1kJ8wbsi8zTGXYC/AQ==
X-Google-Smtp-Source: APXvYqxfyPKnZFAShBMtQ9YHerabcwxWlUE/OWb/NVf6QvP5bRku2j8OrM24bd51Z3cMYzjHR2ghsQ==
X-Received: by 2002:a2e:500d:: with SMTP id e13mr30660391ljb.169.1556482787429; 
 Sun, 28 Apr 2019 13:19:47 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id g27sm1721522lfh.56.2019.04.28.13.19.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:46 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:41:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner DT changes for 5.2
Message-ID: <20190428194109.de2xvesxzwfz3l3u@localhost>
References: <20190419113620.ajmb7cxpx6lw2lbw@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419113620.ajmb7cxpx6lw2lbw@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131949_209899_42499AD0 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 01:36:20PM +0200, Maxime Ripard wrote:
> Hi Arnd, Olof,
> 
> Please pull the following changes for the next merge window.
> 
> In order to avoid conflicts, this branch is based on the fixes branch
> I sent earlier.
> 
> Thanks!
> Maxime
> 
> The following changes since commit fa44328f4eb0b762a1fcb148809068e9646e7156:
> 
>   ARM: dts: sun8i: a33: Reintroduce default pinctrl muxing (2019-03-25 11:10:50 +0100)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt-for-5.2
> 
> for you to fetch changes up to 6e0c67e34ffced703abb573d6266104b08bc95d4:
> 
>   ARM: dts: sun8i: a83t: Enable USB OTG controller on some boards (2019-04-18 17:49:43 +0200)
> 
> ----------------------------------------------------------------
> Allwinner DT changes for 5.2
> 
> This PR is pretty significant, but it been mostly about:
>   - Fixing the DTC warnings in most of our DT. We're now down to 2
>     warnings, from several thousands.
>   - Fixing a good number of minor issues, typos, and so on thanks to the DT
>     validation tools
>   - Describe the MBUS controller and the special DMA RAM mapping on the A13
>   - Add support for the LRADC on the A83t
>   - Add support for the I2C bus used for the PMIC on the A33
>   - Start using the DT annotation /omit-if-no-ref/ on our pinctrl nodes

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
