Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA961D7FC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cu3kJkPP7kljOoohScGNZtrGk/kNtZf/xW6mG77Q3gs=; b=LD9XbohXiH4C/h
	41zh73QCkQNmsO5kLPRuFCOE6YXWGaSOU+PLSHIgDzOUOZJol73jEHqS78/beZtV6D4kRLLfOHnFx
	1+p+KxIDfr9LOgZsfbiZSmHtC3KxWbYjtgicS90hqUrmo5CM1iQHZCOLgwR6WQcghuvvcHHBycMtS
	LfTTB5bqMY8pcAgSlYbeyYWLnus0nov1GL8NEvACn1uk6K11HLGyuLA7Ngc6ptW0OGVvWqFihzE2s
	JzTQZgtn9Ys3gRTRWPlZFBN2d9/+hEePiinDzWsPAnJiE+Z8fWlJ+QtEH7o3ii8UGwYmq1QNUO0+2
	mlLF2yXupzX8PUYqmktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajIa-0008C8-Se; Mon, 18 May 2020 17:11:32 +0000
Received: from smtprelay0251.hostedemail.com ([216.40.44.251]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajIS-000871-GY; Mon, 18 May 2020 17:11:25 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id DDE31100E7B40;
 Mon, 18 May 2020 17:11:18 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:4321:5007:7576:7903:10004:10400:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13069:13255:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:3, LUA_SUMMARY:none
X-HE-Tag: badge74_7fac34a359a27
X-Filterd-Recvd-Size: 2431
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Mon, 18 May 2020 17:11:17 +0000 (UTC)
Message-ID: <06434e4d5980b17a1cacee80369087cbd7a8cbe0.camel@perches.com>
Subject: Re: [PATCH][next] i2c: mediatek: fix integer overflow on an integer
 multiplication
From: Joe Perches <joe@perches.com>
To: Wolfram Sang <wsa@kernel.org>, Colin King <colin.king@canonical.com>, 
 qii.wang@mediatek.com
Date: Mon, 18 May 2020 10:11:16 -0700
In-Reply-To: <20200518165928.GA5109@ninjato>
References: <20200518165529.57821-1-colin.king@canonical.com>
 <20200518165928.GA5109@ninjato>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_101124_616124_5E1BD962 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.251 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-18 at 18:59 +0200, Wolfram Sang wrote:
> On Mon, May 18, 2020 at 05:55:29PM +0100, Colin King wrote:
> > From: Colin Ian King <colin.king@canonical.com>
> > 
> > Currently the calculation of sample_ns is using a 32 bit integer
> > multiplication and can potentially overflow. Fix this by making the
> > constant a long long to use a 64 bit multiply and hence
> > avoid an overflow.
> > 
> > Addresses-Coverity: ("Unintentional integer overflow")
> > Fixes: 5f1ae73d538a ("i2c: mediatek: Add i2c ac-timing adjust support")
> > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> 
> CCing the patch author.
> 
> > ---
> >  drivers/i2c/busses/i2c-mt65xx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> > index 702061805925..c93492b997ce 100644
> > --- a/drivers/i2c/busses/i2c-mt65xx.c
> > +++ b/drivers/i2c/busses/i2c-mt65xx.c
> > @@ -551,7 +551,7 @@ static int mtk_i2c_check_ac_timing(struct mtk_i2c *i2c,
> >  	const struct i2c_spec_values *spec;
> >  	unsigned int su_sta_cnt, low_cnt, high_cnt, max_step_cnt;
> >  	unsigned int sda_max, sda_min, clk_ns, max_sta_cnt = 0x3f;
> > -	long long sample_ns = (1000000000 * (sample_cnt + 1)) / clk_src;
> > +	long long sample_ns = (1000000000LL * (sample_cnt + 1)) / clk_src;

unsigned long long?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
