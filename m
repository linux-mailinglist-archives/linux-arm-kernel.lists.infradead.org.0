Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98479F3C28
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 00:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao+u8nMMlOHWWyWJIMjX+PCVqfaDwjrACRCtpva5o/k=; b=qcOndS88khtko+
	sHvpthJPCGyE/vexqJnlWSJNd7MNVqm2zlQIMbBBk3osTCS47nr/VbvpO1JZqKy5lchtSwF3WP2Jr
	78PCCBkmK8s0LiEBKwoaaWu/W9F2l279Q8qEKZ1cxFzF6mj/qgi/YFIFL3eQn+CuZWktqksFz6AJt
	YM3ekiK+pKKgCUDwcoI2kx1KMf4wFgNgthXwCBpKyg/gS+b50J1SNRZ+hSYp5m+f9F3SEWnk40nVe
	3ZdCP20ndyNso7j29atflRhMf8NIE/VNOQ1L8f6khCXDXfPVFv/K7yRiiLEkAcWggwxWAulIejpfz
	OpVqnf2aCeI3K/6CJhKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrB1-0002o7-FB; Thu, 07 Nov 2019 23:26:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrAu-0002nQ-Tt
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 23:26:50 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 47C9015371C3C;
 Thu,  7 Nov 2019 15:26:41 -0800 (PST)
Date: Thu, 07 Nov 2019 15:26:40 -0800 (PST)
Message-Id: <20191107.152640.1457462659040029467.davem@davemloft.net>
To: christophe.roullier@st.com
Subject: Re: [PATCH V4 net-next 0/4] net: ethernet: stmmac: cleanup clock
 and optimization
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191107084757.17910-1-christophe.roullier@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 07 Nov 2019 15:26:41 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_152648_964340_DA0042A3 
X-CRM114-Status: UNSURE (   5.81  )
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
Cc: mark.rutland@arm.com, robh@kernel.org, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, andrew@lunn.ch,
 mcoquelin.stm32@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christophe Roullier <christophe.roullier@st.com>
Date: Thu, 7 Nov 2019 09:47:53 +0100

> Some improvements: 
>  - manage syscfg as optional clock, 
>  - update slew rate of ETH_MDIO pin, 
>  - Enable gating of the MAC TX clock during TX low-power mode
> 
> V4: Update with Andrew Lunn remark

This is mostly ARM DT updates, which tree should this go through?

I don't want to step on toes this time :-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
