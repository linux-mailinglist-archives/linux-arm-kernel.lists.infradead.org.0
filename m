Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B587824B2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aqsDodGOAknLWWAjtgYlj9mLCqaM8Cq8YI+iAgtiGOI=; b=YOQ+ybpuwHUtakcfcO/grhDxh
	2bDxX1S1fqysuj1FW05HY7CWW5p8z7NToHuv0uu11jU2+QH0vd9u73tpZP9e9JFtNLRobrH6qeOTi
	0XasQMQz2+Xo6U+rMO20EBNPVyjjY0UGNfBuxdaBh3f0hDsSTSTCMwZH78xRgCjzcrqjTj42LJB/R
	R2z5/hpbz4zX71Nycq973kn5bITYbc3glFnxUZ+u/wr/O9Ri1oSnSgvjq+G3ejN7JSCxgCNBqgFP4
	jzMi5KWTTUGPeRmTWFnXIMz/lmT7d5QI7BJljzvtF95NJHEwuy2kDjyrsMXirKg9L1ctPNrRMhQUj
	e/N6I3srA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0mO-0001fv-8Q; Tue, 21 May 2019 09:09:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0mG-0001fT-TZ
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:09:46 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L97hoe017768; Tue, 21 May 2019 11:09:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=lanOOaJJhF0ZBJh2G1RjFUX4Qzrh7K+TLtAOvfetblM=;
 b=bRe5RYF7j5mqLmuY9w5O4gw2YTeWuQsf0Yas7I8oqr5kIb/Afh3Tb2KdNndOsQ0c9jZ6
 YxvrwN0FJ1LquPYJZZA8u4T79Y0uMMv0Ec8dehaccLUDmAgXIvy0n5bMwZ/A+sRIUxjo
 u9pLG3l9p3NRyxT16VfNwX5vtUxC4vYp0cgBgqKZClFi57CeufA3uwPWMw7FcyWqJgaw
 BpLteRODvp+WvY1T3GvDdAX0DEsEA2SF7Tr7NHjI/nPqb5KMCbhYjUW0L6ES/uANOQjr
 vfH7tCyzqNN74F7vA/Jugg6Ko1ytcrbIf1YnUpnLqauMurEEAv0lmiWtBzngS1LN9iJG hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj7740qgk-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 11:09:38 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 44ADA38;
 Tue, 21 May 2019 09:09:37 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CFB4824D3;
 Tue, 21 May 2019 09:09:36 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 11:09:36 +0200
Subject: Re: [RESEND v2 0/3] Add Vivante GPU support on STM32MP157c
To: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Lucas Stach <l.stach@pengutronix.de>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <1558082528-12889-1-git-send-email-pierre-yves.mordret@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <c565693a-a7fe-4361-0e1f-6bf09e2d8b84@st.com>
Date: Tue, 21 May 2019 11:09:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558082528-12889-1-git-send-email-pierre-yves.mordret@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_020945_289328_C0BB080A 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pierre-Yves,

On 5/17/19 10:42 AM, Pierre-Yves MORDRET wrote:
> Add and enable Vivante GPU on stm32mp157c for ED1, DK1 and DK2 boards.
> ---
>    Version history:
>      v2:
>         * move GPU reserved memeory out of bottom DDR to let free this area for
>           U-Boot
>      v1:
>         * Initial
> ---
> Pierre-Yves MORDRET (3):
>    ARM: dts: stm32: Add Vivante GPU support on STM32MP157c
>    ARM: dts: stm32: enable Vivante GPU support on stm32mp157c-ed1 board
>    ARM: dts: stm32: enable Vivante GPU support on stm32mp157a-dk1 board
> 
>   arch/arm/boot/dts/stm32mp157a-dk1.dts | 16 ++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts | 16 ++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c.dtsi    | 10 ++++++++++
>   3 files changed, 42 insertions(+)
> 

Series applied on stm32-next.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
