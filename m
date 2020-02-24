Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2876716B5D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ML+64UnZKYZlf+KTrs5yq0Y7kj96S0tiJVD1+8ruXsk=; b=FxaHCsybFSsgKG
	haTNUR4YjEd0xehkBplIH/8YuyssbQgH8t/E9gawntcLrODTsPI8Vr9msGHP5x6Qs4vC+RqfXSwJn
	Fw1XP1N7OlL/zEhQXzX+LchCfsmwyUQcGnBZ9N47HBLWFCSThHpmkwrKicSf4jT9xLb8jQetEJSCL
	LOnUSawsn7GBiXpN/JHn8Ph5Ksqmyw/RCnpRwd5cg1lA9fPsftmpyEfbxPNe0qrXqZFu8wHTSM62d
	duLuYNISufzLM4B4iefMhlDme4RGFJq/8xwuf12djwf7C7mThYk1uOQ/LGKxmurzXc7aXa3781Gd4
	3j5dSB0Pe3kHS6vcpdDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6NKB-0002Eb-JW; Mon, 24 Feb 2020 23:39:43 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NJs-00026D-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:39:25 +0000
Received: from localhost (unknown [50.226.181.18])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 44E5B12543268;
 Mon, 24 Feb 2020 15:39:24 -0800 (PST)
Date: Mon, 24 Feb 2020 15:39:23 -0800 (PST)
Message-Id: <20200224.153923.1536313085486969964.davem@davemloft.net>
To: a.fatoum@pengutronix.de
Subject: Re: [PATCH 2/2] net: ethernet: stmmac: don't warn about missing
 optional wakeup IRQ
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200224172956.28744-2-a.fatoum@pengutronix.de>
References: <20200224172956.28744-1-a.fatoum@pengutronix.de>
 <20200224172956.28744-2-a.fatoum@pengutronix.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Feb 2020 15:39:24 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_153924_813806_96A19C0E 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, kernel@pengutronix.de,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Feb 2020 18:29:55 +0100

> The "stm32_pwr_wakeup" is optional per the binding and the driver
> handles its absence gracefully. Request it with
> platform_get_irq_byname_optional, so its absence doesn't needlessly
> clutter the log.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
