Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7C63D0F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZeJRUYNICHP7SoCszVgjn/c8xZTF1+Dc6RTH4V9FaFM=; b=M5a3IVE8BsCVserIdv8utaHKE
	A//mYhcMKS1AV7S3hYWxpp6VrbHggaGYI9h1Z2uA72BpbcFKckiPmzWSe0W3n1UwYM3ozPSjq6qy1
	9nmwjUrHbaJd3cluds2tX7NUlZMxpmA6qcr1TcT1UNLHBS5pwULDk4wLZJfaymbd18jAG9s7G3whi
	J1Xvqg2Yrs/b067xQVSw/cHuUdZjQRBn3cO6tDGv/HzOoANz8CBi8PONmlmE5RRXsm0Gi9D/Bc7vW
	bFAejastWAxP7mn2gDGmZf+LMDltAavsU++PySoT6OAdZaxFxVyBnof3wWKAMNXCQ+DbWC+2Fqqk3
	2zxBl2PRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haip8-0005d7-0c; Tue, 11 Jun 2019 15:36:34 +0000
Received: from office2.cesnet.cz ([2001:718:1:101::144:244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiou-0005bh-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:36:22 +0000
Received: from localhost (ip-78-45-211-99.net.upcbroadband.cz [78.45.211.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id 505DF400064;
 Tue, 11 Jun 2019 17:36:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1560267376;
 bh=gcoK8M7l1TFwHG7T30/4X3zsi+urUbBRnAAoJFaAOd0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KwNQJd8YlDh8MJ5TxMuEZDMdNFKAbM+TcrYvJXpWQixtBiPz7LZJiwnisnZGTzPfY
 MIuTuphObA7yo1DKVWMkCyiBXyAaL8PIahdB6MFP66d3Fypntw3g0919P+2HEe5Kdo
 oLA1ytOaAq0MhdAYD5xiKaNL3vhGx+3q5VoiZtGs=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Tue, 11 Jun 2019 17:36:16 +0200
MIME-Version: 1.0
Message-ID: <44a6f83c-f59a-4a6a-b38f-a204b38946c0@cesnet.cz>
In-Reply-To: <20190611153147.djcbzgeea2chn7ic@shell.armlinux.org.uk>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz> <87wohspdi7.fsf@FE-laptop>
 <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
 <87pnnkp3i1.fsf@FE-laptop> <537260c6-184e-421e-8d29-414da62a747d@cesnet.cz>
 <20190611153147.djcbzgeea2chn7ic@shell.armlinux.org.uk>
Organization: CESNET
User-Agent: Trojita/v0.7-402-g68ee77c9; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083620_848771_5FAD24D1 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:718:1:101:0:0:144:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 "David S. Miller" <davem@davemloft.net>, Baruch Siach <baruch@tkos.co.il>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>> I have not bisected, but I think that it is due to 
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a10c1c8191e04c21769656c2ca8e1c69a6218954
>> 
>> No guarantees there, though.
>
> Correct, which means it does need backporting to 5.1, since that was
> introduced in the 5.1 merge window.

...which means that I made a mistake during my initial report. If it's in 
5.1 already, then 5.1 could not have worked for me. Sorry for confusion, 
it's quite possible that I compared 5.2-rcX with 5.0.y.

Jan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
