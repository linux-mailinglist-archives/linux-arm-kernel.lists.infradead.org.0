Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0FA24C28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ikDI/23sQT+uUZm7gmnDpoatKBVm3TD6eX+Cs8z/IdY=; b=V3IkJEOs/rIL9Ba9yz86KwDLy
	tLutd3EX2JgBbnet3SWexcTs3vuiRr+VY7SRfw0Kwvz5IX/3C4L2Fbfq43vBvXau6/ljqpyAluUD1
	YRsqSclx9pxTairRgR+v7qSOxRTcXs6twlsYNRfcjoZdiRDP2MACRWclKdXj3ZCKLQk1M8YWKjlHL
	UWVVNOAKEGda5/BlqxYmT+sMnBb0z3cu7FKxowPfYnOjf03yfLqVGBILxEUYKz1lBtOnn1mhWajVW
	mkU9HTE6Jjy++T0IF0e9duIr2qQQh05YeTAK7m/rtyf5SSBDTRvRbQrqK5Nu83MmJulLZiaAUZOi8
	jvjXu8iEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1cw-0002qB-3A; Tue, 21 May 2019 10:04:10 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1co-0002po-Gj
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:04:04 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4LA2dvX025126; Tue, 21 May 2019 12:03:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=DnSyyYeMPo/Rj8IttHG/PRL144k6IF0UugMb5dguwto=;
 b=X8moGV0rKXL8AO+QlnbiNcn5/jyDNgN0YBqNpyYLCk09Gt9HZDooVSWLOvbtv0mX5d2g
 Wd6tbe52dF2Tv2BliOtW+j5sf8LNl9Fmm3CqZBKz88BLL1D9AynI6TkLLXIx18sb9BUV
 jMoleQzC1Dtca8wyDZOLPSnw80bxN8vrC/H2R2YtwZhrydob6lMO1AktMH+B/RlthHAO
 pqd3/WWO8fU2lxzXhrOZZcBR/VOXzFU2j4T4fFHGFNqUuhTNXyZTylMKipkUb6MRY7aD
 gsqHgSpDeflshYkgMg4qjWnY5JLgKz2Ln+xmNGdILETJ0bjVQWUsWjuudUTZgEvGIQqC 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj8xg8kb6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 12:03:57 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AD49E38;
 Tue, 21 May 2019 10:03:56 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8ECDC25A3;
 Tue, 21 May 2019 10:03:56 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 12:03:55 +0200
Subject: Re: [PATCH 0/4] Enable stm32mp1 camera support
To: Hugues Fruchet <hugues.fruchet@st.com>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>
References: <1551363945-19497-1-git-send-email-hugues.fruchet@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <6ba8698f-0c05-5293-4811-2f632bf1b047@st.com>
Date: Tue, 21 May 2019 12:03:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1551363945-19497-1-git-send-email-hugues.fruchet@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_030402_842902_BB189313 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Hugues,

On 2/28/19 3:25 PM, Hugues Fruchet wrote:
> This patchset serie enables camera of stm32mp157c evaluation board.
> To do so, both stm32mp157c DCMI camera interface driver and OV5640 camera
> module driver are enabled in devicetree.
> 
> DCMI camera interface driver is enabled by default in multi_v7 configuration
> but OV5640 driver remains to be selected at kernel configuration time.
> 
> This patchset depends on STMicroelectronics Multi-Function eXpander
> (STMFX) support [1].
> 
> [1] https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1944108.html
> 
> Hugues Fruchet (4):
>    ARM: dts: stm32: add 2v8 fixed regulator for stm32mp157c-ed1 board
>    ARM: dts: stm32: add DCMI camera interface support on stm32mp157c
>    ARM: dts: stm32: add DCMI pins to stm32mp157c
>    ARM: dts: stm32: enable OV5640 camera on stm32mp157c-ev1 board
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 41 ++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts     |  8 +++++
>   arch/arm/boot/dts/stm32mp157c-ev1.dts     | 56 +++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c.dtsi        | 12 +++++++
>   4 files changed, 117 insertions(+)
> 

Patch 2 to 4 applied on stm32-next. Patch 1 is no longer needed as 
regulators are now provided by PMIC.

thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
