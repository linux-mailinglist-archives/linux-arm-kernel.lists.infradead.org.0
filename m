Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3E111732A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cg/v8H+trw1ma/qhuIkHvIVqXf9D49OeFgqvfnSm7I=; b=Lm7f/Wu19IoXtr
	Wgb2l4sjz5vYZoTnCM+rtXc7LuKRrht5SgJ8tHj/i89+1Myr7P+bIXzejV1qZvH9v+1eK3icLR+Aa
	zxLOFZrrA9JUGdpB8Sdw1mwFTbiYMrcB2iTlbtwlg9pk4XZ2600dm8cpzmaM0pbfJOXXLsocuqsZp
	wDiHnf9Yw4sm0jmUktOqjov/b2yZX5lal+H8UWIP7q3N9Twr+cjGgfY/gPzYBttxwQlOqwkQec5PT
	S5r5p+I3+UClebQS1APmKorySuaQ6v3E3CWJXGq9Pg6OLRPhbswWxP6TnGPLVuAQk57XPSNFZ7mE9
	QzKi/ZeXjkvjB4Yo8a/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNC1-0003c5-70; Mon, 09 Dec 2019 17:51:33 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNBt-0003b6-5m
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ms/F2s3/R6/K6xLFMgTAAHNf26wBJJq851sLoWDyaHM=; b=QPhX/g5vzvc1EQQR+ElUulM8CO
 FQ5cp0+vJTpkVCwhpZxYH/fpmFvYseVfS37Ux9Yw4Ve0l/QbXlr9Nri9O6Im84c/1y21fBliMB2cC
 67MfEbqnAKFKRkazihaobdHVRE9bpS28H7xPMBIp7nYjxCTXdP/C3iLcNLm7BXAr38Go=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ieNBn-0006wI-N6; Mon, 09 Dec 2019 18:51:19 +0100
Date: Mon, 9 Dec 2019 18:51:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v1] ARM i.MX6q: make sure PHY fixup for KSZ9031 is
 applied only on one board
Message-ID: <20191209175119.GK9099@lunn.ch>
References: <20191209084430.11107-1-o.rempel@pengutronix.de>
 <20191209171508.GD9099@lunn.ch>
 <20191209173952.qnkzfrbixjgi2jfy@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209173952.qnkzfrbixjgi2jfy@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095125_216910_9BF5F40A 
X-CRM114-Status: UNSURE (   6.96  )
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
Cc: netdev@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Yes. all of them are broken.
> I just trying to not wake all wasp at one time. Most probably there are
> board working by accident. So, it will be good to have at least separate
> patches for each fixup.

I agree about a patch per fixup. Can you try to generate such patches?
See if there is enough history in git to determine which boards
actually need these fixups?

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
