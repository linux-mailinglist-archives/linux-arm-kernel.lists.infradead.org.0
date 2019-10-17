Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C22DA82E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:21:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cUulIhr0KofhvMVtZEp4xYo0P0kIeysUlCfcaZfQV3Q=; b=iy1yjDwCpDciUd
	1rCYVJ078zRVtnz2A5cRBF24ewd+Yt/R7eJxpF0YS5c9TM06dTAv8HLDlBbFSr6mCjRqT0s95LbWq
	DicKEGro6VYOOBHxGszT0Om5U5ZHZE7FCnxAMAYcb3P/hm3+/zndigc5x+adxgqDRWyzTQ9d+CxCm
	vC0+ouHw004QZmF2LBaEMN2PWfVxaKK683ELmgsgwtLPwY2dv5jp1D0qB+5wTqNnkBZuSCb60NTbX
	tD7moo6Fn7BoXXAUZligiXkvsGK7UFD3ax8OXyS8pAi11mUPX1d+Q/LM7nWdyiiy+U9N3tyvs1++i
	jJ6dc9OSI4funnxmJgGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1yB-00080S-Ig; Thu, 17 Oct 2019 09:21:19 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1y0-0007zw-IH
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 09:21:09 +0000
Received: from DGGEMM406-HUB.china.huawei.com (unknown [172.30.72.55])
 by Forcepoint Email with ESMTP id 3EA592D8AD9CA59F8AAD;
 Thu, 17 Oct 2019 17:21:07 +0800 (CST)
Received: from DGGEMM423-HUB.china.huawei.com (10.1.198.40) by
 DGGEMM406-HUB.china.huawei.com (10.3.20.214) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 17 Oct 2019 17:21:06 +0800
Received: from DGGEMM527-MBX.china.huawei.com ([169.254.6.34]) by
 dggemm423-hub.china.huawei.com ([10.1.198.40]) with mapi id 14.03.0439.000;
 Thu, 17 Oct 2019 17:21:01 +0800
From: huangdaode <huangdaode@hisilicon.com>
To: Marc Zyngier <maz@kernel.org>
Subject: =?gb2312?B?s7e72DogW1BBVENIXSB1c2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291?=
 =?gb2312?Q?rce()_for_irqchip_drivers?=
Thread-Topic: [PATCH] use devm_platform_ioremap_resource() for irqchip drivers
Thread-Index: AdWEzDCnTEOo/fABek625E0pBMISbQ==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 17 Oct 2019 09:21:00 +0000
Message-ID: <E20AE017F0DBA04DA661272787510F9813D297BF@DGGEMM527-MBX.china.huawei.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.61.13.197]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_022108_764327_03BA6C19 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "nm@ti.com" <nm@ti.com>, "andrew@lunn.ch" <andrew@lunn.ch>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "ssantosh@kernel.org" <ssantosh@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aHVhbmdkYW9kZSC9q7O3u9jTyrz+obBbUEFUQ0hdIHVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UoKSBmb3IgaXJxY2hpcCBkcml2ZXJzobGhowpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
