Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E0FA747F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bUcjG8As3JPrwg22zWZ4s+V9i44lMaT4BCDVYR12qU=; b=NevwPrPcrHItUa
	86lqIBUFIHKoO5Zxh3M94suZm/y+xGmToYqbvgKW3SppDSIxJFyaOUM+fqEZw/NbzJQZJDqCKURoa
	lRoBB0Hg/9TrnRVBBXjpqSNDZQP90qgxIlk5Xt4NZqu+0B50o/wOVjN7Ri+o+1YnLaF/Lwcg9GBHM
	H7kXXuxbQiTtB3ggayMvLAg7s+TgzceMa4dqmkeyqs17tEeILrliWuJ1nrPeU88WqMUkr9JlOlYgu
	znbwA4qWHR8Zwp0bQsLc+nzx4Nx4dzEzek99IENjpXazYDfqLQESzWG/iLWMpsRo9GPsiSEqISIXr
	KcEmbdJrGO5e2UAA1FEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FGF-0002V6-NO; Tue, 03 Sep 2019 20:18:43 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FG3-0002Up-Qa
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 20:18:33 +0000
Received: by mail-qt1-f171.google.com with SMTP id t12so21599446qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 13:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a1QAathzD1/uAV9fYI7POjmT2TDuxBSa+aSggxWhAY0=;
 b=ciXKwFcEWbrGORiNw7q2waeFhxVpAo/97+z41Cs8kNfgqRF6AVxQivTwIXhpe3TwJu
 HvYFVq7Q2cA/HegtGHbP9ORARYyTSBvxQp1HTN5axz8LqQwW89AS4JApWGfGifse91XV
 O7d5w78J2AvVquPhf0dD16etZIZpwiuue8PRDLJye1N0bLOoSfc06XX1rXxZIelWJc3g
 rYL3BTbP1EiFhzXUQep74pRJlZ0IimrUKHjQTNbgs+/JFgLnL/XbonaFvRJ6vGXkBlDU
 yQgHMJDJ6S3yV2Vbu5rp0n7pNnd7vfLrREcaVD9fylSK+KrUiX8rSJ2XAjaw5bZGxgq3
 M2tg==
X-Gm-Message-State: APjAAAXuMdS9glkzc4X2R/VFxZKULJqC3pfE1Ku2Mxule/MuQQ85bEFo
 aPWqCvQEuHCtD+HWdalevC+XkWyIBNCZ9l6Iva03JA==
X-Google-Smtp-Source: APXvYqwgXExvgTxOl1/O2lfva4kHNuYKWSCt6OFDd799DZaQ+1K+JS/a7srkxQkqG5dpyuZV/0d/Kd31j11hNcaQrV4=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr13256958qtb.7.1567541910527; 
 Tue, 03 Sep 2019 13:18:30 -0700 (PDT)
MIME-Version: 1.0
References: <f9edfc8e-19b7-4b6e-897a-35f3bdcc8643.lettre@localhost>
In-Reply-To: <f9edfc8e-19b7-4b6e-897a-35f3bdcc8643.lettre@localhost>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 22:18:14 +0200
Message-ID: <CAK8P3a3+SSen+BxFkryBJPzECMQ47aw-JQp55kOGQyKVbKLJPw@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Drivers Changes for 5.4
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_131832_334784_A141D620 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> ----------------------------------------------------------------
> Allwinner drivers patches for 5.4
>
> One driver to remove a redundant error message in the Allwinner RSB
> driver.


Pulled into arm/drivers, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
