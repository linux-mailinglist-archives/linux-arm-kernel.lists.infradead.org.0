Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB7A1EF2D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LpJgFOtzCOMS6H+IzkJFGG3srjB4xnG+1oSN7DPlD0=; b=jpUyCVGMOGrQkP
	3LNWk0N8iow24eDWaN0abaoVJ2n7snsLaUgkIHg0F/JMlqn56VxEBssDnfH5D20linyu5lZa/31Sh
	CMoINlrckUjR3NLNiTqi2cEZ8Xuc+DiVoD43u6lV1OIimY3lbOwvKSollki5wBb2MxZovw321y3DN
	019RD1hFYm3PodTl0PDwA+zwyfxr4El4cfHhne0Vr1TrcOkyME9r+Qdx5lfgxSih8tvGtojs1i558
	CSkze97S0ZJEJzIlNtDFy3fKdZq/aFKwpFRkJNTMwulcccBJTxhLc8evFZMRR4kDRxUdpU3P0wSlD
	9uh0LI7+Az7dUiBRRM6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7QV-0004dx-UK; Fri, 05 Jun 2020 08:10:09 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7QF-0004c7-9V; Fri, 05 Jun 2020 08:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xTC03c+VN1v9oPdUo2yGRbRXi+/1BHiQCVEdadEW0B0=; b=wBe35UXKkNUxuKRFJWItlkvuD
 1XY++1q2yh1Zdn8E9bM44XF0UXOTbnrgJPyyFkMCF+P4VJYeq+HpcJrBCctVCNZHX/QflI8PUFqtB
 eZVzlHFtFLAMWyyURO+ZOuWjWW2UT6JYXUsEuLKMJ9qbhzww3ib7kkkI1fJmq070czJ/cCNCfTdtc
 86LNj7hzaz4ANgBd2UcVJ/DlxPycd45pLpZ+iVRHYTIIhttw+53TPqf/dL2Ynv8/juj15jvwn3A7S
 5jRRS8YLk88zzyi7ZU5mxkYkidghFxHNQohGA2yHxTA2VLGXaTvLNOXzek+UAYiFZxKhE4g3JDHDX
 ldCDaZPKQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:49608)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jh7Pb-0001ay-Ky; Fri, 05 Jun 2020 09:09:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jh7PW-0007IR-1u; Fri, 05 Jun 2020 09:09:06 +0100
Date: Fri, 5 Jun 2020 09:09:06 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: Security Random Number Generator support
Message-ID: <20200605080905.GF1551@shell.armlinux.org.uk>
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <20200603093416.GY1551@shell.armlinux.org.uk>
 <1591341543.19510.4.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591341543.19510.4.camel@mtkswgap22>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_010951_333269_7B6F06A0 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <maz@kernel.org>, Matt Mackall <mpm@selenic.com>,
 Sean Wang <sean.wang@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo =?utf-8?B?KOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 03:19:03PM +0800, Neal Liu wrote:
> On Wed, 2020-06-03 at 17:34 +0800, Russell King - ARM Linux admin wrote:
> > This kind of thing is something that ARM have seems to shy away from
> > doing - it's a point I brought up many years ago when the whole
> > trustzone thing first appeared with its SMC call.  Those around the
> > conference table were not interested - ARM seemed to prefer every
> > vendor to do off and do their own thing with the SMC interface.
> 
> Does that mean it make sense to model a sec-rng driver, and get each
> vendor's SMC function id by DT node?

_If_ vendors have already gone off and decided to use different SMC
function IDs for this, while keeping the rest of the SMC interface
the same, then the choice has already been made.

I know on 32-bit that some of the secure world implementations can't
be changed; they're burnt into the ROM. I believe on 64-bit that isn't
the case, which makes it easier to standardise.

Do you have visibility of how this SMC is implemented in the secure
side?  Is it in ATF, and is it done as a vendor hack or is there an
element of generic implementation to it?  Has it been submitted
upstream to the main ATF repository?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
