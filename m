Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18DE7C826
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNFngOtQ547y+5KbRIAB0p7j7XxRYJTDuMBbLzpRUNw=; b=l93HZ4hG9W+3re
	JBiP2iGvPAF52yYjhRWGZR9TpLHp63EO3ApVHjovGpS1WlXP/b1CnPjU92TWkJr5rfHz3F6aBSwea
	vnCv4Ar+K9KsVtacwog443vwWAA+L/Px/W/GNR8BxLSSQaBPq1Jq0NVBZGrhaYzMqHuwpNGyGIYus
	afJoPPFDtaP1+SUXwwjRHD43Vi0gEHpflTruTcCQ8pPVEwFw38x+olR51GUOIVL5K/4SsrrDknG7R
	HolcbXPM/D8G6N0tZtpsAN0twAI3wCaxxJflAVaPFX1P2z95/6WM/s8d+DjLZtY34YqFic06t9tqI
	swTfZwm7+znjbA6lBc/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsr7K-0004al-3O; Wed, 31 Jul 2019 16:06:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsr7B-0004aK-V6
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:06:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so815436pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 09:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dw5dQKwX8ASG6Ts6LgBuSFToiWxM+evOZX45eitYT60=;
 b=nXhNdnpzQ5klubCtfPKL3rrjBDdkcECAJhbzNalPGdQFtuHxtHL5KFS8kYJxX01zI+
 3GqX/EXvBnWwabWBFeHJWv8ENvMiwnd744dcdIMl23dIdrN9eqdKH3FEaOzYWG/FLHW+
 snA2P3tt9xmBEcE0wzL9JO6YiPQXK/ecFHfTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dw5dQKwX8ASG6Ts6LgBuSFToiWxM+evOZX45eitYT60=;
 b=UZuDUJM3R1wkG8E3751vsGpYOdQcLd9wU/jMu7zKBztEj+ts1kBsdqwwlch9HBmlnB
 p6sLVd7Wsroz2ZIFajhpRfeOaT/O6sd4HbG3TgqooeYiKlgtMfVaji7Vqchfb8ywaC+D
 DIFmM4cBpJbzPw+ZlZlr3PWhqmV+Jw+7WRIGSBClPv1KvqZgzswuAE4IRMl+8KPDGCvl
 kSzzlic0F1+kv64ylIrtljpMeqHLHoq6+qsHmFb4bOnSYotMNDua+b3ZMUIWZXpJb0QV
 t5SmKLKTCITi8yPWKk+xGKgZACVwBCFyMNWjt2+Q1RnCHZYleGCOglueEjB1uSop064I
 ekqw==
X-Gm-Message-State: APjAAAXorOnqYrUIS455yh6KX8/Rxd7zZVjaCQYVgKBfPSQdYlKFMm2v
 SHuBmqBGpZfLkvYogzY/nX44HA==
X-Google-Smtp-Source: APXvYqyp+rY/4Em+/ZUkiOjo98nR6upEwWWg4wXYmcr0OQ9k/QFwbGOVWkGPKkn54UdzEr838uzIjQ==
X-Received: by 2002:a63:ff03:: with SMTP id k3mr19399349pgi.40.1564589168950; 
 Wed, 31 Jul 2019 09:06:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j15sm98920836pfn.150.2019.07.31.09.06.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 31 Jul 2019 09:06:08 -0700 (PDT)
Date: Wed, 31 Jul 2019 09:06:07 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] mmc: atmel-mci: Mark expected switch fall-throughs
Message-ID: <201907310905.B90C6E25@keescook>
References: <20190729000123.GA23902@embeddedor>
 <20190731113216.ztxckd54a74g2lw5@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731113216.ztxckd54a74g2lw5@M43218.corp.atmel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_090610_022026_08B2B979 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 01:32:16PM +0200, Ludovic Desroches wrote:
> > drivers/mmc/host/atmel-mci.c:2426:40: warning: this statement may fall through [-Wimplicit-fallthrough=]
> >    host->caps.need_notbusy_for_read_ops = 1;
> >    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~
> > drivers/mmc/host/atmel-mci.c:2427:2: note: here
> >   case 0x100:
> >   ^~~~
> > 
> > Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> 
> I don't know if there is a policy in the kernel about the expression to
> use. As this one does the job

Yup, documented here:
https://www.kernel.org/doc/html/latest/process/deprecated.html#implicit-switch-case-fall-through

> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks!

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
