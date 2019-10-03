Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5170FC9BB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:09:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x0SumUhRgSOZMZ6+EDUgN6JSwS4l6qx3ZV/glhVJn6g=; b=cgsy2lekO1himQ0gJ9Dp+7gtF
	1pQrXfBArO2jlZdX4pUn/yqi4pjCKb3D10sZdeyc6LwPtwnehg0+nVivcktA1ysW/46wdB3H9GUk9
	ne6LmxFBLE29fmeoqe1AIZ3edwFL+GwXNPHLayCox9flEZB3HPFvkrtUJFVticE3mHj7RskJYtwZX
	ellRED+sNbdXcVqUs92UAN9scT9wjwOUzSfKX/7aqAJhxQMhFtDApDxNWpNfhNshwiYgop87OMDTu
	aURKOZ3x28RcFonuZyCzDFpgFiHH7XskovS+EdNjrp6dWu0FtmhdiS/8wKnhvURxNKEjg4zMjekUy
	boTFtlpeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFy2n-0008Qs-I2; Thu, 03 Oct 2019 10:09:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFy2e-0008QT-OJ
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:09:02 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x93A1PIB005807; Thu, 3 Oct 2019 12:08:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zqZUbIdRkbe8zlQ1Xy8C9xxTHAhI4kWKhP2SWMUEemc=;
 b=jV8ptiyJIBOf5cwe8QUXFgXXkKlSgkCTD7XMNZRCvsAPambXB79iNTcO/xnDQ2vyXHss
 Zin4bUODvBTMwAqUzdIO8ZvNTa32yUu/8MDWXryACMgx/Zc35EgfEXFgSNTx2Ozh0egC
 XVopjnZKzXBm+KGG2MQwKBHDvxt05n43FXUOv3p4PRugtLtw5EGBoOu32MF5yBBCGTGS
 +/R/Z4rIs06p6qBDCckX/qa4WZIPKrN301WzF96q9rKHVgvkcQdf6/zvapGFDlY6FuM0
 o2Azs8XkUqpiaNqipN48f/DwHg6I7O8ftUEzsT6JH1V5zQPOqtr4G6nIelDcThOB9wZK zA== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v9w9w3xx1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 03 Oct 2019 12:08:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3CD5D50;
 Thu,  3 Oct 2019 10:08:52 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 967AD2B5CBF;
 Thu,  3 Oct 2019 12:08:51 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 3 Oct
 2019 12:08:51 +0200
Subject: Re: [PATCH 0/3] Add support for ADC on stm32mp157a-dk1
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1568385280-2633-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4ae1d526-e681-a8e5-925b-ec7a3e28868d@st.com>
Date: Thu, 3 Oct 2019 12:08:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568385280-2633-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-03_04:2019-10-01,2019-10-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030901_083249_0A445F8D 
X-CRM114-Status: GOOD (  14.55  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 9/13/19 4:34 PM, Fabrice Gasnier wrote:
> This series adds support for ADC on stm32mp157a-dk1 board:
> - enable vrefbuf regulator used as reference voltage
> - define ADC pins for AIN connector and USB Type-C CC pins
> - configure ADC1 and ADC2 to use these
> 
> Fabrice Gasnier (3):
>    ARM: dts: stm32: Enable VREFBUF on stm32mp157a-dk1
>    ARM: dts: stm32: add ADC pins used on stm32mp157a-dk1
>    ARM: dts: stm32: enable ADC support on stm32mp157a-dk1
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 16 +++++++++++++++
>   arch/arm/boot/dts/stm32mp157a-dk1.dts     | 34 +++++++++++++++++++++++++++++++
>   2 files changed, 50 insertions(+)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
