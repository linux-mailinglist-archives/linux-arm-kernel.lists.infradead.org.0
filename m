Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E2AEA27B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:25:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hR9N8SKCVzyDUxo8RPUfQ4OTnWTjUETq4oknly8nEz4=; b=NVrBLE+GLFVAbl
	WFUfOMoa1fj2GlFXhmzMp+COQdROl6pAodmBh1OyT6gL7Es4MDryNm81GLsP2kjRIjx//p5NT2jBc
	sVlpgFuEsD5f2ERtlfRtYKSiTQjqYxKGcJdhpTZ1DlLu+FBfuHINAUPuON8HchkZZncObend5p05L
	jl5pYQpEmp2tWYnIer7vYcwjrUR4s87NFnA+aj1sz3SaYXEAMkYG3tt8v2ET3dU+JR1OMnK2Oy0Nh
	FJmd15w1cdCxnPmAc18JfiHDFVN8N51lVu1Z8lqKkoDYbfHMQ6mHJ7zIlJtK81H/enWsOsPvUHXj2
	mIKQUmpiUPGFj61FvJKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPriX-0007yO-E0; Wed, 30 Oct 2019 17:25:09 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPriG-0007xD-6K
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1572456280;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=HxQ8LImbajVfHnvi6HR4za1A89vyuEJ5woLuz6S6thE=;
 b=LYMHuXYiMiGCCNQtIkkf4OoYBvD+zRikbJggfp0sLUVQWM47lPltIbF8ebzEARqdI1
 FZb4DZhpmCvK6mdkU6sr8PlrAru+ttWgjDmubtrfViZ5XmveWMtwFwSjjENkfoSgoaVK
 y0jVYv5pQ91OdeWOblexznrrBxGrWKc2GDTxflP6vfaunfRpHtMculpKaUKHSjeTBrIw
 7ZREXv6tmwvWJJR5k8BKpFrq5mRtlvvFcoKdWtbHM3VWL4lG43fCCEuq20fpucYpkWET
 1kSnxcTVQvosl8osJxGXpPeHmy5tMa4vQ79T+8/pEEaSznbsaJHMJQ1mjWDU2cupNSFk
 VCkQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGHPrpwDvG"
X-RZG-CLASS-ID: mo00
Received: from mbp-13-nikolaus.fritz.box
 by smtp.strato.de (RZmta 44.29.0 DYNA|AUTH)
 with ESMTPSA id L09db3v9UHOT5oz
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Wed, 30 Oct 2019 18:24:29 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v2 04/11] mmc: host: omap_hsmmc: add code for special init
 of wl1251 to get rid of pandora_wl1251_init_card
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAPDyKFp3EjTuCTj+HXhxf+Ssti0hW8eMDR-NrGYWDWSDmQz6Lw@mail.gmail.com>
Date: Wed, 30 Oct 2019 18:24:28 +0100
Message-Id: <607E3AE4-65BF-4003-86BE-C70646D53D09@goldelico.com>
References: <cover.1571510481.git.hns@goldelico.com>
 <0887d84402f796d1e7361261b88ec6057fbb0065.1571510481.git.hns@goldelico.com>
 <CAPDyKFp3EjTuCTj+HXhxf+Ssti0hW8eMDR-NrGYWDWSDmQz6Lw@mail.gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_102452_823079_363272CE 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

> Am 30.10.2019 um 16:51 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> 
>> +
>> +               np = of_get_compatible_child(np, "ti,wl1251");
>> +               if (np) {
>> +                       /*
>> +                        * We have TI wl1251 attached to MMC3. Pass this information to
>> +                        * SDIO core because it can't be probed by normal methods.
>> +                        */
>> +
>> +                       dev_info(host->dev, "found wl1251\n");
>> +                       card->quirks |= MMC_QUIRK_NONSTD_SDIO;
>> +                       card->cccr.wide_bus = 1;
>> +                       card->cis.vendor = 0x104c;
>> +                       card->cis.device = 0x9066;
>> +                       card->cis.blksize = 512;
>> +                       card->cis.max_dtr = 24000000;
>> +                       card->ocr = 0x80;
> 
> These things should really be figured out by the mmc core during SDIO
> card initialization itself, not via the host ops ->init_card()
> callback. That is just poor hack, which in the long run should go
> away.

Yes, I agree.

But I am just the poor guy who is trying to fix really broken code with
as low effort as possible.

I don't even have a significant clue what this code is exactly doing and what
the magic values mean. They were setup by pandora_wl1251_init_card() in the
same way so that I have just moved the code here and make it called in (almost)
the same situation.

> Moreover, I think we should add a subnode to the host node in the DT,
> to describe the embedded SDIO card, rather than parsing the subnode
> for the SDIO func - as that seems wrong to me.

You mean a second subnode?

The wl1251 is the child node of the mmc node and describes the SDIO card.
We just check if it is a wl1251 or e.g. wl1837 or something else or even
no child.

> To add a subnode for the SDIO card, we already have a binding that I
> think we should extend. Please have a look at
> Documentation/devicetree/bindings/mmc/mmc-card.txt.
> 
> If you want an example of how to implement this for your case, do a
> git grep "broken-hpi" in the driver/mmc/core/, I think it will tell
> you more of what I have in mind.

So while I agree that it should be improved in the long run, we should
IMHO fix the hack first (broken since v4.9!), even if it remains a hack
for now. Improving this part seems to be quite independent and focussed
on the mmc subsystem, while the other patches involve other subsystems.

Maybe should we make a REVISIT note in the code? Or add something to
the commit message about the idea how it should be done right?

> 
>> +                       of_node_put(np);
>> +               }
>> +       }
>> }
>> 
>> static void omap_hsmmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
>> --
>> 2.19.1
>> 
> 
> Kind regards
> Uffe


BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
