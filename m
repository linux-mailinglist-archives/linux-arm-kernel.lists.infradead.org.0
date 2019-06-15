Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E647222
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 22:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiMW4Xuujxw2F3zKC8CEnAWTDh0yXQYICLLw3Q2xXHs=; b=LBB6O87HFycbWr
	pXhDrVZ7L1Zzi1f3Q9YT5MxyyphmuWDcMzgOyRUpJ8nJ/42AwIVZhJbeIa1M5RFaxrmAqsr9PWkqy
	PyIx5BfiIhBtjhhC+X6K+kuhqTY+CRfEkKTaMOjqAvXCvj2F+FbcvrdRpQ2kUAie+QG9mVsKENgcn
	olmU7B4Xc3UkSOWVICG1+IpSQ7uSFtu5ju2dPaYO+WMckUV7Wd3pljFfYcb4ZTnnAkFZja2VzmT2S
	+R87MaxbQSPfhArKlKZJUl7VZrx1JQN2xWKCU6dSPE6XFxkQyUCDPzHH/ijYPneEzPwwLQ/ZRU9fV
	UU0JW/XZkN4Zha0wsdkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcFWW-0001kz-Bb; Sat, 15 Jun 2019 20:43:40 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcFWJ-0001kg-Fl
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 20:43:28 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A042214EB903F;
 Sat, 15 Jun 2019 13:43:21 -0700 (PDT)
Date: Sat, 15 Jun 2019 13:43:21 -0700 (PDT)
Message-Id: <20190615.134321.740066323733871726.davem@davemloft.net>
To: yangbo.lu@nxp.com
Subject: Re: [v2, 0/6] Reuse ptp_qoriq driver for dpaa2-ptp
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190614104055.43998-1-yangbo.lu@nxp.com>
References: <20190614104055.43998-1-yangbo.lu@nxp.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sat, 15 Jun 2019 13:43:22 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_134327_529903_F07BF681 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 richardcochran@gmail.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yangbo Lu <yangbo.lu@nxp.com>
Date: Fri, 14 Jun 2019 18:40:49 +0800

> Although dpaa2-ptp.c driver is a fsl_mc_driver which
> is using MC APIs for register accessing, it's same IP
> block with eTSEC/DPAA/ENETC 1588 timer.
> This patch-set is to convert to reuse ptp_qoriq driver by
> using register ioremap and dropping related MC APIs.
> However the interrupts could only be handled by MC which
> fires MSIs to ARM cores. So the interrupt enabling and
> handling still rely on MC APIs. MC APIs for interrupt
> and PPS event support are also added by this patch-set.
> 
> ---
> Changes for v2:
> 	- Allowed to compile with COMPILE_TEST.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
