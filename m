Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAC1160763
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 00:54:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtdrI97CcnHVYHh2GoGFzLTXs/LnxPw7UtJyt+Ojwrc=; b=gJ5ZtYAJJ0VT96
	06faOS2yO3jq050u4d0VudPBhQ4+7SOzkmEuah/hF2a2OanD5yzqUF8PK9BsSdaxF5+8kVFQUIrNK
	YxnlWZVwx3AIiSnj9ulVHynXXCWgneU4S2GYwxHoXm0KZug9WkRoT26vHnxy4a8M3DwIB3r0LOtTp
	uM7OXzupABEIEOSEihlFEGR4kdCGbdQDdTeuSuCbfz0oYDiAMNnPwwuEn++lg78Up06IbdKM9NeZF
	Nur3JykyYlE2cusbAJS1v1GQ0ScgnyAkiF7tXKb53k1Dt70hFSQXobfw25T9GpXTtWbOzKGPLwis/
	k7/6LAOht5C0i2JaIDSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Tjz-0004wN-2G; Sun, 16 Feb 2020 23:54:23 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Tjo-0004vZ-8R
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 23:54:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 3F727461;
 Sun, 16 Feb 2020 18:54:11 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sun, 16 Feb 2020 18:54:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=5jo981HWR/vHL9RhXlYEzz7DlTldAj/
 mpq+HV26LbAU=; b=NnB7dbbxE5kF/iQhc4qNwAB9rMcUenu45OBbD7WGy8wBXGI
 a/jKJyy/JdpzrRqujpBveKA731NjaeNG1Jz4vQVl6cRjS5XdAaPNLHDSAu4octvC
 mko8Hed5oGKkTR79quZ9kZ5xKEd0M+5dCHsa3K7eZ49sEAFe+u2BmjVkzA2eyoFG
 OV67Un65nU9kGXss5Br1I22WLlXSKGIE4OT5JGSf7p1XfrJb21cQpYFrSaEuS960
 JF6H6xJZmt6z57+3mKUZYXd7zfFZvBlLpUhq2cug0Kga8CEb5m7Kf6Jksz8P04cp
 9zrd+P4pvOY7PXZ0LtJHxdbBk2vxyKGh+eAIgOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=5jo981
 HWR/vHL9RhXlYEzz7DlTldAj/mpq+HV26LbAU=; b=zQoj4jGGwbaJpz1C/UxdE8
 90XRyh8y6gTjT/1t51FqCeyLHN+8/N6LXSDGuoQt0VMYCeLC18S52A/GrHfPZrDn
 lOc4tikNl+2/y/USYZZe8q9Fg+vf0oCu9BMj0q0PqlYFOemHiICI2lCrYoRI8Gc0
 0sKnDIPmqJ+/G62UdeA9+/0WrymVefQnZ5nLmPzY+TgapYzJV11AHnL6n0ic05YP
 47wYHRvURvdksM2KMW2nlTgi6A2svR8GSoL2JdVMS3IAuFQhuFX+CrJpD77Z7SyN
 ETGkJX5I/wLum0s+eeoVd09/YnR37KZPfqS1kvepaj3QUvMxx26Oc6KJX0Bsy8SA
 ==
X-ME-Sender: <xms:ItZJXjR7PPsQcrSo31ndDTPt-9FmQsIWG8EUQ32KGvQOgRe8TNtNzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgddugecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:ItZJXnnYIYc63__jHnvpZChvf2853Jf2No2MzzU1TNdGCc7ApnHChA>
 <xmx:ItZJXrnq5LCrJ4JlaeEDpVw_oNOXIcVqCWNGItX4HBMUArAWKdI4LA>
 <xmx:ItZJXmhWq_px8l07_bvrmyRlez9CmetSfZ2ydwr9qvD9siZhbHkAIA>
 <xmx:ItZJXtD8yZSJB4pjdjwjMRc3cdvZk9jxHPuWWNAqnb3FkgJkA0v7Eg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id B4E41E00A2; Sun, 16 Feb 2020 18:54:10 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-802-g7a41c81-fmstable-20200203v1
Mime-Version: 1.0
Message-Id: <549d68fc-22ea-43d7-80ea-52143fe79321@www.fastmail.com>
In-Reply-To: <1581363147-19310-3-git-send-email-eajames@linux.ibm.com>
References: <1581363147-19310-1-git-send-email-eajames@linux.ibm.com>
 <1581363147-19310-3-git-send-email-eajames@linux.ibm.com>
Date: Mon, 17 Feb 2020 10:24:03 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Eddie James" <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Subject: =?UTF-8?Q?Re:_[PATCH_v2_2/2]_ARM:_dts:_aspeed:_ast2600:_Fix_SCU_IRQ_cont?=
 =?UTF-8?Q?roller_nodes?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_155412_342140_8FA614AA 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 11 Feb 2020, at 06:02, Eddie James wrote:
> The nodes were defined with a unit address but had no reg property,
> resulting in a warning. Add the reg properties for consistency to fix
> the warning.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  arch/arm/boot/dts/aspeed-g6.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index 82a3cd1..301fdb4 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -269,16 +269,18 @@
>  					reg = <0x180 0x40>;
>  				};
>  
> -				scu_ic0: interrupt-controller@0 {
> +				scu_ic0: interrupt-controller@560 {
>  					#interrupt-cells = <1>;
>  					compatible = "aspeed,ast2600-scu-ic0";
> +					reg = <0x560 0x4>;
>  					interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
>  					interrupt-controller;
>  				};
>  
> -				scu_ic1: interrupt-controller@1 {
> +				scu_ic1: interrupt-controller@570 {
>  					#interrupt-cells = <1>;
>  					compatible = "aspeed,ast2600-scu-ic1";
> +					reg = <0x570 0x4>;
>  					interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>  					interrupt-controller;
>  				};
> -- 
> 1.8.3.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
