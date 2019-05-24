Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E962950D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTJdcjO7grdGODmrrIrB0K9laflxNz3MPK0Wob7b7VQ=; b=HJx9F7dJChmBRz
	pYDgvY79GIdxBKXJ3Y3HDUgmwuQCxAkpmKlmSLZxLFCeA5YeQtzO7rBNhOSG/aEIdCBsqCZ5ACE7c
	PUzL1m6mAMinFF50TbWbA37kFBeLlTHluuoR8p/YAQAQ9OVvSUkKbqjsHcqwvowfThk4g8YDL34G2
	28sXy9fmevCBQH97s0QU4OeuE+lHnSCisJ8IysmmjSR+Dwdc9hrDafSMQ58zAytbqjkl3kdBGy204
	l8rejwLZKJEpyv4abOI+OLND3M+MhecvPQ1osacBhxoccxycw4NhNdRNt6z6Nm1cK2cX4SXKaZEqd
	9i26B5c5g4J06kkzMPzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6lS-0008Ka-5N; Fri, 24 May 2019 09:45:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6lJ-0008KB-4K; Fri, 24 May 2019 09:45:18 +0000
X-UUID: 733b3f8b97bf435da15cdca3d6871d0b-20190524
X-UUID: 733b3f8b97bf435da15cdca3d6871d0b-20190524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1136133013; Fri, 24 May 2019 01:45:02 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 02:45:00 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n2.mediatek.inc
 (172.21.101.79) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 24 May 2019 17:44:46 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 17:44:44 +0800
Message-ID: <1558691084.24897.51.camel@mhfsdcap03>
Subject: RE: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Fri, 24 May 2019 17:44:44 +0800
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B92D26F@DE02WEMBXB.internal.synopsys.com>
References: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
 <78EB27739596EE489E55E81C33FEC33A0B92D26F@DE02WEMBXB.internal.synopsys.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 238D8347CAB595BF80BC7F148B95AD8BE5BE1F4F748A6570F199B0DC4BF2A9D82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_024517_179819_0CEEE9B1 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 "jianguo.zhang@mediatek.comi" <jianguo.zhang@mediatek.comi>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "yt.shen@mediatek.com" <yt.shen@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Seems I should modify this patch base on
"https://patchwork.ozlabs.org/project/netdev/list/?series=109699"

On Fri, 2019-05-24 at 09:24 +0000, Jose Abreu wrote:
> From: biao huang <biao.huang@mediatek.com>
> Date: Fri, May 24, 2019 at 09:31:44
> 
> > On Fri, 2019-05-24 at 08:24 +0000, Jose Abreu wrote:
> > > From: biao huang <biao.huang@mediatek.com>
> > > Date: Fri, May 24, 2019 at 07:33:37
> > > 
> > > > any comments about this patch?
> > > 
> > > Can you please test your series on top of this one [1] and let me know 
> > > the output of :
> > > # ethtool -t eth0
> > "ethtol -T eth0"? This patch only affect hash table filter, seems no
> > relation to timestamp.
> > > 
execute "ethtool -t eth0", then we got "Cannot test: Operation not
supported", is there any config should be enabled?
> > > Just to make sure that this patch does not introduce any regressions. The 
> > > remaining ones of the series look fine by me!
> > > 
> > > [1] 
> > which one? Did I miss anything here?
> 
> Sorry, my mail client tried to wrap the long link and ended up in a 
> loooong email.
> 
> [1] https://patchwork.ozlabs.org/project/netdev/list/?series=109699
> 
Got it.
> Thanks,
> Jose Miguel Abreu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
