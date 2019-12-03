Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5813511019B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqeHCD38ntJkcZst8jvR50NxobgOf7f8Xepk27+bM4Y=; b=O+coOS6jF/w6VR
	9v9ATrCY30DsZ7yoqadpjmRyc6lWw4BCiv9zasNx0jiPlBzhF6HE22t9BchrzO8pcwsslwaA6qY+0
	KW8YOriw083UL0rBbz5Yb5sZfO/kl/6P2ROTzo8mInsShU+3IkLQGI0e0l2RRSvImqNRG7PHrcR7o
	ot5Wsp11S0+5u4jTghay2z/2NVrRV9XxYVpLC/oFuIuLLipQeUP7se7j+/N6iHgGyXOtUtTJuaFlj
	vfoRFFcvODTsLGOn7hkHJ40TdzbWl1qQGPZg1+0pkCeyxx6iamG40eL+YmrWO30vlQOYhWEbB46W+
	NL1c1N0E7HDyLMARmCkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icAUV-0001w6-2W; Tue, 03 Dec 2019 15:53:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icAUK-0001vC-IQ; Tue, 03 Dec 2019 15:53:21 +0000
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 069D32080F;
 Tue,  3 Dec 2019 15:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575388400;
 bh=cKUlQJxyEbNNE534SxNpTQSfjp4RJhfRU1TUcm+QH08=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Nm1H73YFEpWiEJ7OcGsNEJd3BOuiFHQOpmau/UXVgeM0A3bJ4zEmI/hHgl2R62C1y
 Ms62vpk7yOnX3u1BuWQss6CwRWnVQXsDzid8yYPpfAB1VJO4Tgm8AGk7nzJRGSJKld
 i6dHTj8CNyyW9bPfXgUO/tMXqTZtxcPv3D8aWTdQ=
Received: by mail-qv1-f43.google.com with SMTP id b18so1714222qvy.3;
 Tue, 03 Dec 2019 07:53:19 -0800 (PST)
X-Gm-Message-State: APjAAAUmezBDTOoR0W5yXJEPvwxFYWaQu6isDtHodv7q7MkNyIk9mlyX
 V3Bb2JA7lrrGZa21toBkwth7Lt94c8lUpvTE0Q==
X-Google-Smtp-Source: APXvYqyICjW3HYnUPFqTgR4rEp2A1uuQE3BOephqhDMI2H3gFhNk2aTw/xPKbNHQEIKUpgOnuSfcOdrza+JvE1yn/H8=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr5459306qvu.136.1575388397912; 
 Tue, 03 Dec 2019 07:53:17 -0800 (PST)
MIME-Version: 1.0
References: <20191203114743.1294-1-nsaenzjulienne@suse.de>
 <20191203114743.1294-9-nsaenzjulienne@suse.de>
In-Reply-To: <20191203114743.1294-9-nsaenzjulienne@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Dec 2019 09:53:05 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
Message-ID: <CAL_JsqLMCXdnZag3jihV_dzuR+wFaVKFb7q_PdKTxTg0LVA6cw@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] linux/log2.h: Use roundup/dow_pow_two() on 64bit
 calculations
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_075320_652690_CEA4144B 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Eric Anholt <eric@anholt.net>,
 Hanjun Guo <guohanjun@huawei.com>, Frank Rowand <frowand.list@gmail.com>,
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-rdma@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Phil Elwell <phil@raspberrypi.org>, linux-acpi@vger.kernel.org,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Len Brown <lenb@kernel.org>,
 devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Matthias Brugger <mbrugger@suse.com>,
 netdev <netdev@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 5:48 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> The function now is safe to use while expecting a 64bit value. Use it
> where relevant.

What was wrong with the existing code? This is missing some context.

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/acpi/arm64/iort.c                        | 2 +-
>  drivers/net/ethernet/mellanox/mlx4/en_clock.c    | 3 ++-
>  drivers/of/device.c                              | 3 ++-

In any case,

Acked-by: Rob Herring <robh@kernel.org>

>  drivers/pci/controller/cadence/pcie-cadence-ep.c | 3 ++-
>  drivers/pci/controller/cadence/pcie-cadence.c    | 3 ++-
>  drivers/pci/controller/pcie-brcmstb.c            | 3 ++-
>  drivers/pci/controller/pcie-rockchip-ep.c        | 5 +++--
>  kernel/dma/direct.c                              | 2 +-
>  8 files changed, 15 insertions(+), 9 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
