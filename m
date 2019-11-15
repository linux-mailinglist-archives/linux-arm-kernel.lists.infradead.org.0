Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C98FDB7F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hFgTCikciAb1bAPtJwJODVNDfx0Pofp0JbSq5yQEBTw=; b=BQYF24Wdc+avLFvw3VDmR3q6O
	ZOZuFAMGrmQQ8NAO1+SPodNZ+NQoUyQIjyRDCLtrJJDebcWCC/STOfDDiHqXh35L3OgPHWWo/3doA
	yXHqrHASoEjvEMhIDn3dPat7bOPmggBmRnGGdndnAneqhdL66W4BKnFjgG5iBS6e6ftQXYRyt9Ww3
	b2Bf4Uv8xspmSLQHFOR7vTXyP7QGBXPiyfvfqW+55G1aqFYl60usIWhoC1qWxgPCIksbEr5coMHFk
	zDQucZWJyZY/NPjN/8jgcI6RO4Hx7W4BBRMNKDW0kp9SobpksFnCIURltNC2SR10BbuUkeY40trCZ
	OBY4dgH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYzB-0007HJ-UI; Fri, 15 Nov 2019 10:37:53 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYz3-0007Gu-6L
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:37:46 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFAWQiT028677; Fri, 15 Nov 2019 11:37:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ousFJn9iJUrzpf2LIHmiL0+y3ehrao/jdi7laTUbdv4=;
 b=Vs3dLVaX2bTHsn6YGNPM0+68RyoakepcWmq3eNhFSSgdV4UCC/xpY4dDjI/bXmxpF4zM
 meRNbVUDv9oMMf8rJ79DMRQd2Q90pht4DLRQWmoEbSQ7eI9KV7w6iaIU6tBHSt6AtaZg
 J5rUBmyYvTNokUcDE5LdL6+01ys9D2HJWFnbRfCgMwaKscQR5yLFjkbya2wMHSWAdzUx
 cJnwS6G+mRNWaU41VOdHp6K8oX8OxH2MEGVGg1iVwSz2NgfxkhVW796GFXunR23RQIdT
 7f3zOQRXeg4VfwUICH90euox84qSjKeu5GpQXvcyQ5ZSJBAi31H6Nltdma6ch9uYJ8V+ AQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psfkmmp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:37:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BA686100034;
 Fri, 15 Nov 2019 11:37:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9B7FA2B3F80;
 Fri, 15 Nov 2019 11:37:39 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov
 2019 11:37:39 +0100
Subject: Re: [PATCH 0/4] Update PWM support on stm32mp157 boards
To: Fabrice Gasnier <fabrice.gasnier@st.com>
References: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <afba0f85-b7db-41de-f6f6-bcff1be1b0c0@st.com>
Date: Fri, 15 Nov 2019 11:37:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_02:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_023745_518980_CED1D8AF 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 11/5/19 1:52 PM, Fabrice Gasnier wrote:
> This series update PWM support on stm32mp157c-ev1 and stm32mp157a-dk1
> boards, e.g. add pinmuxing and use them in board device-tree.
> - Add PWM sleep pins that can be used on stm32mp157c-ev1 board
> - Add PWM pins that can be used on stm32mp157a-dk1 board
> - Add PWM pinctrl sleep state on stm32mp157c-ev1 board
> - Add PWM support on stm32mp157a-dk1 board
> 
> Fabrice Gasnier (4):
>    ARM: dts: stm32: add pwm sleep pin muxing for stm32mp157c-ed1
>    ARM: dts: stm32: add pwm pin muxing for stm32mp157a-dk1
>    ARM: dts: stm32: add pwm sleep pins to stm32mp157c-ev1
>    ARM: dts: stm32: add support for PWM on stm32mp157a-dk1
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 99 +++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157a-dk1.dts     | 85 ++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ev1.dts     |  9 ++-
>   3 files changed, 190 insertions(+), 3 deletions(-)
> 

Series applied on stm32-next. I just rename patch1 to be more coherent 
with your explanation done in cover letter.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
