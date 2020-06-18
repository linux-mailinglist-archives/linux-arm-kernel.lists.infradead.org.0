Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812481FF904
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONwBD6LA+npb5xGtKqeSiSC6DUYxsEhJQ6hsuXR49sA=; b=pa9SqsSocvKUz3
	DH8ck9zHsYpOidVvvDV4KdMOffI8aNpVW65GNXg5b8j4J7+wBBNgUa1PEBjk8TLhrMmkYU2cHfzVL
	T5BX1za0PA8FLKmIBkxa84ETbFNG4Llzr1P0d+WIFxrMXnvqkvG28nrrEgr+3Yv5xQNzSX20dGYMS
	QAbYlcMXmH96qwAc5Go79myVS73OSK3gELuhPZm8HlSeusir5eHjoFWfbvnauJCKD1mxdb6l8gtK2
	UxqDv3FKqcvq9NMXoo7If+T+hs2NZmz9RU++u67oSLnadDctdaZYlpLCVETSSpPs6a/OwI1OHx5Qc
	yQOBB8kvssmtZ8JbaB3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlxE5-0007St-JR; Thu, 18 Jun 2020 16:17:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlxDx-0007S6-7v; Thu, 18 Jun 2020 16:17:10 +0000
X-UUID: a84adcdcd00f47e3b9563b89e6615b83-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Iw5MdckpEx2wQHfZxi4v7hZqKr+61I5sVoMJrktXj5o=; 
 b=tDcZvIQhLEnEvjxHAC9mX7MyH6/x23QUaGzFMqfZ1bXIsFRxYiExxRGUKQJBDkqZUjRcfLgBpyfu/K+OSZq0wv9psDK9EZ4+L0XX1OnIRzWal5fxF96dX1XOvtqqe+YMY2/C39RWxpA3XnQGnrmw/Rvts3uAaMHXnr+EK/ZfdPM=;
X-UUID: a84adcdcd00f47e3b9563b89e6615b83-20200618
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1439357229; Thu, 18 Jun 2020 08:16:49 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 09:17:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 00:16:52 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 19 Jun 2020 00:16:51 +0800
Message-ID: <1592497015.10773.21.camel@mtkswgap22>
Subject: Re: [PATCH v6 6/7] clk: mediatek: add UART0 clock support
From: Hanks Chen <hanks.chen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Fri, 19 Jun 2020 00:16:55 +0800
In-Reply-To: <a61ed70c-a360-f3af-e215-6377ea25a6ab@gmail.com>
References: <1592480018-3340-1-git-send-email-hanks.chen@mediatek.com>
 <1592480018-3340-7-git-send-email-hanks.chen@mediatek.com>
 <a61ed70c-a360-f3af-e215-6377ea25a6ab@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: BF32A141C01CA4CBE6F5B3E0BD896765BF1D1AEE3E31B59103E3586B8D6FC1572000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091709_289205_BB28C229 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Stephen
 Boyd <sboyd@kernel.org>, Andy Teng <andy.teng@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-18 at 17:51 +0200, Matthias Brugger wrote:
> 
> On 18/06/2020 13:33, Hanks Chen wrote:
> > Add MT6779 UART0 clock support.
> > 
> 
> Please a dd fixes tag:
> 
> Fixes: 710774e04861 ("clk: mediatek: Add MT6779 clock support")

Got it, I'll add it in next version.

> 
> > Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
> > Signed-off-by: mtk01761 <wendell.lin@mediatek.com>
> 
> Must be a real name not "mtk01761"

Oops, I'll update his name. 

Thank you for your comment.

> 
> > ---
> >  drivers/clk/mediatek/clk-mt6779.c |    2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/clk/mediatek/clk-mt6779.c b/drivers/clk/mediatek/clk-mt6779.c
> > index 9766ccc..6e0d3a1 100644
> > --- a/drivers/clk/mediatek/clk-mt6779.c
> > +++ b/drivers/clk/mediatek/clk-mt6779.c
> > @@ -919,6 +919,8 @@
> >  		    "pwm_sel", 19),
> >  	GATE_INFRA0(CLK_INFRA_PWM, "infra_pwm",
> >  		    "pwm_sel", 21),
> > +	GATE_INFRA0(CLK_INFRA_UART0, "infra_uart0",
> > +		    "uart_sel", 22),
> >  	GATE_INFRA0(CLK_INFRA_UART1, "infra_uart1",
> >  		    "uart_sel", 23),
> >  	GATE_INFRA0(CLK_INFRA_UART2, "infra_uart2",
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
