Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 647D974B6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 12:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ryxZbY+CAAJZ1ilP6FtZA8hbyxaaTp4q2pFqu2Q38Ts=; b=mEo+gh0MCeXz/rw9oMR2LznqA
	QWZXEmsQ51BCVUo2pK/r5gfIITpevqKlxjtSuuS5zWA+2QL3/WoS212GY3cK52qDXDEYo/5HRAkWI
	PYiXx3CMvCXjNmO284puCirXmnq0glMKmRveO1egR7c0In+/VeURjfxl26MmVM6KgUrJT4wytXW34
	tfQYGrpylNnWBuSLgK5y20EQog7ViYPzFp/wvI3IzNDg8xMCN/Tt+tMGvxLuqIQnsXQhOC3Vkf6R6
	M9ZQGf5R8t4XedwccliWfodnarrX5WtSFAbeCdyOggDfthMHhl+c5xU6malaY3fa/u1CB2Es5djfa
	ivyMrLN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqarv-0002Hw-7D; Thu, 25 Jul 2019 10:21:03 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqarm-0002HK-Pm
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 10:20:56 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6PAGBi3023124; Thu, 25 Jul 2019 12:20:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=PuANcSYUEr2h1YiccGZF5KbI11ZnNfnGmreQcfFcH0U=;
 b=fZjQNeAlzyROf+NRDgI5o941gWC5rqhiFUKF7WOkjv6ekb1mK3ZzaWnd1/9gHoh6QATr
 Uv3RD3OZRTek5QmSeNEAXGDJtC8oKhB7JKmA5SlnhyQ3OSRsQzohm+xvNqnI27a5x7pR
 CRcUDQNabZA9KPQIx772g8fVoy+K3aRz0j3WlxKo7ISAZEae0MeZOilBTh2007t1SRZ9
 ddZ/1ThE/uKHHQv+y3tAwp7KLJTHXwtYiz0LXYsIFlv6eLK9dg5bZ5faKgjOXT3DdvYW
 9uifGSCOLaaal21dfTH3iSEA2XMbavAMEBTcEKXfvfn7ZKQld7PXHmt3pIUJBnKb4HT6 Fw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2tx60433ce-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 25 Jul 2019 12:20:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6B4223A;
 Thu, 25 Jul 2019 10:20:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31C672945;
 Thu, 25 Jul 2019 10:20:36 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 25 Jul
 2019 12:20:35 +0200
Subject: Re: [PATCH 0/4] ARM: dts: stm32: enable FMC2 NAND controller on
 stm32mp157c-ev1
To: Christophe Kerello <christophe.kerello@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux@armlinux.org.uk>, <olof@lixom.net>,
 <arnd@arndb.de>
References: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <cc4c56ca-c3cb-fc8c-e223-4b98754d3592@st.com>
Date: Thu, 25 Jul 2019 12:20:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1561128590-14621-1-git-send-email-christophe.kerello@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-25_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_032055_220509_6D467861 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christophe

On 6/21/19 4:49 PM, Christophe Kerello wrote:
> This patchset adds and enables FMC2 NAND controller used on
> stm32mp157c-ev1.
> 
> Christophe Kerello (4):
>    ARM: dts: stm32: add FMC2 NAND controller support on stm32mp157c
>    ARM: dts: stm32: add FMC2 NAND controller pins muxing on
>      stm32mp157c-ev1
>    ARM: dts: stm32: enable FMC2 NAND controller on stm32mp157c-ev1
>    ARM: multi_v7_defconfig: add FMC2 NAND  controller support
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 44 +++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ev1.dts     | 16 +++++++++++
>   arch/arm/boot/dts/stm32mp157c.dtsi        | 19 +++++++++++++
>   arch/arm/configs/multi_v7_defconfig       |  1 +
>   4 files changed, 80 insertions(+)
> 

Series applied on stm32-next.
Note, I changed capital letter in patch1 directly (As I responded late).

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
