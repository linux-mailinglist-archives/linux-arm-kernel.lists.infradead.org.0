Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31DE175836
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUcCGpqPAHA3+vZjzhftd8VLatFMe8HY1Cvurm51WEQ=; b=R/1v0XG+z9NJ6H
	6WT0Q6IuPqKeVUVqkCl+LpyTcFMnPfW4bhczf23l6hVQmXMDoJGqY+/p41LBljZ6kWVF5UV13V/vb
	nEf5at2G1vF5Z/sO89Vg2JsWiRMZngg/bUzbanQ68I/QT3XxP+As6AOAbQ7dqgxIgA0lrdVf/Iu35
	gSNxHRu4wlwLglw2smJ7X6fwZ8Doea5fbF3FObp1YwVyKU45LdQM6NxG4A3/21YGsqYfwcu6WfdfZ
	ihv0EcJPFKz8z8OY+jmoY6YWhEdiUVIskelnXcgEGxtph++ojs9Q7gmijVh1cLjuTmcQP0YrJ0FZa
	l7iSySgcEGI1z680Sh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iA9-0004hL-Ny; Mon, 02 Mar 2020 10:19:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iA2-0004fC-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:18:56 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j8i9o-000400-Pk; Mon, 02 Mar 2020 11:18:40 +0100
Message-ID: <fbba971d7501c774ce0081f22dcff4ef74002a4d.camel@pengutronix.de>
Subject: Re: [PATCH 2/3] ARM: dts: stm32: add STM32MP1-based Linux
 Automation MC-1 board
From: Lucas Stach <l.stach@pengutronix.de>
To: Alexandre Torgue <alexandre.torgue@st.com>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>, linux-stm32@st-md-mailman.stormreply.com, 
 mcoquelin.stm32@gmail.com, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Date: Mon, 02 Mar 2020 11:18:39 +0100
In-Reply-To: <244a4502-03e0-836c-2ce2-7fa6cef3c188@st.com>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
 <20200226143826.1146-2-a.fatoum@pengutronix.de>
 <244a4502-03e0-836c-2ce2-7fa6cef3c188@st.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_021854_944470_CED8306E 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mo, 2020-03-02 at 11:06 +0100, Alexandre Torgue wrote:
> Hi Ahmad
> 
> Thanks for adding a new STM32 board. Some minor comments.
> 
> On 2/26/20 3:38 PM, Ahmad Fatoum wrote:
> > The Linux Automation MC-1 is a SBC built around the Octavo Systems
> > OSD32MP15x SiP. The SiP features up to 1 GB DDR3 RAM, EEPROM and
> > a PMIC. The board has eMMC and a SD slot for storage and GbE
> > for both connectivity and power.
> > 
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de
> > ---
[...]
> > +
> > +&gpu {
> > +	status = "okay";
> > +};

This question is more to the ST guys than this specific DT: Why is the
GPU marked as disabled in the SoC dtsi file? This device is always
present on the SoC and AFAICS there are no board level dependencies, so
there is no reason to have it disabled by default, right? Removing the
status property from the dtsi would remove the need for this override
on the board DT.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
