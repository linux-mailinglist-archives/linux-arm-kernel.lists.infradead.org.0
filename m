Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2823B6D342
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdBnhgMDTG7d3VH5tSMHqA7Ye+s9kjg8SfDySmCqjxk=; b=U9z+FiA72D9tDg
	ZE2XBT1b0xkSGU2yQVVqXNgj3CSOazKo2JhAjorog/WctQGMiNuC/xhrnqnS1gj+cawwesbqJ7I38
	xyJkhSqV36GXqo30f+ybbcQKPadGbqmOBZZHxKsS7ZSa/tkUBBPEW5uWvgRTEKSHExDXA+8Z9OjVW
	Qgn+L1RTttCi3BVz0irnb3/swBnWPYe84BxD1N9aI2zNTyqyDQkXLNqImNAevJrlNqWRrqLhaVrAp
	5NquRYk/NdeR+vZyqqtICAKFCYrlQmCk70ZikZlyJXKa/Xtmoja5tidxU30/zO+tBy6Gsuwjk9v9f
	8ePzlz8F8f16lsWe2UOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAbj-0000fJ-Ow; Thu, 18 Jul 2019 17:54:19 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAbV-0000eI-OB; Thu, 18 Jul 2019 17:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563472428;
 bh=Ws+8wMjiWaGOKU4kvq1jT9l3qZcDnTW0/41cjy6DpL4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=BjN+fY//nko/w/5rQIGYd0HvlnCBn5KIQFmOouc+xX3gLL6CFOANpQwjVr8upHfAe
 mSeSKLRMXaWhmxjaF7ZrCvubYxGrctHCg23drkeW2zpTc+IIHXTlrFhH0VQelZ1OcJ
 Pr4/rwBa7LM1SwHI5FeFGnKF7hTFuvH/UM98AQxw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.117]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MUGeB-1hxpNv2B5H-00RGQz; Thu, 18
 Jul 2019 19:53:48 +0200
Subject: Re: [PATCH RFC 15/18] spi: bcm2835: enable shared interrupt support
To: Mark Brown <broonie@kernel.org>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-2-git-send-email-wahrenst@gmx.net>
 <20190718124205.GC5761@sirena.org.uk>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <b23c7a5a-a432-5af6-a7dc-0a7dfbe57712@gmx.net>
Date: Thu, 18 Jul 2019 19:53:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190718124205.GC5761@sirena.org.uk>
Content-Language: en-US
X-Provags-ID: V03:K1:s8s2ahshY+3jcBcum1M9K9qTvynxTDcZ2pZ1OmPKFx6bM8dNRQZ
 daC+GFk8PMB1Mfm3GOegBde/5B5UMH/2v2epPNRatn5CyAPX5ZjF1Ya5g1WyvgGy56MD8YJ
 GrYGhZau5+f/YuHVliNcR1yKyjlx5GxFAOPkPtLlgzKZCox75HwEgs/fkFob8t0r0bCHpra
 wLCyYCK4JpVGgRd/NBatg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t9gTRLtcIC4=:LQHNPOpVpXACIQIcO9pEMT
 aPlfjGuH/gX2WLCu9GSxyMIFLTgBcM3OyGN9tdZHJFPiHfBvLRS0YnakIrDFL0mV1IEZMfkRG
 p6UI7dy5o5Hn/yk7KSKKbMIuYHl4Zswrc26/cHRISxckshJPTSDhgvHNOryFC0Ow+BYLP/qxo
 rR5DWrUjniOZ77WM6YxPdz8xTf1pbvfTjrroi5qBKNUnChBKnRKT9RqGiTMZ2z76MpkxO9//2
 AXpMguTRX+Rwc9pHUkHn4NwvUwUeLo/jXWf/+ROvZ7OVOMyfTFZ/VpOkySuUuZ4iVIccb0NaC
 9EgWKThvh992SGklahNnigOe1P5acorxYdQVBkF0fYcCvh3Dq2hBBw1bt6yMAEmyAE09R1xac
 K+ZazFc6mL7OZ35fLDt6Ll0L9vraZS3lRBJfwBJW2eeY6CWgNXLXOC+dOYeFqnvni4UOL/BKw
 8FYJHcFVMLmQVhiKyYbOyhhgCh+Q3hENqfxXW8xYBpndaCAtk/sD/NcMYq57Ql5o75j1PQrQ0
 fzaicNaW7Ylgzp/sPDLBGiwFpfk8g4xi4HXTcq+hP1JGqak48RvXw1L43wpHQQtU0rukspxXy
 ATYox1wmoRa2SP66PlzTukp+WHX2F53Sz95TuEGks0LLo8MxvPJIA8IWrHJ+Ut52ZjfTorcAP
 uigAj9IljAbASi22jMimStV03kDe4YS/gRV8bmWFFl2+abJlLFyGet6JJ0iQFW1+TvoGdkzY6
 DELqrTgcHhBSFKV4uPujYLriO9VFE6kXULIDt0VeLonHXIPhsbD4DqQFsc91c02g/ZDxFPUV5
 Qcgl2Gal7zpPmP0pOijNWLMhKHNgILvUDkHyUkku5FwFoNj6LHL5EWTzMNmH4BTL2LvKXG5jM
 HwCN6q0NNT0zRGbwFWGNu/Xo9w7JA9joTFBtrQRRmBLxhvQmKa2unuPS04fz3LcachddqK38n
 dnwYzbu4nlep2wd8TKQ5X7BA2wjKNyjkWpI2E7K7nPlI2KsqmoUERkJp4cIry86Bc5kqWDuC3
 jh+fq6CXxk0qnhn9J3+OHw73LkVszJe+9jKh+bZBI/GNLnfm4yBVE3CqIuFbklXFVlMlmjUhC
 XHCp63gDlBfrro=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105406_086647_5C62CDB5 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Am 18.07.19 um 14:42 schrieb Mark Brown:
> On Wed, Jul 17, 2019 at 11:16:01PM +0200, Stefan Wahren wrote:
>
>> +	/* check if we got interrupt enabled */
>> +	if (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_INTR))
>> +		return IRQ_NONE;
>> +
> Is that checking if the interrupt is enabled or if it is asserted?

the BCM2835 doesn't provide a SPI register, which shows that the
interrupt has been asserted.

So i think, Martin tried to adapt the workaround from spi-bcm2835-aux
which has the same problem.

Stefan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
