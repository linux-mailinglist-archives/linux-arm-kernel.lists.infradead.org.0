Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7A01CB236
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 16:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+efBwiLxcxwXmmfYVvaRsn9RBRkZU6XjrM3MFX1RvU=; b=JL9DK2J9jH1oRA
	DAi1Uy7mGpzKhqW2izBhSPjTj1LyHH8aVbna77mCJxL8mjougdMDe4hRjKMLMuKWJ43/W7kwQvg6p
	MH38/5Quwwzq2SkK2jI9cJLsnesVHSjPVQNgi8ycWRkMQnmmCliVFc32iEGKnWi6DrOpJOK4Lb9Wo
	b7k3Bs8o73VTOrsPR69kqSHmWiVfyYo/j2EykYMkA1vE+4XpfIa2aJ+KWTr4st4TgNyWt7c+rJDW7
	4Ja9+FyIJGYmwLg+T2HxQbCyB6kkOrj/yyDepWoNgaO3RZfvQagecGp4tpmDpRulesSwPtsp4Fo5y
	tKYJW4kjVuo4w0qaIkHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX4Gc-0004J7-B4; Fri, 08 May 2020 14:46:22 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX4GV-0004Id-Eh
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 14:46:16 +0000
Received: by mail-ed1-f65.google.com with SMTP id f12so1391610edn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 07:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XarHM7quPtL8Iwp9fTwswhgZUavH/ZpsvuGgVu5XAdQ=;
 b=bJ1LKaoZWjnVnOhqmxPWwQZ0aG3SDrZb69PgLGxRXIdgyLol2X5mqteVC+oa5L2gmJ
 NatLs5cMyxM2exES5cmR2PfuQ0GPntYYqG5APfWhi4Fw4bS06pu6Ghl9BKu+CXISU/NA
 Rwbt0Ax2zUOXhW0mBChW0tj/A31Ar1YjaE9tPtcZ0u7xIzmwsrzTuSOrrmSiBBEsa8go
 /5cJUqIBggnubskE427JMng8NQk4zgAPRsjL/ObHn8D6yVlaSEgA0ohwPpDvDzI/2HlQ
 pNc+0/v4xvd6jbJ0SU3ApDFEQx2JTeStt7UGOqFh3gIlw4JfsekRgMF9qfQ5ZZrvFSUV
 lwxA==
X-Gm-Message-State: AGi0PuaLIq/fKZybss8pLil7soMmBl2Bmp71cZJlbS7TuN6yj/j+2BkS
 JuztePI8UTe/aSKtzbxpbU4=
X-Google-Smtp-Source: APiQypJjIQQnYzAO+FSyQEz9WwVtWHbUUhLRrRKlBcmzLwDdJK0dXJ06g9EggDcxrDp7mWZKsB0M9g==
X-Received: by 2002:a05:6402:1515:: with SMTP id
 f21mr2448831edw.370.1588949173380; 
 Fri, 08 May 2020 07:46:13 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id a5sm289736edn.14.2020.05.08.07.46.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 08 May 2020 07:46:12 -0700 (PDT)
Date: Fri, 8 May 2020 16:46:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH] memory/samsung: Maybe wrong triming parameter
Message-ID: <20200508144610.GA5983@kozik-lap>
References: <20200507114514.11589-1-bernard@vivo.com>
 <2eeb33f7-1acc-66bb-704a-b724fa0be0a8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2eeb33f7-1acc-66bb-704a-b724fa0be0a8@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_074615_490799_4BB9A0BC 
X-CRM114-Status: GOOD (  23.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, Bernard Zhao <bernard@vivo.com>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:42:46PM +0100, Lukasz Luba wrote:
> Hi Bernard,
> 
> 
> On 5/7/20 12:45 PM, Bernard Zhao wrote:
> > In function create_timings_aligned, all the max is to use
> > dmc->min_tck->xxx, aligned with val dmc->timings->xxx.
> > But the dmc->timings->tFAW use dmc->min_tck->tXP?
> > Maybe this point is wrong parameter useing.
> > 
> > Signed-off-by: Bernard Zhao <bernard@vivo.com>
> > ---
> >   drivers/memory/samsung/exynos5422-dmc.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> > index 81a1b1d01683..22a43d662833 100644
> > --- a/drivers/memory/samsung/exynos5422-dmc.c
> > +++ b/drivers/memory/samsung/exynos5422-dmc.c
> > @@ -1091,7 +1091,7 @@ static int create_timings_aligned(struct exynos5_dmc *dmc, u32 *reg_timing_row,
> >   	/* power related timings */
> >   	val = dmc->timings->tFAW / clk_period_ps;
> >   	val += dmc->timings->tFAW % clk_period_ps ? 1 : 0;
> > -	val = max(val, dmc->min_tck->tXP);
> > +	val = max(val, dmc->min_tck->tFAW);
> >   	reg = &timing_power[0];
> >   	*reg_timing_power |= TIMING_VAL2REG(reg, val);
> > 
> 
> Good catch! Indeed this should be a dmc->min_tck->tFAW used for
> clamping.
> 
> It didn't show up in testing because the frequency values based on
> which the 'clk_period_ps' are calculated are sane.
> Check the dump below:
> 
> [    5.458227] DMC: mem tFAW=25000, clk_period_ps=6060
> [    5.461743] DMC: tFAW=5, tXP=2 val=5
> [    5.465273] DMC: mem tFAW=25000, clk_period_ps=4854
> [    5.470101] DMC: tFAW=5, tXP=2 val=6
> [    5.473668] DMC: mem tFAW=25000, clk_period_ps=3636
> [    5.478507] DMC: tFAW=5, tXP=2 val=7
> [    5.482072] DMC: mem tFAW=25000, clk_period_ps=2421
> [    5.486951] DMC: tFAW=5, tXP=2 val=11
> [    5.490531] DMC: mem tFAW=25000, clk_period_ps=1841
> [    5.495439] DMC: tFAW=5, tXP=2 val=14
> [    5.499113] DMC: mem tFAW=25000, clk_period_ps=1579
> [    5.503877] DMC: tFAW=5, tXP=2 val=16
> [    5.507476] DMC: mem tFAW=25000, clk_period_ps=1373
> [    5.512368] DMC: tFAW=5, tXP=2 val=19
> [    5.515968] DMC: mem tFAW=25000, clk_period_ps=1212
> [    5.520826] DMC: tFAW=5, tXP=2 val=21
> 
> That's why in the existing configuration it does not harm
> (the calculated 'val' is always >= 5) the board.
> 
> But I think this patch should be applied (after small changes in the
> commit message).
> 
> @Krzysztof could you have a look on the commit message or take the
> patch with small adjustment in the description, please?
> 
> I conditionally give (because of this description):
> 
> Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

Thanks for review.

I applied patch with CC-stable and adjusred commit msg.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
