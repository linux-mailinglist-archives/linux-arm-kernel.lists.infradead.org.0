Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0C1E5FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 17:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ejt6ihtJmxOc41uNDy1qW2mziqLDG+kpjC+21hso14Y=; b=VqZilVJbcqHTbC
	e9tFcXAot8GDRxwLPQWmXY4BOMQ0j1YQ22EgrI7OUt1mOZkgCaHO4rzPrSkJ5JCMlTsRDWqQe3P2u
	WHykH6tssiF5UwUs0abiekHtV93tGt1O+2nZrQBh7oSrJ4EXxwphmbIHyGM8jJF4iHuppsAHZBuRc
	Jlc+858tWueIYo8d8i/hxcnpH2/fWetFJAHJMyiPWc+z8+Ti5J+GeE/DK2mmw8vSqVWz4O4Iv1t7v
	W4kb769wKGHco4upMkKNqJ4bquvz8MLhkS+DsScGFyIVSpTHhRh08e7mLLlLUVlh2bxNucxito8hI
	qtidRdnRSrJRCKVtW5qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL84E-0002o0-KK; Mon, 29 Apr 2019 15:19:42 +0000
Received: from dc8-smtprelay2.synopsys.com ([198.182.47.102]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL847-0002nP-Go; Mon, 29 Apr 2019 15:19:36 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id B1458C0081;
 Mon, 29 Apr 2019 15:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556551176; bh=6ca6mfO960XBEcOh39ZiDJip0nWB/IKPMIyykJ70WEY=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ej/ASn9kUF6DpwOz0Kaanp+8KeLtu2R8lijifgir3NVbN079ob8qsK6blxowQ7DM1
 jlTL16Trt+O2a0j9p1gAPt0/UPGwh6ysnVdhDsXVzjJ/2MDXQvuX5eO3bB85vuEpAR
 pQZfpuNveagwTo277SN+Db2E/OBh2g8kpo6N4jZLGWB9VABNt6LMTU++awUyEcrDlY
 w+mD1mrVhSOCKCv/q0xclu+HdiQGokZrQw8jEs4cQuBnDpAXzKB8kSHITx2s1tTpp7
 fXqICT3VEPMb101AeXIQo6OmPO9tCvPC1c7IYG8JEQF1KsaYaZ+oS58ETuUpUsAnpy
 sZmMoA24vKGpQ==
Received: from US01WXQAHTC1.internal.synopsys.com
 (us01wxqahtc1.internal.synopsys.com [10.12.238.230])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 7CED8A006A;
 Mon, 29 Apr 2019 15:19:29 +0000 (UTC)
Received: from DE02WEHTCA.internal.synopsys.com (10.225.19.92) by
 US01WXQAHTC1.internal.synopsys.com (10.12.238.230) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Apr 2019 08:19:28 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCA.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Mon, 29 Apr 2019 17:19:17 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: "Ong, Boon Leong" <boon.leong.ong@intel.com>, Biao Huang
 <biao.huang@mediatek.com>, "davem@davemloft.net" <davem@davemloft.net>,
 Andrew Lunn <andrew@lunn.ch>
Subject: RE: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Topic: [PATCH 2/2] net-next: stmmac: add mdio clause 45 access from
 mac device for dwmac4
Thread-Index: AQHU/lXExFDw5bAlc0G9MPOfQZ0kMKZTHp8AgAAh5QA=
Date: Mon, 29 Apr 2019 15:19:16 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B46E5B4@DE02WEMBXB.internal.synopsys.com>
References: <1556519724-1576-1-git-send-email-biao.huang@mediatek.com>
 <1556519724-1576-3-git-send-email-biao.huang@mediatek.com>
 <AF233D1473C1364ABD51D28909A1B1B75C0C27ED@pgsmsx114.gar.corp.intel.com>
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B75C0C27ED@pgsmsx114.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_081935_562323_59C296E5 
X-CRM114-Status: UNSURE (   7.93  )
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
Cc: "Kweh, Hock Leong" <hock.leong.kweh@intel.com>,
 "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Voon,
 Weifeng" <weifeng.voon@intel.com>,
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

From: Ong, Boon Leong <boon.leong.ong@intel.com>
Date: Mon, Apr 29, 2019 at 16:15:42

> What is the preference of the driver maintainer here?  

Your implementation doesn't need the mdelay() so I think we should follow 
your way once you also address the review comments from Andrew and me.

Maybe you can coordinate with Biao and submit a C45 implementation that 
can be tested by both ?

Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
