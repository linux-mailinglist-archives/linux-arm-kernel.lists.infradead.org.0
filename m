Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07555570BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 20:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykq8T0tjK8rtDGrEEgDQX1MyjJth05pLZzUYw8CwoCQ=; b=ZYFwLU0Cb7a8Z0
	y8PA2jbIaakFRnJD+iz9mVUy/ev/lSq9pzSljG/Q1L2o1yfsGjCPr+RohSeanz51bad0MMz+dPgiG
	n9t3atQY+zMKuTQvJ9InX8XZFj4ziT0PH/1TJxAbw7CaArWCOraF2JQzI2vWjRLXfGxjR2jVN9TvV
	kAIHKsx5HkbmKC+1yZgxC/LcKdx8IkwGfUwUMLaTMNBXWl7L2CfcZPCz3NHe4Hc+T9ULRwS/eO9vb
	jTTMMPL/yhq9qON9VOg2IhIrBXiJwXWmL6MpKJiDAsNbXAVqo6P3ablMw9xG/LraGI2NK6CNpBDPx
	SI0F4uLK/Vg5nGNumaJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgCla-0004LL-6q; Wed, 26 Jun 2019 18:35:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgCku-00035b-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 18:34:53 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F33B421738;
 Wed, 26 Jun 2019 18:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561574092;
 bh=6drANE0jdBR8TSbXn+6m0cELmaHGSwlfyabSGJEiOlQ=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=00ltJhESB5AzYaorZMI4UZtPZH5m2wTzAfVNf2PPYL+faguz48AA/v8MZt1AR5HD9
 O34DLXDK9wKigvsvXQAAWgzUdMlUv68sFIvjOO9QDz/PhR1dRned2rajKG9Cgw8jLB
 UCwakFRS43+p/KtQPtwHN07sfxESgsNQA6BdzmZ8=
MIME-Version: 1.0
In-Reply-To: <1558433454-27971-3-git-send-email-claudiu.beznea@microchip.com>
References: <1558433454-27971-1-git-send-email-claudiu.beznea@microchip.com>
 <1558433454-27971-3-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH v4 2/4] clk: at91: sckc: add support to specify registers
 bit offsets
To: Claudiu.Beznea@microchip.com, Ludovic.Desroches@microchip.com,
 Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
 mark.rutland@arm.com, mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Wed, 26 Jun 2019 11:34:51 -0700
Message-Id: <20190626183451.F33B421738@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_113452_424631_78D8511D 
X-CRM114-Status: UNSURE (   6.15  )
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

Quoting Claudiu.Beznea@microchip.com (2019-05-21 03:11:26)
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Different IPs uses different bit offsets in registers for the same
> functionality, thus adapt the driver to support this.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
