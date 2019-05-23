Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E049B285B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 20:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KcA6D4EjelVeGF7io5k+zbVPkXJtHnB5VSK//yDF1o=; b=Tog8PDfCSAj77m
	AdLZYAAOAabrHCJaWdvPXs6fgkUioEEuIqnTbbxVyqtD6+URetceV/J7Xyd/CupNJm79nmGVb2Fl1
	63LcvMhLW0eA/p/tJ/ybAQPVUzyFG7wg0YIpbc06TxjQSTnuw4L9leP1ug5QgISDGgyOhTrrIgni2
	k4t3zWLWh9ySdq4LPDnI3mKitYLoUeB2wNWmZCKEuqhgEOreo1s7/aepj1mjXWRcuPtLzZ37fVqMZ
	JLfhSCjDd8QH7ytS3u0crCAEViYBLyztr+n3qaQThJai5PkZ7f4LdGQ63pal6eBwQnYL8V8/SIWST
	yxi19g5TIsSh7S9Zhrdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsFC-0005Ml-0G; Thu, 23 May 2019 18:15:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsEz-0005MM-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 18:14:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4IC8R0ZhlQdaL/KSUQ7yDr8Vg9RfeeUfunFzY6EuR7o=; b=Aq66OGPGB9Ehr1k9ZlOc5y7ECw
 OcJpov1dTfOe3vD5eITO3kzBSVVeqEQFripA/ajYOlwRdMgybI5ljtVBcOV09nCTGRtS/01yJxMsk
 9FMDPuTXU+F6CVgs/+QK6JBerzR0k8e0J7OnR0chK57C1jwOiZ9zZWHS/zVCrHSEcq1o=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hTsEt-0008SB-Tk; Thu, 23 May 2019 20:14:51 +0200
Date: Thu, 23 May 2019 20:14:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH net-next v2 3/3] net: phy: aquantia: add USXGMII support
 and warn if XGMII mode is set
Message-ID: <20190523181451.GE15531@lunn.ch>
References: <9d284f4d-93ee-fb27-e386-80825f92adc8@gmail.com>
 <96437cfa-b1f9-eeae-f9ca-c658c81f61c0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96437cfa-b1f9-eeae-f9ca-c658c81f61c0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_111457_491458_6A4CC9C0 
X-CRM114-Status: GOOD (  10.46  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 08:09:08PM +0200, Heiner Kallweit wrote:
> So far we didn't support mode USXGMII, and in order to not break few
> boards mode XGMII was accepted for the AQR107 family even though it
> doesn't support XGMII. Add USXGMII support to the Aquantia PHY driver
> and warn if XGMII mode is set.
> 
> v2:
> - add warning if XGMII mode is set
> 
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
