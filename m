Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14ED1DB13D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AomkoWmHefLYpuehv0xZDwpYEMmv5Iz0hdCDyzTpSQ=; b=IcgBm3stCsjLCZDwPT/YKsiHZv
	737PKvh58ep5S99wu90pHJaXCQei3cXcala+E+a4DqPx5ou4tDnaRAgIEF2IA/TmcZxTs2RX2h9le
	3rYEXenu6O1UVi4WFMLecIOrtG8uNCa9u03KPZuvLFwEMMv70/FNBFEgfVzvP8voL4PIOvLTUthKv
	Eh12EMBqN066yTzT4CBogAkoSvN6BDOSo+/eugAKtYh7tAZyQ/mecV46xTpDP57BmOrXk6tEbN4xF
	HYGgEReAkYYJ35u2DmDS+EarC+Bugh1Tru1ZuS9hmnZGEQt88RRZpxDDQqrv8nM2MIA9oYr/GjA7O
	fEdQqNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMg9-0005XQ-FT; Wed, 20 May 2020 11:14:29 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMfv-0005Qr-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589973255; x=1621509255;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=et7/2Wbhr+Tjr3SPQbyGvMvrDUcfwqh+l2hAH+RXOXs=;
 b=1wHzEkk0CahdZlVBcE6JlL2/9Qspton8iTPzwC8E4BaCupk4AkOmVPld
 l+NVjkNExZhMqqpMlGP/lRu+Ax6NpzLUzaRlCBYH8xs2HgKFZRtId14Ru
 hiyQNWZsOHtwrxTUSJMXX5lkwpYC6x5YKMXBq/jFay+TorMCN41ohPsrz
 myOT9ga62Ccuq2fr/aNITifCCW85sbYYNdLe5NqW1Zddy+m3rVgkb9uzD
 D7whzcnriRwDJOj1LaXapUbCL40b/02ZOiriGGYDer/I/T935Zl+aQ/+h
 5NUUbzilVZ66TEydWeR6SnEAZRMnqThOvZQkR63Lx10hz7NSNEYVxJo0l g==;
IronPort-SDR: XQ05QwiSvahC4lol82+DSsU7gaK85vSS9KTUzqz0V6Fv0dhJb94Pwfq8RYwgOlcfBmat5Eso8i
 vrNi3tK4nWLrwx9ViY4mK7wslLYL83Tdsdt8x8rnY7+P34a1HtUBz449IVEpEiqKHRqYz5JeHU
 R2wJ9tWcJeqb4cghLc2PdpBhElY0R7DZ1GE6S+OCwBwZ1EYfgramfxrGFOD62sFkwhUxqo+bsJ
 B30RgmdsmOE/nwu5DpF0dmnS8Tkvv6nhUoRp0PCjVBtQYpcPHh15cLIUNgggahDcMQD4WSN+Mk
 sL8=
X-IronPort-AV: E=Sophos;i="5.73,413,1583218800"; d="scan'208";a="77279288"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 04:14:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 04:14:07 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 20 May 2020 04:14:05 -0700
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
 <20200513133122.25121-3-lars.povlsen@microchip.com>
 <6398c7a6-ce5e-1df6-d5a6-08664a7fc123@intel.com>
 <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH 2/3] sdhci: sparx5: Add Sparx5 SoC eMMC driver
In-Reply-To: <87v9ktoc0h.fsf@soft-dev15.microsemi.net>
Date: Wed, 20 May 2020 13:14:04 +0200
Message-ID: <87wo56q2o3.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_041415_662119_171FDCE6 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
>> On 13/05/20 4:31 pm, Lars Povlsen wrote:
>>> This adds the eMMC driver for the Sparx5 SoC. It is based upon the
>>> designware IP, but requires some extra initialization and quirks.
>>>
>>> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>>> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
>>> ---
{Snip]
>>> +};
>>> +
>>> +static const struct sdhci_pltfm_data sdhci_sparx5_pdata = {
>>> +     .quirks  = 0,
>>> +     .quirks2 = SDHCI_QUIRK2_HOST_NO_CMD23 | /* Card quirk */
>>
>> If this is a card quirk then it should be in drivers/mmc/core/quirks.h not here.
>

Adrian, I had a go at changing the controller quirk to a card quirk.

Unfortunately, SDHCI_QUIRK2_HOST_NO_CMD23 does not directly translate to
MMC_QUIRK_BLK_NO_CMD23, as for 'do_rel_wr' in mmc_blk_rw_rq_prep(), it
will *still* use MMC_SET_BLOCK_COUNT (cmd23), causing the issue.

We are using a ISSI "IS004G" device, and so I have gone through the
motions of adding it to quirks.h. The comment before the list of devices
using MMC_QUIRK_BLK_NO_CMD23 suggest working around a performance issue,
which is not exactly the issue I'm seeing. I'm seeing combinations of
CMD_TOUT_ERR, DATA_CRC_ERR and DATA_END_BIT_ERR whenever a cmd23 is
issued.

I have not been able to test the controller with another eMMC device
yet, but I expect its not the controller at fault.

So, I'm a little bit in doubt of how to proceed - either keep the quirk
as a controller quirk - or make a *new* card quirk (with
SDHCI_QUIRK2_HOST_NO_CMD23 semantics)?

Anybody else have had experience with ISSI eMMC devices?

I have also tried to use DT sdhci-caps-mask, but MMC_CAP_CMD23 is not
read from the controller just (unconditionally) set in sdhci.c - so that
doesn't fly either.

Any suggestions?

> Yes, its supposedly a card quirk. I'll see to use the card quirks
> methods in place.
>

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
