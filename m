Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A060C15B4BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:31:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yxNiKVIie02NH6/5xY7KwpFwlYpF+aqCY8i6Acr2V0=; b=vDQvdpANqEvwsN
	FOEmPnTlxJ4c7cIlUUPow9Q0H5xqNUteyZviL7T8wi0JdbfCC8eMH+5qXaBo8aEbFIgjs/ll5v6qO
	PnCELF/nfGP5hKo/asoxwxyWnLDzj9OM71kfXFNmMOxa0DczwK8SPw0zTG3+WMWs0yLU/orjxx/9X
	6uKqH/A5a5oeoaD/WqCKkzheKo8a1MY0OHFP5UrTOiVjdU9s9MzgWfPR8l6MRqu+vAZTXK5C2CtMF
	pdSXsJNZ4v14Iy8W51N/EJxA/glrG8caJMfaOBPrmZxaWb20RXK6mR6CaS/tXgZATzSU7qR17r01N
	DmumyS80glv1P2D196ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21TR-0002Eh-Km; Wed, 12 Feb 2020 23:31:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21TI-0002Dg-Fs
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:31:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11F372168B;
 Wed, 12 Feb 2020 23:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550268;
 bh=ya1mdjuRhJyPXeD1+2MEVl2H+HZDN2Y1c+0JC5g+Tas=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=aD/VftW1lahVxUo7dvU6291ECKrxjHvvlfqu39uxhdKxXosIwdnAcPKId4/SaPaYP
 Fp5MQ/p8RAxK4/INvOndwiXnJQ+1rcv0Vx9wIY0wq5t+HWtweguNB/e3CJjhRGknyE
 z5YidvvkvDvQPapiSVC5sC7r3yfUZjW6tvLUuam8=
MIME-Version: 1.0
In-Reply-To: <1579522208-19523-7-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
 <1579522208-19523-7-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 6/8] clk: at91: move sam9x60's PLL register offsets to PMC
 header
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com, mturquette@baylibre.com,
 nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:31:07 -0800
Message-ID: <158155026725.184098.12068858622733995250@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153108_571068_ACAA5C33 
X-CRM114-Status: UNSURE (   6.58  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-20 04:10:06)
> Move SAM9X60's PLL register offsets to PMC header so that the
> definitions would also be available from arch/arm/mach-at91/pm_suspend.S.
> This is necessary to disable/enable PLLA for SAM9X60 on suspend/resume.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
