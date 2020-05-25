Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0822C1E1078
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 16:27:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BIPbIWv2IflDqOmD4xmKh9NENBYaj8pzwGiUnE5wae0=; b=nxKECGwLN0UAU6i8VECDGoomUM
	k51+CPF3CMotBn9vMizsAfGD1KYzk0IN+q7e7bstWeLlDNpCA5f7CqN1/iBmAMbjtWSbGwI6GAGf0
	hD9KaAptqyZ9YcVHvDDWoMzfsBYcRmHYGFmXHzdGmTXXrevT+wgcpuyN5viRYkcDMSOFtPWlWVjcI
	gSEMrbLuXNKZll3FvDO68zTLUxoKapFIOEsXWZjCfxEJMUneG7JM0xUmp5Y+8SB54LZUqlz7wU0EI
	AFkYWAhGWLJuHYMGcgavVa+aF7qPNT7OIp0i4vN8xKpt3XWV7JPkZkRQI5Z57AJNFAxPgOC8bYped
	qhjSyj3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdE4V-0002De-15; Mon, 25 May 2020 14:27:19 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdE4J-0002CR-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 14:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590416827; x=1621952827;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=GFYGDQDidiAIsf6A9qkRWMwevlywavapMyZL4vq1R3o=;
 b=zc71N2lReX+mUV6dFDPIQEA8bQ9Ad+eGsvkFDELeXt3b5KJsuIjdBh4l
 B9RKX3NQjd0+w1v14QP29/j4+03+4kQYWkVU+s6eJpBy9x+k8PQqiO1RB
 IPnxhj7zZP06YbVbmXxRFzTwNLep81gbTfPTEmEol3uaXRBcuP/6L5AF7
 74ugcRwxEVQf7Gkojsh+y/jUndDqL5UIEiYVqzCSBOg7HvQ6DUkJviBz4
 N7ELtielbq0DyP4aYr4oC5JGVxVzj6YfcswOVMA6xoGIsqLMpjBDtGWAG
 CWbpOmcbqcCyAnbP1MZUa1SLgMKqXhTnI8ybTxRMpfUo6GgrpToJ2kNAv w==;
IronPort-SDR: b2/4aXB09gGz4fU4ObByebBRtITl0q6dSxd9wzWdo7W8teK24GN3lCnoNM/H11S0qrmP3OYiyy
 b4+L8Z5qmZn8+jxryZ21rB3zJdnAHRZcsjA/tbRDvxAVwDtAKj/U5BlVt5Gxe5Bee1EdrygqN9
 JvnbXgC2QAM2vJwDviz4VRAl7bfYsUzXKqcmy9WvWo98gaHAjpFlMTVWLfs7oERoQcRaau9cFi
 /DxZBpY3JL7k02ALG+WCyBO7hh8rS4qULchSdVOmSZ4pkNXZzaEwTURAIDq1vljsMZnhjcBIBx
 aEY=
X-IronPort-AV: E=Sophos;i="5.73,433,1583218800"; d="scan'208";a="74410943"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 May 2020 07:27:03 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 07:27:02 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 May 2020 07:27:00 -0700
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-3-lars.povlsen@microchip.com>
 <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
 <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
 <87wo56q2o3.fsf@soft-dev15.microsemi.net>
 <abbd2306-55ed-014c-4b06-a5cb3f34796f@intel.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
In-Reply-To: <abbd2306-55ed-014c-4b06-a5cb3f34796f@intel.com>
Date: Mon, 25 May 2020 16:26:59 +0200
Message-ID: <87sgfoozt8.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_072707_610838_1F5EBB58 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Microchip Linux Driver
 Support <UNGLinuxDriver@microchip.com>, SoC Team <soc@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Adrian Hunter writes:

> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
> On 20/05/20 2:14 pm, Lars Povlsen wrote:
>>
>> Lars Povlsen writes:
>>
>>> Adrian Hunter writes:
>>>
>>>> On 13/05/20 4:31 pm, Lars Povlsen wrote:
>>>>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>>>>> designware IP, but requires some extra initialization and quirks.
>>>>>
>>>>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>>>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>>>>> ---
>> {Snip]
>>>>> +};
>>>>> +
>>>>> +static const struct sdhci_pltfm_data sdhci_sparx5_pdata = {
>>>>> +     .quirks  = 0,
>>>>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Card quirk */
>>>>
>>>> If this is a card quirk then it should be in drivers/mmc/core/quirks.h not here.
>>>
>>
>> Adrian, I had a go at changing the controller quirk to a card quirk.
>>
>> Unfortunately, SDHCI_QUIRK2_HOST_NO_CMD23 does not directly translate to
>> MMC_QUIRK_BLK_NO_CMD23, as for 'do_rel_wr' in mmc_blk_rw_rq_prep(), it
>> will *still* use MMC_SET_BLOCK_COUNT (cmd23), causing the issue.
>>
>> We are using a ISSI "IS004G" device, and so I have gone through the
>> motions of adding it to quirks.h. The comment before the list of devices
>> using MMC_QUIRK_BLK_NO_CMD23 suggest working around a performance issue,
>> which is not exactly the issue I'm seeing. I'm seeing combinations of
>> CMD_TOUT_ERR, DATA_CRC_ERR and DATA_END_BIT_ERR whenever a cmd23 is
>> issued.
>>
>> I have not been able to test the controller with another eMMC device
>> yet, but I expect its not the controller at fault.
>>
>> So, I'm a little bit in doubt of how to proceed - either keep the quirk
>> as a controller quirk - or make a *new* card quirk (with
>> SDHCI_QUIRK2_HOST_NO_CMD23 semantics)?
>>
>> Anybody else have had experience with ISSI eMMC devices?
>>
>> I have also tried to use DT sdhci-caps-mask, but MMC_CAP_CMD23 is not
>> read from the controller just (unconditionally) set in sdhci.c - so that
>> doesn't fly either.
>>
>> Any suggestions?
>
> It is up to you.  In the future, you may want to distinguish devices that
> have this problem from ones that do not.
>
> If you are not sure it is the ISSI eMMC, and maybe not the host controller,
> then might it be the board?  Perhaps make SDHCI_QUIRK2_HOST_NO_CMD23
> conditional on the particular compatibility string?
>
> At a minimum, change the "/* Card quirk */" comment to a fuller explanation.
>

Adrian, I'm getting a board ready with another eMMC device, and we're
also trying to contact ISSI for info.

My hope is to at least verify whether this is a controller or a card
issue one way or the other. Then, I'll choose an appropriate solution
for it.

Thank you for your advice so far.

---Lars

>>
>>> Yes, its supposedly a card quirk. I'll see to use the card quirks
>>> methods in place.
>>>
>>

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
