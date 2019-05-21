Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE39124A9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ISYJqhtIvqA0YVln01IfZx+dICK0HV/0G4K5bMpxNog=; b=YfJTCSlM+cl6LGhNnxmIUobJ6
	yns3wkTutYW3qJMNxih03/EB0XzS5qT/MjiOLpd/GoB+4SQIQm01WkV4INzyEdeqhnyl40iMHmi1D
	aPbm4miorj2fmc2QfBUZltyVJqY/44Xhgt4zzhfMTO1AnXEsbScoZZ+Pn8IOe9FefSmw+CLS096Gl
	X8FsJBqXlYxLSlU/SAcyh4HhWAUegnKe6cdfdnjAOewYAFfir2MBYmskTtDRUhsFoQ5hoBbcMR62A
	RI+CfyYKt0vjTB0JSBT8op2chYmQ5WE5nfXErbgaRO8/ogFMb6wisaX1QQV9tphdcNyLfoTh8J6eN
	VQGmatbeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0LZ-00066f-Cs; Tue, 21 May 2019 08:42:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0LK-0005y3-Tz
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:42:00 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L8fIqW005386; Tue, 21 May 2019 10:41:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=QyWJvNYHLKsmU03kGqyqMWFY0xSKENVAb1xh5I0LmvA=;
 b=UGu79PUJOqtgrDum7WsBudYZoYlcDCl1ksh+75EHx+F81wT/RshofvK7wDEOSOCLI2UV
 Gm2qBlpnQtXwLPIptHMKZQ8CWaELA3gn3ArEDUEu6OomHKCYIGaZbhGVInoRV5ZVEnsY
 nJH24r+AUEAncxAnmXoHgw8H3W0pv+wb9W69A+uiVlcndqejok/NVEjayRaDKjBSjtUz
 yDrozQpEza6z4L5s8yjgUn4HWNm48mPe912ZDLesbvTvr//tOgnCIS/j2GQFCa2WRU/W
 o1HmQPz3OAEPpi5f4dWGURnAxRYKyCEUZdhwfdBow1iTsn/mJL8hkTPqXuRczzMTDwR7 0Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu06s7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 10:41:48 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9E86138;
 Tue, 21 May 2019 08:41:47 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7ABEC243F;
 Tue, 21 May 2019 08:41:47 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 10:41:46 +0200
Subject: Re: [PATCH 0/2] ARM: dts: stm32: qspi update for stm32mp157c-ev1
To: Ludovic Barre <ludovic.Barre@st.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <1552057823-10876-1-git-send-email-ludovic.Barre@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4932a2fd-eca1-d802-812a-7246b3dd12ec@st.com>
Date: Tue, 21 May 2019 10:41:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1552057823-10876-1-git-send-email-ludovic.Barre@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014156_120397_EEA40AF6 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ludovic

On 3/8/19 4:10 PM, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> This patch series add sleep pins configuration needed to suspend support
> and add jedec compatible for 2 nor flash of stm32mp157c-ev1.
> 
> Ludovic Barre (2):
>    ARM: dts: stm32: add pinctrl sleep config for qspi on stm32mp157c-ev1
>    ARM: dts: stm32: add jedec compatible for nor flash on stm32mp157c-ev1
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 26 ++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ev1.dts     |  5 ++++-
>   2 files changed, 30 insertions(+), 1 deletion(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
