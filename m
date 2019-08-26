Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D929C6E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 02:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YZVzlb1DsxQXSy06Pm9sAm5EXMADtTFWJuoApmUKbQ=; b=EGlQV3Nz/DgnTa
	5IwGoAmgHw+zmiPgFAnKPmmPzvoj46KI2qiIOLrh/yU9PuZBC8897mz8Wj86UwNWI1biW4rHbw9FV
	n4FBNNJ5fyHnj64wCJqWoFPimQhVyb5iB8S75+McstdLmHN1CqoR7ml5oPHZFCs7xFNK6fDJE8lQH
	Cn5d/LH/Z2SElXVzs7m87CWMSXvL7iiCxD5OIkE5cCdTB0IKd6MqeE8lcMqYxNVu4b2h3wBJC86Rz
	zJhSJwCsgKZliiDNHTUNLh75CdmY+AB2gWd5Xe4uL3uM1iG7lnRQH9mGmlNLulz6XnP2F2wn/jM7n
	4mqV/mtocKXvJfkZ31sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i23A4-0002qF-DN; Mon, 26 Aug 2019 00:47:08 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i239u-0002pO-4p
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 00:47:00 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id C8F7980719;
 Mon, 26 Aug 2019 12:46:49 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1566780409;
 bh=TJtgfincaDm7qrXJ9SAhuUGk4llEldCBcfwenl5GlMg=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=RR6KEkaIPTqCUFwleHO3gMGa6wW6vS5+Xqri6JSyfCB3ZgvHOry2WcSVcpdEOUhGj
 35khK/zY/UdYbcOK03beeIQPUzwgs+6htHqytIX/4/xdY+GjxC/mbqAk01csGFcRQ5
 gnsAPALDwRSf+8uN75j7XmSqTc+zlBOwqDtTFs1Y6zqNNrD8aGqG5haZS5LnhwLeaV
 w3ZnIjvglFBLRnQdzbL9iJp8zU7dV1AIQ8+9MLbLad11qzD+nWbQ5RX2FTMTKTwcrK
 LWqlvt1jqKSC7Ojk/exAm5x1RQ23DqOrpcYrf8AFxaO4QwnL8BYF/emjLmbclqHFrb
 Aj3u90gshrcQQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d632bf30000>; Mon, 26 Aug 2019 12:46:48 +1200
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1156.6; Mon, 26 Aug 2019 12:46:44 +1200
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1156.000; Mon, 26 Aug 2019 12:46:44 +1200
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Topic: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Thread-Index: AQHVOGTGof7sJp7iK06MfTI7WDVk4qcIBgyAgAABHQCABA5YgA==
Date: Mon, 26 Aug 2019 00:46:44 +0000
Message-ID: <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
In-Reply-To: <20190823105020.GZ13294@shell.armlinux.org.uk>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.14.96]
Content-ID: <EA9848220D51A84EA5A0DD1FA608AE4E@atlnz.lc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_174658_771726_9B73BC2E 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "gregory.clement@free-electrons.com" <gregory.clement@free-electrons.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Fri, 2019-08-23 at 11:50 +0100, Russell King - ARM Linux admin
wrote:
> On Fri, Aug 23, 2019 at 11:46:21AM +0100, Russell King - ARM Linux
> admin wrote:
> > On Fri, Jul 12, 2019 at 03:48:57PM +1200, Chris Packham wrote:
> > > From: Jan Luebbe <jlu@pengutronix.de>
> > > 
> > > The macro name is too generic, so add a AURORA_ prefix.
> > > 
> > > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> > > Reviewed-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
> > > Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > > ---
> > >  arch/arm/include/asm/hardware/cache-aurora-l2.h | 2 +-
> > 
> > I can't apply this series - this file does not exist in my tree,
> > and
> > from what git tells me, it never has existed.  Maybe it's in
> > someone
> > elses tree?
> 
> I think the file is in my tree, just as arch/arm/mm/cache-aurora-l2.h
> which is where it has been since it was originally submitted in 2012.
> 

Sorry there is a missing patch that moves it next to the
hardware/cache-*.h. I can send the missing patch or I can re-send the
whole series. If I do send the whole series do you want me to rebase it
against a particular tag/tree?

> > 
> > >  arch/arm/mm/cache-l2x0.c                        | 4 ++--
> > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm/include/asm/hardware/cache-aurora-l2.h
> > > b/arch/arm/include/asm/hardware/cache-aurora-l2.h
> > > index c86124769831..dc5c479ec4c3 100644
> > > --- a/arch/arm/include/asm/hardware/cache-aurora-l2.h
> > > +++ b/arch/arm/include/asm/hardware/cache-aurora-l2.h
> > > @@ -41,7 +41,7 @@
> > >  #define AURORA_ACR_FORCE_WRITE_THRO_POLICY	\
> > >  	(2 << AURORA_ACR_FORCE_WRITE_POLICY_OFFSET)
> > >  
> > > -#define MAX_RANGE_SIZE		1024
> > > +#define AURORA_MAX_RANGE_SIZE	1024
> > >  
> > >  #define AURORA_WAY_SIZE_SHIFT	2
> > >  
> > > diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
> > > index 428d08718107..83b733a1f1e6 100644
> > > --- a/arch/arm/mm/cache-l2x0.c
> > > +++ b/arch/arm/mm/cache-l2x0.c
> > > @@ -1352,8 +1352,8 @@ static unsigned long
> > > aurora_range_end(unsigned long start, unsigned long end)
> > >  	 * since cache range operations stall the CPU pipeline
> > >  	 * until completion.
> > >  	 */
> > > -	if (end > start + MAX_RANGE_SIZE)
> > > -		end = start + MAX_RANGE_SIZE;
> > > +	if (end > start + AURORA_MAX_RANGE_SIZE)
> > > +		end = start + AURORA_MAX_RANGE_SIZE;
> > >  
> > >  	/*
> > >  	 * Cache range operations can't straddle a page boundary.
> > > -- 
> > > 2.22.0
> > > 
> > > 
> > 
> > -- 
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down
> > 622kbps up
> > According to speedtest.net: 11.9Mbps down 500kbps up
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
