Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE29A1357BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSyeU1S3eeQIDRo8uNWCWjuPJ3vRZSSQm3EhjzkO/yI=; b=BukNJouuBM4HBe
	RBkdDUr+G0j6DPXffp5De4S+2fRMZ29Iv9IWmehw3xxYFTxwuukUvay0oab3L9yzl8OtqE4hG88d6
	MobdhhdLCaTvXWx/gmKQ7tjgIk04lXGPuCeez3eZQoNPGAkIvu3R5ZUiOce3jlNy90XSN40Bseud6
	KBPmYR7JjwjFfx6iOqxS9cFCMIb61crO9ThefYI5odhotGv0vWCr9FtmHwlWuIy8nfp2C3sl2+bYu
	hZ6lmgI0UnIukjMXzfaYDAz29br46KGZZNk8w5ft6spaXl8LcOqn4WAUcNniq7Z7CVCgSnGcnGuKd
	CrcaLRoh+3QGA4sTBaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVma-00071J-Ff; Thu, 09 Jan 2020 11:15:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVmR-0006p9-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:15:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id 195so3219434pfw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 03:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V5KScgUXFsdncgT6FrgA2mFPOOg0Ude/9JNc+emy5Ls=;
 b=G7LF1zERk0/S8IFqf2HWTYi1sdr4IgJVAeJUqtn57RmwNJ2mvqYBRy4J15mBuLkj3W
 kkHxOqlJ5af9EXg8gOaiMG8Dwz/WZZawY4P729TXGs3ZMYond1SXSeMj4C9l1aR7wlbr
 5AdMNz0MuFEdftCXlnZWYumWS4OzRBUHtsJLdp9WUhm1A4pmXQBvy/kzao0KT3gnrTi1
 fNy+905kkFtQSGbc/yMyk9s3Ds+Sh6NU2ZSKkMdZ1zlFJlfhARIvYkHyAjktAMQq0hzo
 FtvV98EtG0npILvKugmEuhrjuo9ZAa+GU0LxL6sGTrgmLYD+M/ykFLRQ1cXt9OXdl7bP
 dSCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V5KScgUXFsdncgT6FrgA2mFPOOg0Ude/9JNc+emy5Ls=;
 b=nAgOJnWhssOJB6Z19VZ62EK3Xc6Egpnf7Lf6KZsmQdNZVE24V1ro61ohUpid85cZIS
 bY1snyoGqIujWCxXCXdf0YyR395fa7GN1YCjwz1h95eERal4uCQmbvXF/FB5m8zMB8kW
 kPR3G8ed8cyLqixehXVfsAVX14woXc26NK69x8ugHVQZ0A0pswzKJC12jMQSevKNFVo7
 CiCyRy7hYQvfLVLipaIhOE03TtkipiBmqclIsRAL0Lh5OWfKCTj55aqrlo7VbQPgGU5y
 8W+QiO3HDRhvxvMxQMwPAqsKT/F45iJliOw3ILV3ohEwlCj7A6RlSObl3OSsjxFbh7YE
 oypA==
X-Gm-Message-State: APjAAAVZorBSYH9OmFrLuzPpPq1TEOY6CjC7Vb5K8bWrX1Gwm9tqQ+7R
 3sZV3Sy/F8PBswR/X8DXGELPlw==
X-Google-Smtp-Source: APXvYqxz0NcBJqX/ySDqpIt+UdCTpr25Lr5id6kHEoB6WfJr9rFZr/50dFv0BbiymZQlt7ZB6ii32A==
X-Received: by 2002:a65:5608:: with SMTP id l8mr10788035pgs.210.1578568509940; 
 Thu, 09 Jan 2020 03:15:09 -0800 (PST)
Received: from T480 (98.142.130.235.16clouds.com. [98.142.130.235])
 by smtp.gmail.com with ESMTPSA id r66sm7960444pfc.74.2020.01.09.03.15.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 09 Jan 2020 03:15:09 -0800 (PST)
Date: Thu, 9 Jan 2020 19:14:58 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
Subject: Re: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU
 regions
Message-ID: <20200109111457.GA18850@T480>
References: <20200109060657.1953-1-shawn.guo@linaro.org>
 <CH2PR12MB40073FCB953227A37F7A1A91DA390@CH2PR12MB4007.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR12MB40073FCB953227A37F7A1A91DA390@CH2PR12MB4007.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_031511_848235_FA42FB12 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Zaihai Yu <yuzaihai@hisilicon.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Pratyush Anand <pratyush.anand@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gustavo,

Thanks for taking a look.

On Thu, Jan 09, 2020 at 10:37:14AM +0000, Gustavo Pimentel wrote:
> Hi Shawn,
> 
> On Thu, Jan 9, 2020 at 6:6:57, Shawn Guo <shawn.guo@linaro.org> wrote:
> 
> > Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
> 
> Remove double space before "In that..." 

Hmm, that was intentional.  My writing practice is using two spaces
after a period and single space after a comma.  Is it a bad habit?

@Lorenzo, @Bjorn, let me know if you guys think this should be fixed.

> 
> > can be separated into different ATU regions.
> > 
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  .../pci/controller/dwc/pcie-designware-host.c    | 16 +++++++++++++++-
> >  drivers/pci/controller/dwc/pcie-designware.h     |  1 +
> >  2 files changed, 16 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > index 0f36a926059a..504d2a192bba 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > @@ -532,6 +532,7 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
> >  	u64 cpu_addr;
> >  	void __iomem *va_cfg_base;
> >  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> > +	int index = PCIE_ATU_REGION_INDEX1;
> >  
> >  	busdev = PCIE_ATU_BUS(bus->number) | PCIE_ATU_DEV(PCI_SLOT(devfn)) |
> >  		 PCIE_ATU_FUNC(PCI_FUNC(devfn));
> > @@ -548,7 +549,20 @@ static int dw_pcie_access_other_conf(struct pcie_port *pp, struct pci_bus *bus,
> >  		va_cfg_base = pp->va_cfg1_base;
> >  	}
> >  
> > -	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
> > +	if (pci->num_viewport >= 4) {
> > +		/*
> > +		 * If there are 4 (or more) viewports, we can separate
> > +		 * CFG0 and CFG1 into different ATU regions:
> > +		 *  - region0: MEM
> > +		 *  - region1: CFG0
> > +		 *  - region2: IO
> > +		 *  - region3: CFG1
> > +		 */
> > +		if (type == PCIE_ATU_TYPE_CFG1)
> > +			index = PCIE_ATU_REGION_INDEX3;
> > +	}
> > +
> > +	dw_pcie_prog_outbound_atu(pci, index,
> >  				  type, cpu_addr,
> >  				  busdev, cfg_size);
> >  	if (write)
> > diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> > index 5a18e94e52c8..86225804f1e7 100644
> > --- a/drivers/pci/controller/dwc/pcie-designware.h
> > +++ b/drivers/pci/controller/dwc/pcie-designware.h
> > @@ -63,6 +63,7 @@
> >  #define PCIE_ATU_VIEWPORT		0x900
> >  #define PCIE_ATU_REGION_INBOUND		BIT(31)
> >  #define PCIE_ATU_REGION_OUTBOUND	0
> > +#define PCIE_ATU_REGION_INDEX3		0x3
> >  #define PCIE_ATU_REGION_INDEX2		0x2
> >  #define PCIE_ATU_REGION_INDEX1		0x1
> >  #define PCIE_ATU_REGION_INDEX0		0x0
> > -- 
> > 2.17.1
> 
> With the description fix,
> 
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>

Thanks!

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
