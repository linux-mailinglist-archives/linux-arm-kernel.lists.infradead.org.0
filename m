Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6038FB4162
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 21:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PYpnw0C/vSDzO/IKRFCmCqxBv19mvfKfZOl2bZaZ81k=; b=BXcimOFXh0H5QO
	hS9SKXtM4OjP2LR0jUrod/ZMpgDMsd0gNFarT7brRbq45V3Oi9k64g0nniLmYebjU6jfHr4+3YB1C
	33g/0h3p8aN4lWS3nRy+IOTV7h/bwBBNoKHjiw8Pu4ARgAZqhUMZPuOL3ig6PXSOu9WDfrdaGx/qW
	bJGvTxkSipYgYnnJ/ZYoA04yy0mTetlbPGHVbPHncUOYdAdUoWL+FzKF7drnNWetslmcTQTCFcy0z
	cs19wz0dz1WyXSWCpdQWDJQNAPIZ5TC5bc3/e6utXsa8kfRDCJuoBrjjCSI3jjbDgGpDZfvTtFA74
	/Fr/39Fb64eoJ8KatkqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9x3U-0004gR-Fr; Mon, 16 Sep 2019 19:53:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9x3H-0004gA-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 19:52:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAE5C206C2;
 Mon, 16 Sep 2019 19:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568663566;
 bh=oG3pL7+t1Jea28STZBtRBVheLtg6niY1SV6fDuBZuz8=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=Xv+JIS9Wk+jVAZqrZRTOB3ygYCGJhi3jfZFrTpFEL4lXgR0Mdry7mNB/B8UUTp05+
 gBkKFE5Ev6DWeSbSWst0+4DFf0Tq2PJ1ZaEFO4yWhd6P1FQfSLcs6eQqs40Z0IPl64
 ruHiEjmPvAmSjD6fXGA9qHu9Inuof6n5hH5DFrlc=
MIME-Version: 1.0
In-Reply-To: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
References: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
To: Eugen.Hristev@microchip.com, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 12:52:45 -0700
Message-Id: <20190916195246.CAE5C206C2@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_125247_922903_4CB9231E 
X-CRM114-Status: UNSURE (   6.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Eugen.Hristev@microchip.com (2019-09-10 23:39:20)
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The PLL input range needs to be able to allow 24 Mhz crystal as input
> Update the range accordingly in plla characteristics struct
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---

Is there a Fixes: tag for this? Seems like it was always wrong?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
