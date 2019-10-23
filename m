Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D611E2492
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GoP09AB5lrD2G9CpjJhU641FBQJOq53fpErZl4qGtg=; b=W4KU5abussY479
	eHhyME8RG3Dp/9G3wPrVK/d5SxvZc1C5CNBpT1ec1X0y+RfYWRCZU7a7jvD2jJDDWj2apQqHR17Rc
	wnncDjF8q7Cil5Yr3GcYzngtxR/4VGKfk/pRciwjQMvHRisOsZID+N2jXcazSIb0M76HyTLSU8lfd
	8BSdOvHeR1rqsV5YMKhQKsxZQB8vyi1nx9efOlvMyDcUP47lJ+cZLzpV4KxDA8jlgS8KaXN86xOC8
	UpdRR0xOsbABmyfQSU5W9nmEFND2NOGre0yVlicQLqYpNOCGT7ztVOsBDl+00oIfrncsk1u1EjmJT
	2TKO/fZVjL1hVQ4hJaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNNEz-0004f0-DH; Wed, 23 Oct 2019 20:28:21 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNNEp-0004eQ-Tr
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:28:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id q64so22505369ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T9KQBL6LAJYjkuQGrzhfEUZi7F2d+gu+rzQyfboqTg4=;
 b=f6LOoxDVs4/DvAnaS9H/V3nQ5s19fegLbWq/bDRM0YTRdfAQvVFoGc00O8mT7pPEJV
 5oNprja63HwY/VsxPJqN5QG7bb15/FrYjGoyzSWqlexBDdxghJlpeIPVYDWr8jA9Z01r
 rV577Zj/rzMt9bpw8JSXIpqGLiVsT4XxiySR4VpwUKQEwxYlCEoYJSTIUFGzK+58qUF9
 toVFtJDLNiz9GbpbvTPeIY1V4ZOcWwGZ25gNFYmNMLN/ImsD9wTWsRS60TLj4IxnSHZH
 yqwzRm2TBfOEPy0/Ro51jH0Lif9oNDYFynY/F4CEzcCPqbvwHkau+7c8dqiR8pRXQ6tI
 ZTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T9KQBL6LAJYjkuQGrzhfEUZi7F2d+gu+rzQyfboqTg4=;
 b=diHPYt7EiYHWLBG2cU5rJKJj1Hhe4Br+0/dI4WgmCnuyiirLUYVFt2ELvDXQgGOcHM
 /qiAL16QtfYMczw7QUS9vEVyZiTx2HD8nOsx5HDUZMgCPIq//1jU31bOWeox03GscKdc
 79GA+Pm2IMiSO0ecS2jfatNeudl34q3wUrsI9ZjPYjM6F0LGPQfpSSMmVOr+0O1ytg/j
 FIZM84fEKWTQcmX1HMGqZjCfFBcszhIjB91IRBWaez/CoQ7FEyijuO2SV+5FQ/ZE/bUL
 q7cJ0fs4yjp+NjpADIkC9dPw7m5FyP+azh2pCzuzipc1dQM7NPm6YsSyul0nN9YBES4s
 STkg==
X-Gm-Message-State: APjAAAX98QC00OaZ9ZbdXkpLxld/F3HnQVeVDyLaEDaa6v25nBF4wEiL
 zx02p2b1T+UNbgPZWUsBgi3oRv3tfxeymg==
X-Google-Smtp-Source: APXvYqxSodDem2VxJeSULsc2yK6A+yLio7NbpdwoWeMo0EQlIIPFpuUhQtRJJpl2pfHB2OL5yzoJcg==
X-Received: by 2002:a05:651c:106b:: with SMTP id
 y11mr7541430ljm.123.1571862489642; 
 Wed, 23 Oct 2019 13:28:09 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r12sm9386450lfp.63.2019.10.23.13.28.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 23 Oct 2019 13:28:08 -0700 (PDT)
Date: Wed, 23 Oct 2019 13:22:47 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 1/2] omap2plus_defconfig changes for v5.5
Message-ID: <20191023202247.wb2jzwvek7u5korx@localhost>
References: <pull-1571853258-16998@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1571853258-16998@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_132812_108662_2F564E44 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-omap@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 10:54:48AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 96d49bbfe6c1a6bb43ccd00fb87aca100e32e5e2:
> 
>   ARM: omap2plus_defconfig: Fix selected panels after generic panel changes (2019-10-03 09:44:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.5/defconfig-signed
> 
> for you to fetch changes up to ec2b31267263cd7d5a7567d315f839796c2a8c87:
> 
>   configs: omap2plus: Enable VIDEO_MT9P031 module (2019-10-22 09:11:03 -0700)
> 
> ----------------------------------------------------------------
> Defconfig changes for omap2plus_defconfig for v5.5
> 
> A series of changes from Adam Ford to update for removed and moved items,
> and then enable crypto devices and MT9P031 video as loadable modules.
> 
> Looks like I missed unifying the subject line for one commit, but I did
> not want to mess with the commit after pushing it out.
> 
> ----------------------------------------------------------------
> Adam Ford (4):
>       ARM: omap2plus_defconfig: Update for removed items
>       ARM: omap2plus_defconfig: Update for moved item
>       ARM: omap2plus_defconfig: Enable HW Crypto engine modules
>       configs: omap2plus: Enable VIDEO_MT9P031 module

Looks like this branch had a minor conflict with one of your fixes branches.
Easy to patch up, but feel free to use your fixes as a base for the topics if
needed.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
