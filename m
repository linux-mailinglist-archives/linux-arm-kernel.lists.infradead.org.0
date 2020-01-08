Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40425134DAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/zGKs+NG5dnzFQ0FvRUhDk86PN8JbMZKAxQLQPAT+4=; b=WsHQlTpyVkVFIi
	ESRNiXf7XqdyKeDTx25j9uh6ZyP/iFQ1wXo9FTjDnJxEkfjQTQSF7/ckAA74dkfOhOwcpR8SS015q
	Cvtla+tYCJrJdWWa8agPBRptymluySxdIJmCc7IbD8I323x4dbW+RajGZia5ckoC+Gn4PKkUpU9VI
	839blLRKYWNpkAtPtUm2OfMy50dUJx1sLgth6YUOKAry+UHP3rUxFE+1THEuGfjaBcLuLng6K0sjW
	2ApVOCKvJD/XLiI16Ea59+XnudCOWcBePIA5ZNvUqOPA5L8TkxiylgITot8HXMT7jVpCwVAfwcWir
	E20KImcr1OPaCThV02XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipI0F-0005di-4q; Wed, 08 Jan 2020 20:32:31 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipI03-0005cs-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:32:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 398D41584B098;
 Wed,  8 Jan 2020 12:32:13 -0800 (PST)
Date: Wed, 08 Jan 2020 12:32:12 -0800 (PST)
Message-Id: <20200108.123212.1596766574776684630.davem@davemloft.net>
To: wens@kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-sunxi: Allow all RGMII modes
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200106030922.19721-1-wens@kernel.org>
References: <20200106030922.19721-1-wens@kernel.org>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Jan 2020 12:32:13 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_123219_679834_3765F0F9 
X-CRM114-Status: UNSURE (   6.82  )
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 joabreu@synopsys.com, peppe.cavallaro@st.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon,  6 Jan 2020 11:09:22 +0800

> From: Chen-Yu Tsai <wens@csie.org>
> 
> Allow all the RGMII modes to be used. This would allow us to represent
> the hardware better in the device tree with RGMII_ID where in most
> cases the PHY's internal delay for both RX and TX are used.
> 
> Fixes: af0bd4e9ba80 ("net: stmmac: sunxi platform extensions for GMAC in Allwinner A20 SoC's")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied and queued up for -stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
