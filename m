Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E654A86B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1uF6reSZFKAqorf/qEMNYRCz7Qpp/pX+B2juX3ur4s=; b=lVhUppA8ea1eqU
	8FlGcxyxKLLGKceHhhH/2WTfzvIJGQaWrOmGbAHQaOt4IFP1BLsAGcaS+DEWW11AOJqOxxGhxDKKm
	ZqTcw5mELkRq56yVHatVIBse7yIdS21da/EqI7e6zzh/uAg+CvcaeBrl/WwZ1pV1YkXULiabKoiIB
	2JBpEYACKlMt4TDau08O+PFMrd36w2rEyLk4qiUY0nLwNWN4xHV51WIgEXMjxu79vJAXnPvew/7lV
	lAWrpI5qf08/8RPHV70l/I1pOXH2LgWe9b9AZ46S4fLD7NxxoRyIa3p3V+LG4itfBeX7faLZKfdAI
	rMOCdsVxITvgqIYd7k3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YRj-0008E5-5g; Wed, 04 Sep 2019 16:47:51 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YRY-0008Dl-Cu
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/6j1Gkt1CBbHUGiBWOJj8kGsbCdFAqGjCFN3H7D6PuU=; b=waGT/2BJF4Wdba7gJY8Q4vO9Cu
 /ObCYjl1yX5vz7eA6X7V0+aby4l/+I7ugKEu1j7xPP7qhjefoNo+7Kszp18cs5hTjuYHay5uBrNCA
 iKIHyEjKdea7SKh6swiMcepWgu6M9b8Fyt1ded+YfV9HWwwWbRm6tB6BEFvf6JH1RJhw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i5YRW-0004aZ-SF; Wed, 04 Sep 2019 18:47:38 +0200
Date: Wed, 4 Sep 2019 18:47:38 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Harini Katakam <harini.katakam@xilinx.com>
Subject: Re: [PATCH v2 2/2] net: phy: gmii2rgmii: Dont use priv field in phy
 device
Message-ID: <20190904164738.GB17114@lunn.ch>
References: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
 <1567605621-6818-3-git-send-email-harini.katakam@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567605621-6818-3-git-send-email-harini.katakam@xilinx.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_094740_591034_3E03A07A 
X-CRM114-Status: UNSURE (   6.64  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Sep 04, 2019 at 07:30:21PM +0530, Harini Katakam wrote:
> Use set/get drv data in phydev's mdio device instead. Phy device priv
> field maybe used by the external phy driver and should not be
> overwritten.
> 
> Signed-off-by: Harini Katakam <harini.katakam@xilinx.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
