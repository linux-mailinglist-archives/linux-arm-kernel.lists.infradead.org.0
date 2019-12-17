Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 933081238D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 22:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFztlSMrdmvGgjFnVfUW0UN4UpwQTtccwCI8HMRkPXE=; b=twlm+3oeAhQD2u
	BnwCnUOESJ8FQcnJgzVlmVceW0GPpdDVFEvRZouwYoXCTPP/wXSpW6ym7U/evcKQJC/BSHI3bGZVg
	hx+8JEnD9DE/mreHEXLFmsjCeQD9F1z95v1RqJVxeg6QL+IUMsqkE3R/3DKug8WbMtvAXy4mbYjkp
	uCQ0XPE4nQVYldpQNYifXFluEZKcID3L6jZKNSCIWEivDIcpt1n0veCrsJwFbGD0uKD6sE/jXQIM2
	+P31W7+A1VQJF4n357nSqpu+ZtRg12hgq2D09EP5/BXMFOf64u4c6uYPzuMjDH2YMri+i2omalK9G
	XL0Jj9DJDoxN2C+/G7Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihKiN-0006Tl-4X; Tue, 17 Dec 2019 21:49:11 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihKiE-0006T8-85; Tue, 17 Dec 2019 21:49:05 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 42C0114649686;
 Tue, 17 Dec 2019 13:48:56 -0800 (PST)
Date: Tue, 17 Dec 2019 13:48:55 -0800 (PST)
Message-Id: <20191217.134855.76154724010022162.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [v2, PATCH 0/2] net-next: stmmac: dwmac-mediatek: add more
 support for RMII
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191216053958.26130-1-biao.huang@mediatek.com>
References: <20191216053958.26130-1-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 17 Dec 2019 13:48:56 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_134902_288815_8E02D5F7 
X-CRM114-Status: UNSURE (   7.02  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, yt.shen@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Mon, 16 Dec 2019 13:39:56 +0800

> changes in v2:
>  PATCH 1/2 net-next: stmmac: mediatek: add more support for RMII
>         As Andrew's comments, add the "rmii_internal" clock to the list of clocks.
> 
>  PATCH 2/2 net-next: dt-binding: dwmac-mediatek: add more description for RMII
>         document the "rmii_internal" clock in dt-bindings
>         rewrite the sample dts in dt-bindings.
> 
> v1:
> This series is for support RMII when MT2712 SoC provides the reference clock.

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
