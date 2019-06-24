Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30CF50DE9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9bBNxSVnfmy6d7R2EdjxhDeH6uOiTKCtlinOu1Kbow=; b=D7YejU7W+gFrzo
	ozsetvtOGSVLmDvPZXB/idNcpJIYmJnM1p6BHo+Sa/ovbh4zZfA14gzgSYpDenDDvkOAkpW7ndvH1
	afBaUUFSDUrxtcvgpIg4a/CUiLYkENPv5eVA99JUpYpO4uvX3YIir19vWUhMddzHadGvnbKC3CJPp
	B2F4V7jC4/h+L9Mfn8/bnYDysBniXfPvEoNcv5N5wl2prqTpL5h23SR1lKTjBQSHC+8h6R38DpaM1
	KIhJX9DOX7Am8wjdO5SUP6yHIOVJrpK46BjwmLvHw5wqek8dFMd+HtQTrPDxB50jzYFCdjMvEe5tU
	FuesivbqiUPVQMW2Vcow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPvn-0000k1-EP; Mon, 24 Jun 2019 14:26:51 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPvX-0000jZ-Sp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=N5N6f9ldaRZVCwiVvBP9WWU3rYbAdzLFROiOxUyweJg=; b=v79fJ+CGdaLUV1/cBB/sRLTk9L
 4rfzsWfmoOX/OPvFugF8ZIDfiLiCFEc7W2S+tcAbv1bwlwuBbZU1zL+Erwq+xQIxzc3YqhAAOOrjS
 YHfzlIW7yPBmE2yKC6l1g1MdgFbQyLLtlTk/rb/mX01M9qJC2ru3PDYVb1ToXrk1lsmw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfPvN-0005nr-N6; Mon, 24 Jun 2019 16:26:25 +0200
Date: Mon, 24 Jun 2019 16:26:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190624142625.GR31306@lunn.ch>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
 <20190621164940.GL31306@lunn.ch>
 <VI1PR04MB4880D8F90BBCD30BF8A69C9696E00@VI1PR04MB4880.eurprd04.prod.outlook.com>
 <20190624115558.GA5690@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624115558.GA5690@piout.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072636_089396_37A27661 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Yeah, there are 2 ethernet controller ports (managed by the enetc driver) 
> > connected inside the SoC via SGMII links to 2 of the switch ports, one of
> > these switch ports can be configured as CPU port (with follow-up patches).
> > 
> > This configuration may look prettier on DSA, but the main restriction here
> > is that the entire functionality is provided by the ocelot driver which is a
> > switchdev driver.  I don't think it would be a good idea to copy-paste code
> > from ocelot to a separate dsa driver.
> > 
> 
> We should probably make the ocelot driver a DSA driver then...

Hi Claudiu, Alexandre

An important part of DSA is being able to direct frames out specific
ports when they ingress via the CPU port. Does the silicon support
this? At the moment, i think it is using polled IO.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
