Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B0355A0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 23:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifjmcnbAgopGchvUJV/YEiQfygzzVfEY/4m3+OF1qHM=; b=H/l3DjmNcFNXND
	/eyNYkf5xNXD9jKjejyl1ImnulfKzEk9yjdCdCQWGfIpL/VtYsxFypRXuGzkcXuOICrRSAva6+H6X
	5HIGIe9ind6xB97fgSDRlUhWrxqhgBgLLYWzlpyE9jPCLAPvsn9H0zOg9VXxFgh6vaUrq0gtKfr38
	7Gqi8X+cU4xtjOadbbSqrieN+iKyTzoVqR5upsjVS+MHcP08BTDLBTpezomdCXL47ft8Es23R7/IN
	R1cRcLJKInrPeu08+ClLpzHvU3///ATRj2xHDD8/J5qzUElEeTNXn5g7AIJlxwkV9uGv5iCs5jlVy
	lBpYwmAAM8WUTOxTg/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hft6l-0004ID-U4; Tue, 25 Jun 2019 21:36:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hft6S-0004Gt-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 21:35:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 785BF2085A;
 Tue, 25 Jun 2019 21:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561498548;
 bh=XKjXGt7wBC/YazY7KhXqUWQeoN5TSITXr1HNZAKEqJ8=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=MhD7Oj77rhAVh4rKM8EbBRm++EskHFsfmlsSM/P9qlhtezwO43hkKOH3Tq/Vfh1gw
 T5ng2UlIuncLTuLaLuhLO374aHdGKnM0sMwKW7LiyXPWlOIZZyaqQhsdXobWykEgrk
 prG9p444fFRYfPs47oQnDSDH5iVNentt9Am5fTKw=
MIME-Version: 1.0
In-Reply-To: <20190617215458.32688-5-chris.packham@alliedtelesis.co.nz>
References: <20190617215458.32688-1-chris.packham@alliedtelesis.co.nz>
 <20190617215458.32688-5-chris.packham@alliedtelesis.co.nz>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, andrew@lunn.ch,
 gregory.clement@bootlin.com, jason@lakedaemon.net, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, sebastian.hesselbarth@gmail.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 4/4] clk: kirkwood: Add support for MV98DX1135
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 14:35:47 -0700
Message-Id: <20190625213548.785BF2085A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_143549_004329_9A76EC94 
X-CRM114-Status: UNSURE (   6.91  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Chris Packham (2019-06-17 14:54:58)
> The 98DX1135 is a switch chip with an integrated CPU. This is similar to
> the 98DX4122 except that the core clock speed is fixed to 166Mhz.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
