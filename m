Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00615A5844
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k+Jal2Hfk23/OYjDntHBTV7XNE5h8dT1xTAI3/D/b5Y=; b=n8tTWQZAExGDq7SKFl3D4JNPP5
	STs5XZjMYRsDC4/5hEFz8s3os4UMJ0xFJUknjcSuNsin4yOu65Z5DG2yoj0qs1MPrXn69E4gyfQyg
	rgV87rFnU7LVbg5Poahcb/ibX0FndmcEXQycNT3KmDrtk63YZLM8vBFAIMG0Hd5KzOoUX+QGg/Akc
	SPAYw6alK7XPo70M8aixYrXkRem5ky2zg9zMcyVvG9vRr545zT7zr6oOMHQwgmUQlybQO8opPcrvG
	08ruohuWyvKcdzDfzK2rVW7aj7AsSNm+tPY6jOXxJlVunUSIvTcMRHi43kZN20nwQ2tj7QDwrgAF8
	Tg+6sDiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4mbZ-0006Kj-1m; Mon, 02 Sep 2019 13:42:49 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mY7-0001eQ-Vz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:39:17 +0000
Received: by mail-wm1-f67.google.com with SMTP id n2so13267730wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=mdMEyHANWr3uFXlguLTgUNjt9G7yervbWu2Ux/GAB0I=;
 b=QS5yz98CRRAyWl4sBoQvYF+2vNmhImswTO3+x8DO3G8lPfPGLIPr1BfDU1qvmgvugL
 mbG4bmd1cEZVM/T3zvdnqvX2DOFWZhlNt59YF7HxcBNQ+npyFZ/5mHDrW5paSpCjkbVF
 hVnUZ5qIPyQ+zYYIGe2hOcVoCW8VEt3sBIFtk8n01k0GfoIt+RoaJJceiVswbmc0jXhR
 aGcBNVq8vTPQ9BTmYLP11E1866uBB6q6qDdJ9rZCZtBE0BHf8A7hgTyHrbQ/jc4ccuwN
 I2w3v7zV2Txm0J0cIehG5AxuCpqV5CcfB9XOWf2Q3LV7lYYoYpjKEtXrouvm73Ivkj/Y
 lZPQ==
X-Gm-Message-State: APjAAAUUPMdHB7m0RCfLyfM8382Qtk68OTyCwF4UY7YR+Va+71+T01fg
 GYkbADAyamWVSiVSGc0jjQ==
X-Google-Smtp-Source: APXvYqwMzwv1OFbk9jMbIrvjNPmwN4pGid61E7yY74F5cVWue5sDTckRsA9VxA03xcI175B+qRSeCw==
X-Received: by 2002:a7b:c84e:: with SMTP id c14mr36008947wml.46.1567431554729; 
 Mon, 02 Sep 2019 06:39:14 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id i73sm5116549wmg.33.2019.09.02.06.39.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:14 -0700 (PDT)
Message-ID: <5d6d1b82.1c69fb81.de44.60b9@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:13 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] PCI: Remove unused includes and superfluous struct
 declaration
References: <20190901112506.8469-1-kw@linux.com>
In-Reply-To: <20190901112506.8469-1-kw@linux.com>
To: Krzysztof Wilczynski <kw@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063916_054026_130BD5FE 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: , devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun,  1 Sep 2019 13:25:06 +0200, Krzysztof Wilczynski wrote:
> Remove <linux/pci.h> and <linux/msi.h> from being included
> directly as part of the include/linux/of_pci.h, and remove
> superfluous declaration of struct of_phandle_args.
> 
> Move users of include <linux/of_pci.h> to include <linux/pci.h>
> and <linux/msi.h> directly rather than rely on both being
> included transitively through <linux/of_pci.h>.
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>
> ---
>  drivers/iommu/of_iommu.c                          | 2 ++
>  drivers/pci/controller/dwc/pcie-designware-host.c | 1 +
>  drivers/pci/controller/pci-aardvark.c             | 1 +
>  drivers/pci/pci.c                                 | 1 +
>  drivers/pci/probe.c                               | 1 +
>  include/linux/of_pci.h                            | 4 +---
>  6 files changed, 7 insertions(+), 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
