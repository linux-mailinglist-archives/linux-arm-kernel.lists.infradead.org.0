Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C63162DD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1OCxCWNLxxIJE2N79kdF6DcK/x5OtHC4S+GXE+pbb+I=; b=Kw9gBS9SPqujJhuKD+SWL80/o
	YLKQ6Jfyso5hKEQ14bl9oKxEOK8/pey//mKO0O4t8PUJmdmC0QtCvQf7hIGBWVCpGlkyZD/BgoNcN
	qSDBcbjqEsUAUpKAEWkq3ARzRy60YP4KQ2eoeLc6QdBnOhQLlTzXhXV/FXpAmFkxvAiTjDAnxnLTI
	wwVBiznDOI38nmOs5xOS8Kqk75qwMJtSguj4j8FvGfTKG47S3BhNNT0nHKLtStHV6ZBJY2vouEoaE
	x31ABSdtHJNmt7mb1bMN6RjyLFMxJ7HdXFkXlq20LYUA/bJWPN5mko2Hdjhw7r3mmE15tYr5iFK10
	bdOF6evBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47KT-0006NR-9P; Tue, 18 Feb 2020 18:10:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47KK-0006Mt-7l
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:10:34 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01IHrvve005912; Tue, 18 Feb 2020 19:10:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=xNEAHaZmjG+dizQJ5LA4/u9LlslrrIeo9frKOjluLvE=;
 b=Sb5mUHF4yAYaVeseQBJjLZ7YzajRiE1kCopcm9LPWaRW1xn61nDZjUAxa+gxxFs8rJea
 tmxeol4PqiGdtrkiqPrSLHPntmKa33mJ/1T8V06KIH40z0WWtJitSKkYVPvaqC/DQbTV
 yn/DbmpuTJQIQjQxVS1XqEUcU8ilAZAgwPARUhpcVe+523xRVD4XzDDVSvmY+E4wu/bj
 RRqbo40k6/RZBeJ8yc2uPcpSU+MpaFuci7htgzh1/Sca3AxpGEMNIY+xQdGSxtbL5A/0
 Vqxizj+wlSZw6kouhxziZq8fr2BLfS5XG3h7vOxgDv1ngzIHTZrSoisJ8cz4l/XwU8iC EQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y66ne2xwn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 18 Feb 2020 19:10:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D8CFA10003D;
 Tue, 18 Feb 2020 19:10:13 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A81F92BD50D;
 Tue, 18 Feb 2020 19:10:13 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 18 Feb
 2020 19:10:12 +0100
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Marek Vasut <marex@denx.de>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>, Linus
 Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
Date: Tue, 18 Feb 2020 19:10:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-18_05:2020-02-18,
 2020-02-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_101032_721473_8C7E99C0 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 2/18/20 5:25 PM, Marek Vasut wrote:
> On 2/18/20 2:12 PM, Alexandre Torgue wrote:
>> This series adds the possibility to handle gpio interrupts on level.
>>
>> GPIO hardware block is directly linked to EXTI block but EXTI handles
>> external interrupts only on edge. To be able to handle GPIO interrupt on
>> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
>> is retriggered following interrupt type and gpio line value.
>>
>> In exti irq chip, retrigger ops function is added.
> 
> btw. this might be unrelated, but is it possible to have e.g. gpioC2 set
> as trigger-level-low and gpioD2 set as trigger-edge-falling ? It seems
> 8eb2dfee9fb1 ("pinctrl: stm32: add lock mechanism for irqmux selection")
> prevents that.
> 

No it's not possible. Each gpio line doesn't have a dedicated Exti line 
Each Exti line is muxing between gpio banks.

Mapping is done as following:

EXTI0 = A0 or B0 or C0 .... or Z0 : selected by Mux
EXTI1 = A1 or B1 or C1 ....or Z1 : selected by Mux
EXTI2 = A2 or B2 or C2 ....or Z2 : selected by Mux
...

regards
Alexandre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
