Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3EFE1475
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 10:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xsdF8gXLhAYMOlOw/bRTdasCPOBBwO5dwd4HYreBks=; b=G0aHTjtAi5Ex29
	fwa4q34BRgXvBTRuRgVRS06pA4w3WGS1poeH8NriOKx8otNjEV1InozptAnAz3aIO14rH5JgRbtS4
	ju0GWhxuPGKFtkQfzftLGJp9pJPlV1c8abxrLlKo8KVK3FkprMuptScgSeA6ILSrL+jITYhxq/+PT
	NIuLtC1lkD+VeFKIa1qc0lpH9vWt52APVgHofLBa2eCJOHOUomXUdCUPWyqMrxH//FytWYh+ZrMPH
	kcjMtXJWetrdVP/P3cS+J+81Dn0XScO4DLV+1ooFzyPRQRiuk6vY+HvUcT8/SooJ9koeNDCNMXLr9
	CNdUqxydFtIoETa3gqRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCAg-0001W9-Cs; Wed, 23 Oct 2019 08:39:10 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCAH-0001Mu-0O; Wed, 23 Oct 2019 08:38:47 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DB97AD32800C05640DB2;
 Wed, 23 Oct 2019 16:38:41 +0800 (CST)
Received: from [127.0.0.1] (10.177.96.96) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Wed, 23 Oct 2019
 16:38:33 +0800
Subject: Re: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
To: Tzung-Bi Shih <tzungbi@google.com>
References: <20191023063103.44941-1-maowenan@huawei.com>
 <CA+Px+wX7-tn-rXeKqnPtp74tU5cLxhJwF6XZ_jeQX-tnAfvO5g@mail.gmail.com>
From: maowenan <maowenan@huawei.com>
Message-ID: <1d948ec1-69e4-735f-c369-80d2b28e0eaa@huawei.com>
Date: Wed, 23 Oct 2019 16:38:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CA+Px+wX7-tn-rXeKqnPtp74tU5cLxhJwF6XZ_jeQX-tnAfvO5g@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.96.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_013845_294109_4483B525 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, ALSA
 development <alsa-devel@alsa-project.org>, kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuehaibing@huawei.com,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?U2h1bmxpIFdhbmcgKOeOi+mhuuWIqSk=?= <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, tglx@linutronix.de,
 Jaroslav Kysela <perex@perex.cz>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/23 16:32, Tzung-Bi Shih wrote:
> On Wed, Oct 23, 2019 at 2:31 PM Mao Wenan <maowenan@huawei.com> wrote:
>>
>> If SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A=y,
>> below errors can be seen:
>> sound/soc/codecs/cros_ec_codec.o: In function `send_ec_host_command':
>> cros_ec_codec.c:(.text+0x534): undefined reference to `cros_ec_cmd_xfer_status'
>> cros_ec_codec.c:(.text+0x101c): undefined reference to `cros_ec_get_host_event'
>>
>> This is because it will select SND_SOC_CROS_EC_CODEC
>> after commit 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV"),
>> but SND_SOC_CROS_EC_CODEC depends on CROS_EC.
>>
>> Fixes: 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV")
>> Signed-off-by: Mao Wenan <maowenan@huawei.com>
>> ---
>>  sound/soc/mediatek/Kconfig | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
>> index 8b29f39..a656d20 100644
>> --- a/sound/soc/mediatek/Kconfig
>> +++ b/sound/soc/mediatek/Kconfig
>> @@ -125,7 +125,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
>>         select SND_SOC_MAX98357A
>>         select SND_SOC_BT_SCO
>>         select SND_SOC_TS3A227E
>> -       select SND_SOC_CROS_EC_CODEC
>> +       select SND_SOC_CROS_EC_CODEC if CROS_EC
>>         help
>>           This adds ASoC driver for Mediatek MT8183 boards
>>           with the MT6358 TS3A227E MAX98357A audio codec.
>> --
>> 2.7.4
>>
> 
> Just realized your patch seems not showing in the list
> (https://mailman.alsa-project.org/pipermail/alsa-devel/2019-October/thread.html).
> I have no idea why.
> 
I receive below message after I post, do you know why?
'''
Your mail to 'Alsa-devel' with the subject

    [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency

Is being held until the list moderator can review it for approval.

The reason it is being held:

    Post by non-member to a members-only list

Either the message will get posted to the list, or you will receive
notification of the moderator's decision.  If you would like to cancel
this posting, please visit the following URL:

    https://mailman.alsa-project.org/mailman/confirm/alsa-devel/574c24ad00f4d1aefc802a8a4b2c5fbda710e4e9
'''

> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
