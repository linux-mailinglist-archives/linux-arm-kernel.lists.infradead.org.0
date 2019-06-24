Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7935750A3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgUV0eWsuxu76/5ozC/vWPAiWtMXIMdb7cHfWQit20s=; b=eFJ+OqDj8L51fu
	lfxgjx1H/xT12O1rbUKbxmnfoH1hARIQivg8sDGzaHTeaBYKcZmeIqBF1Ilyg13HQDwPRc7Z0Tt+9
	HzpWRFc75v3liPAFtwibLwmX75EJwIvU+gCiUoqavb+R3uqfTKWbFIvtupIWC3JM3UIDULW/7Lj4n
	Fkk7wDlzWa7CPOSaLE+P6C4L3c+GO44LbmS5P1fXinTArbHCpYu0LYiQBtrjNr64Ji1A0mWfWAWSu
	hye1M3HcLQz5WC8q/2DtxCcwV2Ezl+bV6EERpg4pn3OAnxRTTh12fZZN0U9J962+6AAEuJhjSjSAR
	VeaOh4+fjrcHids5p08A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNa7-00088u-Sf; Mon, 24 Jun 2019 11:56:19 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNZx-000880-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:56:11 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id DF4521BF213;
 Mon, 24 Jun 2019 11:55:58 +0000 (UTC)
Date: Mon, 24 Jun 2019 13:55:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190624115558.GA5690@piout.net>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_045610_180563_74066E7D 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/06/2019 11:45:37+0000, Claudiu Manoil wrote:
> Hi Andrew,
> 
> >-----Original Message-----
> >From: Andrew Lunn <andrew@lunn.ch>
> >Sent: Friday, June 21, 2019 7:50 PM
> >To: Claudiu Manoil <claudiu.manoil@nxp.com>
> >Cc: David S . Miller <davem@davemloft.net>; devicetree@vger.kernel.org;
> >Alexandre Belloni <alexandre.belloni@bootlin.com>; netdev@vger.kernel.org;
> >Alexandru Marginean <alexandru.marginean@nxp.com>; linux-
> >kernel@vger.kernel.org; UNGLinuxDriver@microchip.com; Allan Nielsen
> ><Allan.Nielsen@microsemi.com>; Rob Herring <robh+dt@kernel.org>; linux-
> >arm-kernel@lists.infradead.org
> >Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch port
> >DT node
> >
> >On Fri, Jun 21, 2019 at 06:38:50PM +0300, Claudiu Manoil wrote:
> >> The switch device features 6 ports, 4 with external links
> >> and 2 internally facing to the ls1028a SoC and connected via
> >> fixed links to 2 internal enetc ethernet controller ports.
> >
> >Hi Claudiu
> >
> >> +			switch@0,5 {
> >> +				compatible = "mscc,felix-switch";
> >> +				reg = <0x000500 0 0 0 0>;
> >> +
> >> +				ethernet-ports {
> >> +					#address-cells = <1>;
> >> +					#size-cells = <0>;
> >> +
> >> +					/* external ports */
> >> +					switch_port0: port@0 {
> >> +						reg = <0>;
> >> +					};
> >> +					switch_port1: port@1 {
> >> +						reg = <1>;
> >> +					};
> >> +					switch_port2: port@2 {
> >> +						reg = <2>;
> >> +					};
> >> +					switch_port3: port@3 {
> >> +						reg = <3>;
> >> +					};
> >> +					/* internal to-cpu ports */
> >> +					port@4 {
> >> +						reg = <4>;
> >> +						fixed-link {
> >> +							speed = <1000>;
> >> +							full-duplex;
> >> +						};
> >> +					};
> >> +					port@5 {
> >> +						reg = <5>;
> >> +						fixed-link {
> >> +							speed = <1000>;
> >> +							full-duplex;
> >> +						};
> >> +					};
> >> +				};
> >> +			};
> >
> >This sounds like a DSA setup, where you have SoC ports connected to
> >the switch. With DSA, the CPU ports of the switch are special. We
> >don't create netdev's for them, the binding explicitly list which SoC
> >interface they are bound to, etc.
> >
> >What model are you using here? I'm just trying to understand the setup
> >to ensure it is consistent with the swichdev model.
> >
> 
> Yeah, there are 2 ethernet controller ports (managed by the enetc driver) 
> connected inside the SoC via SGMII links to 2 of the switch ports, one of
> these switch ports can be configured as CPU port (with follow-up patches).
> 
> This configuration may look prettier on DSA, but the main restriction here
> is that the entire functionality is provided by the ocelot driver which is a
> switchdev driver.  I don't think it would be a good idea to copy-paste code
> from ocelot to a separate dsa driver.
> 

We should probably make the ocelot driver a DSA driver then...


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
