Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8E14293F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FIto5EGPtLz4rzghpUj1I2P6PmhWjOOG7dRN0191HMQ=; b=UShu4x7GeZ435M
	pxuGL69dNpSagvvpTyM+hzZJ8ov/QLNqPbJz4YvKbB08960/juuMc2BOykIEaTAPCb5OFQDEx+thg
	H07Q2NIK2/pDALggDs7SjB9PWYP2NsazMGvAaZCWSXgxg8AzVMiZ6JUJd/5jvaVC7QTfmFzyMi+xX
	oFUZGOEQs8wFMpK5FfotJtga1RcUWgMzyP+/0L+vDubyFZL4edIc7yX57yRYAJ6BQGY3Qylq5BaWQ
	8vkZXT2grwhNLKMx48DkR2zN+3qOs7AWL692/vdtK5AGQsyoqg72oHudDB/7uAv9p12cyT9jipzNu
	khazr8Rw7/haTlMNDDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4Hv-000291-QC; Wed, 12 Jun 2019 14:31:43 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4HL-0001q3-48
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:31:09 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,366,1557212400"; d="scan'208";a="37046409"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Jun 2019 07:30:17 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 12 Jun 2019 07:30:17 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Wed, 12 Jun 2019 07:30:16 -0700
Date: Wed, 12 Jun 2019 16:29:17 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
Subject: Re: [PATCH] clk: at91: generated: Truncate divisor to
 GENERATED_MAX_DIV + 1
Message-ID: <20190612142917.sbpks6nhf7fy6rk6@M43218.corp.atmel.com>
Mail-Followup-To: Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>,
 Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20190610151712.16572-1-codrin.ciubotariu@microchip.com>
 <7306f2c5-e035-31d1-194e-6b4afb6a61c1@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7306f2c5-e035-31d1-194e-6b4afb6a61c1@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_073107_225782_7AD71FA6 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 03:54:00PM +0200, Nicolas Ferre - M43238 wrote:
> On 10/06/2019 at 17:20, Codrin Ciubotariu - M19940 wrote:
> > From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> > 
> > In clk_generated_determine_rate(), if the divisor is greater than
> > GENERATED_MAX_DIV + 1, then the wrong best_rate will be returned.
> > If clk_generated_set_rate() will be called later with this wrong
> > rate, it will return -EINVAL, so the generated clock won't change
> > its value. Do no let the divisor be greater than GENERATED_MAX_DIV + 1.
> > 
> > Fixes: 8c7aa6328947 ("clk: at91: clk-generated: remove useless divisor loop")
> > Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> 
> Yes:
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

Ludovic

> 
> Thanks for having fixed this Codrin. Best regards,
>    Nicolas
> 
> > ---
> >   drivers/clk/at91/clk-generated.c | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
> > index 5f18847965c1..290cffe35deb 100644
> > --- a/drivers/clk/at91/clk-generated.c
> > +++ b/drivers/clk/at91/clk-generated.c
> > @@ -146,6 +146,8 @@ static int clk_generated_determine_rate(struct clk_hw *hw,
> >   			continue;
> >   
> >   		div = DIV_ROUND_CLOSEST(parent_rate, req->rate);
> > +		if (div > GENERATED_MAX_DIV + 1)
> > +			div = GENERATED_MAX_DIV + 1;
> >   
> >   		clk_generated_best_diff(req, parent, parent_rate, div,
> >   					&best_diff, &best_rate);
> > 
> 
> 
> -- 
> Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
