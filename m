Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9298F8818
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3V3H2S8zJ/+OpF0f56DsGpcWWrgyZvTt2HE+KVMVpc=; b=rP21WTF8EbUG8G
	8oM35fP90xMEIkKfogq21TLtCxqPalU0tXLH1+nMzbNHa/QjHNlQTL6bby2HoBT9+YFjfy7QsCG0z
	gRL9MuMV787uuGhNOPQLCfKrAGGk5s2jB5SLP8HOayMTIjTY7HgHxn95eSxYNJ+SohaXdJGr51yjP
	J404hLbGOu9yRjbS9JoFccPRH085qDZPLIn7BApyHPNIof08ISzKTul/qQnV4dRU5ZfJxFPf56lb/
	n/hUPhsg6NA+tq1spzljGNVQzt+IOWj4ZUjjNk9KROuTSd5kkaFzZxLGbzpeI7x25r6/e6TVKYKrY
	RvAqSQPoQEEqPHtwCydQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOrs-0008JB-Ia; Tue, 12 Nov 2019 05:37:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOre-0008IS-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 05:37:19 +0000
Received: from localhost (unknown [122.167.70.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 54CF02084F;
 Tue, 12 Nov 2019 05:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573537038;
 bh=DY28ZU9iJjrpae4knOfkZebu2FgGI1JEdHocfirJtGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ne9ss+MVsI/j6Y/+Q5x3RMKfDe5np4vko2s3/+2sXfpBN/jAr0RvQO6Rl0Hs4lq17
 2lnc6rDPlVkKSU6bH+s7oJKE4rM3Ley2L1M4JT76AOC5cA1fnUZ5roRpINGLiRcrVh
 5Xkpl6VeEXsVQiRXSXd+XGAnKlWysyWckSPyS0KI=
Date: Tue, 12 Nov 2019 11:07:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 15/15] dmaengine: ti: k3-udma: Add glue layer for non
 DMAengine users
Message-ID: <20191112053714.GX952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-16-peter.ujfalusi@ti.com>
 <20191111061258.GS952516@vkoul-mobl>
 <6d4d2fcc-502b-4b41-cd71-8942741f4ad8@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d4d2fcc-502b-4b41-cd71-8942741f4ad8@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_213718_533531_9F795D1B 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.167.70.123 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-11-19, 12:31, Peter Ujfalusi wrote:
> 
> 
> On 11/11/2019 8.12, Vinod Koul wrote:
> > On 01-11-19, 10:41, Peter Ujfalusi wrote:
> >> From: Grygorii Strashko <grygorii.strashko@ti.com>
> >>
> >> Certain users can not use right now the DMAengine API due to missing
> >> features in the core. Prime example is Networking.
> >>
> >> These users can use the glue layer interface to avoid misuse of DMAengine
> >> API and when the core gains the needed features they can be converted to
> >> use generic API.
> > 
> > Can you add some notes on what all features does this layer implement..
> 
> In the commit message or in the code?

commit here so that we know what to expect.

Thanks
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
