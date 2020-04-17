Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82B51ADCF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 14:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fcYmUy4DEqxnTuZZgoyNs+QtNy5Tsbf613TD0hbkEQs=; b=OhT75GEkDntowfHCPNjfar7GV
	HOSM2zhb5EuEC82PbwyL+sFex1fJSL5oO2J5gCY8JnDINQULWLRUQVRSU5I0E1SXes8MYbPnLIbeW
	JsKgvGXkMMqbWLTweIBFW166eMhnf5k56L3Xp6llx70pm5Iu+eApJtM0n2EIgAArYl75vqOHtdnRH
	wKxykyJF3739EPzYyqgNl5Z2nAL3w40C4s+6INqnwN2auYMu7pA48mlB7uM7cvyYy7SOgp126FeuC
	7pKL20utRugETsGORQPz2a0AosB1X8KFxK9gFT57rU2fSB7fXpx/QAcOOlReK1KhwFllOLTtvZ6pU
	X1GkTqB+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPPo9-0008La-HJ; Fri, 17 Apr 2020 12:09:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPPny-0008KW-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 12:09:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so1549771wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 05:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YQmfy5glSWEhJacmHQcBoh0P5gI+y1xLhn/MI5MwRqk=;
 b=a0P/bUJk6o4KfMmFecVMQRsWuelunj5M3QJxQxTu6to4WAQob5LfbxChfRH0a6dwDj
 iNR57ygB8uH7UURrRNzWkQ8vspIJVqgol9MkvvXSz/cm+AnLhC+uKmwA3jpvuOobCcgc
 KON4uK1f+5Y1OLIVlTxIEEI3ASLbbuSLQ3NiS2NUfo5xrqJo/Q5iMZpWAjtWhx5/M0KN
 hRvTCofOnBp3OUfJMfth7Ov6eIlNj9MXG1acK/G7uyIUgNEBLcPBcKJ+tIH80fWO6DuJ
 rWftpSBDDApCaJzKHUzzK+sJRq2rmfLKHntuqUrJ3fCT5oPSY1tJwYLhRQuZIlZ5M9eF
 pKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YQmfy5glSWEhJacmHQcBoh0P5gI+y1xLhn/MI5MwRqk=;
 b=d/sMbxbViyr6skVxkGXqoytYvEaR4nelWoQpYLFlKdMETU8WjLkE4V02S1qlnWxCuA
 iDg6obg6YeOjUEwHbAI48KZtNNulB31swu5FqkqfaDEXAJ4Cn5Y0MSGUOYkXrxSv+TB1
 JeRUCUzMXDWDtcXfnex+dcSzyzgCfZ4Mt417smgdJ9g7M5h6t3BUKb87oLhNF09Ozs5e
 bgInICgBDtyB6CjJe9yieKRrLTWV6jWtv8lOf8PpdrAYfdQoPfTTYy7p0meu8ZqDpCMn
 pUr42DO14atdXKjETQty98kcsm/TZPv5SdM8L8j72QbcXiKoNW2O4v7CwLFWwS9xQPHk
 3uUQ==
X-Gm-Message-State: AGi0Pub+Kzlwqxr00QojxGvTZI93nm01fTDpMiececp1ibOnX3x9Jw/0
 d1tWzngwpBUITRK9XRnFmgg=
X-Google-Smtp-Source: APiQypJw9RvOMBiofKtDCRe+QcAA+eB/l83Q4b2jSf0HWRF7CviGAUhDoTYoDphSTR+uEnZgPspyVA==
X-Received: by 2002:a5d:4485:: with SMTP id j5mr3343798wrq.427.1587125348648; 
 Fri, 17 Apr 2020 05:09:08 -0700 (PDT)
Received: from ?IPv6:2a02:810d:340:2e50:14a4:6f21:1f15:2088?
 ([2a02:810d:340:2e50:14a4:6f21:1f15:2088])
 by smtp.gmail.com with ESMTPSA id n2sm10823975wrq.74.2020.04.17.05.09.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Apr 2020 05:09:08 -0700 (PDT)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
To: "H. Nikolaus Schaller" <hns@goldelico.com>,
 Maxime Ripard <maxime@cerno.tech>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
 <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
From: Philipp Rossak <embed3d@gmail.com>
Message-ID: <10969e64-fe1f-d692-4984-4ba916bd2161@gmail.com>
Date: Fri, 17 Apr 2020 14:09:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_050910_669928_6251A75A 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [embed3d[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On 15.04.20 15:04, H. Nikolaus Schaller wrote:
> 
>> Am 15.04.2020 um 15:02 schrieb Maxime Ripard <maxime@cerno.tech>:
>>
>> On Wed, Apr 15, 2020 at 02:41:52PM +0200, H. Nikolaus Schaller wrote:
>>>>> The kernel modules built from this project have successfully
>>>>> demonstrated to work with the DTS definitions from this patch set on
>>>>> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
>>>>> partially work on OMAP3530 and PandaBoard ES but that is likely a
>>>>> problem in the kernel driver or the (non-free) user-space libraries
>>>>> and binaries.
>>>>>
>>>>> Wotk for JZ4780 (CI20 board) is in progress and there is potential
>>>>> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
>>>>> and CedarView devices.
>>>>
>>>> If it's not been tested on any Allwinner board yet, I'll leave it
>>>> aside until it's been properly shown to work.
>>>
>>> Phillip has tested something on a83.
>>
Yes I'm currently working on the a83t demo. The kernel module is loading 
correctly and the clocks, interrupts and resets seems to be working 
correctly.

I'm currently working on getting the users space driver working with the 
kernel driver. This is hopefully done soon.

>> I'm a bit skeptical on that one since it doesn't even list the
>> interrupts connected to the GPU that the binding mandates.
> 
> I think he left it out for a future update.
> But best he comments himself.

I'm currently working on those bindings. They are now 90% done, but they 
are not finished till now. Currently there is some mainline support 
missing to add the full binding. The A83T and also the A31/A31s have a 
GPU Power Off Gating Register in the R_PRCM module, that is not 
supported right now in Mainline. The Register need to be written when 
the GPU is powered on and off.

@Maxime: I totally agree on your point that a demo needs to be provided 
before the related DTS patches should be provided. That's the reason why 
I added the gpu placeholder patches.
Do you have an idea how a driver for the R_PRCM stuff can look like? I'm 
not that experienced with the clock driver framework.

The big question is right now how to proceed with the A83T and A31s 
patches. I see there three options, which one do you prefer?:

1. Provide now placeholder patches and send new patches, if everything 
is clear and other things are mainlined
2. Provide now patches as complete as possible and provide later patches 
to complete them when the R_PRCM things are mainlined
3. Leave them out, till the related work is mainlined and the bindings 
are final.


Since this GPU IP core is very flexible and the SOC manufactures can 
configure it on their needs, I think the binding will extend in the 
future. For example the SGX544 GPU is available in different 
configurations: there is a SGX544 core and SGX544MPx core. The x stands 
for the count of the USSE (Universal Scalable Shader Engine) cores. For 
example the GPU in the A83T is a MP1 and the A31/A31s a MP2.
In addition to that some of the GPU's have also a 2D engine.
There might be even more differences in the GPU's that we don't know 
right now and should be described in the Devicetree, but that's a 
different topic that we should keep in mind.

Cheers
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
