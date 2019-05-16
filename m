Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F17821080
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 00:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e39mbxtGCK3RON/JwigJ4I6Fi5mS1YxDfLD2g35iO0k=; b=fN8sexQNbzP8UH
	hoNEGEHjUjE0NueYqvu6eZmfx1qpPe4INLaVqABS2LxTY5g/sjMHHaBbj68HsTcCAMQK81BmWn6QM
	VzD3i4PCG5HaOHnR7fQhVjAdkPgqqX501p1BKs8IqTpmJqp6XSV3SloYZXpKCQvod66JbGy7ZExli
	KNbCNhCMglfiPTG1E9/XPThuZyG8cv7B5X3suUYpgX9e5s+io7lKiAGbAfXlQBBi3LxJJ+7eZisHj
	LaOBWxosY3cqPtDBZKyBr5Ai3NTg1cBlGI+nJn1mCoUgATFhQZHkgkdZ6P6JFwgInfCjPxpLYk6sn
	7pcOVua8rHEnefZ9r/qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROn8-0005kE-Og; Thu, 16 May 2019 22:23:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROn1-0005jM-NN; Thu, 16 May 2019 22:23:53 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hROmt-0007Ew-NA; Fri, 17 May 2019 00:23:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] drivers/clk/rockchip/clk-rk3228.c: add 1.464GHz clock rate
Date: Fri, 17 May 2019 00:23:42 +0200
Message-ID: <5025740.0R6fdBNFxo@phil>
In-Reply-To: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
References: <20190516124437.4906-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_152351_912000_0E1D027A 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Justin,

Am Donnerstag, 16. Mai 2019, 14:44:36 CEST schrieb Justin Swartz:
> Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[]
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>

I've applied the patch for kernel 5.3 and adapted the subject
plus commit message a bit to:

"clk: rockchip: add 1.464GHz cpu-clock rate to rk3228
    
Add missing 1.464GHz clock rate to rk3228_cpuclk_rates[], which gets
referenced in the operating points but wasn't defined till now."

So just for you next submissions:
The patch subject should match the subsystem prefix which you can see with
something like "git log --oneline drivers/clk/rockchip" and the commit
message can be as verbose as you like.

So just to clarify, no need to change anything for this patch, just to
keep in mind for future patches :-) .

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
