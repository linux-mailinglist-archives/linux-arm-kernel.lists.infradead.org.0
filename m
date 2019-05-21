Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E80424ADF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CUKbFgrqkEB6ssRRK2sTlROsV8EGCfUt/XXs9Vlf7Ig=; b=HJhzUqR6dLvPJ5F+g1OCjIVtH
	V/mF0QDi1cJHNDXSxy44ypcNNpHD62diME+w53Gd5CI3tpybsjq8SrjnNCx/qKAi/H6rMU71P7ofK
	zzsukv6cQQudTQQ2W1fafKlZ8Qq/scLaRp/ZlnB5vwvuXwh3PlK9Fw8v/zm73/rn4icmD/hNt3v+f
	KhD7s6+5Ij+0DeuVBeyTgaItrYqNhuFQgGqTyImzUCl2kxxJpRaz6cL01bF2Amvf3BruxAXpTlwAF
	9W5x28f6HGduD3v9Rz4/rCs47yvlfqwmB8C20t+6KnuZkk/RoT5RRSE8XyqHknh9g1drv3Iv99uTg
	n0Wi9R9yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0X1-0003DC-LJ; Tue, 21 May 2019 08:53:59 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0Ws-0003AD-9J
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:53:52 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4L8fIda005383; Tue, 21 May 2019 10:53:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : references
 : from : message-id : date : mime-version : in-reply-to : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=UPl9cMLd/jz3BJgxLaiHt4XCIbnglMdgLWCuCTS6vvg=;
 b=VfMr2HkbAldoxufbvO1631fAPiVUF/WVx7wOIB6xoSSCAlVewatvqak8ux9pHEJVXy6L
 1BbU80hb0R3rh39tpKOL4q3StSIUtUvn+tfzLHVLLOe9X6bu6hWfBHygWqZUuP4DVr/w
 Lw7BjptedS47bMtJ4PYkZMaAlfZo34hXjErEz/COFPzXvgfjPS6Urm8Y6lUBWx63eUm8
 pZlmr2P6zoVkbUeyy8d6v+dl90rk2zMm/yLFh/mTZUMZs2PZMlWjYXQbP5lm4cz/t0K3
 cnnrueXj+GZKtNBT8n9+diR8fgT2WKGRaEKYFVjskWRO4ElOQck+PbSH+xZT538Iffpq 1g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7tu08t1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 21 May 2019 10:53:45 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 63D6938;
 Tue, 21 May 2019 08:53:41 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A4E182450;
 Tue, 21 May 2019 08:53:41 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 May
 2019 10:53:41 +0200
Subject: Re: [Linux-stm32][PATCH 0/4] ARM: dts: stm32: add i2s and sai support
 on stm32mp157c
To: Olivier Moysan <olivier.moysan@st.com>,
 <linux-stm32@st-md-mailman.stormreply.com>, <robh@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <1556201440-5540-1-git-send-email-olivier.moysan@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <79b6d8c7-5756-26eb-1e26-534890e712e1@st.com>
Date: Tue, 21 May 2019 10:53:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556201440-5540-1-git-send-email-olivier.moysan@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-21_01:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_015350_628277_ECBF2E1C 
X-CRM114-Status: GOOD (  13.07  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier

On 4/25/19 4:10 PM, Olivier Moysan wrote:
> This patchset adds support of STM32 SAI and I2S on stm32mp157c
> 
> Olivier Moysan (4):
>    ARM: dts: stm32: add sai support on stm32mp157c
>    ARM: dts: stm32: add sai pins muxing on stm32mp157
>    ARM: dts: stm32: add i2s support on stm32mp157c
>    ARM: dts: stm32: add i2s pins muxing on stm32mp157
> 
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi |  92 +++++++++++++++++
>   arch/arm/boot/dts/stm32mp157c.dtsi        | 158 ++++++++++++++++++++++++++++++
>   2 files changed, 250 insertions(+)
> 

Series applied on stm32-next.

Regards
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
