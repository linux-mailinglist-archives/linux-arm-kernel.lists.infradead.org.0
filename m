Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E991D4784
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcSjUFubgwQqrp+jH9gKZIzs16NJ6/59K9MyvbNmzSw=; b=V57YeFwnQ05Nms
	/w0Dd3ID16LhPnQLf9Nhqv2ul5zos/5yIBbBuVwnJQyqXIRgBIASfy/7HGJcr0moeW/jBOgB0CRfe
	qAt/AE3Sr6EbEN3jgiasNyldoC91XzF28SkPwAwsGTInoMH2ieeXmEQ2/n6IIZk8hlGx2rDZ0a3pm
	2eLuXdhZTm4JKIKBR4VDYKiOIHB7b6kwuzXo9mX7bcQN5R+AktpUPajcfgYlbAv6OqMhtU3RUWcUn
	aqZB8xlCK3LdPqzTlyuoAZQHPmvPM3+gld7/PL2bkPk7EuZZ1o3zZsASZACjRHB5m/yHb02I6gSm2
	ZLVSsIyBNXr1sk9J0s+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZVF4-00006P-2T; Fri, 15 May 2020 07:58:50 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZVEs-00005c-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:58:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589529514;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=BlFVs+ve08LHwN7Uvu0hVD6GgM0+61h79p2IJC+S0j0=;
 b=gS1G+QxwI/mHpe0aBmPEraYeJwbVO1Z+fYvQrKh1AC367FfqyAROi7g6Q5v2IMMGpj
 iw3LvTTX7zWGB18Ffb4N9uAYmyaziAeyR+ocmJyJjp+i0vs23XktTjTAv00R/w7gYbu0
 fvRMoag0mj8EV/ArU9IIofKCNyHXCMQgATe1crU1r4h+G7JthGFuJpLnzjoLGssaDZVq
 lwJbJzpgzE2tov8kcjl0fENTF3JbjHMyQn6M96zwfz9qoN/EL1JI3bAwhJk2L1phpclj
 YAx6DrW5BYpPjtvbop7tu+5ZzTzbqzik+okHAF3AtK48yUfsxV2x8BFG8qSMV4CZ+dOn
 URaQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj7wpz8NMGH/vtwDOvBTU="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw4F7wWYfs
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Fri, 15 May 2020 09:58:32 +0200 (CEST)
Subject: Re: [PATCH v7 01/12] dt-bindings: add img,
 pvrsgx.yaml for Imagination GPUs
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20200503150143.GG37466@atomide.com>
Date: Fri, 15 May 2020 09:58:31 +0200
Message-Id: <9A411DCE-A882-4868-9265-532D79922F6E@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
 <3a451e360fed84bc40287678b4d6be13821cfbc0.1587760454.git.hns@goldelico.com>
 <NMCE9Q.LWG45P20NBVJ@crapouillou.net>
 <28138EC0-0FA5-4F97-B528-3442BF087C7A@goldelico.com>
 <TEAR9Q.6HI5DFRO5U0I3@crapouillou.net>
 <3D8B59D6-83E3-4FE6-9C99-E2E5616A8139@goldelico.com>
 <8EER9Q.C206SXNSICP7@crapouillou.net> <20200503150143.GG37466@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_005838_939106_BE0E9E91 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 James Hogan <jhogan@kernel.org>, Jonathan Bakker <xc-racer2@live.ca>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Paul Cercueil <paul@crapouillou.net>, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-samsung-soc@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

> Am 03.05.2020 um 17:01 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * Paul Cercueil <paul@crapouillou.net> [200503 14:19]:
>> You have a new SoC with a SGX, and you only need to enable one clock to get
>> it to work. So you create a devicetree node which receives only one clock.
>> 
>> Turns out, that the bootloader was enabling the other 3 clocks, and since
>> the last release, it doesn't anymore. You're left with having to support a
>> broken devicetree.
>> 
>> That's the kind of problem that can be easily avoided by enforcing the
>> number of clocks that have to be provided.
> 
> The number of clocks depends on how it's wired for the SoC.
> 
> On omaps, there's are no controls for additinoal SGX clocks. Sure some
> of the clocks may be routed to multple places internally by the wrapper
> module. But we have no control over that.
> 
> If we wanted to specify just the "fck" clock on omaps, then we can
> do it with something like this:
> 
> allOf:
>  - if:
>    properites:
>      compatible:
>        enum:
> 	  - "ti,omap4-sgx544-112"
> 	  - "ti,omap5-sgx544-116"
> 	  - "ti,dra7-sgx544-116"
>    then:
>      properties:
>        clocks:
> 	  minItems: 1
> 	  maxItems: 1
> 
>        clock-names:
> 	  const: fck
> 
>    required:
>      - clocks
>      - clock-names

will add to v8 of this series as a separate patch on top of the
general one. This should make it easier to have a focussed discussion
and revert/bisect if something goes wrong.

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
