Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA305E4FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 15:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0uoOVsXiUgLCKok10HrM+Eagc/5Onvheav3sRvq+Wr4=; b=FQJ3xJGD6cg9qvHaSjPknonaS
	npgKVPL8vMc6HVX6bGAZkTk7hywvi76QG5QuQEymHjiTTI5Pklk++yeDEE/4jLSgfNWW3m0bYVncq
	lesMmG1DHOOeA9o+G7S0GqV5aNx6vKp92FA5rntJQ5GGcfGzBD4qhb3+WTqz9mMhKBAlJTvYrgUfK
	kAquyfvg8chFbfhZrqqjh4j9XBWun1Z36JRaGDiXq4EZFLbHZOHtw7EC2bzDZBUxF88FXAytnDy9q
	QovEUuumL2f/82J2uPMcdJu9ryDDmWgGt5aHZudbk75lExJAxwChfjEbcfTDCBigQU1w+KKHgOnhc
	Hm/sCEhkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hif50-0005Uu-H7; Wed, 03 Jul 2019 13:13:46 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hif47-00051U-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 13:12:53 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 76E254E204B; Wed,  3 Jul 2019 13:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1562159571; bh=e9mCRjUPMrK+NkTqhauY/TqZcc/RebVUj8bLM/dL1+g=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=qUWWDsIKxHCz84cOUYE2/HgdHZRdeRICVc9DZ6w8MZS8SW6IQR96VhJ/M+8FikdQO
 +FBE7YvuwCYK9fXTtNatkhVOlKhHmeZRutkl56mEE3H5qeKfsLD4Q2Fef6uVhFJGty
 0E5vya6ra1FDGUaHa/K7hOFElnoA3O7DkCMcBLWY=
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH v3] arm64: dts: imx8mq: Add sai3 and sai6 nodes
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Wed, 03 Jul 2019 07:12:51 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
References: <20190702132353.18632-1-andradanciu1997@gmail.com>
 <9ea5109f8645c3f27a9e350c5f9b2d4c@www.akkea.ca>
 <CAEnQRZDCpPju7xBBY9=e0dWt=A9c3t3g88pEw+teoZmmOiiKXQ@mail.gmail.com>
Message-ID: <9e196ce51eac9ce9c327198c4a2911a8@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_061252_121008_F8620001 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Andra Danciu <andradanciu1997@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 andrew.smirnov@gmail.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 2019-07-03 07:10, Daniel Baluta wrote:
> On Wed, Jul 3, 2019 at 4:01 PM Angus Ainslie <angus@akkea.ca> wrote:
>> 
>> Hi Andra,
>> 
>> I tried this out on linux-next and I'm not able to record or play 
>> sound.
>> 
>> I also added the sai2 entry to test out our devkit and get a PCM 
>> timeout
>> with that.
> 
> Hi Angus,
> 
> There are still lots of SAI patches that need to be upstream. Me and 
> Andra
> will be working on that over this summer.
> 
>> 
>> On 2019-07-02 07:23, Andra Danciu wrote:
>> > SAI3 and SAI6 nodes are used to connect to an external codec.
>> > They have 1 Tx and 1 Rx dataline.
>> >
>> > Cc: Daniel Baluta <daniel.baluta@nxp.com>
>> > Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
>> > ---
>> > Changes since v2:
>> >       - removed multiple new lines
>> >
>> > Changes since v1:
>> >       - Added sai3 node because we need it to enable audio on pico-pi-8m
>> >       - Added commit description
>> >
>> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 29
>> > +++++++++++++++++++++++++++++
>> >  1 file changed, 29 insertions(+)
>> >
>> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
>> > b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
>> > index d09b808eff87..736cf81b695e 100644
>> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
>> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
>> > @@ -278,6 +278,20 @@
>> >                       #size-cells = <1>;
>> >                       ranges = <0x30000000 0x30000000 0x400000>;
>> >
>> > +                     sai6: sai@30030000 {
>> > +                             compatible = "fsl,imx8mq-sai",
>> 
>> I don't find this compatible string in sound/soc/fsl/fsl_sai.c. Aren't
>> the registers at a different offset from "fsl,imx6sx-sai".
> 
> Yes, you are right on this. We are trying to slowly push all our 
> internal-tree
> patches to mainline. Obviously, with started with low hanging fruits, 
> DTS
> nodes and small SAI fixes.
> 
> Soon, we will start to send patches for SAI IP ipgrade for imx8.
> 
>> 
>> How is this supposed to work ?
>> 
> 
> For the moment it won't work unless we will upstream all our SAI
> internal patches.
> But we will get there hopefully this summer.
> 

Shouldn't a working driver be upstream before enabling it in the 
devicetree ?

Thanks
Angus

> Thanks,
> Daniel.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
