Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA581BC533
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sEBs1P2t7YUkpqKvQOEK3PDXmJXCn04Z1iczxuwh7Zk=; b=bEp5Oe6oL6g7aq03w9J/sZc7G
	enevOwNT5dbP4xhQpoXct7I0TTdbKxgg9RCvUvR3i9Zt8s6b1fykhzPb/Dk3qXL2lnnu4sMNtgkEr
	74rw2SDtIrTwKSCteE0K+/2PGw7FcIyrkkV2Zjhj9Afjjf6WUDFzaCbcYL6LGv5b2gId0rx4/gpun
	GKfX+TZBPDE9D/R+gT+rKBeC52T4lO+RuedO09iJ2pLuhYWh3oyrTP4SGwdLTcdu6e6/vzwfTxIrU
	7qTJOm3KqcYgGM0vGec0sZZp/W5Xp0UGkPn397nh/OrMTC5+H/zhb3oBqseIZMgr9tG194g4x4KCL
	UMuhGgOKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTT7m-0003zr-RE; Tue, 28 Apr 2020 16:30:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTT7Z-00031C-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:30:12 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03SGSJs9028011; Tue, 28 Apr 2020 18:30:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=NGkABTisrRFiR0U388ihye531O2dm6SDun433lkNoMA=;
 b=RkCcn1JCuaitkxrH921aZVHoXEJ9ZfE3vWn0dSduBNt56e6FiXSpymRcVgwq5wgWxdAP
 3yaF2ZciHRHwbsYkHaJbXc41GQbtN/h/yIDl2951ZXz9z1HNKA5LWcZe56OiQxap9NnB
 Grq1+mV1tC76LL3K89lYZEGq1qla4YVIxDgovh/BJ/+HsiUPbRHOEQC+8AsDlVJYXBO7
 MtMUin0osCda6vVrjZiSdHghI5dGIVVcs7LyCZ8WWISEdyjNpUSmVTWVVSrAlMBPl8WX
 CVbGyARjcpIcBzP6ZoXJR6l68nM0FUbp6qZqWjn+AB/aUYEjuTTuUgnWQCYlFLDikGmD QA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhq61361-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 18:30:03 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C1C5D10002A;
 Tue, 28 Apr 2020 18:30:02 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A74702B22EB;
 Tue, 28 Apr 2020 18:30:02 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Apr
 2020 18:29:57 +0200
Subject: Re: [PATCH 0/5] i2c: i2c-stm32f7: enhance FastModePlus support
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <baec4a71-3616-5c55-a528-6c79e49b8255@st.com>
Date: Tue, 28 Apr 2020 18:29:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_11:2020-04-28,
 2020-04-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_093009_887823_E4064E08 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 1/23/20 5:12 PM, Alain Volmat wrote:
> This serie enhance Fast Mode Plus support in the i2c-stm32f7 driver
> (support suspend/resume) and add the support for the stm32mp15 SoC
> that has new syscfg bits.
> 
> Alain Volmat (5):
>    i2c: i2c-stm32f7: disable/restore Fast Mode Plus bits in low power
>      modes
>    dt-bindings: i2c: i2c-stm32f7: add st,stm32mp15-i2c compatible
>    i2c: i2c-stm32f7: add a new st,stm32mp15-i2c compatible
>    ARM: dts: stm32: use st,stm32mp15-i2c compatible for stm32mp151
>    ARM: dts: stm32: add Fast Mode Plus info in I2C nodes of stm32mp151
> 
>   .../devicetree/bindings/i2c/st,stm32-i2c.yaml      |  6 +-
>   arch/arm/boot/dts/stm32mp151.dtsi                  | 18 ++++--
>   drivers/i2c/busses/i2c-stm32f7.c                   | 75 +++++++++++++++++++---
>   3 files changed, 83 insertions(+), 16 deletions(-)
> 

patches [4][5] (DT) applied on stm32-next.


Thanks.
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
