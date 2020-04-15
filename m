Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE081AA107
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4c4Xliz9f5SbuWUZammOx6tmlpk8YHmH8SxAAqPgQQk=; b=BzKr3mUp5IvcrZ
	PstNWjdBw2k92ukB73+4lYfpEPQk7LYfpPB8CnLROUUhnzc/Jyr3hUDt0xhOULoiBn7B3+uQN019M
	eB+0Ko5YCATnJuJP9qqyvwo8SFt4Kh08p8SGppJFJxX496+7lK8KTj3u6/Yeo6QrbNxHjIZA1XoP2
	z/MMKmIaeqSRG63e6rl/emG+IVFsLE3nACJoekJh4d0jaTO23Gzd3p57tHfqCOnRw2k988cVtYlKs
	+PNxGYfa79UxfcLZKmEToe7bucJ0buhqyZMw8mChJZnDizlkpqsg0LyWVIJZ75ZDOgwWpXsmXkWX1
	sE4Vd/30YgaKsPCDhyTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhMm-0006ye-Cy; Wed, 15 Apr 2020 12:42:08 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhMd-0006xc-1f
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586954516;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=FKESjbpPziqBCtdf8D9+b48eIHzcaxzwb3aIpI4k59s=;
 b=fbX4qQuYrXbgOJDqHJv2C7ns7vASN6bgFclcfQrp6rQPL8nPHabC1X6M0NgZWteycl
 +MeDp6BM8GA5l8i20NtSKbCwuZk6vuT0xj171YaSCwdYd5EnvhqQSxbW6y05e4m48f1c
 jk3LySstrmsOFcuxL0BI43lVf1UjskH3pvzYvoPFC5h+M61maryHYFr4eaWzC38N7LPb
 Gf60osH1YvoTbOFo4+QyZZHEXiE6myuDsqgtwBSiBiDivkH42FgOYgZEMg9Sqjdz/frC
 dUE77MpbzIqb+n8O81E2zDsaiJ8ynIfg5vGUGcvBc5XnmyHxWwYfzfD3nsL8aX1hx1oO
 70rQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/PtwDConyM="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.4.0 DYNA|AUTH)
 with ESMTPSA id 6028a2w3FCfq1v4
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 14:41:52 +0200 (CEST)
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
Date: Wed, 15 Apr 2020 14:41:52 +0200
Message-Id: <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
To: Maxime Ripard <maxime@cerno.tech>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054159_677349_36C2E64F 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:6 listed in]
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
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

> Am 15.04.2020 um 12:10 schrieb Maxime Ripard <maxime@cerno.tech>:
> 
> Hi,
> 
> On Wed, Apr 15, 2020 at 10:35:07AM +0200, H. Nikolaus Schaller wrote:
>> * rebased to v5.7-rc1
>> * added DTS for for a31, a31s, a83t - by Philipp Rossak <embed3d@gmail.com>
>> * added DTS for "samsung,s5pv210-sgx540-120" - by Jonathan Bakker <xc-racer2@live.ca>
>> * bindings.yaml fixes:
>>  - added a31, a31
>>  - fixes for omap4470
>>  - jz4780 contains an sgx540-130 and not -120
>>  - a83t contains an sgx544-115 and not -116
>>  - removed "additionalProperties: false" because some SoC may need additional properties
>> 
>> PATCH V5 2020-03-29 19:38:32:
>> * reworked YAML bindings to pass dt_binding_check and be better grouped
>> * rename all nodes to "gpu: gpu@<address>"
>> * removed "img,sgx5" from example - suggested by Rob Herring <robh+dt@kernel.org>
>> 
>> PATCH V4 2019-12-17 19:02:11:
>> * MIPS: DTS: jz4780: removed "img,sgx5" from bindings
>> * YAML bindings: updated according to suggestions by Rob Herring
>> * MIPS: DTS: jz4780: insert-sorted gpu node by register address - suggested by Paul Cercueil
>> 
>> PATCH V3 2019-11-24 12:40:33:
>> * reworked YAML format with help by Rob Herring
>> * removed .txt binding document
>> * change compatible "ti,am335x-sgx" to "ti,am3352-sgx" - suggested by Tony Lindgren
>> 
>> PATCH V2 2019-11-07 12:06:17:
>> * tried to convert bindings to YAML format - suggested by Rob Herring
>> * added JZ4780 DTS node (proven to load the driver)
>> * removed timer and img,cores properties until we know we really need them - suggested by Rob Herring
>> 
>> PATCH V1 2019-10-18 20:46:35:
>> 
>> This patch series defines child nodes for the SGX5xx interface inside
>> different SoC so that a driver can be found and probed by the
>> compatible strings and can retrieve information about the SGX revision
>> that is included in a specific SoC. It also defines the interrupt number
>> to be used by the SGX driver.
>> 
>> There is currently no mainline driver for these GPUs, but a project
>> [1] is ongoing with the goal to get the open-source part as provided
>> by TI/IMG and others into drivers/gpu/drm/pvrsgx.
> 
> Just a heads up, DRM requires an open-source user-space, so if your
> plan is to move the open-source kernel driver while using the
> closed-source library (as that page seem to suggest), that might
> change a few things.

The far future goal is to arrive at a completely open implementation,
but nobody knows how to get there. Therefore we bake smaller bread :)

step 1: get SoC integration right and stable (this is what this series is for)
step 2: make the open source kernel driver work with closed-source libs
step 3: write open-source replacements for user-space

> 
>> The kernel modules built from this project have successfully
>> demonstrated to work with the DTS definitions from this patch set on
>> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
>> partially work on OMAP3530 and PandaBoard ES but that is likely a
>> problem in the kernel driver or the (non-free) user-space libraries
>> and binaries.
>> 
>> Wotk for JZ4780 (CI20 board) is in progress and there is potential
>> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
>> and CedarView devices.
> 
> If it's not been tested on any Allwinner board yet, I'll leave it
> aside until it's been properly shown to work.

Phillip has testes something on a83.

BR and thanks,
Nikolaus
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
