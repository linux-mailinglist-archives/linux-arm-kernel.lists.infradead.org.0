Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F94729FCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yh9HVffuk974thN8OKjXHglXxVPsJ31iCi4R24Dx9j8=; b=tLACu8K9TQqwd0
	dTrl6JJuFaf4+kqjEIMWEKubRsga3alP+EtSgBiudbq1vKLpsF+PDOQNWSbD1lgRKMHU663HILFAq
	OIkK/0/DPLFjKveZYTzELRqwGDwfw+tiKmEztQD5YTR8uPqfS19FaH65FtvQSP7dWKooli7MxSPAt
	5LaxIRcQo6Y0lx5UCb5fugJcIeKcCxMiAuLHMSx1iSylZMaU5Z9/C58/waJNZosh6YGB5ZPv6wrI9
	ZhSmblkbNFeQcFiyLiJGDjagA0XdIEaq8WelSFtnzXchbkEJSdqVeY14AGEyzs6jnt50UFWuWh+gU
	MnSg2g+e+uAGb3RR01iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGjN-0004Yl-Uz; Fri, 24 May 2019 20:23:57 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGjH-0004Xm-NV
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:23:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id i8so9810075oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:23:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yoB0L3qe36S2IhBoaOpwEJu+NSznEiRoc0Yquw1YBGY=;
 b=iCt2d7Or9lGVUbb2WKgCNNDuyzHfhYpaMGdiVWZT3i1EaF54I7YoRbKoPW0T5FWV/H
 Grc5KhE7npHTyjf5qMUOARbJ7Fg8UueKpGIWNJ+TsT2KDqOcOi6ChDYII+ysCmFL5d1J
 XZ/Ww9Ft4oeCRLE9ui8FJS1mYIuTyj7MFeZZL6RzrTvXIaFX3lFIfs00pPzQ+kpIE2Sz
 RmyxtNm9xBX4gN+T/BVI9opWV8BcgbYc+rlNmYD7XXjsS3kcNojTt+Y6r/KP3FNAsdb/
 mUL1jpNwfrYpgRIBtdFrRwU22PvDFq3Kficu6h64DbjHr2cWRz5vFtmop79xt0TqoFHV
 P+lA==
X-Gm-Message-State: APjAAAVtC+jXiT7zwFpU1Nk7UfYtIsd/t4/lYmE5QgqgUdqNrWGHLMEq
 q4JSnMdpAAjjqWJI/VFSPg==
X-Google-Smtp-Source: APXvYqx0cRVBGu29WLtO7LQL9zHXwDoo3Y1496B2qClf9uMx1CjkdOw+AKOuxaRyoDl6F19tKtn2HA==
X-Received: by 2002:a9d:6a10:: with SMTP id g16mr64874698otn.203.1558729426956; 
 Fri, 24 May 2019 13:23:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r205sm1371259oig.0.2019.05.24.13.23.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 13:23:46 -0700 (PDT)
Date: Fri, 24 May 2019 15:23:45 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 06/15] dt-bindings: PCI: designware: Add binding for
 CDM register check
Message-ID: <20190524202345.GA24243@bogus>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-7-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517123846.3708-7-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132351_766954_6A561EEF 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, kthota@nvidia.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, vidyas@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com, bhelgaas@google.com,
 kishon@ti.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 18:08:37 +0530, Vidya Sagar wrote:
> Add support to enable CDM (Configuration Dependent Module) registers check
> for any data corruption. CDM registers include standard PCIe configuration
> space registers, Port Logic registers and iATU and DMA registers.
> Refer Section S.4 of Synopsys DesignWare Cores PCI Express Controller Databook
> Version 4.90a
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * Changed "enable-cdm-check" to "snps,enable-cdm-check"
> 
> Changes since [v5]:
> * None
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Changed flag name from 'cdm-check' to 'enable-cdm-check'
> * Added info about Port Logic and DMA registers being part of CDM
> 
> Changes since [v1]:
> * This is a new patch in v2 series
> 
>  Documentation/devicetree/bindings/pci/designware-pcie.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
