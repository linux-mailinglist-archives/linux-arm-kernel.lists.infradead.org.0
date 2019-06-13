Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529D64357A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoGpCwnivaOU7FKZfnVnBydVb+vwuiepVkXbtzV21vs=; b=pH+D/rj55s22UP
	EQMrYoUSIWxYP2CZXXO+xmDbYHxooQ9DofH/J+MPbYVH0ROaW9GcNoj/mkYoTZE8i2Ixp2np8IzfC
	yBqxDXCdo5t6pMRSDELlHNVBptP6wZWk6zeSKoY2AhnMlOJs6JJUajbM1rwABP9aTHI5noRd4eOvt
	md7pu4RAqUQVf2xOqr6L5YGPqKyWhRpb7oD0KVNa9Cs6r20oLaAexixEnmWKc7mPCR3d/rvkKNY/T
	QqWRsE8w6dZarmzX+hWrRbCkoF9gNfh2GUK64iMD9I4Rm7unqW5ymcvLMqZMMwUCYN927VrEtP3Hf
	y3FNv/MiGwcV4PpOpwTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNq0-00079P-BX; Thu, 13 Jun 2019 11:24:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNpH-0006yV-7l
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:23:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C0D7367;
 Thu, 13 Jun 2019 04:23:26 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 496F13F694;
 Thu, 13 Jun 2019 04:25:08 -0700 (PDT)
Date: Thu, 13 Jun 2019 12:23:20 +0100
From: Will Deacon <will.deacon@arm.com>
To: Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190613112320.GA18966@fuggles.cambridge.arm.com>
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556736193-29411-2-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042327_730278_B469750A 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> Add ddr performance monitor support for iMX8QXP
> 
> There are 4 counters for ddr perfomance events.
> counter 0 is dedicated for cycles.
> you choose any up to 3 no cycles events.
> 
> for example:
> 
> perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls

I've pushed patches 1, 2 and 4 out with some minor tweaks to:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf

I'll leave the actual .dts change to go via the soc tree, since last time
I took one of those it just resulted in conflicts.

Frank, Andrey: Please could you try to run the perf fuzzer on this before
it lands in mainline? It has a good track record of finding nasty PMU driver
bugs, but it obviously requires access to hardware which implements the PMU:

http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
