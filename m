Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA0E160A20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 06:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A1JMJIkrb2aJUbjHuUtoh74MCgiUDLKvCPPGv5HiLOA=; b=dTUTz32LayiKDe
	1Qo5JkihvP+N256aQFtMZTJ+Whgt4Ov6xtn8Rml1Ix+Drvs7BDxP1nS2v8c5tzG3q2fQ7u9VcLMW/
	++FVoPpMxVs86CFshsIyDzPbVeK90z880vwAhIrJMNZiw0AOfjFdfL2aVzJouH7zy/3O20DKHUngw
	oQw3Eui3oFNJ3rwceLqi1V5t0ckP1dXfl2WJc1BsnbNWrAH70kL8EfHZ0o4/oTILWuhzCODquumT/
	DEHWZzq9MdsNcUbK/pd/5QLnMs+FeQyd6O6UuWKgOglrV0bcqX06U0tcTWLo9lFu+jIkafphiQJqX
	utp6K4LdluvXTTzXDBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ZIq-0008B5-M7; Mon, 17 Feb 2020 05:50:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ZIg-0008Am-Gq
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 05:50:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EA1C2070B;
 Mon, 17 Feb 2020 05:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581918633;
 bh=MjiPieCmyZRIzZ0W3qjRJdsz7q6ukow9JNgZCvHQULk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DnvSmgYEMsMlIYhxzZr94FjmiRqHBWTXU/6QhiRjG43Pa6/5SD2Y5Ur0/iTwTKKMJ
 wNIHG+6YYJw0XaUH+Htk4X3RGk6/wYkotG3QiyA7Ot37U4rQ4u0LVORQOIuMKt7ERS
 8jF5vyeju74lhCviC1vI+OuLXPaBr3CMyrwICO98=
Date: Mon, 17 Feb 2020 13:50:28 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] clk: imx8mm: Fix the CLKO1 source select list
Message-ID: <20200217055027.GC6042@dragon>
References: <20200211030813.13992-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211030813.13992-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_215034_581244_4ED4F96F 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sboyd@kernel.org, linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 12:08:12AM -0300, Fabio Estevam wrote:
> The CLKO1 clock source select list is the following as per the i.MX8MM
> Reference Manual (put in increasing order):
> 
> 000 - 24M_REF_CLK
> 001 - SYSTEM_PLL1_CLK
> 010 - None
> 011 - SYSTEM_PLL1_DIV4
> 100 - AUDIO_PLL2_CLK
> 101 - SYSTEM_PLL2_DIV2
> 110 - VPU_PLL_CLK
> 111 - SYSTEM_PLL1_DIV10
> 
> Fix it accordingly.
> 
> Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
