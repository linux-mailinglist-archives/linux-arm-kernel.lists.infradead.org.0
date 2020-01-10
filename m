Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CAD136F2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSb6QnSqrF6IFUkVTHzUUxsdyhPxVAnb8qY9h/qt9G0=; b=NBz7Dnehdt0FIF
	zoXR7+/Atgm46Jy56x+/CrpznR5imys4LqpAjlS0Nt19j/Tfm1oK0rMo0FumGUljyqLKrzOGFU9J/
	lzQ1r7wkl3In+14D1fDOiKrTIiLEVCVoUAgVN+XUKL2Iq9oRFfzO38nDk8s9QmQHCN8OJr3jxIASj
	0mo3UhFrNyrDMePLEFusTe0ZNeKkxGsk6MNczClnoZhikzqjEJKwpTL1bQq+FPhrlnPsyFnfxn50k
	FgYki3kdKV5k+3wiPw71zVD3To/QycpbGT6RuPxCVh1uDugk8rv1+kKlou49q+T6gjF3ySTcMxLAI
	r2R+yB0g6/LIC31SQcvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipv9d-0003wY-Nj; Fri, 10 Jan 2020 14:20:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipv9W-0003w9-Cn
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:20:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D3CC4328;
 Fri, 10 Jan 2020 06:20:41 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 953CE3F534;
 Fri, 10 Jan 2020 06:20:40 -0800 (PST)
Date: Fri, 10 Jan 2020 14:20:38 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
In-Reply-To: <20200110140415.GE19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110140415.GE19739@lunn.ch>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_062042_479263_0D5317A5 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Russell King <rmk+kernel@arm.linux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:04:15 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

Hi Andrew,

> On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> > With SGMII, the MAC and the PHY can negotiate the link speed between
> > themselves, without the host needing to mediate between them.
> > Linux recognises this, and will call phylink's mac_config with the speed
> > member set to SPEED_UNKNOWN (-1).
> > Currently the axienet driver will bail out and complain about an
> > unsupported link speed.
> > 
> > Teach axienet's mac_config callback to leave the MAC's speed setting
> > alone if the requested speed is SPEED_UNKNOWN.  
> 
> Hi Andre
> 
> Is there an interrupt when SGMII signals a change in link state? If
> so, you should call phylink_mac_change().

Good point. The doc describes a "Auto-Negotiation Complete" interrupt status bit, which signal that " ... auto-negotiation of the SGMII or 1000BASE-X interface has completed."
But I have no clue whether that would trigger on a link status *change*. Is there a way to test this without pulling the cable? My board sits in a data centre, so is not easily accessible to me.

Cheers,
Andre.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
