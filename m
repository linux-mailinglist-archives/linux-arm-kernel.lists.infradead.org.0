Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAB41D3E1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrh2f/W9Uif3PnYZZHPq9YclAMcI7Z7mpW08FmpHJJY=; b=U7qWwMW3EM8/hP
	VMdOv+CnFakhfaaDaI7q+fNgZ0f6bMdAQDMQq69GJxwi81ARC4WFDhLFD7Ytfo5i0CRNdFmVPepyT
	0Gew/iqV/Eb3D+Nzv0kirLsiHMworD79bFt56sgpYtUwNJ7C0pOapPiiaBAAxo0fbXOVEaOs4oIjo
	EZ/L9+XeV2seFxxpMknxKAFvPJetYP35vBVEiPZeIYIEV+8C38iOYWIVA9X2GtV3tUSk6Vt2+/wvz
	/pczeOCc4qmnTHYeHh/uPisHR7cvzwq0qSvTh2a7lU5ZoNpwdDVHiQBbRg+VTReznTxb8oLTR6JwS
	ciPq0nhQX0kDhbE+U0gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJyZ-0008B1-7Z; Thu, 14 May 2020 19:57:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJyB-00082Y-1l
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:56:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93F962065D;
 Thu, 14 May 2020 19:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589486198;
 bh=GxE8ANtTfub60hMSFbauTD0SDXUv1h7GY8/7gYwkj1s=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=lgNmKs8ZeUDv5XB7NX0ds36hRGZoVZieEig0mf4RgEgTJWjlQ6+m143PLJBuYH7wx
 F05bfIZU6PCyTM5ZT28JE3VFQo8RYr73pSsG2RpJMSiGr2Tv3MSh4FqAMH5Rio/+J1
 4uTcZX2ZW9B+JDol6KOeKnqZDX9cUmkFUCGu2Oss=
MIME-Version: 1.0
In-Reply-To: <20200409064416.83340-3-sboyd@kernel.org>
References: <20200409064416.83340-1-sboyd@kernel.org>
 <20200409064416.83340-3-sboyd@kernel.org>
Subject: Re: [PATCH v2 02/10] ARM: Remove redundant CLKDEV_LOOKUP selects
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Date: Thu, 14 May 2020 12:56:37 -0700
Message-ID: <158948619792.215346.16103604948090575932@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125639_130850_E1AAAB37 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Tony Prisk <linux@prisktech.co.nz>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stephen Boyd (2020-04-08 23:44:08)
> These platforms select COMMON_CLK indirectly through use of the
> ARCH_MULTIPLATFORM config option that they depend on implicitly via some
> V7/V6/V5 multi platform config option. The COMMON_CLK config option
> already selects CLKDEV_LOOKUP so it's redundant to have this selected
> again.
> 
> Cc: Tony Prisk <linux@prisktech.co.nz>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
