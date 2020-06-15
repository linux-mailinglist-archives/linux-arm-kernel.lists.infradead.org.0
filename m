Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A864E1F945F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=erziJqrzUf2RDupomPkIkAVJcAOVwrzArBPPQthW/34=; b=Rik1jNXGOlr96269FySbHt/7G
	cqqaifGe2R9/c+v2R2dt5g8Nd8NvSt388Ck1iH8Y1F5l0Gd+UMdYXF6cDu0Mczy5VkACdao3vOD0X
	NMnWFPzE6fVzu0oGOdYt64edLJvhyJCc+6YWHEpRsXRXoSyPMCPilRjR1vMJPyI7t00NqrqlxviqA
	WUdKl7w3+LJUODWhJx0Dp/sNH80L5TY7YBms8VNx7+rORVadPiRmVdwLyYvZxF2VUL5Lv1ZMzfbgF
	asV0XcK96RWQBZDrY2YZtqMiKwc53QykxhD9m1VAWgoFC79W1D2H2TKxx+de+ZFnTZYJuNwMjy2pU
	UAMgCZMBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkm6F-0001zp-Ul; Mon, 15 Jun 2020 10:12:19 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkm65-0001ys-Ut
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:12:11 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05FA9nop017544; Mon, 15 Jun 2020 12:12:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=d3GjQF0BzX+PN+NqBFNl58BCi48VHp5WyEJcoWpGzZE=;
 b=Qh4w60ADIEMTpDsoxohyQ9Ih50clXyZZs9u/+lc0WnUycb7Ig8HgvcIuavp2QzBzto9s
 pmW6O42deSa+OyUIEJwKxCQAROZ0VGg+0just0JmbVu/62FSwt4Q0tIpX7FtW45WENV8
 NlQRnYxPP9yo6PgAxoZUxtKZALY1kNaZVreGndLuxbjFprxzTKbgn2OKSGKrNGuuI7PP
 195FLNG567s+Alro3Cc6ZWB2C185rEBbI8vGh1I0BmBtCGpNrtO6S+DIiauFDVV+dJqT
 Zy/d4GlEPlf4aJ5u/jFASaKo5pIy4za3/CvRlZNzepua/Ziop0gM9nyscvOEZh4u4Pi9 nQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mkx915uv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 12:12:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9D9D5100042;
 Mon, 15 Jun 2020 12:12:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8845720E2C3;
 Mon, 15 Jun 2020 12:12:01 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun
 2020 12:12:00 +0200
Subject: Re: [PATCH 0/3] STM32 update uart4 pin configuration for low power
To: Erwan Le Ray <erwan.leray@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200528073853.24759-1-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <751071df-6879-da91-3519-38770971c43f@st.com>
Date: Mon, 15 Jun 2020 12:12:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528073853.24759-1-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_02:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_031210_288092_3399935A 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 5/28/20 9:38 AM, Erwan Le Ray wrote:
> Update uart4 pin configuration for low power in pinctrl, and for ed/ev
> and dkx boards.
> 
> Erwan Le Ray (3):
>    ARM: dts: stm32: update uart4 pin configuration for low power on
>      stm32mp157
>    ARM: dts: stm32: Update pin states for uart4 on stm32mp157c-ed1
>    ARM: dts: stm32: Update UART4 pin states on stm32mp15xx-dkx
> 
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 17 +++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c-ed1.dts    |  4 +++-
>   arch/arm/boot/dts/stm32mp15xx-dkx.dtsi   |  4 +++-
>   3 files changed, 23 insertions(+), 2 deletions(-)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
