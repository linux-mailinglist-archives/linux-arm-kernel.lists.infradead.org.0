Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD5B1183D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6zEe92Kay3bqFgCxDtrvXuhZsVXOqajeHALRGageVo=; b=VgomM1+2ra1mp4
	hcBSjvJj6kYOeOSo66MXiWZIMmQKBEPBl9ff9LcQjC48hdA0Zf37QkZ6JzgxQMaeBb+W71FCPyrCY
	FB6yOhwXhMpnBU4qcpF++g/l3igIKaHWOdJWrTQW9d3moXpNX2Y7RdpMQYC5MdBspHoM5h9aR75Pd
	zWMnmJ9Q+WAV1uko8k83GPPbJPNLHNEQTTofLVfJYvs6Suizydf80gc+BWj2GSPQGrEc/PzF6sHu5
	qObAVANl+OpODidCT7eFX+JlTfdxMIQT0fFEobkSG5qM1+IarwBW8r1hk/YDMZrrvTo5qPYyge9EW
	AoKBUjaMgPKklkwM1Y4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iec26-00019n-Vc; Tue, 10 Dec 2019 09:42:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iec1t-000191-3D
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:42:06 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iec1b-0006gj-AJ; Tue, 10 Dec 2019 10:41:47 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iec1Y-0003yz-IK; Tue, 10 Dec 2019 10:41:44 +0100
Date: Tue, 10 Dec 2019 10:41:44 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191210094144.mxximpuouchy3fqu@pengutronix.de>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204134631.GT1998@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:56 up 25 days, 28 min, 32 users,  load average: 0.08, 0.04,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_014205_136885_68DB1925 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, support.opensource@diasemi.com,
 linux-aspeed@lists.ozlabs.org, linux-gpio@vger.kernel.org, andrew@aj.id.au,
 linus.walleij@linaro.org, lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, joel@jms.id.au,
 kernel@pengutronix.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 19-12-04 13:46, Mark Brown wrote:
> On Fri, Nov 29, 2019 at 06:25:34PM +0100, Marco Felsch wrote:
> 
> > +  Optional regulator device-specific properties:
> > +  - dlg,vsel-sense-gpios : A GPIO reference to a local general purpose input,
> > +    the datasheet calls it GPI. The regulator sense the input signal and select
> > +    the active or suspend voltage settings. If the signal is active the
> > +    active-settings are applied else the suspend-settings are applied.
> > +    Attention: Sharing the same GPI for other purposes or across multiple
> > +    regulators is possible but the polarity setting must equal.
> 
> I'm really confused by this.  As far as I understand it it seems
> to be doing pinmuxing on the chip using the GPIO bindings which
> is itself a bit odd and I don't see anything here that configures
> whatever sets the state of the pins.  Don't we need another GPIO
> to set the vsel-sense inputs on the PMIC?

Yes the PMIC is very configurable and it took a while till I understand
it.. @Adam please correct me if I'm wrong.

The PMIC regulators regardless of the type: ldo or buck can be
simplified drawn as:



da9062-gpio               da9062-regulator
    
  +-------------------------------------------------------
  |                  PMIC
  |    
  > GPIO0            +--------------------------+
  |                  |         REGULATOR-0      |
  > GPIO1 -------+   |                          |
  |              +-- > vsel-in    voltage-a-out <
  > GPIO2        |   |                          |
  |              |   > enable-in  voltage-b-out <
  |              |   |                          |
  |              |   +--------------------------+
  |              |                              
  |              |   +--------------------------+                          
  |              |   |         REGULATOR-1      |                          
  |              |   |                          |                          
  |              +-- > vsel-in    voltage-a-out <                          
  |                  |                          |                          
  |                  > enable-in  voltage-b-out <
  |                  |                          |
  |                  +--------------------------+
  |

The 'vsel-in' and 'enable-in' regulator inputs must be routed to the
PMIC GPIOs which must be configured as input. If this is a pinmux in
your opinion, then yes we need to do that. IMHO it isn't a pinmux
because from the regulator point of view it is just a GPIO which comes
from our own gpio-dev (da9062-gpio). So the abstraction is vald. Anyway
I'm with you that this isn't the typical use-case.

Regards,
  Marco 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
