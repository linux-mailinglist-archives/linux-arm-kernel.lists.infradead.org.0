Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD541001A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 21:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hw+4pRqhG1qF4N1MDCxcH3tGrfVfitNIiHPvR6cTXFg=; b=O11q7NjlO2vPdy
	CUZQaQldOxDnooPSiBID4JrLa6mR6ccvbVQYRS3N4VOLWZg1Oq8QrInpAgX5VarqpfQsmdqwhbNqh
	no+b69bM6qulCxCbUakDXo4a132vHnoHsWjXJYyDSM0Wd/icpg8FlGuLwJnzBuBkDtC5wrWWfeKMi
	uh5bN211tIwv1zVsfioxTbnZQpm9soZzZ9wYggppypuVbikEpDtRpJ6aMwNj2+ID8tvlG4vmEP6Yc
	GzYQ9VmXX3Gn/aUivfg+iXEUOw9O7e7wsT8cflPNDb2KUgvqZ55hNSWhsCjfrX2bofr+1ETDgA6Ej
	18V/7GUnAAV27jdmCjiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLY9H-0002CO-Pa; Tue, 30 Apr 2019 19:10:39 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLY9B-0002BH-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 19:10:34 +0000
Received: from localhost (lfbn-1-3034-80.w90-66.abo.wanadoo.fr [90.66.53.80])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 35361240007;
 Tue, 30 Apr 2019 19:10:21 +0000 (UTC)
Date: Tue, 30 Apr 2019 21:10:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Baruch Siach <baruch@tkos.co.il>
Subject: Re: [PATCH 2/4] rtc: digicolor: set range
Message-ID: <20190430191021.GH11339@piout.net>
References: <20190430093212.28425-1-alexandre.belloni@bootlin.com>
 <20190430093212.28425-2-alexandre.belloni@bootlin.com>
 <877ebbu3lz.fsf@tarshish> <20190430114702.GD11339@piout.net>
 <875zqvu1l3.fsf@tarshish> <20190430130544.GF11339@piout.net>
 <87y33rsef3.fsf@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y33rsef3.fsf@tarshish>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_121033_387466_D237BE10 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 18:25:52+0300, Baruch Siach wrote:
> > Yes, this is ok to return a valid value that is higher than range_max.
> > However, at that time, you will not be able to set any alarms anymore as
> > the core doesn't allow to set alarms after range_max.
> >
> > I would think that this is fine because this will happen in 2106 and we
> > have a way to offset the time (the whole goal of setting the range)
> > using device tree.
> 
> That's the sort of documentation that I'm missing. The 'start-year'
> property is mentioned in the DT binding documentation. But I don't see
> where range_max is documented as a facility for the time offset feature.
> 

Sure, I'm planning to document better how a proper RTC driver should be
written. I needed to cleanup the digicolor driver because I4m removing
.set_mmss and .set_mmss64 this cycle.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
