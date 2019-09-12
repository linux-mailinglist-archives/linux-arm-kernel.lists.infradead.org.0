Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174B8B0DA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S+BzQZiZILEuI876tDplzzB8yMGm6lwt9eWbqBlrjTw=; b=NlWHCcboyMRtnvZU5WmEYMxom5
	jh+8llxcZ7lgYMMig+/vB+r9CV6aFL6K3TmTDeeyg35iSMC3mtg7vJAZf0AAcEvuItYUQ7iSwHEJp
	1XgSPaxBusHhEJRAKkSPTEIwLC6OVgIBHkrfgZiP4aCF19D+TM1WSgMq5ZIt9mcNPAY3djlJk219g
	LP5Hne+dsXZ3f12xhf9NA+tUHA04/7DblPEDcmmXisUdV786EDJi15wUYHbnEQcsXTlb7FoWiyPeI
	BSis3+JxNopr5h31VVmiqdkGK77LolVTzG3Fv8qxV6N9dC9wAixUw1qvdBynezHeHCWEF8K4YUWId
	7fAIXOJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8N5F-0005WD-Pp; Thu, 12 Sep 2019 11:16:17 +0000
Received: from mail.thorsis.com ([92.198.35.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8N4v-0005Vk-D9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:15:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.thorsis.com (Postfix) with ESMTP id 4FF2F8BDB
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:08:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.thorsis.com
Received: from mail.thorsis.com ([127.0.0.1])
 by localhost (mail.thorsis.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5udyhmkdDJLh for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 13:08:05 +0200 (CEST)
Received: by mail.thorsis.com (Postfix, from userid 109)
 id 480C84858; Thu, 12 Sep 2019 13:08:02 +0200 (CEST)
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NO_RECEIVED,
 NO_RELAYS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
 version=3.4.2
From: Alexander Dahl <ada@thorsis.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Date: Thu, 12 Sep 2019 13:06:20 +0200
Message-ID: <30755021.BkS3ObC0RA@ada>
In-Reply-To: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
References: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_041557_611452_81887C6C 
X-CRM114-Status: GOOD (  12.46  )
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
Cc: alexandre.belloni@bootlin.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, Eugen.Hristev@microchip.com,
 linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello, 

out of curiosity: The SAMA5D27-SOM1-EK board has a 24 MHz crystal, that is 
also what /sys/kernel/debug/clk/clk_summary says and the board runs without 
obvious problems. What is this change improving in real practice then?

Greets
Alex

Am Mittwoch, 11. September 2019, 06:39:20 CEST schrieb 
Eugen.Hristev@microchip.com:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The PLL input range needs to be able to allow 24 Mhz crystal as input
> Update the range accordingly in plla characteristics struct
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
>  drivers/clk/at91/sama5d2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
> index 6509d09..0de1108 100644
> --- a/drivers/clk/at91/sama5d2.c
> +++ b/drivers/clk/at91/sama5d2.c
> @@ -21,7 +21,7 @@ static const struct clk_range plla_outputs[] = {
>  };
> 
>  static const struct clk_pll_characteristics plla_characteristics = {
> -	.input = { .min = 12000000, .max = 12000000 },
> +	.input = { .min = 12000000, .max = 24000000 },
>  	.num_output = ARRAY_SIZE(plla_outputs),
>  	.output = plla_outputs,
>  	.icpll = plla_icpll,



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
