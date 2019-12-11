Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2010A11A69C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:17:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGaVMXNkhIecSIR/jsT64gjNMTjUP9DREDMAi0opZeA=; b=osZ5ZT1KhGmy/7
	qT+dRAiFh/92Us4tgxUwirnH98qpLvzOcgfLiTR2CnC1ydGlcwcNhtxWh12IB8wH4n1ek4ZurSFE1
	5ZSE1T15zv5w+kjIFDVKVEh0WzconaR5vZuHgZKqeFjPNfemWXt2eJjaKahg6CBjmuDf+obAThFFx
	v8xo3LXmWvHD/eI4ZqYMlXF8agIuQAuiMtfAx/vxBFWBEZgrfHrjghPR1CxLdfckLOUQb5rIhscqW
	jra98qx0GR0Bk+D0Spr62c3nUHYp/KFtYIvF3rXmnefsi7dZRvm6oq6qsUzYPbsh3fWhaZAB/j1+4
	o9zDKQORikXWjK28PyOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iey7J-0003Um-J6; Wed, 11 Dec 2019 09:17:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iey79-0003Tn-Fe
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:17:00 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA294214AF;
 Wed, 11 Dec 2019 09:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576055819;
 bh=kj+qx89zaMyUD9oKXKDD+HUhzoTArIEgWz6C9wC7zmU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UP4FUUL+vK4L0G6KVpix9Cu83sXXr3LhOX75HqqwfyZJdiIqZ2nxINgjgJQTFtQ0g
 XyPTM3m8duiAKuetKlnjzRxmUyXSOpwqqYKBszj2ONjRN/ulR5TwCkkIHNWvdjqcsC
 RYGUhxOKFHMmOL6AJt81RihL9VxD04513YFRPOAA=
Date: Wed, 11 Dec 2019 17:16:50 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v2 2/5] arm64: dts: ls1028a: add missing sai nodes
Message-ID: <20191211091649.GW15858@dragon>
References: <20191209234350.18994-1-michael@walle.cc>
 <20191209234350.18994-3-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209234350.18994-3-michael@walle.cc>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_011659_541219_AAF0F08B 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yuantian Tang <andy.tang@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:43:47AM +0100, Michael Walle wrote:
> The LS1028A has six SAI cores.
> 
> Signed-off-by: Michael Walle <michael@walle.cc>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
