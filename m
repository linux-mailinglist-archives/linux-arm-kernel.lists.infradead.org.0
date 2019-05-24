Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A882948F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/Aq8II78r5Z8Nn0s9N36ht6Jgj7/RTKDSZsDNW5ttA=; b=fZAXlCrL7AzCaX
	hllUmQGq0SAGobP5XQG+jOi55nyGLHTWj8O2rFoXhyNb1qDHy+kXGm/uR2hNAzRrs+0CrdrWlTcQI
	dTYhN77pKbLAvKogZM5fryPO6aCt1YrsSi6K7E6Q1HHdvegvoSwwIzWzoGXtNqRBypq5i6xCccqt+
	Gk8fehAWQGoAl7sbIh/WUzDJr+o7R7e256f+Tfcpwx5dU9kLIrXKns4F5andk3Bhr+wTYoCb6IVzC
	6EyFHWsSYWp+nKkrLEdtobQq6b0jYhSXco+Jf576mGETO+VJhAEH13DMQ+G1Rs0DuwhuHF1V+gLAY
	tSBbiaafZim0PqQAuKLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6RR-0006Xa-9E; Fri, 24 May 2019 09:24:45 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6RK-0006WU-RC; Fri, 24 May 2019 09:24:40 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 667C4C0137;
 Fri, 24 May 2019 09:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1558689862; bh=AVU6oZcHCROGnmkLrcWIelylachVoYTTTsYDpq5qRGE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=D6N1xI62ExfnhyeopDP2KepGh9+jcTsoEdBgNxKAB8EyL2fnL9XREOHFmEEC3hEsi
 +sV5eTIn2eDF0X+zGLIclMhVbRmsCn1mnXSf8b6YXmO+JCj257l1HAgFEsprkN4IBi
 vaW9W8eRRXX+nnYrR92XoZ1bY6GQaFnMeybI/KjollFkG5VPauhnhwClD/xulaMaUJ
 mW55DXwY3yipCq7jOQRVF9ySTeXKTPNqceFkFoWHyrAVq6/Kky44Bhc3rbPQ5X0znp
 yZC8zLePl0nck3VrGBfDDtBFePDEP5Xy2yj/Mg+RJWCkK2qYWId9+WkoKX1J3JhSKy
 mKwbWs8/Mpt7g==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 5716EA0070;
 Fri, 24 May 2019 09:24:34 +0000 (UTC)
Received: from DE02WEHTCB.internal.synopsys.com (10.225.19.94) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 24 May 2019 02:24:33 -0700
Received: from DE02WEMBXB.internal.synopsys.com ([fe80::95ce:118a:8321:a099])
 by DE02WEHTCB.internal.synopsys.com ([::1]) with mapi id
 14.03.0415.000; Fri, 24 May 2019 11:24:31 +0200
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: biao huang <biao.huang@mediatek.com>, Jose Abreu <Jose.Abreu@synopsys.com>
Subject: RE: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Topic: [v2, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
Thread-Index: AQHVCgFP5uFdcKuEVU64Pxj/Ha7yEaZ5v7KAgABABhD//+D6AIAAL/0w
Date: Fri, 24 May 2019 09:24:31 +0000
Message-ID: <78EB27739596EE489E55E81C33FEC33A0B92D26F@DE02WEMBXB.internal.synopsys.com>
References: <1557802843-31718-1-git-send-email-biao.huang@mediatek.com>
 <1557802843-31718-2-git-send-email-biao.huang@mediatek.com>
 <1558679617.24897.43.camel@mhfsdcap03>
 <78EB27739596EE489E55E81C33FEC33A0B92CDA0@DE02WEMBXB.internal.synopsys.com>
 <1558686704.24897.45.camel@mhfsdcap03>
In-Reply-To: <1558686704.24897.45.camel@mhfsdcap03>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.19.176]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_022438_892288_4937F606 
X-CRM114-Status: GOOD (  13.46  )
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
Date: Fri, May 24, 2019 at 09:31:44

> On Fri, 2019-05-24 at 08:24 +0000, Jose Abreu wrote:
> > From: biao huang <biao.huang@mediatek.com>
> > Date: Fri, May 24, 2019 at 07:33:37
> > 
> > > any comments about this patch?
> > 
> > Can you please test your series on top of this one [1] and let me know 
> > the output of :
> > # ethtool -t eth0
> "ethtol -T eth0"? This patch only affect hash table filter, seems no
> relation to timestamp.
> > 
> > Just to make sure that this patch does not introduce any regressions. The 
> > remaining ones of the series look fine by me!
> > 
> > [1] 
> which one? Did I miss anything here?

Sorry, my mail client tried to wrap the long link and ended up in a 
loooong email.

[1] https://patchwork.ozlabs.org/project/netdev/list/?series=109699

Thanks,
Jose Miguel Abreu
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
