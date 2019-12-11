Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E2611A13E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:17:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN186AwUOJCjZUH0S4AtZVXJJnyWuRICf8n+2HEFzBc=; b=j8nkxkoCJqSleP
	0b/6X8sD62kJd/C13MUqVFZBSAtuVzBXVsRXPAyviXH63NgY9R1kulgknx+Q3EuN6KRcDOResTPjg
	MLd6BuyRFpJ8xWzDXgUdBg2aHSB05Wc+G++DFUOtZ84gvooIcrAvyHX2WKyQrZh8pnaqdZKIGtUpU
	PN0x51K/CNCU+wJo/hwWI/suSzYk/uh0oOj5C2pYdM7isw6sDELdHppEC9fSao6GG/EqAfdf16RVk
	oHrg0WvWSknai1R5+e5OAxOraDXq6tUN2WN/JvuIFHQKFeTeyhYl5Xw6nY/h20ZVlZzIZ9oI0eA7y
	bsKtV6XWFLDrblmPN3lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierZW-0007P5-C4; Wed, 11 Dec 2019 02:17:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierZN-0007OV-L2
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:17:42 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B743206EC;
 Wed, 11 Dec 2019 02:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576030660;
 bh=nsAKjl153J0JJUCjGK9PiMgZyuqUToi/dFZG+kBnD8Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FB4e1hbKhPhj0z40cj0Hmp0JwXqAAWSkrUd6Gu3DIpVTKk9P0tLagZQwdKff4I755
 HdwmwRM+w1AUJZ1p0iOldxPBwPpgWx65e0HyRMuogibSzFwMcudvXh9e0y/QTzyvnS
 p+BpHxjJP5i7DLd9syIB+TI0U5bZebie0jVv3s7k=
Date: Wed, 11 Dec 2019 10:17:23 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix reboot node
Message-ID: <20191211021722.GA15858@dragon>
References: <20191123000709.13162-1-michael@walle.cc>
 <20191209034722.GZ3365@dragon>
 <67346b48fa7e236ea31e3ecb1a108f28@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67346b48fa7e236ea31e3ecb1a108f28@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_181741_709640_0F9D4473 
X-CRM114-Status: GOOD (  11.98  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 10:02:02AM +0100, Michael Walle wrote:
> Am 2019-12-09 04:47, schrieb Shawn Guo:
> >On Sat, Nov 23, 2019 at 01:07:09AM +0100, Michael Walle wrote:
> >>The reboot register isn't located inside the DCFG controller,
> >>but in its
> >>own RST controller. Fix it.
> >>
> >>Signed-off-by: Michael Walle <michael@walle.cc>
> >>---
> >> arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 8 +++++++-
> >> 1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >>diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >>b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >>index 72b9a75976a1..dc75534a4754 100644
> >>--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >>+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> >>@@ -102,7 +102,7 @@
> >>
> >> 	reboot {
> >> 		compatible ="syscon-reboot";
> >>-		regmap = <&dcfg>;
> >>+		regmap = <&rst>;
> >> 		offset = <0xb0>;
> >> 		mask = <0x02>;
> >> 	};
> >>@@ -161,6 +161,12 @@
> >> 			big-endian;
> >> 		};
> >>
> >>+		rst: syscon@1e60000 {
> >>+			compatible = "fsl,ls1028a-rst", "syscon";
> >
> >Compatible "fsl,ls1028a-rst" seems undocumented?
> 
> it is the same with fsl,ls1028a-scfg and fsl,ls1028a-dcfg. So maybe
> I should just drop the "fsl,ls1028a-rst". What do you think?

Drop it or document it.  I'm fine with either way.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
