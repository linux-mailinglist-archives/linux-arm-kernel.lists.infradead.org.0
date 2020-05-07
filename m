Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5111C7F6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 02:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+7ywV6iMzBY1SEFb6mjCxe9VNoe6RE1G6yNXHXequg=; b=KLXzprUO2kxaX4
	s0m88kyGIu5cr3bLI6VXyRNyxosCKb0VGb7P2/ITRn66NfxKg8n8vwANIR0V/OxvzUndGDpu4IsGs
	1L1NG1f8ceYUUTyPKheMJ2lSZILgLeRHwnoInTa0uQnH5JS8+okDAIRx6DIsTq8qIlVidyjnPJVz3
	VB/2UelLguced/axg2LV13RG6bg/o4/O+GK0mpF18IKLbxvLKzIXetvtBs8S0OkIdaYRRCinNlsIW
	cdeZMAWrig7S1ghFWsbMoeSD3Jueu557HKA7AZqsJkZ3QpNn6Tm58uqPEIINuf9sLibt1jDe833gA
	xcYJn7RrLsLzG4OfDKjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUn7-00084m-1H; Thu, 07 May 2020 00:53:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUn0-00084L-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 00:53:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 01E2B12783B7E;
 Wed,  6 May 2020 17:53:17 -0700 (PDT)
Date: Wed, 06 May 2020 17:53:17 -0700 (PDT)
Message-Id: <20200506.175317.102621048517657840.davem@davemloft.net>
To: grygorii.strashko@ti.com
Subject: Re: [PATCH] net: ethernet: ti: am65-cpsw-nuss: fix irqs type
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200505163126.13942-1-grygorii.strashko@ti.com>
References: <20200505163126.13942-1-grygorii.strashko@ti.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 06 May 2020 17:53:18 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_175326_561750_883BB23D 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, m-karicheri2@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Grygorii Strashko <grygorii.strashko@ti.com>
Date: Tue, 5 May 2020 19:31:26 +0300

> The K3 INTA driver, which is source TX/RX IRQs for CPSW NUSS, defines IRQs
> triggering type as EDGE by default, but triggering type for CPSW NUSS TX/RX
> IRQs has to be LEVEL as the EDGE triggering type may cause unnecessary IRQs
> triggering and NAPI scheduling for empty queues. It was discovered with
> RT-kernel.
> 
> Fix it by explicitly specifying CPSW NUSS TX/RX IRQ type as
> IRQF_TRIGGER_HIGH.
> 
> Fixes: 93a76530316a ("net: ethernet: ti: introduce am65x/j721e gigabit eth subsystem driver")
> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
