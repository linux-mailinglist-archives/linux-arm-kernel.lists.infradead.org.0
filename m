Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAFD122960
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fm+vwiHYbE24/nL8/amlsrUzauPLErjg7BV9eeAcKsA=; b=od6CsZfSZz1olr
	eViBvsKDNjOGmhaZNdiSn2Pntd4xC7klKnsQW+iK4Y5c/436VlclyJ4oy71wlOKRyEOfTezwZCN+m
	+MPrcunSjtbPSpHZTNZ6C4MFZ3dz3tdyGICPf7ciGCoxSj8ReIoXqvh2fxnL9XyeigAXuqaAPBupc
	9Wyr7WBhaVioh4ouKtdFkTHMjVWwYw8sp0DaeDdkdbekg+3UBZH9alzYog8J9s2euthJ9iZqxhk7Y
	n6C9ZALueD/oZ7F4hNiW3FLKHYxpESEKNcptO72peh+9UCuYmeKKfDKj7VFKVEqASs5tnDn8ASMbg
	zjA2WiI/h4XUCUYYbVPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihAaM-0005Tw-Nw; Tue, 17 Dec 2019 11:00:14 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihAa5-0005Hh-Ac
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j+kDSnNZibDPGmGiavTo8MBbX0StIr3Q6zqHd8Wr8m8=; b=RWR5ySgH5WF0N8DME7aypZQWpM
 QRnSlcwOD2YVcxgoz1DTu1qgN8s4UuejHEbgewyeE8nZQgb8bkUcoLDA/A1o1WugxM/YG3RjPlI6T
 BYwFOkjiYqUwiJZ+DSd0CZt9k3USMvWFk0v9BltXNQHX3crx2JsPL0HTmXcVTdRG7tVA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ihAZt-0007CG-CF; Tue, 17 Dec 2019 11:59:45 +0100
Date: Tue, 17 Dec 2019 11:59:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Richard Cochran <richardcochran@gmail.com>
Subject: Re: [PATCH net-next 3/3] net: axienet: Pass ioctls to the phy.
Message-ID: <20191217105945.GA17965@lunn.ch>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <361f63095be92df10e8e953af3b981cdac58d98e.1576520432.git.richardcochran@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <361f63095be92df10e8e953af3b981cdac58d98e.1576520432.git.richardcochran@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_025957_361177_40EE11F8 
X-CRM114-Status: UNSURE (   6.67  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static int axienet_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
> +{
> +	if (!netif_running(dev))
> +		return -EINVAL;
> +
> +	switch (cmd) {
> +	case SIOCGMIIPHY:
> +	case SIOCGMIIREG:
> +	case SIOCSMIIREG:
> +	case SIOCSHWTSTAMP:
> +	case SIOCGHWTSTAMP:
> +		return phy_mii_ioctl(dev->phydev, rq, cmd);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}

Hi Richard

You don't need to be conditional. phy_mii_ioctl() and
phylink_mii_ioctl() will return -EOPNOTSUPP for anything it does not
support.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
