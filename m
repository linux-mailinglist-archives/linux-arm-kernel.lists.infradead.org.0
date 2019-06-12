Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B56A42A34
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jyXV+fMe+MlQN1CVk8dsTf9jkjwPNI/nrGYAlM+xCwM=; b=iKDIV3kOyd9lRVQTjuBc89nge
	EJd4u6kuhlYK+dTiEuX/55TcCiw2V2FIe5GS90XHQ4VPROBtvoAl+j+eiqKVkzLOT/zYvJWdWhUWe
	VNRXIY2bUCJzOlCnjw2NNfeZfs1x5mbYb9l//sgFqGuQ0ecrfmq4aAKML0LtUzW58BWt01qKOL4rx
	hmi4lct3xwbg5YUDEjfIdJVqR9Jc0EViGByyJWnphRjP4qyT/6R1c/3wwjDQk4mhLwcWpfvDkCB6Q
	o5cm3g9CKnSXGdh70YhXAcmD5fvH39wYB47oFwpdr+mhGm92bnhJSFH9ZVZW0f32hewuAL2sd07uW
	j9eU/+zZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4m9-0001zv-Ho; Wed, 12 Jun 2019 15:02:57 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4lv-0001yw-9o
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:02:44 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 8D73E4E204B; Wed, 12 Jun 2019 15:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560351761; bh=v6z1WEtCF2fp4wYe56LRARRx9Esiw5fI6QhY0kCLmO4=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=JO0+Cu/YGtgmYx6NAWZcY1i5pinFHmUbP98a2MCXKNC+E2p59MUB9Ovk5hXVUoKnJ
 2uTd1KSqXskIAEnViwmJtLyEBAVeOrXP2g6FBmBHFR3qHwZAz28XwbbhFIoep9xdxb
 0NuaLvcfqyoj023w2kd4qLAL6SbHDELgqwgkn/lQ=
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH v15 0/3] Add support for the Purism Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Wed, 12 Jun 2019 09:02:41 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190610135258.GA7976@xo-6d-61-c0.localdomain>
References: <20190528125747.1047-1-angus@akkea.ca>
 <20190605090315.GJ29853@dragon>
 <db174b0173d0bcdb9ab5ff4e2e1cc4bc@www.akkea.ca>
 <20190610135258.GA7976@xo-6d-61-c0.localdomain>
Message-ID: <b1de3d5fd352744f2c1f4e7bae266d01@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080243_396406_D5C0BA97 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, linux-kernel-owner@vger.kernel.org,
 Carlo Caione <ccaione@baylibre.com>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 2019-06-10 07:52, Pavel Machek wrote:
> On Wed 2019-06-05 06:48:05, Angus Ainslie wrote:
>> On 2019-06-05 03:03, Shawn Guo wrote:
>> >On Tue, May 28, 2019 at 05:57:44AM -0700, Angus Ainslie (Purism) wrote:
>> >>The Librem5 devkit is based on the imx8mq from NXP. This is a default
>> >>devicetree to boot the board to a command prompt.
>> >>
>> >>Changes since v14:
>> >>
>> >>Add regulator-always-on for the SNVS regulators.
>> >>Added pgc nodes.
>> >>Fixed charger pre-current.
>> >
>> >Since Pavel was reviewing your patches, you should copy him on the new
>> >version.  Has this version addressed all his review comments?
>> >
>> 
>> Sorry I had meant to include him in the CC.
>> 
>> I believe so but don't want to speak for him so we should see if he
>> has anymore.
> 
> I did not check the code, sorry.
> 
> I still believe your shutdown voltage is too low; try that. Battery
> will go down from 3V
> to 2.8V in seconds, so you don't really gain anything by using lower
> threshold, and you
> may not even have enough time to shutdown the system if you set it too 
> low.
> 
> Normally something like 3.0V, 3.2V is reasonable shutdown voltage.
> 

I took another look at the BQ25896 datasheet and the minimum-sys-voltage 
register is limited to 3.0-3.7 V.

I'll submit a new version.

Angus

> Best regards,
> 										Pavel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
