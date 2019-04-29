Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77625E5B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrUtrVvUbdj3OmWQaIycaiBOOUMKp01WUbVeJ15fGL4=; b=LsqN6E5GCuTuM7
	ikTGorURGq5pMMm+zdrUps2zr/85GZHHDrHg3p62GsykAgsZd8rlWbHjXF01mChTVTWsFcWdzeaYX
	p7DKZ72E1h7B0twYFzWI0g3dQfHEeo1ovAQrtprcrEiafb6m9YEFodLAiA+M+pU3DBvCFU/ei5G27
	R/rLHh7mWRbSkLFLzyfzxnHQzMWAHm1doPK7zj3ytI45TsF2f3PtP/OpbZFFw/eWd4ojMUIznW6XA
	dJjU/ukAAAGSXM8+KDMVViKxeYej7ErVaHiSTt9K8p24xTNELsG3l6sEM/MJaH36rETDMJzOpTKS/
	/2ws30v2x22pc1o0DUFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7pF-0005wL-UM; Mon, 29 Apr 2019 15:04:13 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7p7-0005vE-Kg; Mon, 29 Apr 2019 15:04:07 +0000
Received: from mailhost.synopsys.com (dc2-mailhost2.synopsys.com
 [10.12.135.162])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 98CE4C002F;
 Mon, 29 Apr 2019 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556550245; bh=EP0l9O+XUelRrIR09obEO6YxvbV7t+C4HdJOJBUa3uI=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=CE28/wGVwxEHboixUzXvBZ7W0piorfaFhmjtBZRhP4xYW+cXCsLqM9ARST+iO2GB1
 2lmPyX06uBcZ32qFp054wZojyhLd/027tG3kH2nsHICGO+Nz3BVKw9vxHmj2uLhv2m
 LquYPNX+IDbVZN9WeMFkIRlaqEptiXCg7U64vya21NE/y4j+mN83Juf+EM/pKOllWc
 ylXLrpNe5cvhyhoYTJCHDF6E09DIbEUQmkgDtYnWQ3womAmskL0pzdFAuhajVFV2cX
 OI4hPVl+aw0bRpWstwOhobMyeGW1eomffJIM22vstnJyp+4SD+STwP2NhlCIoTIL0i
 bs+w9Mp89a9wg==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 94C3FA0096;
 Mon, 29 Apr 2019 15:04:02 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Apr 2019 08:04:02 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Mon, 29 Apr 2019 17:04:00 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>, "davem@davemloft.net"
 <davem@davemloft.net>
Subject: RE: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Topic: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Index: AQHU/lXExFDw5bAlc0G9MPOfQZ0kMKZTPDhg
Date: Mon, 29 Apr 2019 15:03:59 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B46E586@DE02WEMBXB.internal.synopsys.com>
References: <1556519724-1576-1-git-send-email-biao.huang@mediatek.com>
 <1556519724-1576-3-git-send-email-biao.huang@mediatek.com>
In-Reply-To: <1556519724-1576-3-git-send-email-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_080405_682623_422EFFB4 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
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
Date: Mon, Apr 29, 2019 at 07:35:24

> +		value |= priv->hw->mii.cl45_en;

This tells the MAC that a C45 Capable PHY is connected so it should be 
written before anything else. Maybe that explains the need for the 
mdelay() that you have in the code ?

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
