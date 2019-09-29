Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C866C1454
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 13:17:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoqXoyxJ6jAvlLcZjgTPTLQmSHWRIqUW0KpAd1eidQw=; b=qKrvcT6KwzaIHy
	/he8vJBHPP1ZD9mQyuptcqy2+yMOPrRC+WH96pr4RZ0Wtr5movxToFcpl8Zyqs6dshAaMO8SPBm3A
	uCMOAN8SkRhxt34gDhl+SBFo+TG1D7uVasE2qlFaFDVSdkVgqNjhSBj+z0n/Kyw+5/HJGIPV/hFHH
	6bQG61Fupzrl4iSgYUnPZV0uInqzFgxs6K/1zTUdvq1N3tM3IIJ/YF8XRQkhdxKsAH1gds0s1k/Tb
	c5SuI6Nzq7fO0uUbS9iTmAw5RshW/sudGOYNq0zASSsABU3DmSQULdZxBJsvYCyixCb+IpGNeje+O
	QrMEXcNI1wDdZvz2kO7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEXC9-00008H-58; Sun, 29 Sep 2019 11:16:53 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEXBz-00007E-M1
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 11:16:45 +0000
Received: by mail-qt1-f195.google.com with SMTP id w14so13154104qto.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 04:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xERB9KeErRz0Xv313u8END71sg7A1PW4f7hRzM9VGG8=;
 b=hLw3/rLV4YbxTU1ObwEms1oXA0qr0nyjLFPpjSSCQO9y087qzoKQkWC8qOBG9S+oi4
 6S/NodhL1Bc9ELXy9s9T7/AH5uSlL1hQi1LmfqJOVE490Jt6e/BOgaZ7Z+NjUR2Jtiyy
 ipEtpuAtkISeO7DsqxKq4a6loHSg5pGAZaemfIa6PafinMYPuI2SupQi/v9hRib0FmAA
 YTiMEyfCHfEbEx9vq0E9HlLei821xy6LOldgyaL6GltcQ8YhFi4Fhl8DFwgS3or2gvso
 CMiZ+pMsHW7Xixz8L9P8/GCIkr4glNgL7JE3crFey5NV9a3ffHPCoo/C53wasATnL6do
 zlTg==
X-Gm-Message-State: APjAAAUqHraKnjuiLngO5YFptuCkwQujDOpwh0SqA48hwaPv2DP19hfR
 VOcHlZQNF6h572EUXJSp7JmwDKnYmE6z0Synv08=
X-Google-Smtp-Source: APXvYqzPuvDp2hl6Q7/PbfUhTPr2qc74nsR1a1YtdOS3T7eZQF8h5rNOXFr8Ij4OMws3CIKCEEvauU6SKD7QNIcvC8A=
X-Received: by 2002:ac8:32ec:: with SMTP id a41mr19832440qtb.18.1569755798825; 
 Sun, 29 Sep 2019 04:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
In-Reply-To: <20190927002455.13169-1-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sun, 29 Sep 2019 13:16:20 +0200
Message-ID: <CAK8P3a0oct0EOMi5t4BmpgdkiBM+LjC+2pTST4hcvNCa3MGLmw@mail.gmail.com>
Subject: Re: [PATCH 00/11] of: dma-ranges fixes and improvements
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_041643_719171_C7E880D9 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: Thierry Reding <thierry.reding@gmail.com>,
 DTML <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Frank Rowand <frowand.list@gmail.com>, linux-pci <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Simon Horman <horms+renesas@verge.net.au>, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 2:24 AM Rob Herring <robh@kernel.org> wrote:
>
> This series fixes several issues related to 'dma-ranges'. Primarily,
> 'dma-ranges' in a PCI bridge node does correctly set dma masks for PCI
> devices not described in the DT. A common case needing dma-ranges is a
> 32-bit PCIe bridge on a 64-bit system. This affects several platforms
> including Broadcom, NXP, Renesas, and Arm Juno. There's been several
> attempts to fix these issues, most recently earlier this week[1].
>
> In the process, I found several bugs in the address translation. It
> appears that things have happened to work as various DTs happen to use
> 1:1 addresses.
>
> First 3 patches are just some clean-up. The 4th patch adds a unittest
> exhibiting the issues. Patches 5-9 rework how of_dma_configure() works
> making it work on either a struct device child node or a struct
> device_node parent node so that it works on bus leaf nodes like PCI
> bridges. Patches 10 and 11 fix 2 issues with address translation for
> dma-ranges.
>
> My testing on this has been with QEMU virt machine hacked up to set PCI
> dma-ranges and the unittest. Nicolas reports this series resolves the
> issues on Rpi4 and NXP Layerscape platforms.

I've only looked briefly, but this all seems reasonable. Adding Christoph
to Cc here to draw his attention to it as he's done a lot of reworks on
the dma-mapping interfaces recently.

On a semi-related note, Thierry asked about one aspect of the dma-ranges
property recently, which is the behavior of dma_set_mask() and related
functions when a driver sets a mask that is larger than the memory
area in the bus-ranges but smaller than the available physical RAM.
As I understood Thierry's problem and the current code, the generic
dma_set_mask() will either reject the new mask entirely or override
the mask set by of_dma_configure, but it fails to set a correct mask
within the limitations of the parent bus in this case.

We had discussed and proposed patches for this in the past, but
it seems that never got anywhere. Maybe now that a number of
people have looked at this logic, we can figure it out for good.

        Arnd

> [1] https://lore.kernel.org/linux-arm-kernel/20190924181244.7159-1-nsaenzjulienne@suse.de/
>
> Rob Herring (5):
>   of: Remove unused of_find_matching_node_by_address()
>   of: Make of_dma_get_range() private
>   of/unittest: Add dma-ranges address translation tests
>   of/address: Translate 'dma-ranges' for parent nodes missing
>     'dma-ranges'
>   of/address: Fix of_pci_range_parser_one translation of DMA addresses
>
> Robin Murphy (6):
>   of: address: Report of_dma_get_range() errors meaningfully
>   of: Ratify of_dma_configure() interface
>   of/address: Introduce of_get_next_dma_parent() helper
>   of: address: Follow DMA parent for "dma-coherent"
>   of: Factor out #{addr,size}-cells parsing
>   of: Make of_dma_get_range() work on bus nodes
>
>  drivers/of/address.c                        | 83 +++++++++----------
>  drivers/of/base.c                           | 32 ++++---
>  drivers/of/device.c                         | 12 ++-
>  drivers/of/of_private.h                     | 14 ++++
>  drivers/of/unittest-data/testcases.dts      |  1 +
>  drivers/of/unittest-data/tests-address.dtsi | 48 +++++++++++
>  drivers/of/unittest.c                       | 92 +++++++++++++++++++++
>  include/linux/of_address.h                  | 21 +----
>  include/linux/of_device.h                   |  4 +-
>  9 files changed, 227 insertions(+), 80 deletions(-)
>  create mode 100644 drivers/of/unittest-data/tests-address.dtsi
>
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
