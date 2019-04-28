Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90ADB6A4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sqzmtBckmrheFabuW9QKqk0BBxdZeoO8TCaK3QBA24=; b=CtOyRmG8ZUG1Sh
	+Z78KNDgEF3vQeSLBTBbM6mo1BlGZW4lARfyonlX2QYwM76TAzwNMMc/XnDi19MPCwkM9qcOl9hcO
	UkGMt+gYe0GtJBeEDtbut28dqeZpqRfq6WjPNkV4wU7KkXvqBe/REYF+VeOHKUQc5NCCTFpNqQJVg
	cME7eTFi6VE3nwDkkTf4eE7eUCq/ITkU10xa3VeWADLzOxqU/cr1AndZUNeHqinMFlkjj+DYqPqCU
	twqBaz/V7/1Br/6RkLKqFwFExqafBZB0SK08PweVpr2BcJyV9LZOCLiaf/uoKLfnB5EpM6CJIhM+T
	Inwno7DThFSIMjXgqvHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqRn-0003J1-E9; Sun, 28 Apr 2019 20:30:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqP6-0001xu-Vy
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:28:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id k18so6198447lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ojFBmJ7T7PMK5D3RYRfEYNWI/iS2EBbzi8KM0K08zjw=;
 b=JiyCw0oGtIZHqNYjDFaDa+1/J/x5pJic8AqRNLOtffCrrtFxGXX4cKkUoGATuChD1L
 ywF9Z4RiQiN/KvnjGo9lbUVJoEfx2SDYfQ3nE10EVIWxX1xVjjzJw9f1oiuLA10j8TYp
 T2KEX0N2avP9IBX3hNNt99nnYsqfqXV3XkqYd+AvdEL5UyDZpXIH1kcNlvueARyX1EOp
 cUGIglwo+JeMYT1VMT7LSW1U9SknLJeSzzv/oThuddehTcthozlSCs1jllkhNL7f81Y/
 0vQJoWrPcAwn+7mGQdMicYFAYqoXCYLw0er/lnJMthQpjunsYVfGo2MALIce9WaKuc6K
 JCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ojFBmJ7T7PMK5D3RYRfEYNWI/iS2EBbzi8KM0K08zjw=;
 b=gax5VdnSAxD1J3g7E4HTbqOOCz6Q1G6qei+YDVY1ds8l+0zkPrtFBMpD1pw/JXEj9X
 dThVWkKhxxcYRMSJkiUbBpccmb+J9Cb2SJPOgK8MZGx3ghRXrUSrhfmsngNQMU1zeAC0
 u8TlZyD1Qn5/b2uBndYR0PkZiKZnZG0lcGAvAFBcDxuZrqiGyvSzB5EsRWO20oBTTK7/
 XLPLQ1BgT1T3CM/srqYEwjQYizwIOB3TqQzy2ImYDeCkpO1aHQ5YQ2XLsWr7GM5SBh82
 A4DTogCgZkamQxZUHzytOXgNX8XUPjXfHRG+wz+00OeX7ZdbuAF/7sLW6HScZYf45SBi
 WcZA==
X-Gm-Message-State: APjAAAXlasEFkHYub3M2LMWar97C+6uVUOvevNhzzdlf+6q7Icw7PP1a
 z5yOw50kcuuMQD75ayaeKuxRHQ==
X-Google-Smtp-Source: APXvYqyB1dpp0Xpmz71+zPqwoGv7qyKnnrxN0CZjsbWg3wSC8EzpzwSNo9ARR2wdh6kcdUoru+9RYg==
X-Received: by 2002:ac2:5085:: with SMTP id f5mr32178862lfm.71.1556483283314; 
 Sun, 28 Apr 2019 13:28:03 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id c7sm7608828lja.90.2019.04.28.13.28.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:28:02 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:26:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [GIT PULL] i.MX fixes for 5.1, round 3
Message-ID: <20190428202620.mxmgze55mgsbt5s5@localhost>
References: <20190422031900.GV19962@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190422031900.GV19962@dragon>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132805_026768_5D4CE15E 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 22, 2019 at 11:19:01AM +0800, Shawn Guo wrote:
> The following changes since commit 7aedca875074b33795bc77066b325898b1eb8032:
> 
>   ARM: dts: imx6q-logicpd: Reduce inrush current on USBH1 (2019-04-11 13:45:03 +0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.1-3
> 
> for you to fetch changes up to c7861adbe37f576931650ad8ef805e0c47564b9a:
> 
>   ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect (2019-04-21 15:51:28 +0800)
> 
> ----------------------------------------------------------------
> i.MX fixes for 5.1, round 3:
>  - A fix on LS1021A-TWR board that SGMII PCS link remains down for
>    eTSEC0 upon an ifdown/ifup sequence.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
