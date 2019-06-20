Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFD84CBD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 12:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTm2tWWy+/Vg8rT+W23ov/uxFrcWo2B53UgfvWBQbws=; b=JXjp+ggWR+i/U8
	Yc64YKkK9JGjP3YQGO8q18IqOIeo0U1FlDDhsKC08+DbtLcQvEA5+vgj99Yo5c7jk2KqBBfciw92e
	4+iTdRbbaQv5p8/PzF/H4xKjJyFYu3kWg+xjPb8A/RJsieTdrJfEQzOA1ZjjHOwGnoGIZhmzEkgPY
	B9EddLSfT38NIcLB4w1gfMdI2p17EI/3az/kIaj/oqICRknATphXWvLvEgEHP3Jb6wnx+Cc0qYANn
	fAO3ZVS8m61rQug14qgJuvBN6jiJmabRlZ5k6cbeWtcXoxgmXiQ6bBavC+vMjdTso4QQ/4QO7pJ7s
	t8RDhjOtz5/9Sgm2SIFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduJq-0005hw-9A; Thu, 20 Jun 2019 10:29:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hduJc-0005hd-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 10:29:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0871D360;
 Thu, 20 Jun 2019 03:29:12 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D8913F718;
 Thu, 20 Jun 2019 03:29:11 -0700 (PDT)
Date: Thu, 20 Jun 2019 11:29:09 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v1 4/5] coresight: etm4x: improve clarity of
 etm4_os_unlock comment
Message-ID: <20190620102909.GC20984@e119886-lin.cambridge.arm.com>
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-5-andrew.murray@arm.com>
 <c4064f38-9699-219e-706e-2fdfa8277a62@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4064f38-9699-219e-706e-2fdfa8277a62@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_032912_821597_1A07DB3F 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:46:07AM +0100, Suzuki K Poulose wrote:
> 
> 
> On 18/06/2019 13:54, Andrew Murray wrote:
> > To improve clarity, let's update the comment for etm4_os_unlock
> > to use the name of the register as per the ETM architecture
> > specification.
> 
> nit: It also "fixes" the comment. Writing any value doesn't unlock
> the trace unit. It must be "0".
> 
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >   drivers/hwtracing/coresight/coresight-etm4x.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> > index 885c4f2c691c..bda90d4cd62b 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> > @@ -47,7 +47,7 @@ static enum cpuhp_state hp_online;
> >   static void etm4_os_unlock(struct etmv4_drvdata *drvdata)
> >   {
> > -	/* Writing any value to ETMOSLAR unlocks the trace registers */
> > +	/* Writing 0 to TRCOSLAR unlocks the trace registers */
> >   	writel_relaxed(0x0, drvdata->base + TRCOSLAR);
> >   	drvdata->os_unlock = true;
> >   	isb();
> 
> With the above :
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks, I'll update the message.

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
