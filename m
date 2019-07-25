Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 676C6746AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 07:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6M6R7tRJ655xNfgGzGfDorYzVkSKl7lZcDg19on/BA=; b=ptuuv199ICzG30
	3ripLSveYoXVj/6tUU/IjlRzBm9bWwec28IRkkT2D9I6NjJ7sfvkSdWrUelziOeaCMMVR1wmXAsbc
	0S/SNUuX9heZBeGCW9ZpPV2YDr5Q3jidQSsLj+WQpZpHvrmu1XHi5rsLodw+Al08vtI8bqNqoTvqV
	EPeIKPdMXEnlxPNprIzUOR/hBfgO5sBPWnihavYGRx6K2GXKiRGsBwGaVzbyCdHk88S0oBTpeeie8
	SFnR5ieAdmEEzkshCUvaexUYJewPIFmi0BRuUnR2yvTWQ26+/91NK9l1lWBJb1rAG4tmJz44wBR13
	5K8VyCFJzyfX/W+D1GoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWlD-0002HI-1W; Thu, 25 Jul 2019 05:57:51 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWks-0002Gt-EX
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 05:57:31 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 97D1525AD7E;
 Thu, 25 Jul 2019 15:57:27 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 87778E21A74; Thu, 25 Jul 2019 07:57:25 +0200 (CEST)
Date: Thu, 25 Jul 2019 07:57:25 +0200
From: Simon Horman <horms@verge.net.au>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH/RFC repost] arm64: dts: renesas: ebisu, draak: Limit
 EtherAVB to 100Mbps
Message-ID: <20190725055721.37mcdtpeer3knrxa@verge.net.au>
References: <20190717125739.21450-1-horms+renesas@verge.net.au>
 <20190717132607.GA1458@kunai>
 <20190724105203.thykr2staw22gdj3@verge.net.au>
 <20190724210441.GA1559@kunai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724210441.GA1559@kunai>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_225730_646896_A93AD8CC 
X-CRM114-Status: GOOD (  11.38  )
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

On Wed, Jul 24, 2019 at 11:04:41PM +0200, Wolfram Sang wrote:
> 
> > > What about adding a short comment explaining the situation?
> > 
> > Do you mean in the DT itself?
> 
> Yes, so we don't forget why it is there. Or do you think this is not
> needed? I'd think it is useful but won't insist.

Sure, how about something like this:

                /* TX clock internal delay mode is required for reliable
                 * 1Gbps communication using the KSZ9031RNX phy present on
                 * the Ebisu board, however, TX clock internal delay mode
                 * isn't supported on r8a77990.  Thus, limit speed to
                 * 100Mbps for reliable communication.
                 */
		max-speed = <100>;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
