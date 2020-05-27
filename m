Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1561E3459
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOQwvHfruli/qhvXV0BO1bHFbVKWDAS73YE8KTaHfkQ=; b=qu7ESKsmh3QLrd
	AYdjN1mxcJXKF0IPvpALuIleSkkZClGmwD6PcU/6x+tmImpDxR4NEks5s2/tgCsNKCkcfWegK9IBT
	Hao7w3ZHo2IBxm+SrTZYRi5uGNxSDrY3ClrNw6ZahwaonZwJjqEiT6fEi7vJBWAjHr5p4tl6yrlFb
	nUXpUNnqDIT9CQBjKq9YS3TIgTJd/3UgMHwy1l8h+0LZ0TwJFggHJ2klIlUV3Kss6R4j+Wey3u9Ed
	BDSwEMT4m/5oahcBXoNdIY4m0a2hfF1HXOoHQKQsaLPdbNzW7cvY0fksP4EOxwbhtZEFhStUHqksw
	yJLJxwHJzP6gwGEny/lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkTN-0001cL-GN; Wed, 27 May 2020 01:03:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkRv-0000a9-AE
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:01:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C45B02088E;
 Wed, 27 May 2020 01:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541297;
 bh=o0/TOG6oW3yBaVEVR9CoubyCUTGosJGv3gELN+vEj5M=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=RtK4ETeX2KggNyabvO98kR2UHMQFg4+BDgyW4Fg/H6PvtA+QVogXLyF5/OxMpv+HZ
 br4dojoe95QhzXv5NacgnP6t3zXu2CoWXsalFynj1hBE10Ok+IPBbcpwqZoMvDm+kr
 eulvfPQePWt/OaloC3as/9pi4vIPuAhWBPN4KiNM=
MIME-Version: 1.0
In-Reply-To: <1584048699-24186-2-git-send-email-jolly.shah@xilinx.com>
References: <1584048699-24186-1-git-send-email-jolly.shah@xilinx.com>
 <1584048699-24186-2-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/2] drivers: clk: zynqmp: Add support for custom type
 flags
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:01:37 -0700
Message-ID: <159054129710.88029.4208597093378843339@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180139_516886_C832A4D4 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-12 14:31:38)
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Store extra custom type flags received from firmware.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
