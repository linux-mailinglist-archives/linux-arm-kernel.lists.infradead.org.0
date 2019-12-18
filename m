Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69791124E4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1lbQaDJA/pXamdloumsff0pB8LAH73fo9K7ExC7v9Nc=; b=NQw/FXWX2f55k81PvSQ/+oV2q
	urxjbOJpIt9JlCV055tASdbvF9HWDUV2v5vGax9qGSug6cwQhf1e7RWkUJRbE4LJuziAaXK8D1TYq
	tlLFf+20WMFZTXjhwfTxxBVPhZuzdSw7tlim/O9AMVpGatsuPYRfivr7jfu2Rd5EOdht6BvGlsgrd
	yVFvZ10jGTPK9FviimRPERg1r5VWxQqRHIfPRygjP/UNBqwfBtd4PPp4w6g9nFqnc17IHldGDeJz1
	Kh9hnPKwRb6KzUBqz7jfXstQ3gxbFSSORLZ6xzyXFjJmCsf8wMsYNxOOYy9RJSzHHxg6lZJVA6vEu
	KKZmBV9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcUf-0000Ir-N9; Wed, 18 Dec 2019 16:48:13 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcUX-0000IV-3C
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:48:06 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIGiM9c017256; Wed, 18 Dec 2019 17:47:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=hotd3mZ8fmPE7JI8P99BBUl8p+25O/Q4/tedj2kCByI=;
 b=C4A8aYSBOwg+vBmlAMX12llGQ//NjCOtQ8FmpbZ5cRUEO+J7tDh0lEZRh0RQZwamV1Ss
 csFAi0hoFqJKK6If4VbfnZfczgr/uYSC6oel6hkEHNwYf+7+Ymn8fVA8IeSr8kX/ZHLG
 0ZHh0MHetHtLeEl7sQaZ39ex2XesHT/BQtakVo/GYf/R+30KlCxOFgt4f5gor7p/2fkx
 qZcxDDx3PeC+Iu9AHR9ooUzcwAd3m+zeSAlC5a2jK3F8pCAL6Yi5bjaoakjwU1BXhYFn
 gUtvFcZkaEJryIJenGvOf0LMwMdL5bP3k6WttTu1d/KKFL8Qp+zGi4qPYm72cG++ChE7 cg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1nbpt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 17:47:58 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7141310002A;
 Wed, 18 Dec 2019 17:47:58 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5E07D2B4B01;
 Wed, 18 Dec 2019 17:47:58 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 18 Dec
 2019 17:47:57 +0100
Subject: Re: [PATCH v2 0/3] Convert STM32 dma to json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <mcoquelin.stm32@gmail.com>, 
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
References: <20191218144844.7481-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <17dbe601-ac37-21e1-1cb5-1b7a3167bca1@st.com>
Date: Wed, 18 Dec 2019 17:47:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191218144844.7481-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_05:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084805_624868_0AA1DE3C 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On 12/18/19 3:48 PM, Benjamin Gaignard wrote:
> version 2: Only contains rebased dtsi file on top of stm32-next after
> DT diversity patches
> 
> This series convert STM32 dma, mdma and dmamux bindings to json-schema.
> Yaml bindings use dma-controller and dma-router schemas where nodes names
> are verified which lead to fix stm32f746, stm32f743 and stm32mp157 device
> tree files.
> 
> 
> Benjamin Gaignard (3):
>    ARM: dts: stm32: fix dma controller node name on stm32f746
>    ARM: dts: stm32: fix dma controller node name on stm32f743
>    ARM: dts: stm32: fix dma controller node name on stm32mp157c
> 
>   arch/arm/boot/dts/stm32f746.dtsi  | 4 ++--
>   arch/arm/boot/dts/stm32h743.dtsi  | 6 +++---
>   arch/arm/boot/dts/stm32mp151.dtsi | 6 +++---
>   3 files changed, 8 insertions(+), 8 deletions(-)
> 

Series applied on stm32-next.

regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
