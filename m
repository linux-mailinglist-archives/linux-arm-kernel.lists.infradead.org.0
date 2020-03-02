Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE21175857
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1UYAaV1hLiYmzBdhH5a4zdxenpNft2USGr5OR0vHqI0=; b=AoDfwWJ2mXnUhrPk2L4T7GZpH
	2oukz9YDc3IaHC6s/TLgsFxrCYxuSUL9oa43ZCENjUShUBIFm2rqM/q373LP29Dq410TvzMNUBz6D
	TuGMrHYjUBGctLIDemjWdFLWzxBsxKACaRvgxoo6lrl+k6xzp/kWTnQyN3LZz+EjKkJqDTAdMsiZO
	VLhOA3dXUPm+x+YBBAPbT6UmOkQWqVUtrGJKLAwvXc7/ytw+Oow28TonshAxy6ksmxfCLAlkPb5QE
	n7o6Fq4dV19/UGf7Hut+yWbo0/rkdYCu3cvhzCTmncruRT3sBxKT6kEyEPyCP/mmxuGUQa124hWlH
	CjDMvjaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iKY-0000qT-JW; Mon, 02 Mar 2020 10:29:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iKO-0000q0-6k
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:29:37 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 022ANQDP005577; Mon, 2 Mar 2020 11:29:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zkytL5nVEwPnsSSru/KymaDUr/ha+HwULMX9F6zIoyc=;
 b=exSa+YIJRpOznMWRg+X11gkj5wmZyPmRg08IYzfFup7xEtPRjr6hWuETdT4oWSeRj3gy
 wg3QhBQp7WTFiMxpDmBLYzfUI0Z4kea/DHRf82bFxgz48iJsg368pvRH6M0FBQQJNvm2
 0YtY1DCoULu5mT1lJ0lgrxwVHyC9zPpFuF/GYQlx5zjVBJ/TepQqiOoRZEw0lYD/5ZxJ
 /1s50RY+qf7NVfQdXBcYlsg6gkidy+IpOg0GatzRrm3hdSfJPdQ+5+F/QNciTNbLBRYc
 d/EGAvKYG+5A3T82naPax11ZVINz1N2f98HRIsLxjAIZH2hM78fSz8U2ZnViQc3sIiEi XQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yffqpjscd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Mar 2020 11:29:31 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7C81410002A;
 Mon,  2 Mar 2020 11:29:30 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 610342B881B;
 Mon,  2 Mar 2020 11:29:30 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 2 Mar
 2020 11:29:29 +0100
Subject: Re: [PATCH 2/3] ARM: dts: stm32: add STM32MP1-based Linux Automation
 MC-1 board
To: Lucas Stach <l.stach@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>, <linux-stm32@st-md-mailman.stormreply.com>,
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
 <20200226143826.1146-2-a.fatoum@pengutronix.de>
 <244a4502-03e0-836c-2ce2-7fa6cef3c188@st.com>
 <fbba971d7501c774ce0081f22dcff4ef74002a4d.camel@pengutronix.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e227de9a-7440-7e1f-2928-5648cbbe44c1@st.com>
Date: Mon, 2 Mar 2020 11:29:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <fbba971d7501c774ce0081f22dcff4ef74002a4d.camel@pengutronix.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-02_03:2020-02-28,
 2020-03-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_022936_608666_3CBD4CF8 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas

On 3/2/20 11:18 AM, Lucas Stach wrote:
> On Mo, 2020-03-02 at 11:06 +0100, Alexandre Torgue wrote:
>> Hi Ahmad
>>
>> Thanks for adding a new STM32 board. Some minor comments.
>>
>> On 2/26/20 3:38 PM, Ahmad Fatoum wrote:
>>> The Linux Automation MC-1 is a SBC built around the Octavo Systems
>>> OSD32MP15x SiP. The SiP features up to 1 GB DDR3 RAM, EEPROM and
>>> a PMIC. The board has eMMC and a SD slot for storage and GbE
>>> for both connectivity and power.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de
>>> ---
> [...]
>>> +
>>> +&gpu {
>>> +	status = "okay";
>>> +};
> 
> This question is more to the ST guys than this specific DT: Why is the
> GPU marked as disabled in the SoC dtsi file? This device is always
> present on the SoC and AFAICS there are no board level dependencies, so
> there is no reason to have it disabled by default, right? Removing the
> status property from the dtsi would remove the need for this override
> on the board DT.

You are right. With new stm32 device tree diversity, it makes no longer 
sens to disable GPU node in stm32mp157 dtsi file. Indeed, we use now 
dedicated files for each SoC (stm32mp151 / stm32mp153 /stm32mp157).

Ahmad, can you add this modification in your series please ?

regards
Alex


> 
> Regards,
> Lucas
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
