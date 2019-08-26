Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39A79CE9B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyFxEaJS+q4C0KHC1xA0zxna9ZHrALhFQ8xibiDAteI=; b=JVlx2SAcD5STyP
	qWrJCeE2CvuXkhC8Vl6fOhuemhiB1yCSRXRlZUoBPhKb6V0fZlw2ybXRGqKCxIQDB27jWrsM+gvNp
	sUiacrZfoiBumANMSgh9ObBkzCYQJghOInXtynS1/t7nPsbctTT+OM614DDmWbLc65mfJo1I/+8cD
	GQuinM4CfgXujTlIGX/4R3x9Wx8ze9DkQPxedo6lsxb6kAAuzoguP11nRrtXasqKq3Fl54MfDiFJS
	9GsDuXCuB7sR9TCwTltV9fEXIzzcJ0/9wjK5CSG+thV2hmX5zVIi9PNl0cSNMjDbZNIkbi+DLV5Qa
	wz94TOre+suCHuWBMuaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DY8-00083G-K9; Mon, 26 Aug 2019 11:52:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DXy-00082K-Sp
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:52:32 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QBq5Nx049472;
 Mon, 26 Aug 2019 06:52:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566820325;
 bh=v0aciQjisgKYogmk2PfzrLrYloxSKwU1/ECr878ZyYI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=lXmR9dMTBG4UxH20J3JCMGpMv2CrJ5qdx25aYa2ui4lGNMDWt9YYR+RbCXT2mk43A
 rUxZivGcYrjg51SlxNAFxfpXPCOFkktGXfMSU969FgyjEDWeawM50TPb1GUgKfjyT3
 mIrbHrgT1f2PQceil3uoDa0VMsXzTrSM06s9nJ44=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QBq5d6012494
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 06:52:05 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 06:52:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 06:52:05 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QBpxoW020794;
 Mon, 26 Aug 2019 06:52:01 -0500
Subject: Re: [PATCH v3 00/19] Enhance CP110 COMPHY support
To: Miquel Raynal <miquel.raynal@bootlin.com>
References: <20190731122126.3049-1-miquel.raynal@bootlin.com>
 <4e1c4d27-3676-5efa-1126-8149a8635eb5@ti.com> <20190824135414.5c490337@xps13>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <8c91e2e3-2a83-a6f0-c98a-d0dbfcddfee3@ti.com>
Date: Mon, 26 Aug 2019 17:21:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190824135414.5c490337@xps13>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045231_038724_FE8A2245 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, Matt Pelland <mpelland@starry.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 24/08/19 5:24 PM, Miquel Raynal wrote:
> Hi Kishon,
> 
> + Matt Pelland
> 
> Kishon Vijay Abraham I <kishon@ti.com> wrote on Fri, 23 Aug 2019
> 08:46:14 +0530:
> 
>> On 31/07/19 5:51 PM, Miquel Raynal wrote:
>>> Armada CP110 have a COMPHY IP which supports configuring SERDES lanes
>>> in one mode, either:
>>> - SATA
>>> - USB3 host
>>> - PCIe (several width)
>>> - Ethernet (several modes)
>>>
>>> As of today, only a few Ethernet modes are supported and the code is
>>> embedded in the Linux driver. A more complete COMPHY driver that can
>>> be used by both Linux and U-Boot is embedded in the firmware and can
>>> be run through SMC calls.
>>>
>>> First the current COMPHY driver is updated to use SMC calls but
>>> fallbacks to the already existing functions if the firmware is not
>>> up-to-date. Then, more Ethernet modes are added (through SMC calls
>>> only). SATA, USB3H and PCIe modes are also supported one by one.
>>>
>>> There is one subtle difference with the PCIe functions: we must tell
>>> the firmware the number of lanes to configure (x1, x2 or x4). This
>>> parameter depends on the number of entries in the 'phys' property
>>> describing the PCIe PHY. We use the "submode" parameter of the generic
>>> PHY API to carry this value. The Armada-8k PCIe driver has been
>>> updated to follow this idea and this change has been merged already:
>>> http://patchwork.ozlabs.org/patch/1072763/  
>>
>> Some of the patches are not applying cleanly. Care to resend the series after
>> rebasing to phy -next?
> 
> Besides two conflicts that I can fix very easily about missing
> of_node_put() calls, you just merged in phy-next this patch:
> 
> phy: marvell: phy-mvebu-cp110-comphy: implement RXAUI support
> 
> Which totally conflicts with my series while I also add RXAUI support
> in patch 5. Please note that even the third version of my series
> was contributed before this patch.
> 
> There is one difference to note though: in the patch from Matt Peland,
> RXAUI support is embedded in the driver while I do SMC calls.
> 
> Anyway, would it be possible to change the order of application if
> you want both methods in the driver because it will be much easier
> to add Matt's patch on top of my series than the opposite. I can
> even do it myself if you wish.

I've resolved this. Can you review in phy -next if the changes looks okay?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
