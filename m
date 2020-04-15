Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4243F1AA2B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHyQvBKvJZzMK7QAPAXOdXs2FJP293iXSd4XdoBc9KE=; b=HUYpIcyAIsx78N
	DPwcqQH5g8dsmzORE1/7lYUMwyV+u//GzBG8EeHnxOhi6krivKMzAmMNl0zhxDUgHqpF+wnCrljUl
	nUB9xw3dlWHBGfxxanR/kDlHq2NppsWzrDdkCB5CCckqKlzKIPSjY6jc7fswujP9kHgYhVutoeMb6
	Bdqo1KZJs22UsdbuQTwvoR+CBWetsuTxO04Qh3n344vKoByI9a1Cj4M9GUQsJzQeUN/O1k96T6mJ6
	UGLsQlSjHrXA8smyB7RB4tVMN4MuYqu4JEd1KWgYqUGPJY4USzFq7DDJCVM2NeXf85oougxpKAloW
	gaxAa63wZQSqUj7vBMPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhiK-0001Pr-5L; Wed, 15 Apr 2020 13:04:24 +0000
Received: from mo6-p03-ob.smtp.rzone.de ([2a01:238:20a:202:5303::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhi8-0001P0-Ah
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:04:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586955849;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=CdHAABA4O4WBpGafReQS38iVaIL+NYE+i3qxsiPxeAo=;
 b=Kb4Xh2WtPkq6b5XooLuiA9mFbdZDkesMtqCLYHhZudlbChOQzbJF3zu7H5exAnf5J1
 5CT0XPYt7Rbb6rFwXt25igairvDwAmSJvafWrIijllfy2oG/7AtpmArWY/WB6NoLiRlg
 LWNz81+j0owubCQDiAxx78zfkRuqrD1PaqsmgUiDBS32qBeQM5qQfw2jWZemM0Ce8Z/1
 sraHhfg8a4zBs7F2j+ZAffLmgwtwQbK0Kmt2RlFEkGVgRsH3uMxjbvGSscMJgLEQ2kri
 92rdP29X3desNl2TUQdU9izQ2e6/Uhb+nfU5ugerMHobPk+mOIPqdSLjBAjG39xAFNrY
 IAeQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3FD47231
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 15:04:07 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
Date: Wed, 15 Apr 2020 15:04:07 +0200
Message-Id: <C589D06E-435E-4316-AD0A-8498325039E3@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
 <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>,
 Philipp Rossak <embed3d@gmail.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_060412_956246_8A9115EA 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5303:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 OpenPVRSGX Linux Driver Group <openpvrsgx-devgroup@letux.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Am 15.04.2020 um 15:02 schrieb Maxime Ripard <maxime@cerno.tech>:
> 
> On Wed, Apr 15, 2020 at 02:41:52PM +0200, H. Nikolaus Schaller wrote:
>>>> The kernel modules built from this project have successfully
>>>> demonstrated to work with the DTS definitions from this patch set on
>>>> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
>>>> partially work on OMAP3530 and PandaBoard ES but that is likely a
>>>> problem in the kernel driver or the (non-free) user-space libraries
>>>> and binaries.
>>>> 
>>>> Wotk for JZ4780 (CI20 board) is in progress and there is potential
>>>> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
>>>> and CedarView devices.
>>> 
>>> If it's not been tested on any Allwinner board yet, I'll leave it
>>> aside until it's been properly shown to work.
>> 
>> Phillip has tested something on a83.
> 
> I'm a bit skeptical on that one since it doesn't even list the
> interrupts connected to the GPU that the binding mandates.

I think he left it out for a future update.
But best he comments himself.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
