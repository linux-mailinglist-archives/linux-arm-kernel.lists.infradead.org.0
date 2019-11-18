Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3B5100B40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFqItrIQloD9hojHRcWGs5tDjjKL/k13+QL8LMdGFQw=; b=eGSuWTekRvFw/p
	4AqdZQUl7aQJytIfA6LWTEAy/1VCvfMnHypDUfLNS3VQcSo2N/11rMEHkfYT8EAk/uEOfboctQyEW
	QjRjptV+ufWJn/C/DTVNA0M7ghQXuj+vM6VCCljeyVs8fmGnTgHbYVhXKoFEsM35MBLUUwDP3oO9s
	5OVB2yI/dG9RB+23MRxgMdSCzhzVcnFMGlgXUeX1SQbae9i1Axnm+L81A/vtN4HIjnZ6NHsf6G+yU
	Aj+4qC7rVMYBJy/6+hISO9BOaxV6wrE/7za75fuY2MHH8I4Fz4YYx8sWhpF1L0bvp7AJgc0Q4HFsu
	+3GTvrjxHzN1NU69zEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlZ8-0005J8-UJ; Mon, 18 Nov 2019 18:15:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlYy-0005IH-47; Mon, 18 Nov 2019 18:15:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C48A41FB;
 Mon, 18 Nov 2019 10:15:44 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 49A283F703;
 Mon, 18 Nov 2019 10:15:43 -0800 (PST)
Date: Mon, 18 Nov 2019 18:15:38 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Message-ID: <20191118181538.GA2261@e121166-lin.cambridge.arm.com>
References: <20191118115930.GC9761@sirena.org.uk>
 <20191118142428.GA27459@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118142428.GA27459@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_101548_210978_68D8553A 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, andrew.murray@arm.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 08:24:28AM -0600, Bjorn Helgaas wrote:
> On Mon, Nov 18, 2019 at 11:59:30AM +0000, Mark Brown wrote:
> > On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
> > > Null checks are both cheaper and more readable than having !IS_ERR()
> > > splattered everywhere.
> > 
> > > -	if (IS_ERR(rockchip->vpcie3v3))
> > > +	if (!rockchip->vpcie3v3)
> > >  		return;
> > >  
> > >  	/*
> > > @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
> > >  		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> > >  			return PTR_ERR(rockchip->vpcie12v);
> > >  		dev_info(dev, "no vpcie12v regulator found\n");
> > > +		rockchip->vpcie12v = NULL;
> > 
> > According to the API NULL is a valid regulator.  We don't currently
> > actually do this but it's storing up surprises if you treat it as
> > invalid.
> 
> I don't know anything about the regulator API, but the fact that NULL
> can be a valid regulator is itself a little surprising :)

if (rockchip->vpcie3v3 == NULL) is true the driver would currently
panic the kernel AFAICS.

rockchip_pcie_set_power_limit()
->regulator_get_current_limit(NULL)
 -> _regulator_get_current_limit(NULL)
   -> regulator_lock(NULL)
     -> regulator_lock_nested(NULL, NULL)
       -> ww_mutex_trylock(&NULL->mutex)

Also, by making NULL a valid regulator, it means that regulators
(ie pointers) with default values are valid whether we call
devm_regulator_get* or not. I understand this patch can be dropped
but that per-se does not make this driver code any more robust AFAICS.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
