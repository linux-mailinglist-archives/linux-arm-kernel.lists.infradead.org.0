Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B4F1C110
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 05:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DN513gD7TkkRtrhV0HSl4qLIwjHp5KtBnu2vfH0B+8M=; b=XRcyYsQfqXN4Jw
	6NPYAoaSXXkYh2KRODf4zhmWg8jG/JF8eUcfn1DruGZxNqhFQa+MgFIKEfH7vb+FYl0PfUpJhRw/k
	ES+sCAYDj8gFxPGavOC7m9WphyGDvUto6YGisBfZNj7lbzrsOPtICaPYocAg5hVkUcg7YmlQP1seh
	YN6M+IFMOId7XR+jWGylTtgs2hM3GqM6RXYD8W8Li4CAhk4pXofqlqKCpqzB4w1qGDmfR2afSI+vG
	cNbDnb7wTo1qCsl/YSCOKxyxf11y2RMACBZu6emsD0cMNaqJKbtRwesxcR7JdMSKPrAs21rRUL6T4
	CxE/9DnltxnqLNcEiq+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQOHW-0001vZ-RT; Tue, 14 May 2019 03:39:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQOHO-0001uf-Bm; Tue, 14 May 2019 03:39:03 +0000
X-UUID: 7fcf8af0172f4ec9b658fa80ce779c60-20190513
X-UUID: 7fcf8af0172f4ec9b658fa80ce779c60-20190513
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1297938363; Mon, 13 May 2019 19:38:56 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 20:38:54 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 May 2019 11:38:52 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 May 2019 11:38:51 +0800
Message-ID: <1557805131.24897.41.camel@mhfsdcap03>
Subject: Re: [v2, PATCH 0/4] fix some bugs in stmmac
From: biao huang <biao.huang@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Tue, 14 May 2019 11:38:51 +0800
In-Reply-To: <20190514030016.GA19642@lunn.ch>
References: <1557800933-30759-1-git-send-email-biao.huang@mediatek.com>
 <20190514030016.GA19642@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_203902_403497_01A07AEA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 yt.shen@mediatek.com, Jose Abreu <joabreu@synopsys.com>,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, jianguo.zhang@mediatek.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,
	Add a Fixes:tag in series v3, please review.

On Tue, 2019-05-14 at 05:00 +0200, Andrew Lunn wrote:
> On Tue, May 14, 2019 at 10:28:49AM +0800, Biao Huang wrote:
> > changes in v2:                                                                  
> >         1. update rx_tail_addr as Jose's comment                                
> >         2. changes clk_csr condition as Alex's proposition                      
> >         3. remove init lines in dwmac-mediatek, get clk_csr from dts instead.   
> 
> Hi Biao
> 
> Since these are fixes, could you provide a Fixes: tag for each one?
> 
> Thanks
> 	Andrew



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
