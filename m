Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C967DFCBB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 18:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gbs6bKU1RNwroKglUuWNnOdglkuhCLpHGFbw0ISZMOI=; b=jzQPTY7AGWFciI
	1mS2c3stCCtA4KEFFDqR7R3zZLI4KiYWfE4kThdfmO8Ax2Sv48jdZfj0Wg+uFhBnWt6i0E0vzP29e
	L16XyLOQOQT0FleBfG0wFjfPqwvmN1j4KNHYhAaSJ7/6jczATjqY+dga2cgyhm1qoOF8fZxTJpERg
	DlgezvNiARkZiSZ4pOby3R/wLlndCcGRckis1TqD96toRGFNcYdXsi0R/xyy/dlcHmWg1NNZanf6r
	1C1Eq0anIfQDwUQWN+3DRgrQOMB7KYv+70JQFkyUPHrSvJxF7iKIEdczrJc+ZXTa9dssVRt9bmEhf
	AMsq4yV6MYPOTS/SXZ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVImg-0001ly-8h; Thu, 14 Nov 2019 17:19:54 +0000
Received: from mta-02.yadro.com ([89.207.88.252] helo=mta-01.yadro.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVImX-0001kZ-4m
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 17:19:46 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-01.yadro.com (Postfix) with ESMTP id 21B3A42E7D;
 Thu, 14 Nov 2019 17:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=yadro.com; h=
 content-transfer-encoding:mime-version:user-agent:content-type
 :content-type:organization:references:in-reply-to:date:date:from
 :from:subject:subject:message-id:received:received:received; s=
 mta-01; t=1573751977; x=1575566378; bh=P3FU1d3ro99r7uRl5lGjcNRn5
 WqlYzCAmN7MBkdbr3Y=; b=LqdTURpIXk1RD39o6BfgxURK8wwxrfauvNYFNb6YL
 7tPSe2Xiua69ovHuZqN0lAj4Nq/33qjR3XOOvOVhCAfY3lw4FZRcTKhQqUvsObMt
 itpqEASW82dQU5Vjy44qmb/ffpzTwtOHoS8AW26CUAM6t8P0aAESBbrur6WVnb73
 tM=
X-Virus-Scanned: amavisd-new at yadro.com
Received: from mta-01.yadro.com ([127.0.0.1])
 by localhost (mta-01.yadro.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k52oKM3PmY_C; Thu, 14 Nov 2019 20:19:37 +0300 (MSK)
Received: from T-EXCH-02.corp.yadro.com (t-exch-02.corp.yadro.com
 [172.17.10.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mta-01.yadro.com (Postfix) with ESMTPS id D050A411D9;
 Thu, 14 Nov 2019 20:19:35 +0300 (MSK)
Received: from localhost.localdomain (172.17.15.69) by
 T-EXCH-02.corp.yadro.com (172.17.10.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.669.32; Thu, 14 Nov 2019 20:19:35 +0300
Message-ID: <b443738f5e2a3c7ba96b329a8347374f7f934483.camel@yadro.com>
Subject: Re: [PATCH v2 2/2] mmc: sdhci-of-aspeed: add inversion
 sighttps://elixir.bootlin.com/linux/v4.6/ident/sdhci_opsnal presence
From: Ivan Mikhaylov <i.mikhaylov@yadro.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Date: Thu, 14 Nov 2019 20:19:31 +0300
In-Reply-To: <fcb5f8b5-40b9-6497-b24d-0b73e2525949@intel.com>
References: <20191114125435.27756-1-i.mikhaylov@yadro.com>
 <20191114125435.27756-3-i.mikhaylov@yadro.com>
 <fcb5f8b5-40b9-6497-b24d-0b73e2525949@intel.com>
Organization: YADRO
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Originating-IP: [172.17.15.69]
X-ClientProxiedBy: T-EXCH-01.corp.yadro.com (172.17.10.101) To
 T-EXCH-02.corp.yadro.com (172.17.10.102)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_091945_538756_EBFAD774 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 2019-11-14 at 15:10 +0200, Adrian Hunter wrote:
> On 14/11/19 2:54 PM, Ivan Mikhaylov wrote:
> > Change the default .get_cd callback. Add inverted signal card detection
> > check.
> > 
> > Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> > 
> > diff --git a/drivers/mmc/host/sdhci-of-aspeed.c b/drivers/mmc/host/sdhci-of-
> > aspeed.c
> > index 8962f6664381..186559ee8fcc 100644
> > --- a/drivers/mmc/host/sdhci-of-aspeed.c
> > +++ b/drivers/mmc/host/sdhci-of-aspeed.c
> > @@ -143,6 +143,19 @@ static inline int aspeed_sdhci_calculate_slot(struct
> > aspeed_sdhci *dev,
> >  	return (delta / 0x100) - 1;
> >  }
> >  
> > +static int aspeed_get_cd(struct mmc_host *mmc)
> > +{
> > +	struct sdhci_host *host = mmc_priv(mmc);
> > +
> > +	int present = !!(sdhci_readl(host, SDHCI_PRESENT_STATE)
> > +			 & SDHCI_CARD_PRESENT);
> > +
> > +	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
> > +		present = !present;
> 
> Perhaps safer to flip the bit using CONFIG_MMC_SDHCI_IO_ACCESSORS and
> ->readl() callback
> 

Sorry, don't quite understand what you're saying. You want to instantiate
'.read_l' callback instead of '.get_cd' in sdhci_ops and substitute the real
value?

res = readl(base, reg);
if (reg == SDHCI_PRESENT_STATE)
	if (mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH)
		return !res;
return res;

Something like this?

>  
> > +	host->mmc_host_ops.get_cd = aspeed_get_cd;
> > +	if (of_property_read_bool(pdev->dev.of_node, "cd-inverted"))
> > +		dev_info(&pdev->dev, "aspeed: sdhci: presence signal inversion
> > enabled\n");
> 
> Is this print really needed?
> 
I can remove it if you think it's redundant.

Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
