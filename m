Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508A9158818
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 03:05:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cns4Yh2wWeEh9HghxUIpyN81WuEps0cMwl0T1UM51pM=; b=HrwKmJ3Unihlcr
	qeRVXIKbMcHiYoHd0DGdWNGy9lUoDhvvIu+DmpL4Tr+pe/06r9DONLQ6xsYhsxGNIZ7Nofc4s4rTF
	1qex52rpUbMo1MqToFtfftpar2JUDpy2SiFs92zYWsdBn6cTAyxt3MbRST4iys9WYq678THu5CS5H
	2QTqqDDfdsDhDBv7LBQLxQBtBaziBpVrxstyoaqovT/w8WWmj/V9tvUSJQb7jp2vvAc8c8XZxIHGu
	kt+vuYUQiw1RqKOErMqPcshtLcik6H5N6GX65/f8ZuodJpszyBpMyuxSmp9UQmWlwhjcWQnVaTLTU
	n9tG1J6STAdoe0tTgEjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1KvW-0007Vp-LF; Tue, 11 Feb 2020 02:05:26 +0000
Received: from mg.richtek.com ([220.130.44.152])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1KvM-0007V8-1E
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 02:05:18 +0000
X-MailGates: (flag:4,DYNAMIC,BADHELO,RELAY,NOHOST:PASS)(compute_score:DE
 LIVER,40,3)
Received: from 192.168.8.45
 by mg.richtek.com with MailGates ESMTP Server V5.0(29549:0:AUTH_RELAY)
 (envelope-from <jeff_chang@richtek.com>); Tue, 11 Feb 2020 10:04:43 +0800 (CST)
Received: from ex1.rt.l (192.168.8.44) by ex2.rt.l (192.168.8.45) with
 Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 11 Feb 2020 10:04:42 +0800
Received: from ex1.rt.l ([fe80::557d:30f0:a3f8:3efc]) by ex1.rt.l
 ([fe80::557d:30f0:a3f8:3efc%15]) with mapi id 15.00.1497.000; Tue, 11 Feb
 2020 10:04:42 +0800
From: =?iso-2022-jp?B?amVmZl9jaGFuZygbJEJEJUAkMkIbKEIp?=
 <jeff_chang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: RE: [PATCH] ASoC: MT6660 update to 1.0.8_G
Thread-Topic: [PATCH] ASoC: MT6660 update to 1.0.8_G
Thread-Index: AQHV2w0GcMtTuyakxUCJKOCjmW3FI6gUSfWAgAD90+A=
Date: Tue, 11 Feb 2020 02:04:42 +0000
Message-ID: <a9895e583c9b47608aeb3e29d7852f47@ex1.rt.l>
References: <1580787697-3041-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20200210185121.GC14166@sirena.org.uk>
In-Reply-To: <20200210185121.GC14166@sirena.org.uk>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.94.128]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_180516_336826_4855ACF4 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [220.130.44.152 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Mark:

Thanks for your replying.

This INIT SETTING is always be set, and we don't want anyone to modify it.

What should I do is just apply them to be hard code into the driver? I cannot use event a table to descript it like below?

static const struct codec_reg_val e4_reg_inits[] = {
        { MT6660_REG_WDT_CTRL, 0x80, 0x00 },
        { MT6660_REG_SPS_CTRL, 0x01, 0x00 },
        { MT6660_REG_AUDIO_IN2_SEL, 0x1c, 0x04 },
        { MT6660_REG_RESV11, 0x0c, 0x00 },
        { MT6660_REG_RESV31, 0x03, 0x03 },
        { MT6660_REG_RESV40, 0x01, 0x00 },
        { MT6660_REG_RESV0, 0x44, 0x04 },
        { MT6660_REG_RESV19, 0xff, 0x82 },
        { MT6660_REG_RESV17, 0x7777, 0x7273 },
        { MT6660_REG_RESV16, 0x07, 0x03 },
        { MT6660_REG_DRE_CORASE, 0xe0, 0x20 },
        { MT6660_REG_ADDA_CLOCK, 0xff, 0x70 },
        { MT6660_REG_RESV21, 0xff, 0x20 },
        { MT6660_REG_DRE_THDMODE, 0xff, 0x40 },
        { MT6660_REG_RESV23, 0xffff, 0x17f8 },
        { MT6660_REG_PWM_CTRL, 0xff, 0x15 },
        { MT6660_REG_ADC_USB_MODE, 0xff, 0x00 },
        { MT6660_REG_PROTECTION_CFG, 0xff, 0x1d },
        { MT6660_REG_HPF1_COEF, 0xffffffff, 0x7fdb7ffe },
        { MT6660_REG_HPF2_COEF, 0xffffffff, 0x7fdb7ffe },
        { MT6660_REG_SIG_GAIN, 0xff, 0x58 },
        { MT6660_REG_RESV6, 0xff, 0xce },
        { MT6660_REG_SIGMAX, 0xffff, 0x7fff },
        { MT6660_REG_DA_GAIN, 0xffff, 0x0116 },
        { MT6660_REG_TDM_CFG3, 0x1800, 0x0800 },
        { MT6660_REG_DRE_CTRL, 0x1f, 0x07 },
};

Just hard coded??


Thanks & BRs
Jeff Chang
Tel 886-3-5526789 Ext 2357
14F, No. 8, Taiyuen 1st st., Zhubei City,
Hsinchu County, Taiwan 30288



-----Original Message-----
From: Mark Brown [mailto:broonie@kernel.org]
Sent: Tuesday, February 11, 2020 2:51 AM
To: Jeff Chang <richtek.jeff.chang@gmail.com>
Cc: lgirdwood@gmail.com; perex@perex.cz; tiwai@suse.com; matthias.bgg@gmail.com; alsa-devel@alsa-project.org; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; jeff_chang(張世佳) <jeff_chang@richtek.com>
Subject: Re: [PATCH] ASoC: MT6660 update to 1.0.8_G

On Tue, Feb 04, 2020 at 11:41:37AM +0800, Jeff Chang wrote:
> From: Jeff Chang <jeff_chang@richtek.com>
>
> 1. add parsing register initial table via device tree.
> 2. add applying initial register value function at component driver.

OK, so there's still a problem with the whole concept of putting "initial register settings" in the device tree - this is clearly not idiomatic for an ASoC driver.  If there are machine specific settings that need to be done unconditionally (eg, values controlled by external passive components) there should be specific properties for them.  If there are runtime options these should be normal ALSA controls with the default values being whatever the hardware defaults are.  If there are things that should just always be set no matter what then they should just be hard coded into the driver.
************* Email Confidentiality Notice ********************

The information contained in this e-mail message (including any attachments) may be confidential, proprietary, privileged, or otherwise exempt from disclosure under applicable laws. It is intended to be conveyed only to the designated recipient(s). Any use, dissemination, distribution, printing, retaining or copying of this e-mail (including its attachments) by unintended recipient(s) is strictly prohibited and may be unlawful. If you are not an intended recipient of this e-mail, or believe that you have received this e-mail in error, please notify the sender immediately (by replying to this e-mail), delete any and all copies of this e-mail (including any attachments) from your system, and do not disclose the content of this e-mail to any other person. Thank you!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
