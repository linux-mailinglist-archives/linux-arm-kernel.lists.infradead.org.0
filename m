Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CA1638EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7Sd8pYY+r4B40vJgy3wZwrxmVEufWwZem2/N5AcLV8=; b=RvFJk5PfCWfHqC
	Um4JdGfJXcuocHsWmxej0DnKFroNPW81Mv0f7hI3ix3dgK4ViDBnfx8xH6ZvwadCwTCEA2AXMOiWw
	eu650iyTbftEyrghwV6Z+sZcD8Eek+yXs92e0Ya8E8eWFoWb8QK1Yq8zOE9dPrI1pJoXlFhzX+AMt
	Sj2lAhj5Tlp8v4ovFT5I+IQMTRs9+m572L5PVwCA603Nt4sCxQ3+3M/qNmLljaKne8DLd6+NvLr0m
	48RG/YG4A6Y1PoXpSZwaClMi9/JZnGUn6mmB7fYSWos6bEQ/e9EimpgE15m5Cp5RwISX2ckmbIN45
	LpSO4NS9VFA263ns6SPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksTe-0005iq-9G; Tue, 09 Jul 2019 15:56:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksTU-0005hc-Fo
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:56:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B81F216C4;
 Tue,  9 Jul 2019 15:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562687771;
 bh=RGnkwnacksVmU2gR7GE2tofc6/oEwvapJ35bt4bcf8o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=h/FE+OV4yvuI5e2XLeeJHrzTH41LRdowVP93kAqE098Uud68lW213tgxTBzwVe/XA
 620d+4pVRRXDM7QcHbwLuWgFPQQjpNExWe85orP+g6ddnqWaFeSWMJahId7J7+pisS
 c56/S4gzKI0Vgx17Fu/5RrzpMqPt3Ak9fYAFdzjI=
Date: Tue, 9 Jul 2019 16:56:07 +0100
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH] perf: imx8_ddr_perf: calculate ddr bandwidth via virtual
 event read-bytes/write-bytes
Message-ID: <20190709155606.x45nmew253giwvgf@willie-the-truck>
References: <20190709054417.11734-1-qiangqing.zhang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709054417.11734-1-qiangqing.zhang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_085612_556580_57A82444 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 05:46:44AM +0000, Joakim Zhang wrote:
> We can calculate ddr bandwidth via virtual event read-bytes/write-bytes
> based on ddr burst width, which actually share event
> read-cycles/write-cycles. Burst width is 32 bit on i.MX8 board.
> 
> The ddr interface will generate 2 up edges and 2 down edges in an
> internal clock cycle, so it can pass 4 beats of data. 4 bytes of each
> beat if ddr burst width is 32 bit.
> 
> for example:
> perf stat -a -e imx8_ddr0/read-bytes/,imx8_ddr0/write-bytes/ ls

I don't think you should be doing this in the kernel. Can you look at
implementing it in perf tool instead by adding a .json file for your
PMU and expressing this compound event using "MetricExpr"?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
