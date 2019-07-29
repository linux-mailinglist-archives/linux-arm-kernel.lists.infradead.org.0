Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A7778E3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RsLWlp/4VpR1Gwlziwz7qZpmI8sSzp0+cCDRzbiLBtE=; b=GEHzJWfUQriRGG
	A57bUEtnYq4FR1ERKyRZrztpZXfRoXcE8RlMNmPv8S6GFtaqKClV84DmbFwJ+/aP580q6kfVUnKDj
	e+Wgcj33JY4QxNXDbcUCavxBH1J7VCm7tKf49/6ufrhe8m8WkE/0p8Z8xM0lhhAI8NGqej09OxOw/
	/XdwJU/CvJtk+pWOYZWOlCryTSHdPSlp+d63qv0ie+6/Ka+6O0OUBrJ5gI85eHSpziMKZxFR8JmYv
	PO/o07vbtW7fIqw8w+mlKJvQ4tn6DVUTQc6N+wOjuj5bpPKaUtoZabuHDbDTqbt5+um5+e5Ri3k0U
	jMWkXdgM09ob01pM+koQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6pY-0002tn-TK; Mon, 29 Jul 2019 14:40:52 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6pK-0002tP-Dx
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uvHE0hWUJLrSKxbCdwUl89MRrAkqzhfQK464Ih0/+WI=; b=KWhSyBj4gceT4pY8ReUh5Pd7fJ
 yzHN0avkF6m8NTc3lSzeDfBWHMbCh090W9zvb/JzXJQo7SRoogwjJ1Gx+Dwi1YxS5IpTNP0SFAqC2
 O4dDd7bTwxZfQrYz6ffOFwFnTzC3PCflqSqMNQm9Aiph0+RCvvBzxmADWi/vA7M0WLEs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hs6p9-0001pS-To; Mon, 29 Jul 2019 16:40:27 +0200
Date: Mon, 29 Jul 2019 16:40:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [PATCH v2] arm64: dts: renesas: ebisu, draak: Limit EtherAVB to
 100Mbps
Message-ID: <20190729144027.GD4110@lunn.ch>
References: <20190729080356.13023-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729080356.13023-1-horms+renesas@verge.net.au>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_074038_619211_5301D67B 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:03:56AM +0200, Simon Horman wrote:
> * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
>   August 24, 2018, the TX clock internal delay mode isn't supported
>   on R-Car E3 (r8a77990) and D3 (r8a77995).
> 
> * TX clock internal delay mode is required for reliable 1Gbps communication
>   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
> 
> Thus, the E3 based Ebisu and D3 based Draak boards can not reliably
> use 1Gbps and the speed should be limited to 100Mbps.
> 
> Based on work by Kazuya Mizuguchi.
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
