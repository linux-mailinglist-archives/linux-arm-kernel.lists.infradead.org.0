Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8F3184809
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QyGf6GgkpFoOaK1x7ul9RpjN/7xAV7IS72nxwCvWJdM=; b=MYQz3LAf1sBEgB19FIW5Ov1NM
	B1/9zptq3ZE4RrwG58yYSjkhADCl7Dx7DWTedDmSpCQISPAXFUhpAPtN3xKkChaAvSw8Wp7DJiKeo
	xfBlNkfv0t8D7OR5/1LoSSifu9GfyhzjkAUNuogWaTp0n9s/EmmFnExg5UHB8igY7dI+Do5e0PwwR
	XTVFohP+INCHnewgFP88nJc8Q7m6MJ3kLRlWbnfJHQPHFP4tK+XtkD22eMciilRBx8V1gMuVLgYRS
	urGzvSjSLnHK/eGUuqiXE1pjx79VIzTcqkwkWMdlo56vhLFxxbCooXTOsVPBa8DhVEPyy6/K5zx4c
	A2Y91SMFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkKy-0007oZ-Ak; Fri, 13 Mar 2020 13:26:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkKl-0007oA-Gr
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:26:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DDNQfp026519; Fri, 13 Mar 2020 14:26:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=MiS/taC8So8EgjWNAwucGO9VM7ZZlVzG70mkM5pYJpE=;
 b=spfw+RC7iVY3pH1Zc2bxHY7DIhn9dsegfmdsy0MInvl5YCjqT0lsYNjIBtyqe1/Ua1C1
 py5JSfE1tBtg3OqRhcJ5YYz7cFzrSAB9AW+An4wE8MU+Y/7EkFWFmdWEXvjJ3LgYSqEh
 pxne4Td8EORVkDIBCITKw7viEiwovcxKOrdVsyDDD2YBaOopqvUdFRvOwAZBduPUj5xQ
 v19nxTXWn2BYdCdsye0veZ5Rx+haIk48p3t2u6CH/0HAJg773uPPx4s/RHFP1s1KV5p4
 /L/NkzZFwoEsp9ed9iHnjC10oXFQZh28fkbnD0C+Bm3F3fwJ/qFRY0jyuf0W0PQemw3I lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt8190f4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 14:26:34 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C912F10002A;
 Fri, 13 Mar 2020 14:26:33 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 978E82A9047;
 Fri, 13 Mar 2020 14:26:33 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 14:26:32 +0100
Subject: Re: [PATCH 0/3] Update SDMMC nodes on STM32MP1 boards
To: Yann Gautier <yann.gautier@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200304080956.7699-1-yann.gautier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <6d4fb1e7-f134-1f92-242d-93054a334139@st.com>
Date: Fri, 13 Mar 2020 14:26:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200304080956.7699-1-yann.gautier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_05:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_062641_119585_DC03B65F 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yann

On 3/4/20 9:09 AM, Yann Gautier wrote:
> This patchset updates the sdmmc nodes for STM32MP1.
> For SD cards nodes, the cd-gpio property is used instead of broken-cd,
> and the disable-wp property is added.
> The last patch corrects the vqmmc regulator for eMMC on ED1/EV1 boards.
> 
> Yann Gautier (3):
>    ARM:dts: stm32: add cd-gpios properties for SD-cards on STM32MP1
>      boards
>    ARM: dts: stm32: add disable-wp property for SD-card on STM32MP1
>      boards
>    ARM: dts: stm32: use correct vqmmc regu for eMMC on stm32mp1 ED1/EV1
>      boards
> 
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts | 3 ++-
>   arch/arm/boot/dts/stm32mp157c-ed1.dts       | 5 +++--
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi      | 3 ++-
>   3 files changed, 7 insertions(+), 4 deletions(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
