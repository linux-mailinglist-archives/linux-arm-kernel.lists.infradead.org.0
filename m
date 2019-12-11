Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A19A11A90D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:40:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBVKYAXupaSM/9gZ9dcUWUW7j9bTBwXll/qzSCYgjOM=; b=Y+Xrktov5fHkVH
	i2XHJc6kTBVy7fm5wv+Llw2KYAvLQYMu7GhBW3oK/ehOWw/TzBVRxpezTogw3omGQoeSBrjfeT/x7
	P6A92Ul/IaLunlVORE4iyRrlFdl3SCkz4L6Oy3OfYsK5qBRyQNWh3V8XS3QQFSuyy4+g1dR0dUgPH
	I7vNJmBkA65N0XQIOY43P47kSB4hPSbo9cjmgjEgvrO7ujYz1XptRRBIjIF2zr8PmOMMxo4/8DWml
	jRUKzEBhZwEI/wjf7rogfIlff0DhlreT8qeXJrY+uPy0WHKW2uFJEm5CFaTlGlF24dJYY1vu7mZxS
	DREsa7OrZD0aR/Vd5SDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezPQ-00049c-5a; Wed, 11 Dec 2019 10:39:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezPH-00049F-8L
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:39:48 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iezPG-0006AW-1c; Wed, 11 Dec 2019 11:39:46 +0100
Message-ID: <34a73e049624751c0a2c1ae569c224e07ce9fe03.camel@pengutronix.de>
Subject: Re: [PATCH 0/2] Couple of reset-brcmstb fixes
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Florian Fainelli <f.fainelli@gmail.com>, 
 linux-arm-kernel@lists.infradead.org
Date: Wed, 11 Dec 2019 11:39:45 +0100
In-Reply-To: <ccb1a422-21a0-88b3-0874-67b7c6c54d4a@gmail.com>
References: <20191104181502.15679-1-f.fainelli@gmail.com>
 <159380b7ec799f15269a4a6e8f2482a02748e6fd.camel@pengutronix.de>
 <ccb1a422-21a0-88b3-0874-67b7c6c54d4a@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_023947_293921_A382667C 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Tue, 2019-12-10 at 09:51 -0800, Florian Fainelli wrote:
> On 11/6/19 1:01 AM, Philipp Zabel wrote:
> > Hi Florian,
> > 
> > On Mon, 2019-11-04 at 10:15 -0800, Florian Fainelli wrote:
> > > Hi Philipp,
> > > 
> > > This series replaces the previously submitted fixes to the reset-brcmstb
> > > driver and also fix the dt binding example.
> > > 
> > > Thank you!
> > 
> > Thank you. Both applied to reset/fixes.
> 
> Philipp, when do you expect these patches to hit Linus' tree? Thanks!

I have just sent out a pull request for v5.5, I hope we can get them
into -rc2.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
