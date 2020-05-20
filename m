Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D51481DC177
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 23:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUFhIk26zfdM/r7ewxYioHAtMwgZYX2CIT8anwlrdVY=; b=BZR1JNIJqQYgtG
	fNth8q2nYX6M3h72KLpW/Yl2pciStLZsi63IgKkN8pPQJwH2iKmHZc8o96nVRNw4EYBROqRLrHMkD
	muh8cB2zHWT8S/OGrPscjik2FdN5UcwxqyFGiEiBaDYuQCW4viFGW/J5nSt/kT3s4BOWqqKQpK4ZH
	5vXPw8FUyE0p99NRCu4EY1a7IHiImvsfPzKVSXxKZ/7Pr5LDY6gY7TX/Auo7FAgLulrBtQGM+Zi6P
	idlfMX36BrWyCO8x/ZXRR+RSZhxnpV4zbPj7ZQ7QooNy1Qv1SMhC4YoCmNoXFjnZHlMCAQWhsCvSj
	ma/Xb/J2He4eU/lz4fZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbWOE-0007On-5v; Wed, 20 May 2020 21:36:38 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbWO3-0007OE-Ko
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 21:36:28 +0000
Received: by mail-il1-f193.google.com with SMTP id b15so4834699ilq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 14:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8T4g3GB0lWcH8xbCNMCDr7nb5rGktxITHYP2LXpYD7U=;
 b=A+uyu48mHbPfKDFFwCbsoU5QCUS7djcARtjOVPyVq4hksVb2nO6otFMag3C/5tdG/Z
 Owd0tBtwE11224cfRNCYYXV0mDmcQS+uaKSSxJGnE89o8qySv+E4tS9JU5Hlk3cczzAv
 ZGHNSUL3GQsbSpSw4Cd0AgATVM0FIftUxgH020Y11+AOk/sAO4hLto3kcGNA/BfICCiC
 uS2GIgH00trtuP6Ikc5ikReEngxPBUQuOEgQls9mtrTIFNIoofZhZ/B5vnat5wQD37bc
 HF1ll3wjFtSctW2dSaxtIM+Trg77y+n/qEmbpCcp1Spn89rTFfdw/3eNYoTiyPYKuXzj
 bALg==
X-Gm-Message-State: AOAM532vSj4MY0N63VV3CZUoTj4oGiQ/uOw0HQJ4OFjhGhnlI1DwYT2m
 9IztxtZX2DOCq7NSu2p2pw==
X-Google-Smtp-Source: ABdhPJzV5M0ADtcekTIkjw5B3x+zFszJSje5GETuQ1ENBcHHP7QvRIraFBSdGvUoBihkMjoJKyqrIw==
X-Received: by 2002:a92:8989:: with SMTP id w9mr5962127ilk.70.1590010587012;
 Wed, 20 May 2020 14:36:27 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c7sm1977822ilf.36.2020.05.20.14.36.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 14:36:26 -0700 (PDT)
Received: (nullmailer pid 636061 invoked by uid 1000);
 Wed, 20 May 2020 21:36:25 -0000
Date: Wed, 20 May 2020 15:36:25 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v4 08/14] PCI: cadence: Fix updating Vendor ID and
 Subsystem Vendor ID register
Message-ID: <20200520213625.GA633506@bogus>
References: <20200506151429.12255-1-kishon@ti.com>
 <20200506151429.12255-9-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506151429.12255-9-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_143627_679800_B53BD2FE 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:44:23PM +0530, Kishon Vijay Abraham I wrote:
> Commit 1b79c5284439 ("PCI: cadence: Add host driver for Cadence PCIe
> controller") in order to update Vendor ID, directly wrote to
> PCI_VENDOR_ID register. However PCI_VENDOR_ID in root port configuration
> space is read-only register and writing to it will have no effect.
> Use local management register to configure Vendor ID and Subsystem Vendor
> ID.
> 
> Fixes: 1b79c5284439 ("PCI: cadence: Add host driver for Cadence PCIe controller")

Fixes should come first.

> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/controller/cadence/pcie-cadence-host.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
