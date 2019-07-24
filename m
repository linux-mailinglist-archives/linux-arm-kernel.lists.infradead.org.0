Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C449872C9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 12:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Qtck9+MPVeAtz5jimL0xaMybsN+HnDY4HPMMthwZVE=; b=CSRgUecy1V13/Y
	PauCtlB4cS1iftkuqWjvKY3dM/nBtGfbv5dlwrGhIzyYKVTMunxAXKRBEfN2npoRdWbvCesE6564T
	S6cCH7AGcCi9GROWZ+xU3JQxL2d8QxXN/TvWf1/PKbWo/Y2s3QP91GJYOofxNC+aJFjwFZIV0Zxis
	2YFOdn7/W4axu5VoTrMjLW2av/ebfvLWxafLPFlEQc8G+eW1QHTneYVEkrF8rKnmN8LVExDnMGWhM
	KHWMRMCEn4B7QOFvR3uz6XsabK7wVYDoqQCoM4KReq/ufJ5ikYJXUSNhdMGO/sAQfBe8srwhboPdl
	3RRlI3PoH0jXqUJGDzrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqEse-0000aI-Lm; Wed, 24 Jul 2019 10:52:20 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqEsT-0000ZX-Ut
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 10:52:11 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0755525BE40;
 Wed, 24 Jul 2019 20:52:06 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id CC172E22041; Wed, 24 Jul 2019 12:52:03 +0200 (CEST)
Date: Wed, 24 Jul 2019 12:52:03 +0200
From: Simon Horman <horms@verge.net.au>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
Message-ID: <20190724105203.thykr2staw22gdj3@verge.net.au>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
 <20190717132607.GA1458@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717132607.GA1458@kunai>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_035210_147158_72DE503A 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 03:26:07PM +0200, Wolfram Sang wrote:
> On Wed, Jul 17, 2019 at 02:57:39PM +0200, Simon Horman wrote:
> > * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
> >   August 24, 2018, the TX clock internal delay mode isn't supported
> >   on R-Car E3 (r8a77990) and D3 (r8a77995).
> > 
> > * TX clock internal delay mode is required for reliable 1Gbps communication
> >   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
> > 
> > Thus, the E3 based Ebisu and D3 based Draak boards reliably use 1Gbps and
> > the speed should be limited to 100Mbps.
> > 
> > Based on work by Kazuya Mizuguchi.
> > 
> > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> 
> What about adding a short comment explaining the situation?

Do you mean in the DT itself?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
