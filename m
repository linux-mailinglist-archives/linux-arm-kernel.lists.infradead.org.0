Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D145611EC7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KK1siYT0xEQRfQavRk4E/BbFy7wystvbGYxriXvbszk=; b=W2NAQ0dt2gpe7M
	ftB1C8Ca26ofFylD83FtzN/MeKSYyD0RuxRHjrMznREJ105N42BmtJcrMECnAWDafDuM1/WNcyeGz
	4JZerEjwmThaYCbRbRZdvPoPNUZ7VZecea3LJW4u0bAHnQeegnLEfiAmUqbIh1vxqm+wJcI6SDc+w
	CxnJYcr83+52Wwknx0o9X2iZArMOY3zEzLSmsve3svnisOKeC/Cnj5DfNIbA3DMvLLz+yZu7ADHoe
	Zc/bBunCDf/e1Bc3D8GwDVjlyt2P9yguprQk7MH5ifYm7kKy/v0GmtGnlAmDcuwoHNRytL8rU5VtP
	Rxtp/S4WcJZv26vxiJfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifs8N-0006Gn-9b; Fri, 13 Dec 2019 21:05:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifs8F-0006G8-EG; Fri, 13 Dec 2019 21:05:53 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B28224671;
 Fri, 13 Dec 2019 21:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576271149;
 bh=ZCTmFmuP+82kP0bAev+K+tiRBMnz5wbfX+OG3ptUObg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=t6Qhei1TMSW87H73J95fJMqQBovt4qooCGfJGpcIzyU6OrTNzFdPK5sz5RkZx7Vt4
 00J5X3JMBq7/onLPOtw2q+9IqsQrccVRsxGpHr2L2fs5Q3bP2UAL7V5F0rnyxMJeFI
 TwW0/sTOhJR6QYfk9Ygc9R6KuX6savNbQppuGcQ8=
Date: Fri, 13 Dec 2019 15:05:48 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lad Prabhakar <prabhakar.csengg@gmail.com>
Subject: Re: [v2 3/6] of: address: add support to parse PCI outbound-ranges
Message-ID: <20191213201944.GA190383@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213084748.11210-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_130551_503044_6A8594D7 
X-CRM114-Status: GOOD (  11.17  )
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
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Frank Rowand <frowand.list@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>,
 devicetree@vger.kernel.org, Chris Paterson <Chris.Paterson2@renesas.com>,
 Arnd Bergmann <arnd@arndb.de>, "Lad,
 Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Jingoo Han <jingoohan1@gmail.com>, Andrew Murray <andrew.murray@arm.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 08:47:45AM +0000, Lad Prabhakar wrote:
> From: "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>

$ git log --oneline drivers/of/address.c
951d48855d86 of: Make of_dma_get_range() work on bus nodes
645c138636de of/address: Fix of_pci_range_parser_one translation of DMA addresses
81db12ee15cb of/address: Translate 'dma-ranges' for parent nodes missing 'dma-ranges'
b68ac8dc22eb of: Factor out #{addr,size}-cells parsing
c60bf3eb888a of: address: Follow DMA parent for "dma-coherent"
862ab5578f75 of/address: Introduce of_get_next_dma_parent() helper

Make yours match.  There are a few "of: address: " subjects, but the
ones from Rob (the maintainer) use "of/address: ", so I'd use that.

> this patch adds support to parse PCI outbound-ranges, the
> outbound-regions are similar to pci ranges except it doesn't
> have pci address, below is the format for bar-ranges:

s/pci/PCI/
Capitalize sentences.

Is "bar-range" an actual DT property?  If it's supposed to be a
generic description, "BAR range" would be better.

> outbound-ranges = <flags upper32_cpuaddr lower32_cpuaddr
>                    upper32_size lower32_size>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
