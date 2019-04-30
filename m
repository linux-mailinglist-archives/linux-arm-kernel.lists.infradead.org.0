Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E1BF25A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 10:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g05r0nEpO+lS7g1my3W5ZRdSOcXxrDnvnVT2np144yM=; b=M7JFGVPqZKTK5M
	4+zGx+jIMYBIbIiFUHhxx97SRFtkDPYOkz809nBQfhK7eqUKZ9cInW1k5Kba0FsVpMVThoHTc2mQ9
	WVQqBz0tF2In74UcR0/lfkbXOSBST0UHevFqiGePRS0gtUu4DAPye+lHKAxMQXq6gjeAQ5UufCcot
	ErMWdTcfkJvIMNmYlNIZcw/+7T2beo+FJVEkgR9BuiIv9hzdI3/BdVOUxCiFEyrkjiBda4zvmxiqD
	lhZmo+Ii3TAq1k8pzfFqLYNuzuRdsJWp1qhbsjN0l6PhW5ZRdBlW7Of3fdmSCYsSxzZsv47XIqC0v
	bEUGiaq9j1+9HGRo4Vrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLObP-0003zk-8c; Tue, 30 Apr 2019 08:59:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLObH-0003zI-Ek; Tue, 30 Apr 2019 08:58:56 +0000
X-UUID: b286d404a1204637964ee27d7feb3a9b-20190430
X-UUID: b286d404a1204637964ee27d7feb3a9b-20190430
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 879678979; Tue, 30 Apr 2019 00:58:47 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 01:58:46 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 30 Apr 2019 16:58:44 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 16:58:43 +0800
Message-ID: <1556614723.24897.33.camel@mhfsdcap03>
Subject: RE: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
From: biao huang <biao.huang@mediatek.com>
To: "Ong, Boon Leong" <boon.leong.ong@intel.com>
Date: Tue, 30 Apr 2019 16:58:43 +0800
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B75C0C2849@pgsmsx114.gar.corp.intel.com>
References: <1556519724-1576-1-git-send-email-biao.huang@mediatek.com>
 <1556519724-1576-3-git-send-email-biao.huang@mediatek.com>
 <AF233D1473C1364ABD51D28909A1B1B75C0C27ED@pgsmsx114.gar.corp.intel.com>
 <78EB27739596EE489E55E81C33FEC33A0B46E5B4@DE02WEMBXB.internal.synopsys.com>
 <AF233D1473C1364ABD51D28909A1B1B75C0C2849@pgsmsx114.gar.corp.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_015855_498473_F5AE464B 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Andrew Lunn <andrew@lunn.ch>,
 "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>, "Kweh,
 Hock Leong" <hock.leong.kweh@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "yt.shen@mediatek.com" <yt.shen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-04-29 at 15:23 +0000, Ong, Boon Leong wrote:
> >> What is the preference of the driver maintainer here?
> >
> >Your implementation doesn't need the mdelay() so I think we should follow
> >your way once you also address the review comments from Andrew and me.
> >
> >Maybe you can coordinate with Biao and submit a C45 implementation that
> >can be tested by both ?
> 
> Ok. We will address the review comments for that patch-series and resend the
> v3 patch-series soonest and for Biao to test. 
>  
I'll test it when your patch is ready. Please cc me, thanks.
> Thanks



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
