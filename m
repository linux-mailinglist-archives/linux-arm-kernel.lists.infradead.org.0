Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C8B570CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BAGidEk89zC50WhQOvveJin2waGT4l9sRjdD4A9Ohs=; b=XluLS5DLD/o+Ob
	2R90iewNCd2de5P5geJDdTqfzixw90HkTX5sKWrfgnP6qes4jRspqebxZ/69zGB68jy1Pi+bOhW+G
	4RqIJzMhIJdf3NSW5C+Z4NgYV5PjEfCy65RR2P8UeqGp4A71YPppmDAEZ2gcDvHktjLFMClguyorS
	su8+QD6Y/WKEJbyacu+sdOQEJzpTjtF6e7wjGYVsCa2q7qlzGh/oC15T4IsOWmSfaNA/9vOuNq/+v
	p3wuqiNhz9YvMY2rQGXva10KtCCL+EagTKZaw0cFvSa9iq3Tv2X/KlSPEQHRdWE9nMr0xISH4o1KI
	tnmN696AuCTaYNoddatA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCnD-0005db-T9; Wed, 26 Jun 2019 18:37:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCmx-0005dI-4Y
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:37:00 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA53A216FD;
 Wed, 26 Jun 2019 18:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561574218;
 bh=rPjrA5UKDItDDeBvMzrvupA/HE7q5dkO/2GejoVYEsU=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=pyiZmAQTWwmV9IucQm5qJLcRgqCJyBirwquRA9A0YFbOVE7WcEhB0PDd0LFoFh5Ux
 Q83RYbitSQbtdPIkzJtkHGO+01GyWUg6bJwAIrpsMyR9912CITIh7IHLBXagIsyHaJ
 FKm1pvMRlGh1yefdXwX/3Iz7HKwi3ncOw+5djHXA=
MIME-Version: 1.0
In-Reply-To: <1558433454-27971-5-git-send-email-claudiu.beznea@microchip.com>
References: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
 <1558433454-27971-5-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH v4 4/4] clk: at91: sckc: add support for SAM9X60
To: Claudiu.Beznea@microchip.com, Ludovic.Desroches@microchip.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 26 Jun 2019 11:36:58 -0700
Message-Id: <20190626183658.BA53A216FD@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_113659_193604_190B7622 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu.Beznea@microchip.com (2019-05-21 03:11:33)
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Add support for SAM9X60's slow clock.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

FYI, this patch is base64 encoded and causes my MUA to have lots of
pain. It would be nice if you could send plain text emails, otherwise it
takes me a few more seconds to extract the patch. Of course, it reminds
me that I need to fix my MUA so maybe this is OK!


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
