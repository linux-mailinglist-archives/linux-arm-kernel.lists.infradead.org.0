Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8001B1F9335
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:21:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z8RWUdzRZUqfJkUJpu/0dnyLg6jt9ckU0YMG8vBa47M=; b=ZCN8/KyepajxTF5Bw2RhIxf0S
	dY/H5rL258N2uVJE4DEpLh4QNVhQBnp4IZG6lBtt9BU+EUFz59QT6RtviE5CuhJeZ1OLhScyp9mJ8
	HqSiHOyXF3D1h//RGTc9lDTuRWRkalXwCY9O2qXVvKSUfn11Ec6ZaipbQfIpXnsD2PPJKF7EqIzWc
	UY8Z25eqEwEghexh2MFVgHBAau4pMwKsbmEiLGqIr7CtcV9CmlY5V97jfUpr+SOzi6Iv3EsXYlMTY
	aGAFPS1GRcaHFO8MRFnVoKNy3zzy+Y94DcB0jMZFO/txKWuhTUqlTBuSWCMLuNfO7E4y1zKKYGD2O
	yQtdfwpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklJE-00074v-Pp; Mon, 15 Jun 2020 09:21:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl6t-00065J-PA
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:09:00 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05F93vZX011755; Mon, 15 Jun 2020 11:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6AGPKZTlObc1ZPKgs7FhyKVk6uWShOigJZrNQVvB/pQ=;
 b=PhelqSKTVsO9nZgxPwkhPrpVsE6gksTSuihQPK4G/z2nVgsBkuC4x58ewVjROKixHJ+C
 W/4HBioio2gBS1c8S4MtZnCBLt05dArjTqB4g2zoZNivZMxri3hLhpEzw6k7btE0Uvh1
 enZ56vrKTX5EdVl3HYI/E+Xvd+8rpBjQ/i58kX6S+UCHcMWZW1mzTeecE5Vx9ngJTgEu
 O129wBWbL0/d2uzLwXvkXi0gJsQau8l59g74IMwVilDzwSEr0LaCFjP1/eCN6V6nQSVp
 ZkHSj3MAZn1RPHvcwhIic8Oct4dc4F/l0aFb0Dg1Te+nU+DlOUXtDy3RaYoyxus2Obqz AQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mnph0hu0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 11:08:49 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E3F4D100034;
 Mon, 15 Jun 2020 11:08:48 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D1F1A2BE22D;
 Mon, 15 Jun 2020 11:08:48 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun
 2020 11:08:48 +0200
Subject: Re: [PATCH v4 0/4] Enable stmpe811 touch screen on stm32f429-disco
 board
To: <dillon.minfei@gmail.com>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <p.zabel@pengutronix.de>,
 <pierre-yves.mordret@st.com>, <philippe.schenker@toradex.com>
References: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <618d3fea-aa9f-dbf6-04a1-e9db621a6cd5@st.com>
Date: Mon, 15 Jun 2020 11:08:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1591709203-12106-1-git-send-email-dillon.minfei@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_01:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020856_300555_6F175223 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [91.207.212.93 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dillon

On 6/9/20 3:26 PM, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> This patchset is intend to enable stmpe811 touch screen on stm32f429-disco
> board with three dts and one i2c driver changes.
> 
> has been validated by ts_print tool
> 
> Changes log:
> V4: indroduce 'IIC_LAST_BYTE_POS' to compatible with xipkernel boot
> 
> V3: just add change log in [PATCH V3 3/4] below ---
> 
> V2: remove id, blocks, irq-trigger from stmpe811 dts
> 
> V1:
> ARM: dts: stm32: add I2C3 support on STM32F429 SoC
> ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
> ARM: dts: stm32: enable stmpe811 on stm32429-disco board
> i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
> 
> dillon min (4):
>    ARM: dts: stm32: add I2C3 support on STM32F429 SoC
>    ARM: dts: stm32: Add pin map for I2C3 controller on stm32f4
>    ARM: dts: stm32: enable stmpe811 on stm32429-disco board
>    i2c: stm32f4: Fix stmpe811 get xyz data timeout issue
> 
>   arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 12 +++++++++
>   arch/arm/boot/dts/stm32f429-disco.dts  | 47 ++++++++++++++++++++++++++++++++++
>   arch/arm/boot/dts/stm32f429.dtsi       | 12 +++++++++
>   drivers/i2c/busses/i2c-stm32f4.c       | 12 ++++++---
>   4 files changed, 80 insertions(+), 3 deletions(-)
> 

DT patches applied on stm32-next. I changed node ordering in patch 3.

Thanks
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
