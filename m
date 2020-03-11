Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E7C18123B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHdzEAt7y7LnOhsTReQ+UIif37Chi7M4VamlSe/4E5o=; b=e3ONL/h5G1EdxX
	grpQA4J0PmPkwqEZF7DbuphbRvp3Xkr2SxJpbqh4rVjy4MNx5KL5TEspeegG6JlFbeZgRbQyRYSgw
	2c13smr5xPhIGDsONFU/X1+tLS96kl8dyMy8+4BUmYu2wQYQia0bduWV3ujc/nQhVmTn9vS7mrqlY
	vtQyCfJb05oyAardnfat9e0xtvZOuYhaOjtwmVLkOhHMdAXuZSqWW/aY787YPRZVfLdx0iMtuL6fC
	2MHkLo74jqvpH3Psb7TxT4YzwIJ3AMEBdIFqi2SShEj2z36pt3SOtVGt5sAILUzo1BSuick+fffCm
	EVQAzQ4tYoRpFIcwWLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBw2J-00056C-RT; Wed, 11 Mar 2020 07:44:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBw2D-00055I-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:44:10 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC15C20578;
 Wed, 11 Mar 2020 07:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583912648;
 bh=+KyRlV2jiWd0oJcPNhfaoXeqN5z9XYcvHTTz8nuuRz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dbuwx1Pe3m+xyRW7tFy+IMR3iWMXreENd3PhWBInTks5XsFBOIBiAiVFanqhmsj1c
 +ZDUT2IyLjt7OH/F5iof3Q0m6z8A4TU2Vfb6y2XhpCmSDzx41OvY4GeW44ogIqpH4O
 2OdOckaivbA8AmpGQVDWYKUcVePloLF3IplZGzsU=
Date: Wed, 11 Mar 2020 15:44:03 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: lx2160a-cex7: add on-module eeproms
Message-ID: <20200311074402.GT29269@dragon>
References: <E1j7Hvv-0004Vy-BO@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1j7Hvv-0004Vy-BO@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004409_078498_72E6F2DE 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 12:06:27PM +0000, Russell King wrote:
> From: Rabeeh Khoury <rabeeh@solid-run.com>
> 
> This patch adds 4 eeprom support on i2c mux channel #0 -
> 1. Bootable 512Kbit eeprom at address 0x50.
> 2. Memory SO-DIMMs SPD channels at 0x51 (upper SO-DIMM) and 0x53.
> 3. 2Kb eeprom at 0x57 will be used by SolidRun to hold manufacturing
>    data.
> 
> Signed-off-by: Rabeeh Khoury <rabeeh@solid-run.com>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
