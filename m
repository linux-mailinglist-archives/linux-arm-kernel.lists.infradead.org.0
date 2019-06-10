Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10AF3B8CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v0s5P9ezNV05JJoHu3kaLrcJnuU82VSvkOJxwIcSAbM=; b=b9u1LSlPttk4JQg4jvfJPK4+8
	/zIDmrNOrLQnSlrRQ6ED9f15y1I9U+p0PX/ZRzLXXptaUULnIXp8fYWfwcJMP8UF1IYB6LNB4baAw
	F8qIXwS9e1S85EIQisD9oEelwolLkq/uQAzIrgajuOZ4Rnc6XqQxSvlDsKC34/fva0D51lLhfwZCk
	mU3qSCBjDhqTYF8MGs+CXuw54QIfdmiZIUkFPNZLXOjXrHcihdAT53jEKpK+0d/xlthVhl8YpZUaX
	c1Dxfp5LK4KxqRlvWlA0GNru3kHBmfHQMwhEq6lNIBwbjrIGqe5sHdu3wI52mrhaeWHcuNT94WHeZ
	R9syDHpng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haMjO-0007Ke-7Q; Mon, 10 Jun 2019 16:01:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haMj2-0007E1-62
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:00:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5AFpjoA009189; Mon, 10 Jun 2019 18:00:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=hL5doPAk7gz0oURE8Qq+x0YUW9RAa/CHoF+4B6z8r2k=;
 b=ENZtCi9dMus0j1k6iHnZpCQ1RX+RtshUvGAffIQ9bro55dGz1QKditKnTUFiuWS0zw8h
 JX6hS18qOmYCUfcopHomtLXHOQeMOQqY57MJ5RH/6w1rW6zRFhLRsMeHVCP9oG2V4f/Z
 LMvh1q8dwxlCthe780b4xdGec8F4Am5dUaBGNol1Xc+KZ5aAJaykZQrtv3wVL85A5Bbm
 C0p5IGHLiZc46sw+L0Gq3sj5cj6TVQGfpbUYL23tDdTC4MeosEjC8HxMUe7brT/ecanB
 GPznEItkcwq2tMWlFGO285T7SY2Pma8heSyluzp7Q7uZfU5kQNMeK4Cxg17UBJft1Dk1 0Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t02st9vxe-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 10 Jun 2019 18:00:39 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C44BB31;
 Mon, 10 Jun 2019 16:00:38 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9BD9A4F5B;
 Mon, 10 Jun 2019 16:00:38 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Jun
 2019 18:00:38 +0200
Subject: Re: [PATCH 00/10] STM32 usart power improvements
To: Erwan Le Ray <erwan.leray@st.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <e6fecf4c-cb07-4cf7-099a-201b14e90a00@st.com>
Date: Mon, 10 Jun 2019 18:00:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-10_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_090048_556871_A286DC6F 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Erwan,

On 6/4/19 10:55 AM, Erwan Le Ray wrote:
> This series delivers power improvements for stm32-usart driver.
> 
> Bich Hemon (4):
>    dt-bindings: serial: add optional pinctrl states
>    serial: stm32: select pinctrl state in each suspend/resume function
>    ARM: dts: stm32: Update pin states for uart4 on stm32mp157c-ed1
>    ARM: dts: stm32: Update UART4 pin states on stm32mp157a-dk1
> 
> Erwan Le Ray (6):
>    dt-bindings: serial: stm32: add wakeup option
>    serial: stm32: add pm_runtime support
>    serial: stm32: Use __maybe_unused instead of #if CONFIG_PM_SLEEP
>    serial: stm32: add support for no_console_suspend
>    ARM: dts: stm32: update uart4 pin configurations for low power
>    ARM: dts: stm32: add wakeup capability on each usart/uart on
>      stm32mp157c
> 
>   .../devicetree/bindings/serial/st,stm32-usart.txt  | 19 ++++-
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi          | 17 +++++
>   arch/arm/boot/dts/stm32mp157a-dk1.dts              |  5 +-
>   arch/arm/boot/dts/stm32mp157c-ed1.dts              |  5 +-
>   arch/arm/boot/dts/stm32mp157c.dtsi                 | 40 ++++++++--
>   drivers/tty/serial/stm32-usart.c                   | 88 ++++++++++++++++++++--
>   drivers/tty/serial/stm32-usart.h                   |  1 +
>   7 files changed, 155 insertions(+), 20 deletions(-)
> 

I'll merge device tree part into stm32-next branch when binding part 
will be accepted.

regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
