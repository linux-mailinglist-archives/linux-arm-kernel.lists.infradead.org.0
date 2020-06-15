Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B821F94BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:40:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3guv3mZiRCeo7LUdmsRC1K9ikIGyz3NbtUR7NK8tMuw=; b=E0j9x28/W6v0HkIhoV4XsfecT
	5VxiS6iuOu06TzAG6CpqTxJoSLij2DmdTW5WEBM7uILE9pvXno2gMv7XSywdjLKh9v+rWvaEJI64B
	yNVAwzKhhnXMynwq244DxWDHkm5ZWTSvBuh91xk0BJG9hPIjn3p+0K4411K/33bJUAqu12Yyd8yCB
	UDWk0xtQ18o0bUJrAU8zvJrFxhrwmjrPeYmnfM1ELIqU3y7SzZRt8aul3VfuAe9eqc5M3/kFMb+DL
	WOCASBP+DiGiAAS6bOe5+dyXjE4lZbDOD+IJm2X6V/CGBtVLuo9AudehAViTXl9LeGsPcO/PIMuV3
	Tm3SDv2bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmWu-0002pJ-FK; Mon, 15 Jun 2020 10:39:52 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmWj-0002op-8L
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:39:44 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05FAWmbh003202; Mon, 15 Jun 2020 12:39:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=+F4jY1HeRhewZM8MzbOTtBBvHoX7iWPMn/pDhsYtkiM=;
 b=uBocQdrSSSMoeRwxrI5NC2KcwfBXV8R+joFckdr9h6lID30OI0WKQ58EuGTsUgLPN+Eb
 a4RZAyYxPgrZm0PEWmnJZsAwAUX6fRwGmgucsYVJvNuU4azLblG+PZjnSr5jCdtqLRAi
 UxTcsJPrSQEgn1kdgCqB/MYkhndfq7JMebfav5j5vMDNXndEj5YEjWb5PWB64kwPCbsT
 4f+ZAlBJ1ACsDu99IzspOmQOCALzMLQWycO1YQwuXHmak7pbg6sDnVOEkwpBHMowYf9C
 5A19as0A0DbrgT9BAJcCUGhrEll+vVMv8+Gnw+MQPj7f1b5wkgLDijIQuuX6/8YLU//+ Ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvs5c4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 12:39:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4DBF210002A;
 Mon, 15 Jun 2020 12:39:34 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1D8BD20EAA2;
 Mon, 15 Jun 2020 12:39:34 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun
 2020 12:39:33 +0200
Subject: Re: [PATCH 0/2] STM32 Fix uart nodes in stm32mp15-pinctrl
To: Erwan Le Ray <erwan.leray@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200528074003.24875-1-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <b0c3a1f8-217c-968d-dfeb-484afd8eefd5@st.com>
Date: Mon, 15 Jun 2020 12:39:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528074003.24875-1-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_02:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_033941_738178_C980AF76 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Erwan

On 5/28/20 9:40 AM, Erwan Le Ray wrote:
> Fix uart nodes ordering and uart7_pins_a comments in stm32mp15-pinctrl.
> 
> Erwan Le Ray (2):
>    ARM: dts: stm32: fix uart nodes ordering in stm32mp15-pinctrl
>    ARM: dts: stm32: fix uart7_pins_a comments in stm32mp15-pinctrl
> 
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 130 +++++++++++------------
>   1 file changed, 65 insertions(+), 65 deletions(-)
> 


Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
