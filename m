Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E74EE39C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urtpzJme/vz4PqK+UByKGKGjo0vFDODD3p53vwciqRs=; b=adSIt4wUcOeoeo
	PJ9JquFfewueP02YbpswDWXCN+Jm+G+wHbXH6Ay+3lzau4d0mV2lzKu/WBRlfPSj+I6nzCQleFHm+
	AHRqlM3MRyeee14CaWWnw3hyvBrafewbvZmlwl1RpjKHRFYgqZ4OsIgFv1XoORGqh5+zzJzHx+cKv
	JhEZLa32RiTJ4h06Se1QxfSf2IQHh21w+bJxPamfPapFom4ZbUjA94hoXYbXEFmhm2OGmAKr6MkEo
	vnIMcI5Ezbl7Ao3k/KN8FOmUNSHPgybd7FHP9LOhDY0/7B/8zaNi3vSOrfY6qYOc6V4G1HeNaIhrm
	0lCvpQHJj1x58PaYrPwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReBK-0007we-JO; Mon, 04 Nov 2019 15:22:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReBC-0007vh-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:22:08 +0000
Received: from [IPv6:2a00:5f00:102:0:78ab:3ff:fe4c:9c33] (unknown
 [IPv6:2a00:5f00:102:0:78ab:3ff:fe4c:9c33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9F56028A9C6;
 Mon,  4 Nov 2019 15:22:02 +0000 (GMT)
Subject: Re: linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on
 rk3399-puma-haikou
To: Linus Walleij <linus.walleij@linaro.org>,
 Chris Packham <Chris.Packham@alliedtelesis.co.nz>
References: <5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com>
 <9d1a6cba9687f94b2d36a82f42f5d4be2b16e7a6.camel@alliedtelesis.co.nz>
 <CACRpkdamE_Zyein+6x70noJ5Z6RJpV2qJEHOVwPxysONH+-Rag@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <fa0ca588-a034-1f00-8492-a3f574a5b24b@collabora.com>
Date: Mon, 4 Nov 2019 15:22:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdamE_Zyein+6x70noJ5Z6RJpV2qJEHOVwPxysONH+-Rag@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072207_227212_FC95732A 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bot@kernelci.org" <bot@kernelci.org>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "matthew.hart@linaro.org" <matthew.hart@linaro.org>,
 "mgalka@collabora.com" <mgalka@collabora.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/2019 15:18, Linus Walleij wrote:
> On Thu, Oct 31, 2019 at 8:35 PM Chris Packham
> <Chris.Packham@alliedtelesis.co.nz> wrote:
>> On Thu, 2019-10-31 at 11:41 -0700, kernelci.org bot wrote:
> 
>>> Breaking commit found:
>>>
>>> -------------------------------------------------------------------------------
>>> commit 6a41b6c5fc20abced88fa0eed42ae5e5cb70b280
>>> Author: Chris Packham <chris.packham@alliedtelesis.co.nz>
>>> Date:   Fri Oct 25 09:27:03 2019 +1300
>>>
>>>     gpio: Add xgs-iproc driver
>>>
>>>     This driver supports the Chip Common A GPIO controller present on a
>>>     number of Broadcom switch ASICs with integrated SoCs. The controller is
>>>     similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
>>>     different enough that a separate driver is required.
>>>
>>>     This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
>>>     support (pinctrl-iproc-gpio covers CCB).
>>>
>>>     Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
>>>     Link: https://lore.kernel.org/r/20191024202703.8017-3-chris.packham@alliedtelesis.co.nz
>>>     Acked-by: Scott Branden <scott.branden@broadcom.com>
>>>     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>>
>> Hmm,
>>
>> I don't see how this commit would have caused the oops. The new driver
>> shouldn't (and doesn't appear to be) run on any platform as nothing
>> declares .compatible = "brcm,iproc-gpio-cca" (yet).
> 
> I think it looks really bogus as well.
> 
> Could it be that these systems are memory constrained such that
> the kernel image just exactly right now collides with the upper
> memory limit or corrupts its own ramdisk?
> 
> I suppose I can't ask the kernel robot to do any more detailed
> debugging.
> 
> I can't see any problem with this patch.

Yes it's possible that this patch increases the kernel image size
above a threshold that causes the board to fail to boot.  However
that board isn't in the Collabora lab so I don't have direct
access to it.  I'll see what we can do to debug this, will
disable bisections in lab-theobrama-systems for now to avoid more
noise.

Guillaume

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
