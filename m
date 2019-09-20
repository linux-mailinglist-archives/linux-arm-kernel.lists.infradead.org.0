Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176F4B9084
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9WBu0FRuh9yJcAjOSxb/X9AQm4uPvLqaeubY/kXXK8=; b=kZcb+a7u4VbV9+
	2cfhvquxTcyAYGPYC9R12Q0vI1Cw9YPpUJE3S2tTaNfuLTJ+KqvV+pGmks8riNCZtrdzkaHZzxLaU
	qhc5DTNIt4yAaUlmKYTHF4WK8Hb03iy+PacQb8IHIpA+kQluG2/v9KLQZPt568YyGglnswl7ZQ93U
	YwFYedLXft8PvgdCUYDpckuPBEInxlaH4Io3/l8yrpaX9HMTpfXgIiAUN4fyPioOr6W1ZUyMBXsGA
	Aq5ZOq7b0xdgDvwjaV2SBxNqVAzXQ2kAUk3Zga1BOWnS++50kPA/1lKXvu3SqtYLwA3mOZx3jKxEv
	6l/LQE5owcWR2u6CGgeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIoD-0002cz-Id; Fri, 20 Sep 2019 13:18:49 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIo3-0002c8-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:18:42 +0000
Received: by mail-qt1-x82b.google.com with SMTP id m15so8614634qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 06:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/zBWVQUMduMEV6S4oIBu6WgtqiwSPYzhbiHGFHy9vHA=;
 b=NM6tki/LBfV6dT4LIGUY5UfW6c7Qj/qVC68mC8w2mSeEe+B6rOkXnVORyZCKePKFXg
 eJWFDhizzAfTT++dBCvbzDPb+XTuIQKUijX2DQpb6tFng3hsPDSL5aHyr3WrefAg1BLM
 W/gxGpDVcCB8Px2kVwKn2t+jfY7fi5UZmNNz/hUeSgF0At4N+0itF4ygt/9ZB9wRyOWa
 coqARgtzDluJh1VULcieqzJRblXGLABG98sZROfnzTfRE5b0PBoI8Cpo3FlXfJp7Z4+2
 MaOYLVRCniheNmugEkbt9aYG3vba9UjhgbUkreWfZilRGrNaOJMMFx1O0YSnKlnhpr7r
 QESA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/zBWVQUMduMEV6S4oIBu6WgtqiwSPYzhbiHGFHy9vHA=;
 b=sgKMxKeXv8ND/4PobHibpkmcNLmH4Or7Lg1DXWxt8cVqpXSK2c1BDoRJRTg4NjfC0p
 UyoK1BiJsPm1fGhcqvNdRKL+It9wD13V66jF2mTAdwYwcym2QGg1MVZFasRgvXWgog0L
 8gD1yD0MSbQ0pV+9UsjgbXoodebmZiI0OmtNHhncT2Wyz25dcl0dh8WgAFxnnNB6R7sm
 TX1P5vcFNeA2IW3Vt+roAGp2C9RRZh8d8rHw2e/Cx0Y3dgmjGg5BJxQuya4WGZGKyiDn
 MRX1rkmK1LROtKrhHns3TC4iYVzvk2uVm2SPmdLFAKKlki+NWrQAutmhj+zeo1D1EM6g
 bSQA==
X-Gm-Message-State: APjAAAVpVCAfrTibxzR+Q5EbOHmDPE78iqgiFVgoLk4ynlqcQlO7nRm+
 UHZJqpgTrOGsmLFcBBhhETBkcg==
X-Google-Smtp-Source: APXvYqxIsFgyOBopMmS9+z7fnu+twmn7h4ZA2rMQZMYyKQD/qBcVJREwxOktdQbhEnDGO3ZY+bUuwg==
X-Received: by 2002:ac8:7159:: with SMTP id h25mr3096004qtp.90.1568985517812; 
 Fri, 20 Sep 2019 06:18:37 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id k54sm1035355qtf.28.2019.09.20.06.18.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 06:18:36 -0700 (PDT)
Message-ID: <1568985515.5576.195.camel@lca.pw>
Subject: Re: "arm64: use asm-generic/dma-mapping.h" introduced a kbuild warning
From: Qian Cai <cai@lca.pw>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 20 Sep 2019 09:18:35 -0400
In-Reply-To: <CAK7LNATa=rzCZkBCDaUCcyo4_1JxsrGQrdUFxPh0Pw3KEu6exA@mail.gmail.com>
References: <1568898377.5576.186.camel@lca.pw>
 <CAK7LNATa=rzCZkBCDaUCcyo4_1JxsrGQrdUFxPh0Pw3KEu6exA@mail.gmail.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_061839_647404_28D876A6 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-09-20 at 19:24 +0900, Masahiro Yamada wrote:
> Hi Qian,
> 
> On Thu, Sep 19, 2019 at 10:06 PM Qian Cai <cai@lca.pw> wrote:
> > 
> > The commit 5489c8e0cf03 ("arm64: use asm-generic/dma-mapping.h") introduced a
> > kbuild warning,
> > 
> > scripts/Makefile.asm-generic:25: redundant generic-y found in
> > arch/arm64/include/asm/Kbuild: dma-mapping.h
> > 
> > 
> 
> Which tree did you test?

It was yesterday's linux-next (next-20190918) with this config [1], but it seems
gone in today's linux-next.

[1] https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config

> 
> I tried the latest Linus tree (, which contains 5489c8e0cf03),
> but I did not see this warning.
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
