Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CBE2FDCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQAvc92v4HLS5sYBKGv7/TsLSrcaDMx8drvZNi9Wt9k=; b=Kpbn1M4y3gZ3o3
	2XZLjdjhwhB7E54DmmJnyZuFyHZ3rcgigJgKGqHjCK7/FfxkARj3koT2Yoj2bcVUbY6kZ+iG+z7Dz
	Xx6HX7HuQpeEkMxb7kfw5kxEqJhMRBxPOZ9159+v92KSZ1iTsgFuFqwyN0lntvWWifnUeMAAgrf/W
	W/9l6g5PUd6SbBXYCYkFIrVoUKyZUAOgn/txorMFF8g14UM2H3BOlMptP8BLzTat/FqdlASGrCzK9
	MsR7EowFczeiW048weQj+ShTGzTqEolyIq/+FySu1KjwvgTVXrYDKOA9UB6blIus0IpgAHVPPLNPy
	2mqiqomCbIBS8pQTyp7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWM5T-0002sV-82; Thu, 30 May 2019 14:31:23 +0000
Received: from mta-01.yadro.com ([89.207.88.251])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWM5L-0002s8-1L
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:31:18 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 5961841940;
 Thu, 30 May 2019 14:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 user-agent:in-reply-to:content-disposition:content-type
 :content-type:mime-version:references:message-id:subject:subject
 :from:from:date:date:received:received:received; s=mta-01; t=
 1559226671; x=1561041072; bh=ll2giGFTqdDyHGvuSZXxwLYSy7dMxwuDVbi
 8AS6xgSU=; b=h4FQU1TZ0qR2HRm11GdsDSjcxYXyDxtp/xyoeLUEsg+6l7Zxg5N
 3hzcCv84UlhtjFD8Il3csewASMx3KPl4YIFt82l8GPnURaNH6B0pxpt3mp4465K/
 6s4jDtpWP4TUL1vs227Bm4SGtFiafIE3w5nYKk05SQSsTq0IpJJynxp4=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUOE-xr00LJ2; Thu, 30 May 2019 17:31:11 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id E129B418F9;
 Thu, 30 May 2019 17:31:10 +0300 (MSK)
Received: from localhost (172.17.14.115) by T-EXCH-02.corp.yadro.com
 (172.17.10.102) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32; Thu, 30
 May 2019 17:31:10 +0300
Date: Thu, 30 May 2019 17:31:10 +0300
From: "Alexander A. Filippov" <a.filippov@yadro.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] ARM: dts: aspeed: Add YADRO VESNIN BMC
Message-ID: <20190530143110.GA24059@bbwork.lan>
References: <20190530093948.12479-1-a.filippov@yadro.com>
 <CACPK8XfG7j4Z2bqX9CFxUeUrpx708Uqbh-5ts9W5SnDfDw-xYA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfG7j4Z2bqX9CFxUeUrpx708Uqbh-5ts9W5SnDfDw-xYA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Originating-IP: [172.17.14.115]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_073117_051281_C0657CAB 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [89.207.88.251 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Alexander Filippov <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 02:16:59PM +0000, Joel Stanley wrote:
> On Thu, 30 May 2019 at 09:40, Alexander Filippov <a.filippov@yadro.com> wrote:
> > @@ -0,0 +1,262 @@
> 
> Can we get a SDPX license string at the top of the file? Something like this:
> 
> // SPDX-License-Identifier: GPL-2.0+
> // Copyright 2019 <copyright holder>

Sure, on my way.

> 
> > +/dts-v1/;
> > +
> > +#include "aspeed-g4.dtsi"
> > +#include <dt-bindings/gpio/aspeed-gpio.h>
> > +
> 
> > +&i2c3 {
> > +       status = "okay";
> > +       cpr2021@59 {
> > +               #address-cells = <1>;
> > +               #size-cells = <0>;
> > +               compatible = "general,cpr2021", "general,pmbus";
> 
> Do you have a driver for this one you plan on submitting?

Yes, we plan but not right now. I remove it now and it will be added when the
driver will be ready.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
