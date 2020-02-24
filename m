Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AB216B5D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29nKB4s7JTVK1KWL/E8LAu28miZfpYSjDOEfd4kvgLw=; b=Z/LvZ60jGG4NPH
	ysNx55bwSn3l2AGUQ4JQYUd+j+bXFcsCoOffBxLC379RD8XH6IdR8Hc+wQWipjT1xTSo+xA13kBBl
	n/kEZM4fNCla0QOhUaxksAqw0yaDaWLh03eIVQHUsgIhOvwI1byrvmxY3TCU2FUACq5ijUEbpZ6A8
	D/Er/+dQ5cMKkl5ekY0tV+jDbruB5pGIOZ0YuCdIKcmEZmHYmGtiuwlNEyTYAgSDywJv4bt9I0Wbq
	OW3dEdVa2/Y20lBI/MWN3g5izZBKJfi+Og1QVHoBB7NDP5zqzc/evmiX06Aa17BVEEnqx1ob9PiuH
	QvUnYPblNJhMNfGJJ3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6NJy-00026F-Vx; Mon, 24 Feb 2020 23:39:30 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6NJq-00025l-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:39:23 +0000
Received: from localhost (unknown [50.226.181.18])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 49B1012543265;
 Mon, 24 Feb 2020 15:39:20 -0800 (PST)
Date: Mon, 24 Feb 2020 15:39:17 -0800 (PST)
Message-Id: <20200224.153917.813576310969410957.davem@davemloft.net>
To: a.fatoum@pengutronix.de
Subject: Re: [PATCH 1/2] net: ethernet: stmmac: demote warnings about
 missing optional clocks
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200224172956.28744-1-a.fatoum@pengutronix.de>
References: <20200224172956.28744-1-a.fatoum@pengutronix.de>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 24 Feb 2020 15:39:20 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_153922_499220_0C630C08 
X-CRM114-Status: UNSURE (   7.25  )
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
Date: Mon, 24 Feb 2020 18:29:54 +0100

> The specification of a "eth-ck" and a "ptp_ref" clock is optional per
> the binding and the driver handles them gracefully.
> Demote the output to an info message accordingly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Applied.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
