Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CECE1D48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 15:50:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p96kUibAXjfYrH2+XCHQKhPtFN2+Ljco6b6yo8nN/V0=; b=l3VgYE8Wq99x6o
	CcfZ7bLo52k4KehnTSojOtSe1aKdMvywOBkF8BvxBRMbmB6a2hEyg0Mm9NvUnz2j9xCDrYnvE/g9f
	mpYn7eV5Bn3jEUUCUK149dQnedTsinowiYdnnNZUxTa80Kmr+5FfhA8Ulj34MHHA8cPJMfmZITw42
	/2SmPy6WX4W54xEfTv+Ue8Y+Wu5+drmjbFQJZBD2PF83DX6hQSAkxjoaNkpBic06B341KoVzrYDs8
	iJGmq4VOK4aHhpzAr8RdsSgdPDmFVbZTNX1Mcn98xiC78rpp8DAZFIN5nMbXPO/FPWnYg1iugDyRa
	XFqde73pDB5rWf2IM/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNH1n-0004YW-9y; Wed, 23 Oct 2019 13:50:19 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNH1V-0004EB-Cg
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 13:50:03 +0000
Received: by mail-ed1-f65.google.com with SMTP id l25so4565989edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 06:50:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8qBb291IPE2og/l7u8OiTDfQtbzmiVhAHgv1m3GbkfM=;
 b=Uc/uow9NZSap4n8FOnOAbQKPaqoqgZYQMc2Dn1wdEEIr3UmiioowIiS2SYdwKek67F
 4WOjiDZFB30dnRpGa/qhjP+NIc5Wa8CY1iBTWTlUEkbXfXE9MM3AN9VqSKP0Qj0iKj0l
 Huqi0olS8booM2r9ffaYb7wMNR+0VeIGX08PqwjlYfdxFYuHIZzz1k1BosK6ISZLyJK7
 qQNYDsbJlhBFdfZAnaCMdVxjKtEtg2COPgPCltp0mGcDzAoExpPX+9m7jxbIuiaSasek
 U6F588Ws03BtBcM5kwvucICsU4BNMPbWpaedhezEqfVfbMXZjlLDjldFmYafIE7LoqhO
 C94g==
X-Gm-Message-State: APjAAAU3KWYw0wm0QksDDYGiyCmqdwqShTHUYHbDo372jMF9plvJCfMD
 bXWHNe4bFHUCZOvyG15iPYM=
X-Google-Smtp-Source: APXvYqwjWvPU2P28o+R/0H7qCyJXE4W8hZoo+hrDHIsqBv9q1Xi6Hyp0zb62g4wWhOXMSl17h7J2Hw==
X-Received: by 2002:a50:ff19:: with SMTP id a25mr9916560edu.181.1571838599737; 
 Wed, 23 Oct 2019 06:49:59 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id j43sm734313eda.19.2019.10.23.06.49.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 06:49:58 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:49:56 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 33/36] ARM: s3c: move low-level clk reg access into
 platform code
Message-ID: <20191023134956.GK11048@pi3>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
 <20191010203043.1241612-33-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010203043.1241612-33-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_065001_427932_A2422430 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, linus.walleij@linaro.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:30:17PM +0200, Arnd Bergmann wrote:
> Rather than have the cpufreq drivers touch include the
> common headers to get the constants, add a small indirection.
> This is still not the proper way that would do this through
> the common clk API, but it lets us kill off the header file
> usage.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  arch/arm/mach-s3c24xx/Makefile               |  2 +-
>  arch/arm/mach-s3c24xx/cpufreq-utils.c        | 32 ++++++++++++++++++++
>  drivers/cpufreq/s3c2410-cpufreq.c            |  8 +----
>  drivers/cpufreq/s3c2412-cpufreq.c            | 10 ++----
>  drivers/cpufreq/s3c2440-cpufreq.c            | 16 +++-------
>  drivers/cpufreq/s3c24xx-cpufreq.c            | 11 ++-----
>  include/linux/soc/samsung/s3c-cpufreq-core.h |  7 +++++
>  7 files changed, 51 insertions(+), 35 deletions(-)
> 
> diff --git a/arch/arm/mach-s3c24xx/Makefile b/arch/arm/mach-s3c24xx/Makefile
> index 695573df00b1..195a4cb23ecb 100644
> --- a/arch/arm/mach-s3c24xx/Makefile
> +++ b/arch/arm/mach-s3c24xx/Makefile
> @@ -38,7 +38,7 @@ obj-$(CONFIG_PM_SLEEP)		+= irq-pm.o sleep.o
>  
>  # common code
>  
> -obj-$(CONFIG_S3C2410_CPUFREQ_UTILS) += cpufreq-utils.o
> +obj-$(CONFIG_ARM_S3C24XX_CPUFREQ) += cpufreq-utils.o

Drop also here S3C2410_CPUFREQ_UTILS entirely.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
