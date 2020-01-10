Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FF137109
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VuoCyxmEBsDmAwObCxkGv90tmxqhcs7cFHpS3D1ZYE=; b=YieREQ4BecuZQY
	ZQZdcuof3FYCT6fA+pJMMHQLR6uP5vKv4qAfedQgFxhzCtWhn86Y1u8gHwU8IbxWkHDNDw0bdPozj
	Ecse0ymQfcZoQoTcTNCZBb2yVvlCUrEJ8IDxIdLxXr38abzkDLG0Dayx04OQeTAybtpwGlyCgyNoG
	y1sSWQ+a2orc/E7Mrhi0iq+LmcHxoVGLYJu5y4Is2QqUOH2Vxc6MDWi/bqF7AXftMK2V6QRI0YcQb
	CmTJe5wnNaVUiszLzh1YLAfMofZW9cG8IBK67PuZim0xNPjJAdy2+54yxEdQi4pHdOAeKeqwhhoxw
	eFHVI7MdIdRWGGg/eJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipw7o-0005zZ-SO; Fri, 10 Jan 2020 15:23:00 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipw7d-0005vz-7Q
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:22:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OID1dlSTSaamVryi8LpcNEnO4aY2wUMBFndKhtzt064=; b=YNCJV+sUCXt2W5mSotj16fSaar
 fokY4RYQbPWvs3Euir9u1Io2CTIPDHwYmXK9h1y4agZS/mgaPE5lEhKboyRl8hcP7s36UhulvgVcH
 uW9K0VV/5rV0rvXxBxdlYoRVCTi4/7I+bZ0uFbWlZ+85jxbZ8tZpbUgHs0gRMhKrDGQM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ipw7V-000085-Uk; Fri, 10 Jan 2020 16:22:41 +0100
Date: Fri, 10 Jan 2020 16:22:41 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Message-ID: <20200110152241.GB10802@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-13-andre.przywara@arm.com>
 <20200110140852.GF19739@lunn.ch>
 <20200110141303.2e5863ab@donnerap.cambridge.arm.com>
 <20200110142250.GH19739@lunn.ch>
 <20200110150836.1f92a0a8@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110150836.1f92a0a8@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072249_273979_D10597DB 
X-CRM114-Status: UNSURE (   4.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> So far I couldn't be bothered to put my asbestos trousers on and go
> into BSP land ;-)

Are you in Cambridge? 7 degrees, so you can pop outside to cool off a
bit :-)

> So if you were hoping for an official blessing, I have to disappoint you ;-)

Well, everything you have done is at least sensible. The patches have
also drawn the interest of Radhey. Let see if he says this is safe for
IP version 0.0 through to 7.1.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
