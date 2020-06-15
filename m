Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 758971F97CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zl8Eu1BYhWxck5caQWPCjjRD1KdJ+Y6WzFRzDVgq2qA=; b=lCKXDIFsMNjGgk
	SAJRKeE+Vd/wOxrTZEK1f1K5B/A+RY5omWfNbQOJfrH2vX1GNUZWvPeSmBWJDP+MX0/OS+nzw43D8
	1Va3zU0URmMlo2NKiGCOBiwUqghdYKQYc5vAZXlDfmY2KYqx1ksJLkEm+sNEsr/ZH+qOpjc1NsqYX
	LJ1MAi+iM0OXw2X/sw1Bgo39WPox3XWLZ2oYnkGCpx9zB2hzCHJkzP8TODMmLvOgwbZf41vVGgMq+
	qA6j2a68JfBAsYnz4hUX5U+ph2ZEbW/eJp0Inc20IaHMtN1eo9FtffECjce81z5Z/2go9qe+nuj0b
	pNWeYlcUqxDFR/8dkuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkolh-0001Wp-Pk; Mon, 15 Jun 2020 13:03:17 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkolO-0001MP-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:03:01 +0000
Received: by mail-wm1-x330.google.com with SMTP id d128so14743947wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 06:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7NuIO3P9BiKiClf+gIYNheUV8PABe5hNFRgi4pHcvCY=;
 b=1QMmwVtPmdoBBPgNf0gtk/PbGnQ8GRNykH9T9prLxXaICZfxcxbDJLKF4TJVHHZTp9
 5l8ZjVHowMmcyZjUIxmwPAdp/WB1/7vrLTAP9fY/OEdh+Zn7x0uWci5hnnclpWB2FmjH
 +jdMom/24wMjxZsOvGyg3vrkT9rAv9IdVmCoIR6RzJ1ycwFPzklE8WfG510xGuipCHXo
 8riIWQTsL7jUCOTtjilQQLHAwJLwI3YHHD4KMMYELnM2NzrMxJ8L5mkFiF4835+EjeBl
 FMrZppNeuGGMj6APtCDbAngPn/i+j1Vd8ReGKuUmVCXqLxFfZCz6dG+g2Ms5eTWX/UpR
 mkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7NuIO3P9BiKiClf+gIYNheUV8PABe5hNFRgi4pHcvCY=;
 b=oRrxr+akGFsKsScRudCSo2pAX1SNC/LPxoJb5oWJra3H+llCLxEz5peZxu6Cpj75aR
 D+jKSVWZzIWNCMyiEOGO07bnqTIIgu4yNVAa6CGMZRDML22CbrUhtHFXU6fVJgHtl80f
 +415L8Bd3th8OfkoBiUDJScVv1PV8PkneFC1Qc8yUSiMPhoHJhdgzoYc4CEaB4KgaXxK
 wvomKz/rPrDXeDJBJJnl1VV9eEoiI9+sTFhH+myMHwvQ/G8pnKF9DirbAOg/oG2GcDqR
 hu6N9rvgIZvAAERYAYn+GVkJ4O5mZhalsP2TFqOwgtbGHLV2FLs2ZVJ9dUwYcGLEYQFX
 Qz1g==
X-Gm-Message-State: AOAM530MvCXVu1ds2E2/1mV/b8Ef72DItjR3+EfkDOR3YcKLY6hpYm8l
 r+gyWfGk7Im1pq3/tX9usJkaq8WNX/toWg==
X-Google-Smtp-Source: ABdhPJwyEWtQ2T5pTNZIqREl1GxsviMtbRfUnZ+RP8ElBpEjq8N46tHrWNtvxP6SWL614Jk0oFIcXQ==
X-Received: by 2002:a1c:9c49:: with SMTP id f70mr12684511wme.74.1592226176022; 
 Mon, 15 Jun 2020 06:02:56 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id v19sm22443569wml.26.2020.06.15.06.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 06:02:55 -0700 (PDT)
Date: Mon, 15 Jun 2020 15:02:53 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Stephan Mueller <smueller@chronox.de>
Subject: Re: [PATCH v2 13/14] crypto: sun8i-ce: Add support for the PRNG
Message-ID: <20200615130253.GA8958@Red>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <2397344.pSczEbEFGg@tauon.chronox.de> <20200427084137.GA8787@Red>
 <5634597.9v007L4FOH@tauon.chronox.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5634597.9v007L4FOH@tauon.chronox.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_060259_073252_781CF70D 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:23:15AM +0200, Stephan Mueller wrote:
> Am Montag, 27. April 2020, 10:41:37 CEST schrieb LABBE Corentin:
> 
> Hi Corentin,
> 
> > > Shouldn't they all be kzfree?
> > 
> > Yes
> > Probably it miss also a memzero_explicit, I think that seeds/data are
> > sensitive
> 
> kzfree uses memset_secure since very recently. So, kzfree should be all you 
> need.
> 
> 

Hello

I still dont see any memset_secure in kzfree (mm/slab_common.c).
Does I miss something ?

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
