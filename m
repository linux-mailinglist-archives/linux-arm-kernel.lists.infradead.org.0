Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49B9184739
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:49:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kw9Nq/oGwQj2VXB96r8J4rUeLS8ZfikovjFGqwjXAiw=; b=cRiu63fBtaTyCJqzhuqlCzP3j
	/fxveC4h7RSSMPK8lSjAzkGV4Xt58zGo4P4xsc+KcwQkF2rX9E47n+UjM4fcZaIfihNJT2kUwxNcv
	cPm3Tn5rwO5o2DABZrqtBRctRH7MwHZ9oofLWlF/PzP+1F/PEjFgSZNRmBKphnFI83017xl5aHyon
	Y4mWZ8PVAgUMSnVP5i+YufbfyCcKqx27Tbh1C2NFd/+qlJOZvj22Iq2Ovm89VQqmuJl21cEifka8M
	yBVDEi7h0nvHmjnT5ktcQY//IX9wma/WaLBlGgf1eLhvWZjMPFKWM9/MuHBLM7UTXR6i2xf617GEE
	LDoTLOYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjkt-0006MR-GF; Fri, 13 Mar 2020 12:49:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjkj-0006Lt-N1
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:49:27 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DCmfLG023752; Fri, 13 Mar 2020 13:49:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=CcNbvyWT8YbgbTbfcBrr6mQAfjtlUg8BoiN/XYnnNpg=;
 b=ffRTEwV3eLtpJsKwvTTf0ZepigM0uAvelLzcsr9ANg7n+xODervmIJPeZ8CX3IU2TSqa
 XHjSpBlIsaw2c8J1aP7nfezfGjN9BTn+lwMTR6AgrC5hmN/p9R9o1Fj0ci0ouqW+vmCy
 yMIk0bYTSAyujNLDMAKRcupvyYsSDLIEvgZ1+gmhECp5kaOUGbXvILQglJiw2liZoVjA
 aGeMxNBxJ3x2h7rMe80Ee+jACEezdKlC7fvF4K8hVw90wlX/PbPNp3fmLvzO6ha2M2QH
 1MxHgKi9C+nvqRuXTssIwMRrQ/4TLxjM04hwlIpmCf4yaR/KsLl0NNi9C7Wpj3vZvbFL aQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt7t0m86-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 13:49:16 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A882410002A;
 Fri, 13 Mar 2020 13:49:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8DE312A7F68;
 Fri, 13 Mar 2020 13:49:08 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 13 Mar
 2020 13:49:07 +0100
Subject: Re: [PATCH 0/6] i2c-stm32f7: support suspend/resume & wakeup
To: Alain Volmat <alain.volmat@st.com>, <wsa@the-dreams.de>,
 <robh+dt@kernel.org>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <0c852ecf-fab4-6df7-1f27-f80b3f2e2f48@st.com>
Date: Fri, 13 Mar 2020 13:49:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_04:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_054926_193817_834E2884 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alain

On 1/6/20 2:28 PM, Alain Volmat wrote:
> This serie replaces the previously sent serie "stm32: i2c: Add suspend/resume & add sleep pinctrls".
> 
> This serie adds support for pm sleep suspend / resume and allow I2C slave to be
> a wakeup-source for the system.
> 
> Alain Volmat (6):
>    ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp15xx-dkx
>    ARM: dts: stm32: add i2c2/i2c5 sleep pinctrl on stm32mp157c-ev1
>    ARM: dts: stm32: add i2c4 sleep pinctrl on stm32mp157c-ed1
>    i2c: i2c-stm32f7: add PM_SLEEP suspend/resume support
>    i2c: i2c-stm32f7: allow controller to be wakeup-source
>    ARM: dts: stm32: add wakeup-source in all I2C nodes of stm32mp157c
> 
>   arch/arm/boot/dts/stm32mp151.dtsi      |   6 ++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts  |   3 +-
>   arch/arm/boot/dts/stm32mp157c-ev1.dts  |   6 +-
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi |   3 +-
>   drivers/i2c/busses/i2c-stm32f7.c       | 187 ++++++++++++++++++++++++++++++++-
>   5 files changed, 196 insertions(+), 9 deletions(-)
> 

DT patches applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
