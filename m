Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0814B1DC032
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 22:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=of3dRi8KozxWzplT8WuC97KkGzjRLkkWCg3QLfyfJyI=; b=jX6x4kgEfU9fSi
	/Glu7D6mGgvLPQYMFKpbhsIX1fPT66OKvIxUis440DsDMrng2iekNnL6bBPDLnPjCRPdQcoCfE1KG
	yIKQ+wcZQkVlijiIa+yONp2iNOi5uPhrR8UN0V2XRZr503ZulpYiQp2ixDoS/oHoB1vrLsD82JRvu
	74XcrGb3y6YgD1MJqGeKbDtyWYqGBBA+n1idTNHNbQXsSwRQ8oFZz0GiqH0QAtzilXeAehOAjM+ub
	D7Mw/BFDk/x9Mu1ml8mgfpnGs2M+bdvqj7DMJFj2SvJ0Z2Dx/dg9Pus3n0b+iXyzXUKF5AoL1P3FN
	nlT0e7grH+vJkLZMFh4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbVOW-0005mH-Bb; Wed, 20 May 2020 20:32:52 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbVON-0005l8-2w
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 20:32:44 +0000
Received: by mail-il1-f196.google.com with SMTP id b71so4679302ilg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 13:32:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eYhFWnym18cK56HOIXrwGvpqXxigL2vp9VHbqJW4HIM=;
 b=sNliEmFiT5Id4br8nBoSkH+ApiWy72oFfa6WEZ66Kf0stX3u69yYEhZ0z9LSTwRbrn
 4ikqkU+Fq/O98VAIm9Hh1dWqoMN8AYghpnzfjGyV1QQWrG4BD07PbY+D/9FG6lslhzR9
 PdpI4bmHDs0fVqjIcCR9lIROFOxHgUBXfvj0xUnMopc67AK9sjQDj2mlQoOPFmPo+6n/
 0vjOOPTrPfqdwAsSh2Hyhhy9vC/rUuOOFYmaoMo5MtjRofd9JwbUyx7QMUAa5R/6dqLT
 IZ/IMUmTiN6jnv52JJv1Pj8ghNx0Vbdg6KhAe7W0v9pfuvwnr6SSPigVkPAGzjvetA4W
 QALw==
X-Gm-Message-State: AOAM531pGhMN3oRPWjUWJmeOY3lsHNx6D/Nq/INSXq/mrYvEpt+EcaJR
 r3KPKlFoV9+fV7Ai4KLerw==
X-Google-Smtp-Source: ABdhPJy5QvUn+VTDpkuNaZg6Rlk1g9vHBNfouawM73Pe8LYk585UL8czp90286VGTKxtQBwZeP8+kg==
X-Received: by 2002:a92:c7a2:: with SMTP id f2mr5670636ilk.71.1590006761646;
 Wed, 20 May 2020 13:32:41 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id d12sm1884632ill.80.2020.05.20.13.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 13:32:40 -0700 (PDT)
Received: (nullmailer pid 503923 invoked by uid 1000);
 Wed, 20 May 2020 20:32:39 -0000
Date: Wed, 20 May 2020 14:32:39 -0600
From: Rob Herring <robh@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH v6 01/11] PCI: designware-ep: Add multiple PFs support
 for DWC
Message-ID: <20200520203239.GA503864@bogus>
References: <20200314033038.24844-1-xiaowei.bao@nxp.com>
 <20200314033038.24844-2-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314033038.24844-2-xiaowei.bao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_133243_127148_108C5540 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: roy.zang@nxp.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 jingoohan1@gmail.com, Zhiqiang.Hou@nxp.com, linuxppc-dev@lists.ozlabs.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, gustavo.pimentel@synopsys.com,
 bhelgaas@google.com, andrew.murray@arm.com, kishon@ti.com, shawnguo@kernel.org,
 mingkai.hu@nxp.com, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 14 Mar 2020 11:30:28 +0800, Xiaowei Bao wrote:
> Add multiple PFs support for DWC, due to different PF have different
> config space, we use func_conf_select callback function to access
> the different PF's config space, the different chip company need to
> implement this callback function when use the DWC IP core and intend
> to support multiple PFs feature.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> ---
> v2:
>  - Remove duplicate redundant code.
>  - Reimplement the PF config space access way.
> v3:
>  - Integrate duplicate code for func_select.
>  - Move PCIE_ATU_FUNC_NUM(pf) (pf << 20) to ((pf) << 20).
>  - Add the comments for func_conf_select function.
> v4:
>  - Correct the commit message.
> v5:
>  - No change.
> v6:
>  - No change.
> 
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 123 ++++++++++++++++--------
>  drivers/pci/controller/dwc/pcie-designware.c    |  59 ++++++++----
>  drivers/pci/controller/dwc/pcie-designware.h    |  18 +++-
>  3 files changed, 142 insertions(+), 58 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
