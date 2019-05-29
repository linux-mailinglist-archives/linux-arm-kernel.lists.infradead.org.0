Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D00122DACE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3HhZVENx2XK1Ep1YMjfbcolqZQN/N6p+hXR1QfI8kY=; b=HBdTlBDAIjwI4J
	XVfXDi6AueW6bbplhW5i8wpiucpYRiOmXnosoA4HlHHORgx/gX/NtviR+uEXIFWn99x3OnxtTJanX
	xG5Zoohtbyj5q9xHgmK3SqHPZ4uN53HI7ypIBoXGWH1oJoXIAx8gDj3LhoC2d26Xeux3/2DABz4Wk
	Xa/U04kR7PTp6nuX1D789RUxBuv4YPgYgsXfYeP1wSO/bF9zu2Dl026uWf+Z25EMUV3YeIa5dW0eF
	fg6dUmVq3zWj+vNw9NBHCYwotk5xHDnoajN2YAtxsVcCUQ4gncnuJdiZPWrklhS1vc82cCVGKhEPH
	SLuFgUelECWO4Wxe046g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvrO-0003nX-EC; Wed, 29 May 2019 10:31:06 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvrG-0003n4-Jw; Wed, 29 May 2019 10:30:59 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id ABC78C0B59;
 Wed, 29 May 2019 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1559125866; bh=L/zcOt3uTfx3QhugJlownAMFQSm3dP+6sx2sVmiAnyQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=OfcezbJfSbiSnMClNxogVHod+fr2745De2QQ7yOrncJNWbJ4Kr7y50mxqm6okcCs/
 Si0HOCdbJBNGEzsuQUYrUt4C9vmhQ9K7tdaf1g3GBjpoJ2F/i0IXtouSu0mokP22ry
 sB0FBWiv6mm25LRF6Toev9LeuvfoW1/Kj/SJyUYQ0YUCNVha/M7+cK0FsXJjDrJ5gV
 ArF+B4G5fLTtD6CsqGcK4Z3lDZlw/8YGGL5IS4oKxnM8/xqW+v2AkcA34F2gWMJ45b
 4BeKIsRZdmUNzlOCTqRAHcoWQ6SOgtOJaNEhU3/EAmBdm+eBbWLySxOkGrXS2nozbR
 kpofpnVlRFBSQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 55124A00A3;
 Wed, 29 May 2019 10:30:49 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 29 May 2019 03:30:49 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Wed, 29 May 2019 12:30:47 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>
Subject: RE: [v5, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Topic: [v5, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Index: AQHVFgFMgnlWoV6tbES+hcM7ZfkqbqaB5uaw
Date: Wed, 29 May 2019 10:30:46 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B9334CE@DE02WEMBXB.internal.synopsys.com>
References: <1559122268-22545-1-git-send-email-biao.huang@mediatek.com>
 <1559122268-22545-2-git-send-email-biao.huang@mediatek.com>
In-Reply-To: <1559122268-22545-2-git-send-email-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_033058_664705_8813D3DE 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Date: Wed, May 29, 2019 at 10:31:08

> 1. get hash table size in hw feature reigster, and add support
> for taller hash table(128/256) in dwmac4.
> 2. only clear GMAC_PACKET_FILTER bits used in this function,
> to avoid side effect to functions of other bits.
> 
> stmmac selftests output log:
> 	ethtool -t eth0
> 	The test result is FAIL
> 	The test extra info:
> 	 1. MAC Loopback                 0
> 	 2. PHY Loopback                 -95
> 	 3. MMC Counters                 0
> 	 4. EEE                          -95
> 	 5. Hash Filter MC               0
> 	 6. Perfect Filter UC            0
> 	 7. MC Filter                    0
> 	 8. UC Filter                    0
> 	 9. Flow Control                 1

Thanks for testing, this patch looks good to me.

Do you want to check why Flow Control selftest is failing ?


Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
