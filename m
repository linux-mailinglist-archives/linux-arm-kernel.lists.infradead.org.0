Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD817BF3CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkzWuUpYo4ucsftWdRGAXOPdiuRYOs9WJAgk8C9onG4=; b=arQdmNnnCOuOAF
	1KxS04hg2ktR8y/RG7awGt98ueg9Wgad/CFK9JeoXbhkUwTB+rB3KKG1y5f8K5k2PBsd2yas59HK6
	rg9dkefAFCnv6nW2sjiYFvqJioqzXkyXfW0jlp49InW1SA0yGOuwiqsAUOtCu8R4mt/vXrD8je9z+
	hlFnwTGdGlpZjLYY2/mRqwNTS0P+WOUs8b3fsAWVLOSD+8J6ZS2QWJozgge/o/WySu6nrzW6iMK3k
	4tObtttTuC7R4Sg9or2KPUTALjvCHqmUyh/++w1Ay78mMql0q0/StuC2IMRv18+Ml62lnEBRd4NQ4
	FyJQzr+oD32l9XpMyPBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTYc-0005rb-WC; Thu, 26 Sep 2019 13:11:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTYO-0005qs-Px
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:11:30 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C979222C7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 13:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569503488;
 bh=tT5vM+GZhNbV0tvTup56SJvx/nMnMTGW90qmtz76n+M=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bFsirGxmtIM1FIlYEIsCNNuaL1b7vAPENm3IeCnfYIxhh9K3sz6YoinrjPGJy0pfX
 LVjVJQT4+uNrFCAJcAz/aV8Lit+syYgHjPqqoggm+++hhwVSBtnXMrpSMgnBZoPCCK
 H6Pu5dVMQqs8TQdNIou4MVtdmNGPSfOTBhauiAhQ=
Received: by mail-qt1-f178.google.com with SMTP id o12so2784437qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 06:11:28 -0700 (PDT)
X-Gm-Message-State: APjAAAX5btvHt9KQn5fcZRktwxLGtOe7W29a9rEn6rNEpLYuuuoYmRXx
 G+VJvtDwQb0VplY64R0bS6o6IiTMgVNPIiFJqw==
X-Google-Smtp-Source: APXvYqz2YmZPtaxfDUNbuK9E+BoLaBgNiFLl5CUOshw+4r3CboxK8fvajywPHBid9YklNqM1bpfDj//EaGOnnTYP31s=
X-Received: by 2002:ac8:6982:: with SMTP id o2mr3793298qtq.143.1569503487451; 
 Thu, 26 Sep 2019 06:11:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190924214630.12817-1-robh@kernel.org>
 <20190926084859.GB9720@e119886-lin.cambridge.arm.com>
 <036f298c-c65c-7da2-92dc-fc80892672c1@free.fr>
In-Reply-To: <036f298c-c65c-7da2-92dc-fc80892672c1@free.fr>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Sep 2019 08:11:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLtYYXCgGN6_t8SuPqPmQwhhRJXaf8+kxnKxLHbRQRaDQ@mail.gmail.com>
Message-ID: <CAL_JsqLtYYXCgGN6_t8SuPqPmQwhhRJXaf8+kxnKxLHbRQRaDQ@mail.gmail.com>
Subject: Re: [PATCH 00/11] PCI dma-ranges parsing consolidation
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_061128_864252_57049607 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Mans Rullgard <mans@mansr.com>, Bjorn Helgaas <helgaas@kernel.org>,
 PCI <linux-pci@vger.kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 6:20 AM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> [ Tweaking recipients list ]
>
> On 26/09/2019 10:49, Andrew Murray wrote:
>
> > On Tue, Sep 24, 2019 at 04:46:19PM -0500, Rob Herring wrote:
> >
> >> pci-rcar-gen2 is the only remaining driver doing its own dma-ranges
> >> handling as it is still using the old ARM PCI functions. Looks like it
> >> is the last one (in drivers/pci/).
> >
> > It also seems that pcie-tango is using of_pci_dma_range_parser_init
> > and so parsing dma-ranges. Though it's using the dma_ranges for a
> > slightly different purpose.

Seems I missed that as I only grep'ed for for_each_of_pci_range...

>
> The rationale for that code can be found here:
>
>         https://patchwork.kernel.org/patch/9915469/
>
> NB: 1) The PCIE_TANGO_SMP8759 Kconfig symbol is marked "depends on BROKEN",
> and 2) The driver adds TAINT_CRAP,
> and 3) The maker of the tango platform is dead.

Given that and that I'd have to rework the probe to do the MSI range
setup after pci_host_common_probe, I'm just going to leave this one
alone.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
