Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B38FDBBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QdKjjdmttnpzgeZelI/cX49xDcH1WuTw8z8l4npNnZY=; b=A+zkf8A4/bCgjcz5lx44fgiBe
	QrNZvik92p80Z74pa71AjW4vPgpi/PJ3tAuWLqtBq822TRl74zrehmOGhoS0FdGI1x6poiQs3F0gW
	qkw8kjR8Nx7o0+ZJDiYXBQoD7kDT5ghd8VUvhhx+3hdByuk/0adVKK1A8Sa+5dixREbk6PD4lOTQC
	txY4OsE54IDE1rankcocgNVoo87yyqyi++0A0deGDwat4plUvwA6zPxkbm6cAZ26axLT5jw4CJ8MY
	6kqIAdQsrERIq0yqGj+6hhcMKRW4/+nOvT1JTWL5Etl19EoPx+Wyby4Uy40W5QPeUjbnzhS3d97VF
	b2zsd26cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVZBF-0006Op-Ot; Fri, 15 Nov 2019 10:50:21 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVZB3-00065a-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:50:10 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFAnPtd001023; Fri, 15 Nov 2019 11:50:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=vbNZvQAxWj5aasRHQhk+/qrLFDSdRYRbFikBMduiqK8=;
 b=SLO8PHw1uy4a+p8zkrQ3TXntGbMRI2YlKVg54MJi1bHZhtSDMVktT2weZh08kqmidMye
 F2MVk+poLx/m4YvuyuSZIlW2PJNcmYMBKklbc4gmx+uRbZSoG1zn1k7hCc2jf2+ZY/LP
 smypEYhvomkyxFCYp2W2A0s9PrrqLzv5k8P7E7XdrLjwn0T5m9N2fxGG4jo84eajGywR
 HezBM2bafiKlt+acJORJ/S4P4rbRQ+yE5M3xo+rrExTdrTZHcaxNLv64QyNN6cM6WxSk
 ncX0Y/17oPxCVbpBdcqWz4IrJS1q2M83qSGekBixm4OFVkK04WPD7Ag973ZTnsO2IQA0 iQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psk3hcd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:50:02 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4FE86100048;
 Fri, 15 Nov 2019 11:50:02 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1EB652B494A;
 Fri, 15 Nov 2019 11:50:02 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 11:50:01 +0100
Subject: Re: [PATCH 0/4] Update sdmmc nodes for STM32MP1
To: Yann Gautier <yann.gautier@st.com>
References: <20191106100938.11368-1-yann.gautier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <dc5b32b3-4bac-e53e-1fe4-74098231168f@st.com>
Date: Fri, 15 Nov 2019 11:50:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106100938.11368-1-yann.gautier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_03:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_025009_452665_F3357677 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yann

On 11/6/19 11:09 AM, Yann Gautier wrote:
> The STM32MP1 SoC embeds 3 instances of the SDMMC internal peripheral.
> The sdmmc2 and sdmmc3 nodes are added in the SoC DT file, as well as
> the required pins configuration.
> The boards DT files are also updated:
> - An eMMC is connected on SDMMC2 on STM32MP157C-ED1 and EV1 boards
> - SDMMC3  can be used on the GPIO expansion pins on EV1 and DK1/DK2
> boards.
> 
> Yann Gautier (4):
>    ARM: dts: stm32: update slew-rate properties for sdmmc1 on stm32mp157
>    ARM: dts: stm32: add sdmmc2 & 3 nodes for STM32MP157 SoC
>    ARM: dts: stm32: enable sdmmc2 node for stm32mp157c-ed1 board
>    ARM: dts: stm32: add sdmmc3 node for STM32MP1 boards
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 200 +++++++++++++++++++++-
>   arch/arm/boot/dts/stm32mp157a-dk1.dts     |  12 ++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts     |  16 ++
>   arch/arm/boot/dts/stm32mp157c-ev1.dts     |  12 ++
>   arch/arm/boot/dts/stm32mp157c.dtsi        |  33 +++-
>   5 files changed, 263 insertions(+), 10 deletions(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
