Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399229F0CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5J2jNPEIgfyneTnDDVkpN5ZSItVqLlJjk8ZubrNbJU4=; b=MKni9g5bIXlG7a
	hqTgwxWOD1c5e6QO0PDVCRNNeRt29uuDvmWLzZgLsuvlki1hr+prP2gCa9SdvdWr41hsRBvhixCKU
	GsrQsqGMJsddyfq2ivJHYCbILNnk8/yaJEWVUiY5pt7yuHB2dkvVMwRuRw/WxkUyfbZ9w8LgmmTXk
	X8x4b9TrZ1x0roZH1BoHE3/ikvVSn+ZaJ4q45H9Vx/TMgP52e2ZT6i54MPx5//2TJKSBHZQAbsfOI
	2NznZpkO8qn2c3wAJMHkDC9jzia403S9QWLyxy50WtwoSMEiZqL2EAXmHdt1uGZX0ukdQQx26QEWP
	BSRN2HNTyv5X6/f/lV5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ejR-0004n0-As; Tue, 27 Aug 2019 16:54:09 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ejH-0004m9-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 16:54:00 +0000
Received: by mail-oi1-f193.google.com with SMTP id l2so15519417oil.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 09:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/cWnSwSnizJoPptrMCxgyU0EGIA7FE8H3qBw7ZxkmMM=;
 b=Xsz/E8xYiP34XV48wxsQF2zY1v+y+uU3T9zh1trNf3pqiEYq60MSBdO3axGFfQLy+y
 t1Whvm7FOqcfCI0TD1DgKh+8LyQIa6w5sWjpUXSPMSToby16NocZzIyCkpbdcwHAn1a9
 OYn3GVyw4zXu3g5nVVPxPd2e4qFGS0r9SqlwmNsZxjdIVguekfiBkx/wop5cVwXWp0kj
 eqMlkG5fOWOuzYcCZJdgTTWW2EBrQav2GRzS9MotFk7tJOHprVTCEfW6h2s+OBwIueYP
 yWv3tog/ZIPvOmPogFT52EmwX9qRaEcgldPc0rIuHA18dZCEMcdDt2sApKceKc8kc2Vg
 051Q==
X-Gm-Message-State: APjAAAWGGmVDKp4tLy5dbqVxBrX13U3Abx0bVygb87FCBZDO7G+Pe2St
 w6nz0JjypMN41bvkNCHzmQ==
X-Google-Smtp-Source: APXvYqy/YlUNjEPP5QW/TvNLxzezivmnRm+zWoT/6RxwryHO+9wlLtBLicefYrG9cQNpNDQFaShGug==
X-Received: by 2002:aca:5f46:: with SMTP id t67mr16825090oib.42.1566924838416; 
 Tue, 27 Aug 2019 09:53:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 44sm5772961otf.30.2019.08.27.09.53.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:53:57 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:53:57 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH] PCI: Fix misspelled words.
Message-ID: <20190827165357.GA31146@bogus>
References: <20190819115306.27338-1-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819115306.27338-1-kw@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_095359_182314_E6A63581 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Richard Zhu <hongxing.zhu@nxp.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-pci@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Bjorn Helgaas <helgaas@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 13:53:06 +0200, Krzysztof Wilczynski wrote:
> Fix misspelled words in include/linux/pci.h, drivers/pci/Kconfig,
> and in the documentation for Freescale i.MX6 and Marvell Armada 7K/8K
> PCIe interfaces.  No functional change intended.
> 
> Related commit 96291d565550 ("PCI: Fix typos and whitespace errors").
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.txt | 2 +-
>  Documentation/devicetree/bindings/pci/pci-armada8k.txt   | 2 +-
>  drivers/pci/Kconfig                                      | 2 +-
>  include/linux/pci.h                                      | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
