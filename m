Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA091FBBFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q4ctz3+lLtvWWu64sKRdZKCxr7EUsHRO6VOUzQR9iAg=; b=Mj05EQK2pj0NgLQlJAw1ApMgC
	TRfD4E6nsjqW4ObFrQDjyJbeJupfmmDSvsqQYOLrIjNPmTSmjMLbD8D4S/TXn82kc/Um+UptKMMtR
	rP8YA1N957sAJHTirruCukp2SaGnTWxRp7JckXuUhMJKoRgqgGs7Nv+/kLALIDYFmPAxu2iiYTCRH
	jAKnNXYNYNc0zZst+UbVtL/NhNg7qOiCZFon25VbSAEPGVykWLisapzQq0/kSCxwNta5AVFzHvBQm
	krvYwPvwvKGGBFsH+9IEgyj3JwRy8nQp1xieg5Qb00N98R8yx5zHDlXQQy0pklbp4I29xkWZT/I0B
	Lsx/9Hp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEfN-0001lY-67; Tue, 16 Jun 2020 16:42:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEdy-0000a6-I0
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:41:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB28E1F1;
 Tue, 16 Jun 2020 09:40:59 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CFD93F73C;
 Tue, 16 Jun 2020 09:40:58 -0700 (PDT)
Subject: Re: [PATCH] soc: imx: Kconfig: force using OF when COMPILE_TEST
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 peng.fan@nxp.com
References: <1592216485-20574-1-git-send-email-peng.fan@nxp.com>
 <20200616155944.ujespw6johpjst4g@taurus.defre.kleine-koenig.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6ca1c2a4-0dfc-ea90-b890-58094836818d@arm.com>
Date: Tue, 16 Jun 2020 17:40:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200616155944.ujespw6johpjst4g@taurus.defre.kleine-koenig.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_094102_662216_23C51F92 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aisheng.dong@nxp.com, s.hauer@pengutronix.de, linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-16 16:59, Uwe Kleine-K=F6nig wrote:
> On Mon, Jun 15, 2020 at 06:21:25PM +0800, peng.fan@nxp.com wrote:
>> From: Peng Fan <peng.fan@nxp.com>
>>
>> Fix the build warning with x86_64-randconfig
>>>> drivers/soc/imx/soc-imx8m.c:150:34: warning: unused variable
>>>> 'imx8_soc_match' [-Wunused-const-variable]
>> static const struct of_device_id imx8_soc_match[] =3D { ^
>>
>> Fixes: fc40200ebf82 ("soc: imx: increase build coverage for imx8m soc dr=
iver")
>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>> ---
>>   drivers/soc/imx/Kconfig | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
>> index d515d2cc20ed..aadf13c9d396 100644
>> --- a/drivers/soc/imx/Kconfig
>> +++ b/drivers/soc/imx/Kconfig
>> @@ -19,7 +19,7 @@ config IMX_SCU_SOC
>>   =

>>   config SOC_IMX8M
>>   	bool "i.MX8M SoC family support"
>> -	depends on ARCH_MXC || COMPILE_TEST
>> +	depends on ARCH_MXC || (COMPILE_TEST && OF)
> =

> A bit prettier (IMHO) would be:
> =

> config SOC_IMX8M
>   	bool "i.MX8M SoC family support"
>   	depends on ARCH_MXC || COMPILE_TEST
> +	depends on OF
>   	default ARCH_MXC && ARM64
>   	select SOC_BUS
>   	help

That's not just prettier, it's logically correct. If some code needs OF =

to build correctly, then it depends on OF, regardless of *why* it's =

being built at any given time.

That said, if the only issue in this particular case is the warning =

above, then it's hardly a real dependency; simply marking the =

of_device_id data as __maybe_unused (like various other drivers do) =

should suffice. Limiting COMPILE_TEST coverage instead of actually =

fixing simple issues that it exposes seems a bit backwards...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
