Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00B7487AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmuzw3ihe5ApsEhgbVODPHwredM8Hj7MXwT5Z9hqN7M=; b=Tr/s+LsN1jIwAX
	5VLF5cj5tfVeHaC7Gy5WcL1/+CnkLowLxyqWFAh7r58YDQQzmq9MU7ZokMVgx0vyKOPbAeOQIjznU
	SvxZmGTbHEwyY1Kz1w6R2TZFmF9GsbLNOCeQdBX274a45T005LT8F7BDU+WA5ncLIkYs/x0XU5mqY
	5paCUH9/DAxDVq9iWZdcx+of7+W3D8YZ16ybMXIxmdGPdJYAOU9WWtZ7/VXao1I+7f4URBmrhNBqr
	rpDym7sHNCmdEkUK859gtsy+sdqhgcrIaA0fqkll5FQ3XwEyCBzG3EcO4xUODvRgwwW5ixkEu1d7q
	rs4fig3gYNmeTt6r3O4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hctnd-00028Y-CE; Mon, 17 Jun 2019 15:44:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctnK-00026p-Va
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 15:43:44 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HFhePR087255;
 Mon, 17 Jun 2019 10:43:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560786220;
 bh=yf3NckogOID0WqY1afMZo0XONPybbeINOiKuGiFNtok=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=r3nm4vEoZFXQX16M89fhULQHtOWDkphokLZxN66caHfyYUNdqkIvyQtpFblao+nIV
 MXgQbSti6UsbjVAsfIgdVg6KicA2D4mgv0uHxZEY9p8A0P5DIBiHOZZx7d6MGMUVhh
 lhLAiDpY38COxkf2u1QHAm3d+roeIgyFNNi8agKI=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HFhetM071169
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 10:43:40 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 10:43:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 10:43:39 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HFhdgh018434;
 Mon, 17 Jun 2019 10:43:39 -0500
Date: Mon, 17 Jun 2019 10:42:31 -0500
From: Nishanth Menon <nm@ti.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am65: Add MSMC RAM ranges in
 interconnect node
Message-ID: <20190617154230.shycra7u74qwqdcf@kahuna>
References: <20190529211344.18014-1-s-anna@ti.com>
 <20190530104903.ldcmkunjnk7a5y3c@akan>
 <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c53679c-4246-43e1-e6d6-2e1c7db201d7@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_084343_100680_759E8501 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17:54-20190617, Tero Kristo wrote:
> On 30/05/2019 13:49, Nishanth Menon wrote:
> > On 16:13-20190529, Suman Anna wrote:
> > > From: Roger Quadros <rogerq@ti.com>
> > > 
> > > Add the MSCM RAM address space to the ranges property of the cbass_main
> > > interconnect node so that the addresses can be translated properly.
> > > 
> > > This fixes the probe failure in the sram driver for the MSMC RAM node.
> > > 
> > > Signed-off-by: Roger Quadros <rogerq@ti.com>
> > > Signed-off-by: Suman Anna <s-anna@ti.com>
> > > ---
> > > 
> > > The following error message is seen without this:
> > > [    0.480261] sram interconnect@100000:sram@70000000: found no memory resource
> > > [    0.487497] sram: probe of interconnect@100000:sram@70000000 failed with error -22
> > > 
> > > regards
> > > Suman
> > > 
> > >   arch/arm64/boot/dts/ti/k3-am65.dtsi | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > index 50f4be2047a9..68b3f954f1d1 100644
> > > --- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > +++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
> > > @@ -68,6 +68,7 @@
> > >   			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
> > >   			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
> > >   			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
> > > +			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00200000>, /* MSMC SRAM */
> > >   			 /* MCUSS Range */
> > >   			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
> > >   			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
> > > -- 
> > > 2.21.0
> > > 
> > 
> > Arrgh.. Nice catch. Thanks. We should consider pulling this in as part
> > of early rc fixes please.
> > 
> > Acked-by: Nishanth Menon <nm@ti.com>
> 
> Hmm, what is the failure this causes, except the probe message? SRAM driver
> obviously won't work but is it used for anything at the moment anyways?
> 
> I would rather queue this towards 5.3.

Yes, this should be good enough for 5.3

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
