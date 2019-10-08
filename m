Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0771BCFF59
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iksWn82B87ycpwVMQvLMf7VqFVfnJvGDqNSTFeic+wA=; b=u/Im4H24hgYD00
	6BpSnWKDaS5p4avKVF0oSOZQkgjp+mIKoBK6GWCE8GYRr9seP0Arx541Qw9BWhdcNd0jn/zoh8RJj
	IwnuU6m2ancN4mN7gAY3MNKXekm8U7E3KTIr/icNOODnBfwre1F75OY0fQUzgy9iOrnvBpiq4dzgH
	b6Ksg7zAanZDObc29RTnRx9FDF5+7ODivE/G10ybDnkGbc4D46yTNyqBBZnqPFGDzMghPM06+ydh7
	a0syEAaWdrLpktyM5iWp2rMwAoVNT3QJkmcU4MDiZSt2ihdmEi75OWShovt1bU+r9yWUXu8r5Klqd
	sPdEwGFnW6n0SyRqwTkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHslT-0008CV-W2; Tue, 08 Oct 2019 16:55:12 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHslA-0008BP-NF
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:54:54 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 4886D240003;
 Tue,  8 Oct 2019 16:54:50 +0000 (UTC)
Date: Tue, 8 Oct 2019 18:54:49 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH] clk: at91: add compatible for sam9x60
Message-ID: <20191008165449.GA4254@piout.net>
References: <1570553186-24691-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570553186-24691-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_095452_895654_3143D68C 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 08/10/2019 19:46:26+0300, Claudiu Beznea wrote:
> Add compatible for SAM9X60's PMC.

I think the commit log could be clearer and mention why this is needed
and the compatible string in sam9x60 is not sufficient.

> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---
>  drivers/clk/at91/pmc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
> index db24539d5740..24975bca608e 100644
> --- a/drivers/clk/at91/pmc.c
> +++ b/drivers/clk/at91/pmc.c
> @@ -271,6 +271,7 @@ static struct syscore_ops pmc_syscore_ops = {
>  
>  static const struct of_device_id sama5d2_pmc_dt_ids[] = {

Maybe rename the array?

>  	{ .compatible = "atmel,sama5d2-pmc" },
> +	{ .compatible = "microchip,sam9x60-pmc" },
>  	{ /* sentinel */ }
>  };
>  
> -- 
> 2.7.4
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
