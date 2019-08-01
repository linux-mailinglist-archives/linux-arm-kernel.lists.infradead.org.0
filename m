Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DBC7D448
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 06:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHiuMrYiIvpItKzbeWEjj+SP5tAOouo9OXtWpAcgF2w=; b=E5Z2W0CWpkWDe9
	wi1vEqs9WVGHdGI9uSzHlQ/MtV3X725J78XkkXJOtTML33ohyvbilCcWQ5ljkOiO468pWm02WIFNd
	lwRxOqN30Mor369PltUEXoNRPerfssXk4i1U969scmFw4M5GL2OB/da2Fy+YRSnihqNzy3SeUDYLZ
	tM8AlHOV4uS0HuLu2wojrYaY0OPflV6mOfejL5WVfHL2wFasNCXluUJLABb8rO88jhffeUdEdy6dw
	5/NHi3tzJ2iTwa+yost5jjFCBUnUneaCDKjWhbFNfz95tnSeVRDwMwk5gmSitkcl8AfiX+8rll+Rz
	6cxvj+bUvGqpOqboC7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht2Mk-0007fZ-Uy; Thu, 01 Aug 2019 04:06:58 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht2Md-0007fF-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 04:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0nEIRUfN3zxsNAh48LslJgJUypuGqC8H3HJtRe8muw4=; b=Ed/qRiSwHqaqhTMRwJLrcoWg42
 SMVd6TmaE41zAaBb6SGmyGCHZm5ShtqqJYzCOueWexv7cnO9CAkY964OCQhgmLQtaF9OBUglTP0SH
 dXgfmyJrC4ejwk71xvV5iQqrdbMte5S+WfZP5JeMn9RsFLwg76O09D2zXFIUzQWbKjb0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1ht2Ma-0001XR-44; Thu, 01 Aug 2019 06:06:48 +0200
Date: Thu, 1 Aug 2019 06:06:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Harini Katakam <harini.katakam@xilinx.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
Message-ID: <20190801040648.GJ2713@lunn.ch>
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_210652_172706_ED5758CB 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, netdev@vger.kernel.org,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 harinikatakamlinux@gmail.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 03:06:19PM +0530, Harini Katakam wrote:
> Use the priv field in mdio device structure instead of the one in
> phy device structure. The phy device priv field may be used by the
> external phy driver and should not be overwritten.

Hi Harini

I _think_ you could use dev_set_drvdata(&mdiodev->dev) in xgmiitorgmii_probe() and
dev_get_drvdata(&phydev->mdiomdio.dev) in _read_status()

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
