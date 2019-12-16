Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA45311FE36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 06:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RgD6OuakcSNKMICvFPGT6zkqjmBz8gwdWcDeZK9sqsk=; b=LuIDH9Or1Hurbm
	PmmgXmq9zSlszkyk0BI4UqIpdwfTWXphppUVwTwX++8qBsCq5A5oHXqUIMqiZwXSGazvETPSL5Yf9
	55WO/kWFbjXdycwewCQLPxMg/8s5pWVbsEoQX+t/IiOQyjvab6RdEnsZWW1rqT4AR3YVwsLZ1WYJa
	x/YdSbjfIDAob1zbCli+wPrmqyPyfWWsMXu6pfy31Y8m/4OQrtSkslpgUkejOP081UZfU3ibQMiTs
	hzVjCsvwJ+8UcPRUMqcREycbTCURYkuBYHGMAvqL+JBKvopR/8K+70IKQrChgE60NEb7MTQZbSw8Q
	DVenDFaoz9bx+Vyo/s4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igjH0-000576-P7; Mon, 16 Dec 2019 05:50:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igjGn-0004zw-M0; Mon, 16 Dec 2019 05:50:15 +0000
X-UUID: 47ec2113c04f45158b4967e781310ea2-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=bU3pTXiHaPfq2d8vyXK1ujCYPstVOHhLasLwvoHqrcE=; 
 b=nkv2ntN8VistPbylqExhZlw7vsjNtN/CgW6jN2uyUTgOCNI7jJAiydem1cJP0uvLrkmoQ1lojVVp9hS/Vnlz/ygEN0Xj2BdDAd4N4PCqVUsUMmAFRGMgk+74IdKu1J6uVlP99q36EGxYD9dB3J6zhYmsvwUXmT4WECQNeUWWBbA=;
X-UUID: 47ec2113c04f45158b4967e781310ea2-20191215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1284749354; Sun, 15 Dec 2019 21:50:09 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 21:41:16 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 13:40:28 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Dec 2019 13:39:20 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>
Subject: [v2, PATCH 0/2] net-next: stmmac: dwmac-mediatek: add more support for
 RMII
Date: Mon, 16 Dec 2019 13:39:56 +0800
Message-ID: <20191216053958.26130-1-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_215013_726489_B5ED2223 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Biao Huang <biao.huang@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, yt.shen@mediatek.com, Jose
 Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

changes in v2:
 PATCH 1/2 net-next: stmmac: mediatek: add more support for RMII
        As Andrew's comments, add the "rmii_internal" clock to the list of clocks.

 PATCH 2/2 net-next: dt-binding: dwmac-mediatek: add more description for RMII
        document the "rmii_internal" clock in dt-bindings
        rewrite the sample dts in dt-bindings.

v1:
This series is for support RMII when MT2712 SoC provides the reference clock.

Biao Huang (2):
  net-next: stmmac: mediatek: add more support for RMII
  net-next: dt-binding: dwmac-mediatek: add more description for RMII

 .../bindings/net/mediatek-dwmac.txt           | 33 ++++---
 .../ethernet/stmicro/stmmac/dwmac-mediatek.c  | 89 +++++++++++++------
 2 files changed, 83 insertions(+), 39 deletions(-)

--
2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
