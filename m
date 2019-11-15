Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7A5FDE74
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOAZ8uTlcEgvtx3voVnaLrGeMF8RebrqV2nnnfRb+h8=; b=NlMUTqyJos72OM
	SVOG09+KJp08qiQ/e38pwXZ0T3atT1Yc/w1p8Sv88exLyml0iR4Pg/dqFQoLqDHXFqikJSkl6Jz1H
	z7juBzPV+BZLJxiTKYgwcQqbu0zUMMkRr/9hmUjEeWr+uVTBDOG0hvkZyQf8sbe6JSrmSwI6EnM8+
	KJdT83enNl9XojVxvFDMadwo5IKMjhLBLmlOKnTn8/t3d2oSuTWD6LFz6CotQUCItdwC7UPyEDIhS
	yh//ADd6ee/FpF34Ml+xL16a2yQzmB8CXK3GfwS33dXyG4m/h0N0Irxx53g27sLFl6A+Lk3P4WNk3
	cP4AnWCgaKYeGUsVrn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbAj-00011a-LJ; Fri, 15 Nov 2019 12:57:57 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbAb-00010e-Ls
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:57:51 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 26AEA411F8;
 Fri, 15 Nov 2019 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:references:in-reply-to:date:date:from
 :from:subject:subject:message-id:received:received:received; s=
 mta-01; t=1573822664; x=1575637065; bh=QeijnkT3SOw/daHURBDhLCLSR
 5tzZMfBzaBd9ltBxX8=; b=EKU8YavvosEYSvUbEDPS9hiu7i23N/cqdGiI8hNWf
 zrE8b0EX5r50SWlPf9gj2FhnnQMGPCPsIoUgUoRFbLTScEcMZSM4itcjnbjvEZAU
 qwbAkyOEig6onc8OipQDA7DoLEFqtpB7BS4wLVKg4uks5df1/pY8ItdQXU2EN4n7
 As=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDyr-ZM6IAI0; Fri, 15 Nov 2019 15:57:44 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id 532F6411D9;
 Fri, 15 Nov 2019 15:57:41 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Fri, 15 Nov 2019 15:57:41 +0300
Message-ID: <221381ebad0236625775bda5655fcd7c78455e6f.camel@yadro.com>
Subject: Re: [PATCH v2 2/2] mmc: sdhci-of-aspeed: add inversion signal presence
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Date: Fri, 15 Nov 2019 15:56:54 +0300
In-Reply-To: <d177ef37-643e-442d-d536-750e0bb5e86d@intel.com>
References: <20191114125435.27756-1-i.mikhaylov@yadro.com>
 <20191114125435.27756-3-i.mikhaylov@yadro.com>
 <fcb5f8b5-40b9-6497-b24d-0b73e2525949@intel.com>
 <b443738f5e2a3c7ba96b329a8347374f7f934483.camel@yadro.com>
 <d177ef37-643e-442d-d536-750e0bb5e86d@intel.com>
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_045750_071779_6062EEA7 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Ulf
 Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-15 at 09:20 +0200, Adrian Hunter wrote:
> On 14/11/19 7:19 PM, Ivan Mikhaylov wrote:
> > On Thu, 2019-11-14 at 15:10 +0200, Adrian Hunter wrote:
> > On 14/11/19 2:54 PM, Ivan Mikhaylov wrote:
> > > > Change the default .get_cd callback. Add inverted signal card detection
> > > > check.
> > > > 
> > > > Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> > > > 
> > > > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c
> > > > b/drivers/mmc/host/sdhci-of-
> > > > aspeed.c
> > > > index 8962f6664381..186559ee8fcc 100644
> > > > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > > > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > > > @@ -143,6 +143,19 @@ static inline int
> > > > aspeed_sdhci_calculate_slot(struct
> > > > aspeed_sdhci *dev,
> > > >  	return (delta / 0x100) - 1;
> > > >  }
> > > >  
> > > > +static int aspeed_get_cd(struct mmc_host *mmc)
> > > > +{
> > > > +	struct sdhci_host *host = mmc_priv(mmc);
> > > > +
> > > > +	int present = !!(sdhci_readl(host, SDHCI_PRESENT_STATE)
> > > > +			 & SDHCI_CARD_PRESENT);
> > > > +
> > > > +	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
> > > > +		present = !present;
> > > 
> > > Perhaps safer to flip the bit using CONFIG_MMC_SDHCI_IO_ACCESSORS and
> > > ->readl() callback
> 
> 
> > Sorry, don't quite understand what you're saying. You want to instantiate
> > '.read_l' callback instead of '.get_cd' in sdhci_ops and substitute the real
> > value?
> > 
> > res = readl(base, reg);
> > if (reg == SDHCI_PRESENT_STATE)
> > 	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
> > 		return !res;
> 
> Presumably just flip the SDHCI_CARD_PRESENT bit i.e.
> 
> 		return res ^ SDHCI_CARD_PRESENT;
> 
> > return res;
> > 
> > Something like this?
> 
> Yes
> 

Don't you think it will bring a little overhead on any sdhci_readl plus
sdhci_readl will not get the real value in case of inverted signal which seems
is not right from communication fairness between hw and sw? I took that approach
with .get_cd from variety of drivers in host/mmc but if you think it will be
better and safer with .read_l - I'll do that way. 

Sorry for the link in subject, didn't notice that I put it in previous message
somehow.

Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
