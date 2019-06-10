Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650543B879
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuJoj3EE8Gp6chcHLmVLBH2KshvdUyDwSxrk1BkXGzU=; b=gvHT6oP/02Bl0F
	ADAaKP05SsWhWuaHaLPY5uQ6vtisPS6R//WlHcSKCGURCXYF3t15Or/rqApZEXuPv0Xl4FDH8zUHs
	N7LKBkPUsVX4z17ll2Ygd6K2TYwOMOt7SihuJT7nOvzK2n3mHRsJ/O9nek5Dwdfn0/9GQVcerxPI6
	pad6mBZ1Vqs9QOKA3svBqE/x4sxFUBfsoI6sICp4XP633YjCwa4Qw4OPH0GoZDPJ/iZYohGLqlw/K
	39I5cxD8ZSf4ors6u7iY8xsRThwjLfCQQIt6XZDMe9pnANeqT7n6VqDK7tk99B2PTI7wgASnbvXru
	aem7uXNicKSCikhLSDAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMWe-0000VG-Uc; Mon, 10 Jun 2019 15:48:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMWV-0000Tk-Sg
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 15:47:53 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5AFfYgf026022; Mon, 10 Jun 2019 17:47:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=LgERwqK45s8WxfYNJ2p/eCQHczqBFZZAr61TGRo2H+4=;
 b=gWnTJIR+98UCSxymsNwMRkgV+9V4yBZI5+4O8squ/S1WPag/BNss5IcSulDOH8T/qMqy
 q5rRWgjZh1+axSfpm4jGFsbHUXiEKvFm5yX1fVKRlgcGeUpMJ1UiBH3GQvUc006KNBYZ
 aaQBMZ5CoapQhFeAG4Xy6KLHH7l+oOyLUCEOe/V+gwEP4isq8+XLC7bW/5by5lGiK/x3
 XouigYxflqzytqopMhVNGFhEgQPEP7iffCr4OeoYE1zREws/pzQJfakAvhXlF3eR6ezU
 fzZSs6CeFFZkIWOMuauXgOa/ZhjVDilHLoY4vc8Z7eatw46qhvqsNEfDqCLJJMojWq9G AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t0256a973-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 10 Jun 2019 17:47:32 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B078D34;
 Mon, 10 Jun 2019 15:47:30 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E94F4F1D;
 Mon, 10 Jun 2019 15:47:30 +0000 (GMT)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 10 Jun
 2019 17:47:30 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 10 Jun 2019 17:47:30 +0200
From: Erwan LE RAY <erwan.leray@st.com>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, "Kevin
 Hilman" <khilman@baylibre.com>
Subject: Re: [PATCH] ARM: debug: stm32: add UART early console configuration
Thread-Topic: [PATCH] ARM: debug: stm32: add UART early console configuration
Thread-Index: AQHU73OP100nvdfkikCtYg1KY+YHZqY1DV8AgC1naoCAMtJmgA==
Date: Mon, 10 Jun 2019 15:47:30 +0000
Message-ID: <ff48768c-83e3-55dc-16a0-bd0af4133c7c@st.com>
References: <1554883239-12051-1-git-send-email-erwan.leray@st.com>
 <CAJiuCcd9884Kn2MAtLMzZpdSa-=xpCDKRLQSVC6NmRNC+YFtaA@mail.gmail.com>
 <deebc332-277b-76b9-421f-7f67c6bdacc8@st.com>
In-Reply-To: <deebc332-277b-76b9-421f-7f67c6bdacc8@st.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <70F78C8ABFDF92458A8685FA5F79E676@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_084752_264907_92528684 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Fabrice
 GASNIER <fabrice.gasnier@st.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Clement Peron <clement.peron@devialet.com>,
 =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Gerald
 BAEZA <gerald.baeza@st.com>, Simon Horman <horms+renesas@verge.net.au>,
 Bich HEMON <bich.hemon@st.com>, Biju Das <biju.das@bp.renesas.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Arnd and Kevin,

Gentle reminder on my feedback request.

Best regards, Erwan.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
