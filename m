Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EED147438
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtXCvUgNfv1OIir1mX1oOzibtMynMoNqbZUjtWwInOE=; b=shSMb5iaENOBDe
	AqqQUBCVX/rsqQB8upanTfs4sPdU5lQAnzjxqyXOlKJCJeX/daB1MfO3G5NS5WvF1kaXWRd9AxST4
	AmYvR88DvctNi/iVo/94ZH/QMJ7K+N/OTtXsWG+okATaWNZyTxLkfD1bCyEz3tGZSFjPBbqeBJSsl
	tfZlGgHDEfk/lvhK511UqitH0dpALNrxVV37k0tWQP6bCPiPu80M+IUIG2gNVsKinoWy+TmM5a3Gc
	TyNZ+j6fEcwuGfCKgueY0L8RO8HGwL0BpTK8Pe9ZhxDKpY67xDK1RaMw1Tiuo4/MMg49hTfExrRjX
	TvGxAfwdEqGeGHEvffPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulRq-0001fr-1g; Thu, 23 Jan 2020 22:59:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulR9-0001FE-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:58:59 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D91902253D;
 Thu, 23 Jan 2020 22:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579820335;
 bh=iaSKJUdnVS5DO31uxhva3S6lRFXmYS2CVq5c3333vxA=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=i0KgZcpzE8WlpqzGjZ1nKrq7dQNxAxuwF3XEEAH68aY0TmBu2CFX/jjEVHNIGmgUy
 z0nZnqt8MVhfZxaQRwbGuZ+gNMH7/+9KswJs4yqpg3jCEMwm8NRb0KC7JsdnR5eqi2
 L4MHNkoeKOhoba6snvhUMXA33FnOd6ws2sTK5bnY=
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-5-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-5-git-send-email-rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 4/6] clk: zynqmp: Add support for get max divider
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, mark.rutland@arm.com,
 mdf@kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, robh+dt@kernel.org, tejas.patel@xilinx.com
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 14:58:54 -0800
Message-Id: <20200123225854.D91902253D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145855_901244_7AC912C1 
X-CRM114-Status: UNSURE (   5.84  )
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-12-04 22:35:57)
> To achieve best possible rate, maximum limit of divider is required
> while computation. Get maximum supported divisor from firmware. To
> maintain backward compatibility assign maximum possible value(0xFFFF)
> if query for max divisor is not successful.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
