Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA842ED1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:32:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L1MMfQuc/B/1pG+HiRm5tsfpbjcVbT9SM4ybS93DDoU=; b=opxT+lRy2r/oUi
	2EPNcP5fVd9k3cTctyai2yXWp+nee+MFPy7a1I++HWAh1lPOz//fR+jV0UTbGuLrBmHuvmH1MRa5b
	JCfmzuhWS5QadQ0JfwmF4m+gA0P4N27Z3xC0k4rrK7IT/EdFmD4IckX02luvQf3ttbCuEB40O9q5X
	yM20QRCWOQ/pMZ7+wdrWAaVqXag6Crfdl6oKR/pPZan2i4SjDzmonQPlGEI7Hr+tcisK5tlVN4BM7
	JKIjjBNxh8Dq726pcbxNcnI6EjtAw4riQB0WAge8D3cysiWyCaNFCnVFeUwprjlrXaKjWWN+Z8Epb
	RiUf0HY2sLrrOwEK1Qcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBnQ-00015c-UR; Thu, 30 May 2019 03:32:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBnJ-00014n-Ag; Thu, 30 May 2019 03:31:59 +0000
X-UUID: a657132796104de48a304b11d8799b2c-20190529
X-UUID: a657132796104de48a304b11d8799b2c-20190529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 966002473; Wed, 29 May 2019 19:31:45 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 May 2019 20:31:44 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 30 May 2019 11:31:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 11:31:40 +0800
Message-ID: <1559187100.24897.81.camel@mhfsdcap03>
Subject: RE: [v5, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Thu, 30 May 2019 11:31:40 +0800
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B9334CE@DE02WEMBXB.internal.synopsys.com>
References: <1559122268-22545-1-git-send-email-biao.huang@mediatek.com>
 <1559122268-22545-2-git-send-email-biao.huang@mediatek.com>
 <78EB27739596EE489E55E81C33FEC33A0B9334CE@DE02WEMBXB.internal.synopsys.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_203157_374436_EB1B0E37 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.8 FUZZY_XPILL            BODY: Attempt to obfuscate words in spam
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yt.shen@mediatek.com" <yt.shen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose,
	I also try "ethtool -A eth0 tx on rx on", and selftests pass.

	But there are bugs in dwmac4_flow_ctrl:
		flow control will keep on once enabled. 
		ethtool -A eth0 tx off rx off can't change it.

	if (fc & FLOW_RX)  {
		pr_debug ...
		flow |= GMAC_RX_FLOW_CTRL_RFE;
		writel(flow, ioaddr + GMAC_RX_FLOW_CTRL);
		>> this should move outside to enasure rx flow control will be off
when execute "ethtool -A eth0 rx off"
	} 

	same for tx.

On Wed, 2019-05-29 at 10:30 +0000, Jose Abreu wrote:
> From: Biao Huang <biao.huang@mediatek.com>
> Date: Wed, May 29, 2019 at 10:31:08
> 
> > 1. get hash table size in hw feature reigster, and add support
> > for taller hash table(128/256) in dwmac4.
> > 2. only clear GMAC_PACKET_FILTER bits used in this function,
> > to avoid side effect to functions of other bits.
> > 
> > stmmac selftests output log:
> > 	ethtool -t eth0
> > 	The test result is FAIL
> > 	The test extra info:
> > 	 1. MAC Loopback                 0
> > 	 2. PHY Loopback                 -95
> > 	 3. MMC Counters                 0
> > 	 4. EEE                          -95
> > 	 5. Hash Filter MC               0
> > 	 6. Perfect Filter UC            0
> > 	 7. MC Filter                    0
> > 	 8. UC Filter                    0
> > 	 9. Flow Control                 1
> 
> Thanks for testing, this patch looks good to me.
> 
> Do you want to check why Flow Control selftest is failing ?
> 
> 
> Thanks,
> Jose Miguel Abreu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
