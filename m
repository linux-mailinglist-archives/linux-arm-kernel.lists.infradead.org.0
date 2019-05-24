Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E9929304
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=to/MDGjSo2ogSO24ZSyDmVx0P37Ze++IZI+Zju+UjUk=; b=bEf6txp2zd4H8x
	1xztCIp8YrF8ew0li3KiIE2NAcv5K/eP5ddM5SWzHosQhVXbMpKcMuJqEUrOYOHZiNVGkDPPNqNiD
	X62Mxr3W30eYVu6j31CKAtoK7c1zg74sqVQxvjKKSCV4k38mI8Zj55IIqz/3I9Zc3Iq8kE6VwLThU
	gbEGmhTdLnRquajyUFcW+OZTy70oolhwc05vveS5eu4VcOtAkgISJ8FIl4+MzjOccpqQm9TRhTKKP
	J3g16Ux0OGGL/CMEH3DJ6QiweUSs7FprKrAOiujUE4vuZlkBo7DK8Rg8Mh1HOiopWQHrcOVAtt2hV
	1YJ6xcWkL4B/p7hVTt9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU5VI-0006Zi-7L; Fri, 24 May 2019 08:24:40 +0000
Received: from smtprelay-out1.synopsys.com ([198.182.61.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU5VA-0006Yn-J2; Fri, 24 May 2019 08:24:34 +0000
Received: from mailhost.synopsys.com (dc8-mailhost1.synopsys.com
 [10.13.135.209])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id F36FDC0131;
 Fri, 24 May 2019 08:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558686257; bh=2d5krVqE1IwKQPL77HYD2SfvzObastRzptHMse61g4U=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=lm577U5VAIjKEPVxfUSdVuAFH8prU8fFxXAtoQ2E1Dm3/AiVFlXQRUH++PL5Wf5jI
 N+bfLEcAmg/hzWqPJPryP/GnshlqN2IwgjLkxc54Yt3ylZtEcTu7X7wG0/PeXR4JFT
 1D1tT50hBt3R9DOYf8KOWV6BaoNnCI2XW8K3xqApYXCC9YANRo0TziDXH2S7l3S6pw
 9ZWgtNbnGFc0U7TzGLW4BvXjgrWrxs3LWfHIT6rtWeh+WtZ8C2au7VDrYa/9DMbmlu
 4nbFdDy1P/ks4ttRJLy0NRTPIN/0v8F5wTEhbIuH3HRu0wcA/iJ467t/UHMnLVuLv2
 trTS1G2URXoSg==
Received: from US01WEHTC2.internal.synopsys.com
 (us01wehtc2.internal.synopsys.com [10.12.239.237])
 (using TLSv1.2 with cipher AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 508BFA005D;
 Fri, 24 May 2019 08:24:29 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 May 2019 01:24:29 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Fri, 24 May 2019 10:24:27 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: biao huang <biao.huang@mediatek.com>
Subject: RE: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Topic: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Index: AQHVCgFP5uFdcKuEVU64Pxj/Ha7yEaZ5v7KAgABABhA=
Date: Fri, 24 May 2019 08:24:26 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B92CDA0@DE02WEMBXB.internal.synopsys.com>
References: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
 <1557802843-31718-2-git-send-email-biao.huang@mediatek.com>
 <1558679617.24897.43.camel@mhfsdcap03>
In-Reply-To: <1558679617.24897.43.camel@mhfsdcap03>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_012432_632305_26E94F00 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: biao huang <biao.huang@mediatek.com>
Date: Fri, May 24, 2019 at 07:33:37

> any comments about this patch?

Can you please test your series on top of this one [1] and let me know 
the output of :
# ethtool -t eth0

Just to make sure that this patch does not introduce any regressions. The 
remaining ones of the series look fine by me!

[1] 







































































































































































https://patchwork.ozlabs.org/project/netdev/list/?series=109699

Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
