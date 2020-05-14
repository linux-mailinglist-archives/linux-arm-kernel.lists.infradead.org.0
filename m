Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D16A1D32CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dzgfVuJS/93634KEqSaGtbcI1ajp8uNcXTTQcyLbt9o=; b=n3IpA3vHcR/o5I4hM124aHDA5
	wK0ep7IXrbKU1nL7u2qQM8A2WXUSGmofOC3AsRRT+5An9fkitpVQ8+xyu1wyQcl9jnKXGVNnw21Cu
	eTZ1Po9+AakkPDO45jGLC7vBsGkxQBDq77wKDuB8LynzhfaW8BWkEebXVW38F75wYaWt6SdsFvhcX
	owJJR4XTKl+i5vpiRgL/AmmAXpDAhEw2pyDCyvKzfmczrlREdaeAdYCOOB1BqCKB+ZLicSn9Amg9A
	vzNSJ6DaCna1XCLgDWABZBjm3JYqnFCgyGcBEkWwVQj+YHVBVKil2RK9pVFQmzF7pMJqJvSD/yEtU
	sFn1wlJaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEpg-0002y1-0d; Thu, 14 May 2020 14:27:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEpV-0002xQ-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:27:23 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04EEMauo025134; Thu, 14 May 2020 16:27:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ZMy1+msU3qIx6LTAwdehKut0UjRI0mnFs7bLiuFarQw=;
 b=sNcsrqpMySOnjxnhIy3SXJeCtls0RULYglzoVyTe2lPMryA/mR83R0Mjx2OpNKtWhn+m
 hShx5z8iGRKy8IqgTJs3vAZPWgEo3PHkn+NL9OwYm1RhVHg56RrMMttdCifW7VwFtOGT
 UecmBcfi5WdglmlC5IYFkPQWnSxseYk/SxFKxFMiBue8vJn8IzJXv69/L8Bu9ioNbB3C
 KW6BtVYQIfzWQnbjX+JKH2uFDJN+fvPpcP0foEqsZWY45dZ27OG0eHThTeQajgrWspTI
 +L7BTu1br9CWGZZ/fYElt+UZZioAkja10o+hMbm9XlICXoCKCWifdA/KU16HVlfPhRg3 KA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3100vnbrhc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 14 May 2020 16:27:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 78F6B100039;
 Thu, 14 May 2020 16:27:15 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6A5692C4DEC;
 Thu, 14 May 2020 16:27:15 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 14 May
 2020 16:27:11 +0200
Subject: Re: [PATCH V3 4/4] ARM: dts: stm32: Split Avenger96 into DHCOR SoM
 and Avenger96 board
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200513181020.8225-1-marex@denx.de>
 <20200513181020.8225-4-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <6989f6c2-cbaa-5ef3-c540-fdf1260f3bbd@st.com>
Date: Thu, 14 May 2020 16:27:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200513181020.8225-4-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-14_05:2020-05-14,
 2020-05-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_072721_940533_0691FC7D 
X-CRM114-Status: GOOD (  18.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 5/13/20 8:10 PM, Marek Vasut wrote:
> The Avenger96 is in fact an assembly of DH Electronics DHCOR SoM on top
> of an Avenger96 reference board. The DHCOR SoM can be populated with any
> STM32MP15xx. Split the DTs to reflect this such that the common SoM and
> Avenger96 parts are now in stm32mp15xx-dhcor-*dtsi and a specific example
> implementation of STM32MP157A SoM and Avenger96 board is separated into
> stm32mp157a-dhcor-*dts* . The stm32mp157a-avenger96.dts is retained for
> the sake of backward naming compatibility.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: - Drop the stm32mp157a-dhcor-som.dtsi , as it was just include statements
>      - Add comment about what SoM+Board combination is currently supported
> V3: No change
> ---
>   arch/arm/boot/dts/Makefile                    |   1 +
>   arch/arm/boot/dts/stm32mp157a-avenger96.dts   | 618 +-----------------
>   .../boot/dts/stm32mp157a-dhcor-avenger96.dts  |  38 ++
>   .../boot/dts/stm32mp15xx-dhcor-avenger96.dtsi | 401 ++++++++++++
>   .../arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi |  23 +
>   arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi  | 209 ++++++
>   6 files changed, 675 insertions(+), 615 deletions(-)
>   create mode 100644 arch/arm/boot/dts/stm32mp157a-dhcor-avenger96.dts
>   create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-avenger96.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-io1v8.dtsi
>   create mode 100644 arch/arm/boot/dts/stm32mp15xx-dhcor-som.dtsi
> 


Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
