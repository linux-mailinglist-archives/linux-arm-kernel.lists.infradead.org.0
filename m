Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACF8498EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YucvSM6AwBPyyjUAKk5fcNVyBoPhmpmkkCs56te1sZo=; b=i93N34snvFg6+h
	F2V+xedqVXE03Og7FVjxpXM2TXF/CjQi2ZNYcZH7Xh59jE2t7RY7H+ofQOVfrpMHWW9LEE5B05XPG
	3SvlEOFV6ZAl/N1RToqanioD/NH9a4QtMcRD8IvdjUgeeGbtruMyd8zOz6JSibBEmIJ+xC/+MZL6q
	ZIwJ+eMcY3zeVg7Tj9uoYSQJjKXJwcDTX6NO5r3e+XX7xPV2Scfiockd9Z9eGeXDl38uy5ehX9Nld
	WHSAscXmO/IsBkliMcXNyNX8msVp9t9zZ2AqPj/XxeGgIaoVHFxMMYx2u74VrDgNe+JI2kWKSpAsO
	3sFaIfk760yNSGgeEp1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7hV-00013Q-C9; Tue, 18 Jun 2019 06:34:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7hG-00012l-6q
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:34:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id 83so7098627pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 23:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:thread-topic:thread-index:date:message-id
 :references:in-reply-to:accept-language:content-language
 :content-transfer-encoding:mime-version;
 bh=AwdujDdMY1xkfO2MFtISLAJ7c2q8GQgPX1OyMyL8iRQ=;
 b=gc2T8mZda1iOBIUmBR+zjgUg7PzAigxme6RC6t0LcJNLaNAGfWI8VT0+Hl16YajImI
 dt8LgXYjCOCR5b+h3pZ0JCkE2PdcwIhrIfXcm4fNt4PhNwdMwPlVL18i8VJpHnqjRblO
 7Z5Yjbyk/4A8NUfguEKdBgIeWYbcSE6+pMxYQszys+hq8z6wtL/7bMF1s5n0ZJKRU8c6
 deHly0PG/anOfsaEeErCt2F8+ui2INpvBvCFodzBg78FPYttPGrATfvLeXcMzTdZvNK3
 5ZQ3OEpWMwqP1ZYHv077vlJ8LaPXwWZDbW/QlKKRPhTpg0ZMXXhImyw8m8M1Ltlox0xa
 /Ldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
 :date:message-id:references:in-reply-to:accept-language
 :content-language:content-transfer-encoding:mime-version;
 bh=AwdujDdMY1xkfO2MFtISLAJ7c2q8GQgPX1OyMyL8iRQ=;
 b=Va58yJlBr9vJU8COVSzsYElhxT4Zl4bmdhh1seaxEuGnPhggypyZh3Ex+LhFu8MISB
 x3abgmjhOYHtANHS7oH2iaut+CPCqXzoENsqH6vwG1S6Pum78BIC6Adpnfe4JXtE2eQU
 k4x1PotywzjxpSFU5SgoOlKG75qHJ8OHBE1l/itMxGnHCcuycZTv0MP0/Xpgp/ep21Hk
 0uXciLEgP1I9Vy0CHTjKTk1WSZYocINPSFXcy+S1fd5cFkUjiBVxw/4wE2h/Dvnkp3G0
 pept8GaIIrHooXJxdrNVe1+nQWpYEULBKPeGmWhUId1Q902UskVYr6G/zgL3aEy1o6J8
 cugw==
X-Gm-Message-State: APjAAAUPdvR76OTTpDGSIqn8TlLoG7Lbho+/K52IwcRoo4nVDaDq2/d4
 hl9hb4Y5upeNNk95+q4vt1wbk6sC
X-Google-Smtp-Source: APXvYqx9gUXNF4RnA0Ob4Cvlv0zMqP0GxfJNKUQHMuobER/vyaq4K+0A2QDhVIk6qSAyLUTOu5nexg==
X-Received: by 2002:a17:90a:ca0f:: with SMTP id
 x15mr218820pjt.82.1560839660866; 
 Mon, 17 Jun 2019 23:34:20 -0700 (PDT)
