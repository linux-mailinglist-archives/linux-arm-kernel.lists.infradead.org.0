Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1408DF460
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OsOcZnGBbXaj4BQIb9BgPeD5PdQw7tYCCKdWJ+PZkI=; b=eeMoW/fMrdyQJQ
	FiR7WZYs/bw5hv1piKa7R8GHm3YhUXUGKuljHE03QFJTKV9l10Jhc3JSlL48yqMg9Fxg6cMXdVPGd
	Sd7or/R1iM9WK37M5TLYkPwBsLAbCFVCvX7OFuHWKUCOkCGyvJrRzsHMjzM5FCwbcG1MedA+CIn7u
	RT98Vm3yiyJfOXUC4fATjCRg3Iyb5e7im6dPmImoVpMpek+EfqN+2IfmqdKoN3E45Lcb0Y50MCrT3
	m2WFUK4XYR3rspdI4M3Io7wgDDhbFJyoQikC5z0uI7rYxTUQzhAhMDeVbzmOMHNG2Ku8MgSVI2/bZ
	u2tJfh8og24OzsERbK9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbcj-00033A-Hv; Mon, 21 Oct 2019 17:37:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbcY-00032P-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 17:37:31 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D5C69826D;
 Mon, 21 Oct 2019 17:38:04 +0000 (UTC)
Date: Mon, 21 Oct 2019 10:37:27 -0700
From: Tony Lindgren <tony@atomide.com>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH 2/2] ARM: OMAP2+: make omap44xx_sha0_hwmod and
 omap44xx_l3_main_2__des static
Message-ID: <20191021173727.GF5610@atomide.com>
References: <20191009085646.21755-1-ben.dooks@codethink.co.uk>
 <20191009085646.21755-2-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009085646.21755-2-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_103730_591494_27F5A002 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@lists.codethink.co.uk, Paul Walmsley <paul@pwsan.com>,
 linux-omap@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ben Dooks <ben.dooks@codethink.co.uk> [191009 01:57]:
> The omap44xx_sha0_hwmod and omap44xx_l3_main_2__des objects are
> not exported so make them static to avoid the following warnings:
> 
> arch/arm/mach-omap2/omap_hwmod_44xx_data.c:793:19: warning: symbol 'omap44xx_sha0_hwmod' was not declared. Should it be static?
> arch/arm/mach-omap2/omap_hwmod_44xx_data.c:977:26: warning: symbol 'omap44xx_l3_main_2__des' was not declared. Should it be static?

Applying into omap-for-v5.5/soc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
