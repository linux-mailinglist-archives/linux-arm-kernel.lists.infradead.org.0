Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98222B677
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:19:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fOZCBxAPrDIlHSrCRVYabOKuCQ6lFrOh/nq3sSVj5k0=; b=R23aPpnORdm39z
	oWgIjACguUg5eL9kReJltPkevrtOrkRnNP4llKP2CHe09PWKL1w1WrEWPRO0uJH3PoSG2xx97lIdp
	pQ7lDSKZFZnsxuaqrUvPYEC+EhvReouYUUfxsF5NZpfFodhI/KzzG+rluTKCparSz8QJL2ejLLBp8
	KF4ARdGkaJHFwLHcYIhbcxZCZdAAnFI+PonPc7P6AZB5kclUTNAu1+1V+PHfcz/CdFQSyKZRuhMUd
	/i8MWLvo4mDSGlDKmHItQUkitpDNSSYC0831diaXFUgg83DUwZNJweZ8ynmYFC9Zf36Rcg45OEkkE
	m0hYI5RdurlmWFuS99fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqGm-0007SC-JJ; Sun, 28 Apr 2019 20:19:28 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGN-0006yK-T8
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:05 +0000
Received: by mail-lj1-x243.google.com with SMTP id t10so6424230ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PGQx5W7txB7cc0knmkEOkhKm/Erj1iJrPPBYvuDKRxw=;
 b=dkRX1ss9Au6POPP+EFGNjBjpl4Tzh3sm2nVZ9WY7J/PkqO10hzU1pneG5YFbQa1HmO
 qitWxDtFqY5G517DOBu6u9ZY2iOfu8lyIf2OFcCjVFqGJtJPA3mKVBWvxKqBv5ICCXfV
 FglLisjyBNhNKYMbmpmNQSfN3/mQpVgBIMuFhO0+PVnA5MxBiEzrxeIeg3Vjj4Ip4Fd6
 ZM6tSToWZxqfAn1Q+hCCznvhO4bIkGJpEHA8DmCwMX2uu4zwoTP32830Ci9YKeSG7bz7
 Yb9WVJKFKLsUpXmp3hMURVqWOxfyf0LH+w/Vyx38Q5R/9RD7mZTLh7Te20YK7JeAnUWe
 uGQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PGQx5W7txB7cc0knmkEOkhKm/Erj1iJrPPBYvuDKRxw=;
 b=CfKrF7FXOcd4IVYeEoijYZFbGxePIAZrPokFdER1w+v0AuFiOkcdN0geH7YMDOVZuc
 lJbXe1Eg9nGrOG59I8pNiuw4hrMS98xGyzrlfRRklueVncJT3Iykg0HXaeEQoNeE1MhE
 DyxdWjRdlTdrt49yF2cdNcYE/lhc3+aXiBDIo5Y8JFlE92qjGAD7QAvzWLvBWpXVmY43
 yvjAQRH7nuo+e32/Pt7qo8vr1kJqFWj9t3/x4g5DuA4wNjz1t4kyc+iDiOkrJBsrEcl0
 px8aoqowunXDCnoXvUbmNJUNKGhNKKrZv91eieb+wzpS0Ox0NACJIhGilXRuQvazTvuT
 B4BA==
X-Gm-Message-State: APjAAAXFhvmxCWzBbxKCc+7qsOLk88N9GTdz/O1BUo9sE4hSQ0K6sm9d
 gxS9HZnDD7PTybChjgssC3Wlzg==
X-Google-Smtp-Source: APXvYqz9Iux1GFPpodFIkollaOLOCH70mxRNK2E5RuH+Vs22DwSBwOdOg6aClCya8H18O94x8jRBUA==
X-Received: by 2002:a2e:92ce:: with SMTP id k14mr7972525ljh.83.1556482741830; 
 Sun, 28 Apr 2019 13:19:01 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x6sm6971055lfe.67.2019.04.28.13.19.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:00 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:08:04 -0700
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [GIT PULL] soc: Amlogic updates for v5.2
Message-ID: <20190428190804.qxfrphfki755yqsj@localhost>
References: <7ha7hdwexl.fsf@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ha7hdwexl.fsf@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131903_936151_F10916F6 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: linux-amlogic@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 29, 2019 at 02:25:58PM -0700, Kevin Hilman wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-drivers
> 
> for you to fetch changes up to fdda0a6adc33536ad468f07db27325423703c5bc:
> 
>   meson-gx-socinfo: add missing of_node_put after of_device_is_available (2019-03-18 09:07:32 -0700)
> 
> ----------------------------------------------------------------
> soc: Amlogic updates for v5.2
> - socinfo: support new SoCs / packages

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
