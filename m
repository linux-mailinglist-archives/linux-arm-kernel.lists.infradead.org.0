Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD967DC54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5W+LSM2JqBywGkwYXH2js9dTkf+0de279QKXOmsaKI=; b=X3UaB63PuNkMKf
	HyROKsTWNzhrjZy7EDpasEV0wLRh0V7QOgPzYw2yyK4d22B4qqkBBx6ugZY5zKybpS/FcVa+328rz
	WBAf8bHhFPvaanv6Jwny/H8EAhHPinvf2gOh5NW85uD9cPV10L1Ti2rsiPLggkgLccjmaM2gMdro6
	UjqRCVJr+G+mM3XyjbcHGDa3UOkodpgmcBzwa9RifaOhwjuOTop9KYoJFNhUdtsGzwGiGuH67ebie
	LGXrfGhzyuLMlZu7J6V3J01fC/LgLOaTW80Aikt1SKdoxq4ZJ1SrXlu+cYA0MD4Sm8Vrrcr7vv+++
	r4Ft/QIiZFuMtv24Ehlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0D1-0005fx-Cl; Mon, 29 Apr 2019 06:56:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0C9-0004sP-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:55:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id z26so8331729ljj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s6Nfe/yOHFaoFampqTJM/h2XjRKZIGQHP41ZaPdkDEM=;
 b=Si77qPj523VOAA6KqVwSD+7CSGgmvOQYh/IzoglQl4ZyH3xC3z7UTac4nUhrLk0ZTp
 Sq0MKx4JR2o2DCjfCRTWSEigWtRpFTdeUm8GUPwLIy9cyFxllCF6V4chBWQwpl11pMZh
 BjUF7URQ3Oj/Us9ZH8GeKCF9at7oYGRum6JqBsd7BX3OlyoCk6IVKixow97Ofgvdhu7T
 qVlXiPCrAF+THnWZnbyb4mYvFMpP29cMEjRSH7GSL5pGNpM+CllNTY3PglnVtBfoRmmO
 oys4BOOjoonEqBMDgBjncZ92T4SPlNB4fWsBY3C5VRABjnDQtnIVvdJU9q0gTP+9X9kw
 5xQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s6Nfe/yOHFaoFampqTJM/h2XjRKZIGQHP41ZaPdkDEM=;
 b=nuYGm5Nz4nsNP7FPmEkRT++2god6ozxZB9IcyEPCQdVUCJVb7nWgn+bjEllYLfQKEN
 d5zWIhzfBvG+YJ8lRy2IKoxy+wD3iTABzzAsv5bKiQi76G7DwicORKqR9IgpT1NGyhIA
 QBFIs7Tr1JSTuo4JEHyV416R0pTeCEbjDOB49jzUpJltFqZ0Y3rIPDGTf7kvSnn14rKF
 Y4MZmokMbprwDgD4ihbqquvCf73BICu1c/gRYG8HYTHCGQyAp5aAL67TVKL739PMuSQV
 Nll23sdWbCFFq4ayzUZkKaghG1X8+frc+uA0OXNjtOHVT+7PZZstgifB2SXd7SV0gPn5
 0MPQ==
X-Gm-Message-State: APjAAAWIuNT2dtANZoRCpRJzF97UYVsjF8ZDS8+eCYZcJZx1vIwrsiSo
 y3vs7yfiWTrHkLcaBHAX66gPRg==
X-Google-Smtp-Source: APXvYqwcLhT+1cJq3zLp75oi8RzS2o4/CDsvnqKZ3BjkyF62W/3z/Wc8SqSa6PfI8UdODQUhj+fJEw==
X-Received: by 2002:a2e:22c4:: with SMTP id i187mr31178593lji.94.1556520919923; 
 Sun, 28 Apr 2019 23:55:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 12sm212559ljj.79.2019.04.28.23.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:18 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:04:24 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 3/3] pm changes for am335x and am437x for v5.2
Message-ID: <20190429060424.vw2giqpcnkcwkqm2@localhost>
References: <pull-1555087688-487222@atomide.com>
 <pull-1555087688-487222@atomide.com-3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1555087688-487222@atomide.com-3>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235521_997689_CF753AF9 
X-CRM114-Status: GOOD (  17.28  )
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

On Fri, Apr 12, 2019 at 10:02:07AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.2/am4-pm-v2-signed
> 
> for you to fetch changes up to 35667d812c38a219ea2dc6f23d33db50de57099e:
> 
>   Merge branch 'omap-for-v5.2/am4-ddr3' into omap-for-v5.2/am4-pm-v2 (2019-04-10 09:06:01 -0700)
> 
> ----------------------------------------------------------------
> PM changes for am335x and am437x
> 
> This series adds support for am437x RTC-only mode in suspend. In the
> RTC-only mode suspend, everything is shut down except the RTC. This
> makes the power consumption very low for suspend mode.
> 
> To support RTC-only mode, we need to export omap_rtc_power_off_program()
> from the rtc driver and improve PM code to save and restore the wkup
> domain context. As RTC-only mode depends on the device being wired
> properly for things like memory, we need to also check for the machine
> type before we allow it. We also need to run DDR3 hardware leveling on
> resume.
> 
> Note that there is a trivial merge conflict between the RTC branch
> and these changes where the RTC branch makes tm2bcd() a void function
> and the error handling parts can be just dropped.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
