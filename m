Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD5B78644
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VA/jUJc8fY1kPkgnqRolAj2BCD548sADeR+cIN+08Ss=; b=q79Yn2lkvU/InwL83UdvKGzb1
	n4ljfz8DpknV17pFHaxNZ3CHg0tpwMT2gjkl2lQ4fFZ8DUKbQGKk/HCcBDcg+3ePKGZjNYGro/Dp2
	hSQh0KNnxgDDuRv4BkrhyOiQx8KMusI9njieiGASPfolKY58Oq8+A6Xd8pPKkZpiHigWz/eAF0ruF
	bLi4UhQUTq0IQKQ8elgxsN2XhqmuMJkCYIw4GdhMMuBJxPdDYKGs6eJSYcqvVW0z+coJiJylgQ8B/
	JgDIbOMvH9JRGWGiVZZ4cmwxnFQmL3/l9/Ct2TvlHazJ/MstkKtRcHfnd+5FNu3qBkgHdKskIu65m
	BENyPJ2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrzza-0007xZ-SQ; Mon, 29 Jul 2019 07:22:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrzzM-0007wB-Jl
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:22:34 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6T7LhjY024911; Mon, 29 Jul 2019 09:22:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=BrcI7CA5OtqOSVGd0MNreUQcr/fWMiNNKrFXwlcauwg=;
 b=HtsVBdFzeQGhEJOx7laE7SNZm50J5WstAiEevq/LZ+iQZW2lYEJQRyJ7banSr5LH7Tih
 l1UDVn1J6MArE0IwuGH9FNg8m0cVOKcsE+JPNFLRiSRkRi+etUFsh3aryLgPNweJmVoh
 sWjNxpxS76Vi386fd0NXzX6oua5xkmoyQHlZIHpsG9nxuLfLev6RffhuIxEXRRG1Gkr5
 UfWnVsNnb9/1FBdBz7ULimDF1HkHIS8HTIxJL+K/tE8JkX7Bkky32lTBmHYahH8rMMNs
 fg1QdsQntZpaATKUX/iNemClh5ygi1MdpW2DVyHDmlHefyZ8Lm+UJ3P0CvvZZZUg4kgR fQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u0ccwanmu-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 29 Jul 2019 09:22:12 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1ABFD38;
 Mon, 29 Jul 2019 07:22:10 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A2D77569B;
 Mon, 29 Jul 2019 07:22:10 +0000 (GMT)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 29 Jul
 2019 09:22:09 +0200
Subject: Re: [PATCH 0/5] Add missing pwm-cells to STM32 timers PWM
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <thierry.reding@gmail.com>,
 <robh+dt@kernel.org>
References: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <542bd9ed-a93f-fdcc-5dc9-ccaed8a50097@st.com>
Date: Mon, 29 Jul 2019 09:22:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1560937925-8990-1-git-send-email-fabrice.gasnier@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-29_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_002233_110547_DEE04934 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, benjamin.gaignard@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabrice

On 6/19/19 11:52 AM, Fabrice Gasnier wrote:
> This series adds missing generic 3-cells PWM to STM32 timers dt-bindings,
> PWM driver, and the relevant dtsi files for STM32F4, STM32F7 and STM32MP1.
> 
> Fabrice Gasnier (5):
>    dt-bindings: pwm-stm32: add #pwm-cells
>    pwm: stm32: use 3 cells ->of_xlate()
>    ARM: dts: stm32: add pwm cells to stm32mp157c
>    ARM: dts: stm32: add pwm cells to stm32f429
>    ARM: dts: stm32: add pwm cells to stm32f746
> 
>   Documentation/devicetree/bindings/pwm/pwm-stm32.txt |  3 +++
>   arch/arm/boot/dts/stm32f429.dtsi                    | 12 ++++++++++++
>   arch/arm/boot/dts/stm32f746.dtsi                    | 12 ++++++++++++
>   arch/arm/boot/dts/stm32mp157c.dtsi                  | 12 ++++++++++++
>   drivers/pwm/pwm-stm32.c                             |  2 ++
>   5 files changed, 41 insertions(+)
> 

DT patches applied on stm32-next.

regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
