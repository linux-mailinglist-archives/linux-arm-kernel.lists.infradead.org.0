Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981AB2D68C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1pmQG6LDTRnrHl7za1qCtq32MwCTd3yemK5cFTL6I4=; b=PrZUKxkTe0TLaK
	5m3GQhTbJbBZqBJOCWwhtfORsCKqrD5KUyWz+u/cyjzoA7IDug1sQXt5SXqqYFOsIrJjYLWg2W7wh
	N0+z2qeJkevmUyPUm+Z/3txOZggrTTCHfboUYmrELMEYSClB7TFSo9J90PQ06k+oUtGussNXTqTUm
	Dq3Ru5S2nDngvDtjyJss2bhBc21iSRhcSP5dGPDqM/w+4ap6i3uLUKe26ZCJebSw7WpuguTZqB1xF
	I9xu1jojfaVn3Bu58qaf0GJKPkHILm6IXZ6zmeKbWDLira3DrL6HiBj6k8nXi5kalIxpyzlvDCqQ3
	cFiEw2+UBhBobsUo+ZBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtC2-0004pc-UV; Wed, 29 May 2019 07:40:14 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtBw-0003dZ-46; Wed, 29 May 2019 07:40:09 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 305D0C263A;
 Wed, 29 May 2019 07:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559115584; bh=u0bHvq09qbXFfPIAKp6YPrwchkqDTwxdAG0Y1BAOgdk=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lkJyzDP25Iq5Bo1MkV7iN3kRiuFWrghtGGqU3Xu15XD6DGkmrZI7mPOucZQPcX281
 /3XhmhGqVJEOtctZctfG9bKvjGYFF3JZjyaURA28P+YVo1r5hEcZxhm571aN26dbrd
 qw+1xHh8xk+/Iz64V1t+Iqj+fdW8AWDQq/LMlpn3o6r89wsXuo9eCrZATweQ3EaPEH
 pPKdptPsTFlx/0EnN3fG/Fx9g6hG67rKjHFhuoM7Q7IvrV6VpTRqJidrxwHCvLZalE
 QWryRDqmQIzyaAghUme5LnU+WnwIYs4PyNZzjjHS0CIH7Lnr1C5DoRQ9cTFghvDj+M
 RQLMD2AF8w2DQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 74DCBA0070;
 Wed, 29 May 2019 07:39:52 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 29 May 2019 00:39:51 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Wed, 29 May 2019 09:39:49 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>
Subject: RE: [v4, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Topic: [v4, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Index: AQHVFb9bD/NyYV8x/ESH/6Rc+9wGiKaBtu5A
Date: Wed, 29 May 2019 07:39:49 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B932F51@DE02WEMBXB.internal.synopsys.com>
References: <1559093924-7791-1-git-send-email-biao.huang@mediatek.com>
 <1559093924-7791-2-git-send-email-biao.huang@mediatek.com>
In-Reply-To: <1559093924-7791-2-git-send-email-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_004008_171381_01A22A02 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

From: Biao Huang <biao.huang@mediatek.com>
Date: Wed, May 29, 2019 at 02:38:44

>  	} else if (!netdev_mc_empty(dev)) {
> -		u32 mc_filter[2];
> +		u32 mc_filter[8];
>  		struct netdev_hw_addr *ha;

The reverse christmas tree also applies here.

I also see some coding-style errors, like missing line breaks, etc... 
that checkpatch should complain about.

Also, please run this patch against stmmac selftests and add the output 
to the commit log.

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
