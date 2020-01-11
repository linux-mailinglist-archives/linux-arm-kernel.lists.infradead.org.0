Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280861383E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 00:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQdPClp04i6dydwSW5O2k8x+nSbwXC5/kTDQ9FEx5BA=; b=ftxD5B/oSEX0VX
	D7CYkzSx+zTupgBVg/YkK2gvv/BGUlsTYYX9Y1dWM0qMV4YT4E05dZ7YEf56deuxoXjxyo9dwNLBh
	IdjpiedzoQXVqzZnu+xKazhZg/r2Hkxyqly19k+R4KvlefjgnD9VvQo1i+PK7GJdWV3jjnZOHh89O
	fRIZBYZzW0aZNDzLWTWsfMVcbWntnAY3GCGfJochtjWaY2PxAu/URnFDyLp6jPgAHNBDUJpOz83XY
	L/C/dc/U3z6OMu8I3FJwANXJlL0Fy6yCurghCDAnoDHAle/zix8SrymLBvlXtro1odHvO4y7Y3puT
	X93GG0OudatUZxpB4zkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqPoB-0004rt-Ge; Sat, 11 Jan 2020 23:04:43 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqPnn-0004kl-OR
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 23:04:21 +0000
Received: by mail-lf1-x144.google.com with SMTP id y19so4211080lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Jan 2020 15:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dQdoE0uzb2OiAAVhK/85PGSNAyD0vBUw1vXhnMg19d8=;
 b=uYesVjMxhDubijDa607QgE9XPxp+tdlQ0bUvNRq9bLi9EV8x+L7qe6SJtCnShHY1bL
 qgNGuLg4eI3PQpogPW/hKMWPmeWtMLrNP2+Dsub/6MC0V21H9lWw1Jb0dI3GeaNdg5lf
 lfWEcf6b9asgw5ahBKtSu0F356BKJui9IEz0FPgtODobgG4KAk/5DpsS66TyajMC+WPa
 waSwFBAWkna1+CZA2KKOsYfHCbTo9Qjok/DX57yECw7u9KLFFvkqc0n2Do62qSoVOErk
 rkRbE1joP479G4C+9ep7joZs+gv0Gx21Wyy/SzrpKkGrBrzTA1XkuHd4v5GHvPO8PstC
 ocRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dQdoE0uzb2OiAAVhK/85PGSNAyD0vBUw1vXhnMg19d8=;
 b=PyWNupWL5u2eSrlnXI6c2kmH/N2SMu8RpC4hawp9WfdPKkTZg0PDbE5PH32DDYAYyx
 34z8RHmTH116cW8a1biY36RVNQ/NzZUj5PIs0DljNMU9Wimk0JLoXdndfzVIiAOpVx3V
 geuKgyYURZIt8M0qWGSGcJGJwmp7GNLkoSeh+NSFyCHPDQri/mEGhIQqd5Gf2VkccO2G
 hnfGkRyXJDijDVZwYnraOczvxX7kG6Qd09N3+RVOoV1ksUt8YztaLCcMIoEQbleFmr5D
 hu519aX1VcYWl3odlyA2DjcfVdw0sQlKB2J4g3XMPisIO2BHDB/tyNBnFVLf9aO2J0hn
 TE4A==
X-Gm-Message-State: APjAAAWSuQOnYkaBr91E/qzdNaxXtKBN8L7hGYz2q1iO59GmvAwVzSqu
 YZiSY5RzoQvH8zRThm24iHdwMQ==
X-Google-Smtp-Source: APXvYqxRSXZoMMiuXP1XCWkwkU3vDj33uWpTBuXPN4X0DNEdZJV6RV1vWsn+/5922EaTR2BtisCpMQ==
X-Received: by 2002:a19:491a:: with SMTP id w26mr6024983lfa.98.1578783858036; 
 Sat, 11 Jan 2020 15:04:18 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 192sm3356558lfh.28.2020.01.11.15.04.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 11 Jan 2020 15:04:16 -0800 (PST)
Date: Sat, 11 Jan 2020 14:59:38 -0800
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.6
Message-ID: <20200111225938.hp6xxr4k7jp7yvv2@localhost>
References: <18b6a136-9198-4d4c-878c-e6962e3a833e.lettre@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18b6a136-9198-4d4c-878c-e6962e3a833e.lettre@localhost>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_150419_792844_B5525035 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 06:14:51PM +0100, Maxime Ripard wrote:
> Hi,
> 
> Please pull the following changes for the next release.
> 
> Thanks!
> Maxime
> 
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-dt-for-5.6
> 
> for you to fetch changes up to 6163ce8467052cdfe42581036bc71fe4aac09eab:
> 
>   arm64: dts: allwinner: a64: enable DVFS (2020-01-09 17:31:39 +0100)
> 
> ----------------------------------------------------------------
> This is our usual set of DT patches for the Allwinner SoCs.
> 
> It's fairly big this time, but the highlights are:
>   - Enable cpufreq and CPU thermal throttling on the A64
>   - CSI0 support on the R40
>   - CSI1 support on the A10 and A20
>   - SPI support on the R40
>   - PMU support on the H3, H5, H6 and R40
>   - MIPI-DSI support on the A64
>   - PWM support on the H6
>   - Thermal sensor on the A64, A83t, H3, H5, H6 and R40
>   - More DT schemas fixes and conversions
>   - New boards: LibreComputer ALL-H5-CC H5, LibreComputer ALL-H3-IT H5,
>                 Pine64 H64 Model B, Neutis N5H3

This doesn't build for arm64 defconfig. What happened at your end that
made this slip through your testing? :(

I've had to rebase arm/dt to drop this branch. Please send a new tested/fixed
version.


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
