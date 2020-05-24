Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC19F1E0298
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaot3439aY3jV48Ep+Wy3QQACk2stNFR+D1ScS0pId4=; b=m8kThXv5EodsUR
	l86TFvyF2iee+yM2K7kPLihzdiP0S9T3rOv0Bn6T+wu0UmiUwsroRxQY8qxPAMdezjzieJ4KUcGAx
	i9fYkWPmhQYYxtXCTzrqmm1cuvsBmM12T2Yma8zOJrvxNWXjsb8UzfIR+2xPkcrOyEO/AB0QVdrkP
	AF9QCaUqkHYvmrSJz5oRnabxH89YpQKMfj61/EEKpKl8RZyvkGHl83v2wGTdJCh/KKvvRlIXLjA2k
	NVwdco55leBVv7Jjw+ZyR7dAOi+dqkoxuapDk3Oz3J2b4XeEqwGNGBxRe6JFLDIO4h6dVuNV/dbrU
	vqedu4n+ASPmkYXJ7i/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwNU-0006ez-Dr; Sun, 24 May 2020 19:33:44 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwH5-0007S2-R4
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:27:10 +0000
IronPort-SDR: IK+4catxqpL4KcsiNVtgR5mzlE3paRGOCMvxfx/Uy366FboMqqF/igpjTq+/OWWojGrelLuoa+
 GD7IiO/PIHyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2020 12:27:06 -0700
IronPort-SDR: Jt1wxSweHy/gcVmjApzJ6eqN4bNznRQXVLnIg1IoO4kg/6e/ivSQzfrpA+9iAoRqDLNMEBs8k6
 LYbv/QAMX3Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,430,1583222400"; d="scan'208";a="413310334"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.157])
 ([10.237.72.157])
 by orsmga004.jf.intel.com with ESMTP; 24 May 2020 12:27:03 -0700
Subject: Re: [PATCH 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
To: Lars Povlsen <lars.povlsen@microchip.com>
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-3-lars.povlsen@microchip.com>
 <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
 <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
 <87wo56q2o3.fsf@soft-dev15.microsemi.net>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <abbd2306-55ed-014c-4b06-a5cb3f34796f@intel.com>
Date: Sun, 24 May 2020 22:26:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87wo56q2o3.fsf@soft-dev15.microsemi.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122708_419934_943EDCA8 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 SoC Team <soc@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/05/20 2:14 pm, Lars Povlsen wrote:
> 
> Lars Povlsen writes:
> 
>> Adrian Hunter writes:
>>
>>> On 13/05/20 4:31 pm, Lars Povlsen wrote:
>>>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>>>> designware IP, but requires some extra initialization and quirks.
>>>>
>>>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>>>> ---
> {Snip]
>>>> +};
>>>> +
>>>> +static const struct sdhci_pltfm_data sdhci_sparx5_pdata = {
>>>> +     .quirks  = 0,
>>>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Card quirk */
>>>
>>> If this is a card quirk then it should be in drivers/mmc/core/quirks.h not here.
>>
> 
> Adrian, I had a go at changing the controller quirk to a card quirk.
> 
> Unfortunately, SDHCI_QUIRK2_HOST_NO_CMD23 does not directly translate to
> MMC_QUIRK_BLK_NO_CMD23, as for 'do_rel_wr' in mmc_blk_rw_rq_prep(), it
> will *still* use MMC_SET_BLOCK_COUNT (cmd23), causing the issue.
> 
> We are using a ISSI "IS004G" device, and so I have gone through the
> motions of adding it to quirks.h. The comment before the list of devices
> using MMC_QUIRK_BLK_NO_CMD23 suggest working around a performance issue,
> which is not exactly the issue I'm seeing. I'm seeing combinations of
> CMD_TOUT_ERR, DATA_CRC_ERR and DATA_END_BIT_ERR whenever a cmd23 is
> issued.
> 
> I have not been able to test the controller with another eMMC device
> yet, but I expect its not the controller at fault.
> 
> So, I'm a little bit in doubt of how to proceed - either keep the quirk
> as a controller quirk - or make a *new* card quirk (with
> SDHCI_QUIRK2_HOST_NO_CMD23 semantics)?
> 
> Anybody else have had experience with ISSI eMMC devices?
> 
> I have also tried to use DT sdhci-caps-mask, but MMC_CAP_CMD23 is not
> read from the controller just (unconditionally) set in sdhci.c - so that
> doesn't fly either.
> 
> Any suggestions?

It is up to you.  In the future, you may want to distinguish devices that
have this problem from ones that do not.

If you are not sure it is the ISSI eMMC, and maybe not the host controller,
then might it be the board?  Perhaps make SDHCI_QUIRK2_HOST_NO_CMD23
conditional on the particular compatibility string?

At a minimum, change the "/* Card quirk */" comment to a fuller explanation.

> 
>> Yes, its supposedly a card quirk. I'll see to use the card quirks
>> methods in place.
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
