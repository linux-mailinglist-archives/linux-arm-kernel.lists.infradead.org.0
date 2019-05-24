Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E8C298E5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bikbBPVuTYhl7px+ghyjQmeJWjS1weDO9zuMKn0G/4k=; b=ER/d5SK+G4crfu
	eDTi5mDpmQcp+a+7J6HWtIGXtY0m6oF86hoZTAvHeim44tFulDeQciYwWh3vtOrHzMJXQvd3mzOMO
	ppDu7hZXGtwJHySDIWMlxeBW3IKej1zWmLrvV4ovt8qHZ09W6gtVbK/6RxyOxcd0XC6WRJ+TfjioP
	iphxoEyzaW022u8hxyzOl6InwPGKXNSB0+7kfpIpL91l3arkeAz17NB95c26KkNd08amZ77uWEdaK
	gGDLWCsfFh61Nrvfnif5kOUSljNlj+XS/Arg2b7yqYhTuYGHlnSlMNqTTxateoubSAQ3kTHY+wGA7
	a6lhKrvRjXeY7PW1Fy+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAFB-0000lI-QL; Fri, 24 May 2019 13:28:21 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAF2-0000kj-TG
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:28:14 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 018B925AD7D;
 Fri, 24 May 2019 23:28:12 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 00D6C9404D5; Fri, 24 May 2019 15:28:09 +0200 (CEST)
Date: Fri, 24 May 2019 15:28:09 +0200
From: Simon Horman <horms@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: renesas: ebisu: Remove renesas,
 no-ether-link property
Message-ID: <20190524132809.v7b4o4jk3t3ziusu@verge.net.au>
References: <20181121160808.13374-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181121160808.13374-1-horms+renesas@verge.net.au>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_062813_724926_45BC7899 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>,
 Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 21, 2018 at 08:08:08AM -0800, Simon Horman wrote:
> From: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> 
> It is incorrect to specify the no-ether-link property for the AVB device on
> the Ebisu board. This is because the property should only be used when a
> board does not provide a proper AVB_LINK signal. However, the Ebisu board
> does provide this signal.
> 
> As per 87c059e9c39d ("arm64: dts: renesas: salvator-x: Remove renesas,
> no-ether-link property") this fixes a bug:
> 
>     Steps to reproduce:
>     - start AVB TX stream (Using aplay via MSE),
>     - disconnect+reconnect the eth cable,
>     - after a reconnection the eth connection goes iteratively up/down
>       without user interaction,
>     - this may heal after some seconds or even stay for minutes.
> 
>     As the documentation specifies, the "renesas,no-ether-link" option
>     should be used when a board does not provide a proper AVB_LINK signal.
>     There is no need for this option enabled on RCAR H3/M3 Salvator-X/XS
>     and ULCB starter kits since the AVB_LINK is correctly handled by HW.
> 
>     Choosing to keep or remove the "renesas,no-ether-link" option will have
>     impact on the code flow in the following ways:
>     - keeping this option enabled may lead to unexpected behavior since the
>       RX & TX are enabled/disabled directly from adjust_link function
>       without any HW interrogation,
>     - removing this option, the RX & TX will only be enabled/disabled after
>       HW interrogation. The HW check is made through the LMON pin in PSR
>       register which specifies AVB_LINK signal value (0 - at low level;
>       1 - at high level).
> 
>     In conclusion, the present change is also a safety improvement because
>     it removes the "renesas,no-ether-link" option leading to a proper way
>     of detecting the link state based on HW interrogation and not on
>     software heuristic.
> 
> Fixes: 8441ef643d7d ("arm64: dts: renesas: r8a77990: ebisu: Enable EthernetAVB")
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> [simon: updated changelog]
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

This seems to have fallen through the cracks.
I have applied it for inclusion in v5.3.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
