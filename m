Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C434BDBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH3yHJ4efIoblxmkyH/J9XNcLHXGnlUMIoDVsnvgmRE=; b=lpav+wRsT6Fhdt
	TudPEJakG7UK12/Lq9XMQGU8+pzqIkzZXzcxbHakyEOc+o4JxRMsgBf3OicunVGugQwExJ1JmxRMq
	v8DCgKhKYVhuiP3d6ZS/5VJIibWHC14FUK2DfpZHzrgBJuFt3qP1Fv0YEcDefKyky54m7RA7ON2cm
	OK6CyV2BTLx7j3mEr1xkNzKTVAMHHm7RQz9NLHFEF57a097zgQgS9ywCBX+anP8HnwbityukMvgWH
	5VSFMEQotPZpBf9zb7IyLruCFBCjBfo2eo+TNBEgJt+KEmfGw77qaM8M3Xpyjnfigxrjtxux9u5Qh
	LlsKhKn9xFXc2c4iV9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdd9O-0003Zs-D6; Wed, 19 Jun 2019 16:09:30 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdd8w-0003Kr-OI
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:09:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so3842337ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EV7Nd8ArFTdSsnM2yNQ22mJq4w9w0n+rqtDMUrqyLjM=;
 b=Xo6LWNf2yW8bsdWQcU/oU567sPXnlZCujiLaOIOOP1Y8fQk1Ug7fgb3Ehn+NqQe1C0
 Im0wRTB19X9kj9Tsl8KdUSjD9ysDk78nLuPoHqVZPEtHv3dZ4292JPwc0dMoLPBwyQrI
 1gbhS6/kuz2tM+XUgRhC02EnGaZzP034GfWdwwWPF206n992N1YqKspXdKhSJGJ61ESw
 uLRJdmJPVNOIPuASNhFSpGeAycunZRDnL67AZ47C2DitlbNKLIlLxz81bxDxTfAEggdZ
 acg/NAGAlYe/uYQ2BsoiC+nEQ12cUe61mY1gNmv+HLSUwX7kcHJ4dlMdu7H7W9+Bhrq8
 yN0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EV7Nd8ArFTdSsnM2yNQ22mJq4w9w0n+rqtDMUrqyLjM=;
 b=sUv0R+RXcAj93ELLAvAMrrY6hauR8i4OCzaKENkvBFSZHA62wU/biVXnJd06TTb7YT
 2qsLqVpGnyYeK/iFEeTntUrJVknl3SAxwhkwlhCUz93/GrEaJgsdLwPQyfWRLhWAk/Oz
 IJVKH9DRCNnfwVJqGA3OHQE1WLn24QdmaK1sS5xoizFDudq2r5wPIiAFty9QIo5mqtaA
 cuvlw/tQzUiMz7uUwIRwi63BOCK1x4mRc91pp8/qLT/X278PIwy2D0xHfpenidOCOl/0
 pQ+i1L+W/Ud4fSUbccUmx0yiZHwe1K+3iHTf4Y5cLfeen0yyUerw9hXoUxgr2PzUY478
 NEcQ==
X-Gm-Message-State: APjAAAV1ehXaf7Nmdt2aqtMK7FW0z1zcYBZsWSDD7CK8Lp0et27MZ95O
 iyH9Qg17R7eZ3HkIsrb/Tfrs9w==
X-Google-Smtp-Source: APXvYqzFHehp6jLxcD5jNWdD2OG4cJNUp3yrxOQ9It+m0Y+iLtkPEadbsk97iPVl1BSg7AO+I/lQow==
X-Received: by 2002:a2e:8696:: with SMTP id l22mr8123756lji.201.1560960537936; 
 Wed, 19 Jun 2019 09:08:57 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k12sm3050356lfm.90.2019.06.19.09.08.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 09:08:56 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:03:12 -0700
From: Olof Johansson <olof@lixom.net>
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Subject: Re: [GIT PULL] ARM: TI SOC updates for v5.3
Message-ID: <20190619160312.l2yfxrmzs4nygi4s@localhost>
References: <1560919218-3847-1-git-send-email-santosh.shilimkar@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560919218-3847-1-git-send-email-santosh.shilimkar@oracle.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_090902_820207_84A0F216 
X-CRM114-Status: GOOD (  14.24  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, arm@kernel.org, arnd@arndb.de,
 linux-arm-kernel@lists.infradead.org, khilman@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 09:40:18PM -0700, Santosh Shilimkar wrote:
> The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:
> 
>   Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git tags/drivers_soc_for_5.3
> 
> for you to fetch changes up to 4c960505df44b94001178575a505dd8315086edc:
> 
>   firmware: ti_sci: Fix gcc unused-but-set-variable warning (2019-06-18 21:32:25 -0700)
> 
> ----------------------------------------------------------------
> SOC: TI SCI updates for v5.3
> 
> - Couple of fixes to handle resource ranges and
>   requesting response always from firmware;
> - Add processor control
> - Add support APIs for DMA
> - Fix the SPDX license plate
> - Unused varible warning fix

Merged to arm/drivers. Thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
