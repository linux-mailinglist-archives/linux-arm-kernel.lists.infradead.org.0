Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 479B919F2D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/BU0D8MBpnNDWDsoh7cLEn1kQ5Z1KMj28kcAEeOKNw=; b=PdAZpSxF1C9WQG
	u2qvumgm61ebLbLymjPqXTs4T007RT1im2yv2ouUP1Kxi9FYkTfayjb1eBuBUplGfm2s6Y0+dV2JI
	asdpkLb8qCwBLRChx+VixmzNObrrwoA1UQQpWnjm9TJRyy2EcyeaVXmNfH5ySeex6+8hynyI/KvOx
	dxxOWoofRzi9bTTtwcn7mcSjv5cspTkFQfmc1vpEJczNvHGnE1FN3ZrU8J1TVk3Dqv75DOwwcd08v
	LKBrBwxt3IKQFNIKxasRGDldpHhXYIfPfziguCO6OvHl449Pb6T4LOlH5wKeBfjj3t/YFpogXeosl
	GExvW4QNC0X30+JQX6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOJ4-0003pc-O8; Mon, 06 Apr 2020 09:44:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOIy-0003oO-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 09:44:34 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0369gowF031596; Mon, 6 Apr 2020 11:44:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=2a3UrR0vvKbfCVyVukYQyK/7BqGP/1N0NHAtHA/piFE=;
 b=PUSP/zZS8e/q90fhP5DzpLOfRx8kh8mju3tyakiTGOgw4uFUJtWZJBdjVLPSKMIcZTdV
 KHjZEbpwdD96F3obw1oICbJgV+PkGT7HkP5iTSZbdNoZEUJDSjZnfYd7veE+D+iNZRR8
 uKuwFooa+ZRuhf57Co/midAgESknOjMaiX2zCcxrzKR4k45ngo+CR24gn3T6KIQHcCJq
 tXfsrjdFWnZc+Oq4lqZjAGUe3qtOYCuW7vWyE4uY/1i4uy2pJ+XA69nkbMdN0nYE8+6B
 N7K0bSlzNNYr/ATG5C1mrs84dKRgHb+en12wupcx6D9KOZ163GrHTSjTQ8xAsvs/gYcy qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 306g0w13j5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Apr 2020 11:44:18 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B83CC100034;
 Mon,  6 Apr 2020 11:44:13 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7DDD92B1868;
 Mon,  6 Apr 2020 11:44:13 +0200 (CEST)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 6 Apr
 2020 11:44:12 +0200
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
 SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
 15.00.1347.000; Mon, 6 Apr 2020 11:44:13 +0200
From: Olivier MOYSAN <olivier.moysan@st.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
Subject: Re: [PATCH] ASoC: stm32: sai: Add missing cleanup
Thread-Topic: [PATCH] ASoC: stm32: sai: Add missing cleanup
Thread-Index: AQHWC2DSIRg6JhgxIEC65JTRjgXANKhrt4mA
Date: Mon, 6 Apr 2020 09:44:13 +0000
Message-ID: <1df96e7b-89fa-7822-1a57-b9a87e8388c0@st.com>
References: <1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr>
In-Reply-To: <1586099028-5104-1-git-send-email-Julia.Lawall@inria.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <A296B775786CD642978E621365BD0C9A@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-06_05:2020-04-03,
 2020-04-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_024433_026937_4093E8B5 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Arnaud POULIQUEN <arnaud.pouliquen@st.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 4/5/20 5:03 PM, Julia Lawall wrote:
> The commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
> converts some function calls to their non-devm equivalents.  The
> appropriate cleanup code was added to the remove function, but not
> to the probe function.  Add a call to snd_dmaengine_pcm_unregister
> to compensate for the call to snd_dmaengine_pcm_register in case
> of subsequent failure.
>
> Fixes: commit 0d6defc7e0e4 ("ASoC: stm32: sai: manage rebind issue")
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>
>
> ---
>
> Not tested.
>
>   sound/soc/stm/stm32_sai_sub.c |    4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
Hi Julia,
Thanks for the patch.

Acked-by: Olivier Moysan <olivier.moysan@st.com>
>
> diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
> index 2bd280c..0d0c9af 100644
> --- a/sound/soc/stm/stm32_sai_sub.c
> +++ b/sound/soc/stm/stm32_sai_sub.c
> @@ -1556,8 +1556,10 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
>   
>   	ret = snd_soc_register_component(&pdev->dev, &stm32_component,
>   					 &sai->cpu_dai_drv, 1);
> -	if (ret)
> +	if (ret) {
> +		snd_dmaengine_pcm_unregister(&pdev->dev);
>   		return ret;
> +	}
>   
>   	if (STM_SAI_PROTOCOL_IS_SPDIF(sai))
>   		conf = &stm32_sai_pcm_config_spdif;
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
