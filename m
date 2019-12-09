Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1556116E71
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 15:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SceyqwqrGOZKrmCaM0KLG0zyDXCjfltad+iBBmPcAnI=; b=JGC62X5fqyYnF/EvkDy3RLOfq
	u8kDvr7HvM3CH8BwSRKhW7MTTxa0LRV5cWU3AEoNbZEAFfloD8QQhGb+ODinDJFnI8CyRGtMI3biX
	gQ5u5Bj9G1BYVEs1dM40LIAS+qg6x7KZCud6WbDxY7v66H7EACWg+QRz/GihzKL8Yw92t6o8xLDln
	XM/rNDzR7d9QkN1X4dl2/QkEAcOqRNP2UnJHF4GSxsSljW95TDVmvUTRyseCJuC/nJhUkUxS9Gslw
	Vx2T+NcyMUR8l0p6ju6mXjGfeS5NB2lic+9Y4hZ5gKgNcyyM+v+LSIxsN+abEs2wNEBkiXHGdCepW
	MhFc2vatg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJcZ-0003eh-Lb; Mon, 09 Dec 2019 14:02:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJcO-0003dw-Cd
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 14:02:34 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB9E17Rh002940; Mon, 9 Dec 2019 15:02:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=h0NDLxS3j9GuxtUF4CHpY+EnFaY9d7pHHOIkb2OZAns=;
 b=TL77VmqZ6PBbQBR4bgNU6G/GBf+MokTel3SnHpeiyO76m2Aa3yPOTu6R+dB+zSNQdVf0
 vauYvasBECN30yo6TxYqKQQWZIAjO6aZidp1Miyn5dm7zEWYrzX0LLw2LpqMCzO1pos9
 KJRAYmhEXNe1B1gOAAXspNV0Cy4WsPV/7NUjWRQRHndTlGhOVyyZMOjNbcS/mD9rQUWr
 ik1MGKkBCkcVpz7MfGAvXqQdG9MJ6Oj8taMOoEYbToFfKpy4x2iZ1MOdqkVFKI7T47s6
 ssFGg7FczNryUw10RQfmhakYWkoaQxq48dqQYUmJPo8bBeSB12lJkAw793nSRfnyjG5a FQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wrapxfpn1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 09 Dec 2019 15:02:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1606D100038;
 Mon,  9 Dec 2019 15:02:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EACFA2FF5F7;
 Mon,  9 Dec 2019 15:02:20 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 9 Dec
 2019 15:02:20 +0100
Subject: Re: [PATCH V4 net-next 0/4] net: ethernet: stmmac: cleanup clock and
 optimization
To: Christophe Roullier <christophe.roullier@st.com>, <robh@kernel.org>,
 <davem@davemloft.net>, <joabreu@synopsys.com>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <peppe.cavallaro@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5b1774f4-c0ec-030d-90a8-65b714545b9b@st.com>
Date: Mon, 9 Dec 2019 15:02:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107084757.17910-1-christophe.roullier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-09_04:2019-12-09,2019-12-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_060232_925011_27078BBF 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe

On 11/7/19 9:47 AM, Christophe Roullier wrote:
> Some improvements:
>   - manage syscfg as optional clock,
>   - update slew rate of ETH_MDIO pin,
>   - Enable gating of the MAC TX clock during TX low-power mode
> 
> V4: Update with Andrew Lunn remark
> 
> Christophe Roullier (4):
>    net: ethernet: stmmac: Add support for syscfg clock
>    ARM: dts: stm32: remove syscfg clock on stm32mp157c ethernet
>    ARM: dts: stm32: adjust slew rate for Ethernet
>    ARM: dts: stm32: Enable gating of the MAC TX clock during TX low-power
>      mode on stm32mp157c
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi     |  9 ++++++--
>   arch/arm/boot/dts/stm32mp157c.dtsi            |  7 +++---
>   .../net/ethernet/stmicro/stmmac/dwmac-stm32.c | 23 +++++++------------
>   3 files changed, 18 insertions(+), 21 deletions(-)
> 

For DT patches:

Applied on stm32-next.

Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
