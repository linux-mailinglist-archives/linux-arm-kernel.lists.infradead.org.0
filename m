Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC6054FD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUZyLoG3BXRIsb7xdDH63B5ihp5JrEIyUF1SZG5guGc=; b=fgstSKD9OuwS2W
	kG+8LBFhanBYGJqZPlBi+mFI0yqswzJep/EsXaQsk4eRHnN5RZbPufmFsiAiIlDSPSL8Z66l5UAxB
	tLxpbNhnMsCWpkOz72Qbfz6mqmXUPMBidxr5NAsbZ5lWc3kMi4ZNfnr38l+Ivn/rqVcrSu5shlEYh
	/bsmzRfnJ1U2gMF2HRKhUwuX55d0DrFlcbFSWtvnZ1/g5C7n3YkuGM30Ez3m/aKcg6L1hIdUxswmD
	2uiq7sp0f6B2C/1Eas+XADIi3e6bYjM6ga1qZJ22BPoHp3qXHrVNZahUwweUbsVVxRThTZq8RTMVG
	bXc7TGQdHOE7Y+VnAnrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflAq-0004Gg-GP; Tue, 25 Jun 2019 13:07:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7m-0001Ot-Fs
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id k18so16166626ljc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2zOQyrtvUDW6ArA1LQxPYYIsqo2yCVY1e6qoWCiPcR0=;
 b=rxOgYOaTGquyezcJBBosGht0L/NnpgjymTC8JWIQdpVPywMvS8we0LMxfazo50IJn4
 szISpl7g6iP6lD2PtiYn+EWisK5SnEjFEVfvWvpu7kpzF9pPohr8qwKgKtTGf+SnRRQ7
 Cc8rSibRS5++TSHPHm2tzcvXiZ5TaOpX9PHAydfSlbneSXFYt+Qyd8+yChkXWWIgwWON
 nvetE6DfPb7kMfC0Ic0GJa7bRLcTnj0drJR8A3RUA32hXMgnJE0B7jAkdduIVO/FQ4cN
 hhsS7n1gp65+gbCvFNSPXnnn2iVxp1nNnBRy2oLmi41SKcG7aiAccCkd4yvEIZzSqicr
 f5Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2zOQyrtvUDW6ArA1LQxPYYIsqo2yCVY1e6qoWCiPcR0=;
 b=L1mu9ZNvy7GBpcUzzdT/TwcKodn4sA8SYXLbXgglIDfXh9AfiA42VRkb4t97ahZoa1
 g6EE4niEX5nlFsBdXpvMTKE6t0zJLq70ziYRSTX6zVbSQkakqCWAgizjyA1onEXdiL+A
 kMTfcdv7fXE3ZqKZaxoIWg15XpCzUtWysX5LqEQTJiXbYL6NiCem3bF4t/n6fcLGukRA
 hamUMeRfnBKMiuvQh0EP/ZVj6YPgwbOd7UTn0vX/hNM9LpX1k/M5eiZG6m3plJCEevHd
 RUKzCvEKpJG5xoHTAObzc6nkUfA4wkxJZIr6HnqZis8aSwdHTy1YWBWp0JyZlFYc15fs
 v5AQ==
X-Gm-Message-State: APjAAAX+gGl0hS4mAfSs6zdHZN61vhN6G+u+1DsY/pVyJ4LdFwcxDBpb
 1g7EArshE3tecJQiPsqBI4InnA==
X-Google-Smtp-Source: APXvYqwL0bsvvDeXmDKk7Ob5p085vp/omAFpfgiZ4BKegUVhss7kIN4gFC7dOwWgQrl3DtxhtsBI9Q==
X-Received: by 2002:a2e:860d:: with SMTP id a13mr69632728lji.215.1561467876538; 
 Tue, 25 Jun 2019 06:04:36 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id 2sm2226094lju.52.2019.06.25.06.04.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:35 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:20:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 5/5] arm64: tegra: Default configuration changes for
 v5.3-rc1
Message-ID: <20190625122009.f7px5fojvmql5vbc@localhost>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
 <20190621150206.19037-5-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621150206.19037-5-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060438_748325_55E5C2EB 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:02:06PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-arm64-defconfig
> 
> for you to fetch changes up to 01d6fb565b4a7858af1699727f25da2279d75deb:
> 
>   arm64: defconfig: Add Tegra194 PCIe driver (2019-06-20 13:02:27 +0200)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> arm64: tegra: Default configuration changes for v5.3-rc1
> 
> This enables the INA3221 power monitoring driver that is used on many of
> the Jetson boards as well as Tegra194 PCIe support.
> 
> ----------------------------------------------------------------
> Nicolin Chen (1):
>       arm64: defconfig: Add HWMON INA3221 support
> 
> Vidya Sagar (1):
>       arm64: defconfig: Add Tegra194 PCIe driver

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
