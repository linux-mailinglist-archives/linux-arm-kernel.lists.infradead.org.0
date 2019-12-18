Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D96212496B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m6hW2aQi6lyZSo73QCHVuaa2c5AYPD/sfKppgQprSd4=; b=MF4BQCtAl9KzL53f7s7eqStHm
	jDy1nbqcCDfGIJC/IbnOErmkiyQLocxc2l3uhmLfnXbyPBnt2wSFR+xgP2v4M3pXpviBjESrtnjB8
	xlUcyXtHf7mvdJNgs6j6l99jLC+LKqxW9bOPmVi037BTqGuKZ0+XKFKFCOt9KZxGvrCO/6t5TKqWG
	Tk65LqVoNn8RkAwUgZU1TzJwMuPEHZeb+vdBTG+WgO61WQm1Bcf7zl0POBuj6r/bOlJbZ5CzBBOeh
	Pzyffz+nJ3mbvu9xqLUjkvNpvsABhQ7WLslp9uESEi017jGDSkN/KW4lxQ9VgM4TXi+P0DRu6BmU1
	02Yai0gDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaF5-0000tH-32; Wed, 18 Dec 2019 14:23:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaEu-0000sw-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:23:49 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIEMRju009267; Wed, 18 Dec 2019 15:23:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=CqqtdBSOQzQqY2X0T5pw83xNGBYfoG1Y6eQNNcwZcOs=;
 b=sO8+RfNMnFy+X6hhI9GL6hnltJcNCoANQTxOee2pWtP2t9XSI6aMsUr+18FYUeyt5bCT
 rQYgeOsAnIRPdHlagkpf3ZjL4lsFu79+2jVdeX58pd6nMhoXOiPoO2/vqhtBYM2tu4h6
 9SHIOLyEQIK64dOpBRuuPSiWQJqvhTqRHVcTrzbGe0Nudli8a01BQTryfnLvlBZn1mLa
 z7J6OK67HdEkDfHkru6qSaztT8KaN3XSWaiLiEQQetNIrhd1eLYG4DqPMO+/Exni8Ggx
 GaE44x0p/Z/M8Svt1rFcfJ/3BxVguwLOLXzWcRGcyk2Rg/AJ3oP0cJ55Rd7rpioRbV5O WQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvnremuku-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 15:23:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2435D100038;
 Wed, 18 Dec 2019 15:23:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0ADDA210D29;
 Wed, 18 Dec 2019 15:23:39 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 18 Dec
 2019 15:23:38 +0100
Subject: Re: [PATCH 0/6] Convert STM32 dma to json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <925ed27e-25a4-7382-af52-fda1688ac789@st.com>
Date: Wed, 18 Dec 2019 15:23:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191217092201.20022-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_04:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_062348_709433_5A1993A7 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/17/19 10:21 AM, Benjamin Gaignard wrote:
> This series convert STM32 dma, mdma and dmamux bindings to json-schema.
> Yaml bindings use dma-controller and dma-router schemas where nodes names
> are verified which lead to fix stm32f746, stm32f743 and stm32mp157 device
> tree files.
> 
> Benjamin Gaignard (6):
>    dt-bindings: dma: Convert stm32 DMA bindings to json-schema
>    dt-bindings: dma: Convert stm32 MDMA bindings to json-schema
>    dt-bindings: dma: Convert stm32 DMAMUX bindings to json-schema
>    ARM: dts: stm32: fix dma controller node name on stm32f746
>    ARM: dts: stm32: fix dma controller node name on stm32f743
>    ARM: dts: stm32: fix dma controller node name on stm32mp157c
> 
>   .../devicetree/bindings/dma/st,stm32-dma.yaml      | 102 ++++++++++++++++++++
>   .../devicetree/bindings/dma/st,stm32-dmamux.yaml   |  52 ++++++++++
>   .../devicetree/bindings/dma/st,stm32-mdma.yaml     | 105 +++++++++++++++++++++
>   .../devicetree/bindings/dma/stm32-dma.txt          |  83 ----------------
>   .../devicetree/bindings/dma/stm32-dmamux.txt       |  84 -----------------
>   .../devicetree/bindings/dma/stm32-mdma.txt         |  94 ------------------
>   arch/arm/boot/dts/stm32f746.dtsi                   |   4 +-
>   arch/arm/boot/dts/stm32h743.dtsi                   |   6 +-
>   arch/arm/boot/dts/stm32mp157c.dtsi                 |   6 +-
>   9 files changed, 267 insertions(+), 269 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
>   create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
>   create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-mdma.yaml
>   delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dma.txt
>   delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dmamux.txt
>   delete mode 100644 Documentation/devicetree/bindings/dma/stm32-mdma.txt
> 

For  DT patches, please rebase your patches on stm32-next. Major updates 
have been done for STM DT diversity.

Thanks in advance.

Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
