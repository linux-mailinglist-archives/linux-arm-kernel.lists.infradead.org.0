Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC671D7814
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVlGyCmjK8xWoBVaTM0iF9ScnKc9CUO6P1wNPkNPkAM=; b=ObuJMMfXUZMBKr
	GbMCaLI1lVtiP5/yNNCnovkwjRlQnxrP6tIrmuu5Am+2e8ge4TQ7Z7RufC4Y37vzzQu9OVLR/DeOF
	xnzGPMXmxtJhHajYfJaciHZBMhR5meyn961tguwdf3MTRK01QMYPESQT51/0NrNG4ofJcrwzWgCq8
	RA5HT7+DxwIWlHLbRhRsZJPLhKwjuuo1LV+jsSit0+m6lWH/jAw0pq4ObJTHdroi8vUM0X4IvfeYq
	EFqo5C4e2oDCfrGfTicEi07rKUiBYvsUa7eN3awhw6ldX0GybCuzpZWQH0nhIxgVk7hWZVgUVKZjU
	58aU2TExNN4oMVgFZtxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaeUI-0005RF-Ed; Mon, 18 May 2020 12:03:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaeU8-0005Qi-UV
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:03:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04IC2rku010157; Mon, 18 May 2020 14:02:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=tAbl2axdddZlaaXG2CNspEZUt31JN+F0gHWw9tO/rHM=;
 b=ddgt4qxdT4oWVbfbhnLDLAFXbH9hijDV73qOYcZaPn45NL3bumpy8wLhX3mQ5Ty8Rnwe
 Pw/wCLNK1hvokjk4gya24QRhEdq3qzzhUHo2amAWd+SCgiwsuoJWVOdlG/QND/4+sq3N
 5jLqzkCN4R7NsLwsozz2ISXgisXhvDnd/YfoWobYpTTwHGLE44CKN6D575ojATSSd8yh
 bAPNfjZdCpCRfQQrS/5nnimfEQtpfn25tR48a6FX/1nC32MjP6wiP6KgKjuygx7erOLx
 GvKmSrG19BHK8PrE2Aa0sR5sntD9/GrYvVY5vQspxGiw/RTUtF0Y+bIuCsta2yWpbh0n zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125n3bm24-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 18 May 2020 14:02:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E74D810002A;
 Mon, 18 May 2020 14:02:47 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag4node3.st.com [10.75.127.12])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CAC522BF9CF;
 Mon, 18 May 2020 14:02:47 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG4NODE3.st.com
 (10.75.127.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 18 May
 2020 14:02:47 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Mon, 18 May 2020 14:02:47 +0200
From: Christophe ROULLIER <christophe.roullier@st.com>
To: "robh@kernel.org" <robh@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>
Subject: Re: [PATCH v3 0/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
Thread-Topic: [PATCH v3 0/1] net: ethernet: stmmac: simplify phy modes
 management for stm32
Thread-Index: AQHWHHq3aaIPOA/wFEi5Ev+u/GvPiaitvfmA
Date: Mon, 18 May 2020 12:02:47 +0000
Message-ID: <3aaadf75-5399-4961-248a-c77c719155d4@st.com>
References: <20200427100038.19252-1-christophe.roullier@st.com>
In-Reply-To: <20200427100038.19252-1-christophe.roullier@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <CD3A060E2D09364A9ED8F23EAD3F016B@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-18_05:2020-05-15,
 2020-05-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_050309_431324_78D27360 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "andrew@lunn.ch" <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just a "gentleman ping"

Regards,

Christophe.

On 27/04/2020 12:00, Christophe Roullier wrote:
> No new feature, just to simplify stm32 part to be easier to use.
> Add by default all Ethernet clocks in DT, and activate or not in function
> of phy mode, clock frequency, if property "st,ext-phyclk" is set or not.
> Keep backward compatibility
>
> version 3:
> Add acked from Alexandre Torgue
> Rebased on top of v5.7-rc2
>
> Christophe Roullier (1):
>    net: ethernet: stmmac: simplify phy modes management for stm32
>
>   .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 74 +++++++++++--------
>   1 file changed, 44 insertions(+), 30 deletions(-)
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
