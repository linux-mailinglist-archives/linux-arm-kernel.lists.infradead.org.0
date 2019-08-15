Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE598EBD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTlPLOHYo3PG0YPPPf5sJ7MJO0HWjkyZrsYr5pPekmI=; b=kaH2/fXmu5UcFI
	puK106qHLPwynjC4dpghATVroPjpQoUkOfCPWFo3It602Y4HLh4iTf/V7GCcyaxRuV0j5Y+loRt0g
	yWaExpiDNliL9UdsiuLPTIW80swaGjhRrL6tx/TCi9uSh2QLQPokxVmLk4ACTLz0lH25VxCc7736u
	AGnH84CDLdgwllKzMPNzSq/lHRQzSknXLYSjRD9q61n/J/Sb0H5hSvWgxSX3X/Bc84DpbtH7Uqzf9
	u6DXVWz1sMrMMDXfppPC0h28YpJjRUKiFde8cbM65B8ykMhb26hiUwkE+UwUadUJyXWF+Mvbj6akr
	GpGiNXrekkDBJlrucizQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFAy-0002ZS-1a; Thu, 15 Aug 2019 12:48:20 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFAh-0002Yy-P5; Thu, 15 Aug 2019 12:48:05 +0000
Received: by mail-qt1-f195.google.com with SMTP id u34so2186882qte.2;
 Thu, 15 Aug 2019 05:48:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dVSvjWJCsDHACl/PwNeLVWRIpo2I8RdbKwBGK3OphV4=;
 b=fzfJKwbmeEvGuWhsI5m7VbDQCL7cfHU0BAGupBda7VmpwtCrV3cfcnigG+1RAC8rQv
 uq72KXQqGJGebp2Dhjtv5TP+v/PKivIQCt+jmcSBAvfgQS2AvPAlEhJe2DOb2QAgL6pD
 A88uGATUjHWxt9TIVkVARrCg5nnbNTVkxPYe1ZjZCxgl5zPagUzuJJVrQffBo6VoPIAS
 lPZEi5wkfnn6JoXy+fFURw+eGY4CjQIeTg0zz9UB/tuzjWPKM/9nkey6sqzglmZc6v68
 5oJv4UzcF61MethyEQnFXa9hvXOwAMZV7qL/+3MJtaovPBSWkJOJ/SXRcZM+2cgQV9S2
 gEGA==
X-Gm-Message-State: APjAAAXIEUtvsA6eXVcE+9XVGYRDnRW83IEEsDXgrUbIf2ca1C65mjvM
 3cL1wafE5WuqRtfA41N4Zv9I/V3fOkz1ml6BHW/KCDQq
X-Google-Smtp-Source: APXvYqzKa7qrCV31ODoWGaG4F2FhE0u4jULeIkabqSDyV+Ec/D4h61uiX5sg1HWGlstdnz+UpvDxZGLWlAZzjBT0E08=
X-Received: by 2002:aed:3363:: with SMTP id u90mr3734597qtd.7.1565873282445;
 Thu, 15 Aug 2019 05:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <7h1rxq0ws9.fsf@baylibre.com>
In-Reply-To: <7h1rxq0ws9.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 14:47:46 +0200
Message-ID: <CAK8P3a2dep_fbAVJ000e4dvC2k30GBR9BtPyc63hJTnMAQ=hzw@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic fixes for v5.3-rc
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_054803_814404_29AAC3F5 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 1:49 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes
>
> for you to fetch changes up to dc7f2cb218b5ef65ab3d455a0e62d27e44075203:
>
>   arm64: dts: amlogic: odroid-n2: keep SD card regulator always on (2019-08-05 14:06:55 -0700)
>
> ----------------------------------------------------------------
> arm64: dts: Amlogic fixes for v5.3-rc
> - a few small DT fixes for g12a/g12b platforms

Pulled into arm/fixes, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