Received: from PSXP216MB0662.KORP216.PROD.OUTLOOK.COM ([40.100.44.181])
 by smtp.gmail.com with ESMTPSA id y1sm1204874pjw.5.2019.06.17.23.34.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 23:34:19 -0700 (PDT)
From: Jingoo Han <jingoohan1@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "kishon@ti.com" <kishon@ti.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>
Subject: Re: [PATCH V10 03/15] PCI: dwc: Perform dbi regs write lock towards
 the end
Thread-Topic: [PATCH V10 03/15] PCI: dwc: Perform dbi regs write lock towards
 the end
Thread-Index: AQHVJZgV1RcRQMIdqU6FIMIehEk3Laag9HhB
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Tue, 18 Jun 2019 06:34:12 +0000
Message-ID: <PSXP216MB066293334CA5E29E14C41B9FAAEA0@PSXP216MB0662.KORP216.PROD.OUTLOOK.COM>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-4-vidyas@nvidia.com>
In-Reply-To: <20190612095339.20118-4-vidyas@nvidia.com>
Accept-Language: ko-KR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_233422_405931_7ED9FEAA 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jingoohan1[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jingoohan1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "mmaddireddy@nvidia.com" <mmaddireddy@nvidia.com>,
 "kthota@nvidia.com" <kthota@nvidia.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mperttunen@nvidia.com" <mperttunen@nvidia.com>,
 Han Jingoo <jingoohan1@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "digetx@gmail.com" <digetx@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sagar.tv@gmail.com" <sagar.tv@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/12/19, 6:54 PM, Vidya Sagar wrote:
>
> Remove multiple write enable and disable sequences of dbi registers as
> Tegra194 implements writes to BAR-0 register (offset: 0x10) controlled by
> DBI write-lock enable bit thereby not allowing any further writes to BAR-0
> register in config space to take place. Hence enabling write permission at
> the start of function and disabling the same only towards the end.
>
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reviewed-by: Thierry Reding <treding@nvidia.com>

Acked-by: Jingoo Han  <jingoohan1@gmail.com>

Sorry for being late. I read the previous threads. I don't think that this patch
has any harmful effects. This patch looks good to me.
Thank you.

Best regards,
Jingoo Han

> ---
> Changes since [v9]:
> * None
>
> Changes since [v8]:
> * None
>
> Changes since [v7]:
> * None
>
> Changes since [v6]:
> * None
>
> Changes since [v5]:
> * Moved write enable to the beginning of the API and write disable to the end
>
> Changes since [v4]:
> * None
>
> Changes since [v3]:
> * None
>
> Changes since [v2]:
> * None
>
> Changes since [v1]:
> * None
>
>  drivers/pci/controller/dwc/pcie-designware-host.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index f93252d0da5b..d3156446ff27 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -628,6 +628,12 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  	u32 val, ctrl, num_ctrls;
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  
> +	/*
> +	 * Enable DBI read-only registers for writing/updating configuration.
> +	 * Write permission gets disabled towards the end of this function.
> +	 */
> +	dw_pcie_dbi_ro_wr_en(pci);
> +
>  	dw_pcie_setup(pci);
>  
>  	if (!pp->ops->msi_host_init) {
> @@ -650,12 +656,10 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
>  
>  	/* Setup interrupt pins */
> -	dw_pcie_dbi_ro_wr_en(pci);
>  	val = dw_pcie_readl_dbi(pci, PCI_INTERRUPT_LINE);
>  	val &= 0xffff00ff;
>  	val |= 0x00000100;
>  	dw_pcie_writel_dbi(pci, PCI_INTERRUPT_LINE, val);
> -	dw_pcie_dbi_ro_wr_dis(pci);
>  
>  	/* Setup bus numbers */
>  	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
> @@ -687,15 +691,13 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
>  
>  	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
>  
> -	/* Enable write permission for the DBI read-only register */
> -	dw_pcie_dbi_ro_wr_en(pci);
>  	/* Program correct class for RC */
>  	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
> -	/* Better disable write permission right after the update */
> -	dw_pcie_dbi_ro_wr_dis(pci);
>  
>  	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
>  	val |= PORT_LOGIC_SPEED_CHANGE;
>  	dw_pcie_wr_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, val);
> +
> +	dw_pcie_dbi_ro_wr_dis(pci);
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
> -- 
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
