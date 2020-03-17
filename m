Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBE2187C0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 10:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQxwiBInaeW+ti4Rg4DedFGrrJDjFnDfRlkN5ks8Zss=; b=AmADvJ8sWgcftb
	MF3kPZB5amXJaRO4p7gLrJHw26ZPsmVDbr4ibp9cMOk1+hUTkVsT7bIalg/KguT71vrq7cgx1XWBX
	pIAMrV5jltlbNh1p4OgMP2yW3zWkRxXtcyHOHmVSdVxoDzUs6OZBOHINXINtHDlho2WJQebr1VqkH
	L/a9NO5B7RQD6qtU7/O8HTaLpX+eJXeL1OcNGfMCW6FdEKVTx9JMcT/ZcJfndoUNTid0b1oUbaYQb
	8PCEEja1G880IH6VqP9C7RWeIZ6H442j3ar3zcZlyMQChUMvS87V3bzpnQchH77rFBz9beFbhaHpn
	dSycWw3bl32Wu4QqS0BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8Xe-0000B4-3C; Tue, 17 Mar 2020 09:29:42 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8XS-0000AX-7t
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 09:29:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z+AyaK3ogFbvbt1mFffv+w8jqt6bs51tBylNS+LBlz0=; b=JmdSFI1+VkJio2tDPA/rdC72rd
 PfGp4Xt1rRCIRyCUzSd44ADg9K381tvFsW6iC4Vo3CQzEhLdpj2Lrm7Hystwkl8WanmwRd/F+U1Bb
 EW3/r166RNdnUKtW1n61MHGJXcQERgI4+P8sIG5TWNLYPWjwushK6JTxUyBwQphvV2iM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jE8XH-00057V-Lw; Tue, 17 Mar 2020 10:29:19 +0100
Date: Tue, 17 Mar 2020 10:29:19 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v1 1/1] net: phy: mdio-mux-bcm-iproc: check
 clk_prepare_enable() return value
Message-ID: <20200317092919.GA19323@lunn.ch>
References: <20200317045435.29975-1-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317045435.29975-1-rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_022930_278173_D6F525EB 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Arun Parameswaran <arun.parameswaran@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:24:35AM +0530, Rayagonda Kokatanur wrote:
> Check clk_prepare_enable() return value.
> 
> Fixes: 2c7230446bc9 ("net: phy: Add pm support to Broadcom iProc mdio mux driver")
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
