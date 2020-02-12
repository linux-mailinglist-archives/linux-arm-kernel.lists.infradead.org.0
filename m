Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4464F15B4C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VO7Thy/p8eKwQKX4MvrDN/P3Ik33Ois8u0sBsgbsLy4=; b=U8FjflUDazKLjw
	djrcv7psvb2ZgGM4bbm63gpS2Epo5CptkqKWMzbEipNdr35DP1RumVai9X0BwCuCLMlq1OYHtUSyr
	oIxEA9WT8Xz7gQVxoWFY9W74IXzAJvlEAiKf1M+sDWnhoOfZvYV9fpzJn1UGnfWN08+o2SiFiogW0
	98Onlr/x1Yboylpb48GiNK5tG/B20UGcwq3xYXBjFLfSJ05U0OQN/JRJpVph0jqtb5TnSGJ6rj99G
	at8fYgRIsUjqwDejrwMTXL3h1kA6w/Gvn0OXz5r8cIqoIrlQnSUKEAp1F/M2YuLOuTqboXaDB1nNz
	3Us8kpT8lXCu2XDboKGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21UJ-0002W2-Rl; Wed, 12 Feb 2020 23:32:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21UC-0002VU-U8
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:32:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7EDA42168B;
 Wed, 12 Feb 2020 23:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550324;
 bh=12CbUhkaEKf20xhNvllwkznIYLq9X5u3BJxoAwCvatc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fdInQSg5pCcP/kvjRo/WxTMjnt3ElG1vTHS77+o2SDmGJAiE9XfBEOeejUzbVNFLK
 qzls/7FafGFykcbRQF0cDagKJuzufUKmf9Iy0GCXAdn3Mzx4UpPAtetpmqTjZG+YNW
 3CyAXBtTR5mf1ODxyyS+V2yGKB4kYXeh/ZpHtlQM=
MIME-Version: 1.0
In-Reply-To: <1579261009-4573-2-git-send-email-claudiu.beznea@microchip.com>
References: <1579261009-4573-1-git-send-email-claudiu.beznea@microchip.com>
 <1579261009-4573-2-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 1/4] clk: at91: usb: continue if clk_hw_round_rate()
 return zero
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:32:03 -0800
Message-ID: <158155032378.184098.13418432475305981955@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153205_000236_9611D15F 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-17 03:36:46)
> clk_hw_round_rate() may call round rate function of its parents. In case
> of SAM9X60 two of USB parrents are PLLA and UPLL. These clocks are
> controlled by clk-sam9x60-pll.c driver. The round rate function for this
> driver is sam9x60_pll_round_rate() which call in turn
> sam9x60_pll_get_best_div_mul(). In case the requested rate is not in the
> proper range (rate < characteristics->output[0].min &&
> rate > characteristics->output[0].max) the sam9x60_pll_round_rate() will
> return a negative number to its caller (called by
> clk_core_round_rate_nolock()). clk_hw_round_rate() will return zero in
> case a negative number is returned by clk_core_round_rate_nolock(). With
> this, the USB clock will continue its rate computation even caller of
> clk_hw_round_rate() returned an error. With this, the USB clock on SAM9X60
> may not chose the best parent. I detected this after a suspend/resume
> cycle on SAM9X60.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
