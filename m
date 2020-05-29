Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582291E7FD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 16:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OVXTlj1Vpy4LMciASg47S6pP1rlMFHmX7KcgrY2IhaQ=; b=Ax+N10mGzbrejPTVfqernUdI/M
	3yj26el+vR/W/hrjgp/BcDjBPly6nFX1+rjeGokPk4yhZWrydBhNJuwX8EFYdLBtInWVofBi44vIx
	GmhKu8FpjUrvO9DWNMkrhPuY1TEnplMRQDvHyd5tZJc2/Sjf0CBLf+40eMDtBeTj4fvsO/jL6UeUh
	M0kZk8pSbgqAzK/U8lMiTlouKl6T0gdmQZpQYRnzzRzxX2EieFuOm5Lo42BJPvv/OsYnSuJUWa4Hp
	w0Qz1culydiugIbDOFjr3ZjwKfwGqcdzX06JYJSb90vhT2uvwqD+VLLHxecFlHA8cS51hzjpy93sg
	GJgcLxMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jefjh-0004d7-7I; Fri, 29 May 2020 14:11:49 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jefja-0004cU-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 14:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590761501; x=1622297501;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=McPi/uyYFfHmQeVvhx6otxjv+LEVF2BZkJXArIGF6Pw=;
 b=ZY87lhfXXTesXWE7rRdkGTksFF5JiCJd8L8JA7upEBIUtQDygo0xN/RU
 iSYVePT5au8QcDiYwvBsmnsc5QWnojsU6COnmqw02+GwMQUtZRYMxwVfB
 TG4Laa9WUnKvtuNOYDi06xufJRXEKeHKibcZFsNgnVU9vbOuxkv/udjrE
 KsFTu+krLt6vLs6DkRjmYiI2tvavguRfO2JSc5mXabIN+lWhOoAcltU/L
 1ebdG1H7BScpZqhtyfea9d6221Zlf9A++QCtLJs4uDDnOxWNGeD0c9KNj
 hpSkcAVVc9Y/UpWJe3Hm4DJpshWQwTFlDpMi0C7hk3IFTPnMH+WbdP2vz A==;
IronPort-SDR: 9A/C2v/lTqGJAah29JTQL5X9JQIdYVxPcU+b0aGKUa6hrEKlcwegvmtswmD9QoAY78BtH33Lhb
 ZHB5uP1yT48gEuJjf2Yztfowjp8+XUMY454fCfB6WQrR4k2STJrI+D1MHSwQl9EZWXZq1GYU+Z
 LPd1iBaJt4NpL5VeigQKPkQcJm16cNGA2DpQDzDVaRCgCK2CJO6RMbr4EOcABAbZxrSsNvRkca
 abK49kVUIR1sGVNghWMxaK+pLonzAp1B2N8mc2cZPdsxUhEXkewjoEUR4CsjBXKRSwY+F45+5t
 D8c=
X-IronPort-AV: E=Sophos;i="5.73,448,1583218800"; d="scan'208";a="76765191"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 May 2020 07:11:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 29 May 2020 07:11:44 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 29 May 2020 07:11:38 -0700
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-3-lars.povlsen@microchip.com>
 <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
 <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
 <87wo56q2o3.fsf@soft-dev15.microsemi.net>
 <abbd2306-55ed-014c-4b06-a5cb3f34796f@intel.com>
 <87sgfoozt8.fsf@soft-dev15.microsemi.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
In-Reply-To: <87sgfoozt8.fsf@soft-dev15.microsemi.net>
Date: Fri, 29 May 2020 16:11:37 +0200
Message-ID: <87k10uq19i.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_071142_235168_40FD30B7 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Lars Povlsen writes:

> Adrian Hunter writes:
>
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 20/05/20 2:14 pm, Lars Povlsen wrote:
>>>
>>> Lars Povlsen writes:
>>>
>>>> Adrian Hunter writes:
>>>>
>>>>> On 13/05/20 4:31 pm, Lars Povlsen wrote:
>>>>>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>>>>>> designware IP, but requires some extra initialization and quirks.
>>>>>>
>>>>>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>>>>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>>>>>> ---
>>> {Snip]
>>>>>> +};
>>>>>> +
>>>>>> +static const struct sdhci_pltfm_data sdhci_sparx5_pdata = {
>>>>>> +     .quirks  = 0,
>>>>>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Card quirk */
>>>>>
>>>>> If this is a card quirk then it should be in drivers/mmc/core/quirks.h not here.
>>>>
>>>
>>> Adrian, I had a go at changing the controller quirk to a card quirk.
>>>
>>> Unfortunately, SDHCI_QUIRK2_HOST_NO_CMD23 does not directly translate to
>>> MMC_QUIRK_BLK_NO_CMD23, as for 'do_rel_wr' in mmc_blk_rw_rq_prep(), it
>>> will *still* use MMC_SET_BLOCK_COUNT (cmd23), causing the issue.
>>>
>>> We are using a ISSI "IS004G" device, and so I have gone through the
>>> motions of adding it to quirks.h. The comment before the list of devices
>>> using MMC_QUIRK_BLK_NO_CMD23 suggest working around a performance issue,
>>> which is not exactly the issue I'm seeing. I'm seeing combinations of
>>> CMD_TOUT_ERR, DATA_CRC_ERR and DATA_END_BIT_ERR whenever a cmd23 is
>>> issued.
>>>
>>> I have not been able to test the controller with another eMMC device
>>> yet, but I expect its not the controller at fault.
>>>
>>> So, I'm a little bit in doubt of how to proceed - either keep the quirk
>>> as a controller quirk - or make a *new* card quirk (with
>>> SDHCI_QUIRK2_HOST_NO_CMD23 semantics)?
>>>
>>> Anybody else have had experience with ISSI eMMC devices?
>>>
>>> I have also tried to use DT sdhci-caps-mask, but MMC_CAP_CMD23 is not
>>> read from the controller just (unconditionally) set in sdhci.c - so that
>>> doesn't fly either.
>>>
>>> Any suggestions?
>>
>> It is up to you.  In the future, you may want to distinguish devices that
>> have this problem from ones that do not.
>>
>> If you are not sure it is the ISSI eMMC, and maybe not the host controller,
>> then might it be the board?  Perhaps make SDHCI_QUIRK2_HOST_NO_CMD23
>> conditional on the particular compatibility string?
>>
>> At a minimum, change the "/* Card quirk */" comment to a fuller explanation.
>>
>
> Adrian, I'm getting a board ready with another eMMC device, and we're
> also trying to contact ISSI for info.
>
> My hope is to at least verify whether this is a controller or a card
> issue one way or the other. Then, I'll choose an appropriate solution
> for it.
>
> Thank you for your advice so far.
>

I was able to try on a board with another eMMC card (panasonic), so that
clearly casts the suspicion on the controller, and ISSI is in the clear.

I reintroduced the original SDHCI_QUIRK2_HOST_NO_CMD23 quirk, with a
"Controller issue" comment.

I will refresh the series shortly.

Cheers,

> ---Lars
>
>>>
>>>> Yes, its supposedly a card quirk. I'll see to use the card quirks
>>>> methods in place.
>>>>
>>>

--
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
