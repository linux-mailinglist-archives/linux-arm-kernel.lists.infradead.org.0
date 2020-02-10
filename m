Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B881573D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:06:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXbevZvNfkMsDiSt43McYu0EQ/0j/pOct4wendfKmQg=; b=alETxEZwMvIOnF
	KsAU4ebifsSfXn/UrFfnQ8QocQRnT9Xf9gg1FU7m/JnKmbRNZMi/rPOQmqN3LBjUhwz4zUe6u/LUa
	pjU5xpQM+5xsAEXWU/y8juAKsYnrbvSsoCGXPOoooU8XhoGS320g3hBoRAgWNb7gmsejwFDM541q0
	TJCW8Amzd76S1RG9q8ipIDgtWOqcILC2f5X1WnRAeSe1QpKP7pkvukwdpdmhlX9XlduqWojBJgsRN
	78RkLl4Zd9MsTjpzuZyxxXed7w8UidNSK8VIq4RjCoU74sLYQnBbh1GZNL1lYo+L6E6q+UXKcAWYB
	y+xVP8K3ls3ubw59evrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17pY-00076Z-VP; Mon, 10 Feb 2020 12:06:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17pL-00074s-I6; Mon, 10 Feb 2020 12:06:13 +0000
X-UUID: 3622a2a85df241a4b0aaee53c4b8223b-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=sYoKY2Ak/uSkSw4Bm97gJwImBKKIl01gw2RaEsy53FM=; 
 b=kb3gKJZrjCW/QU1S67/47XGSuE75rkFuod9821Fpb514ooZCzamn1tPY+uziPT9SanAPdy7k/hkOUj1sfTYWctqUTnFevq7Coo1cXQVUlASnVbg+DH/OfKOJV95EQiYFEyD9uiODmQNxSZVnXjvl4Xxya5qN47/K+KG3qLbFGcg=;
X-UUID: 3622a2a85df241a4b0aaee53c4b8223b-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 726922371; Mon, 10 Feb 2020 04:06:05 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 03:58:12 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 19:56:47 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Feb 2020 19:56:44 +0800
Message-ID: <1581335854.16783.1.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
From: Wen Su <Wen.Su@mediatek.com>
To: Mark Brown <broonie@kernel.org>
Date: Mon, 10 Feb 2020 19:57:34 +0800
In-Reply-To: <20200206114927.GN3897@sirena.org.uk>
References: <1580958411-2478-1-git-send-email-Wen.Su@mediatek.com>
 <1580958411-2478-2-git-send-email-Wen.Su@mediatek.com>
 <20200206114927.GN3897@sirena.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040611_609124_D8A52C11 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, 

On Thu, 2020-02-06 at 11:49 +0000, Mark Brown wrote:
> On Thu, Feb 06, 2020 at 11:06:48AM +0800, Wen Su wrote:
> 
> > +Required properties:
> > +- compatible: "mediatek,mt6359-regulator"
> 
> Why does this need a compatible string - it looks like it's just
> encoding the way Linux splits devices up into the DT, not
> providing some reusable IP block.

Thanks for your comments.
I will remove it in the next patch.

> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
