Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135DE8B673
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Afjgdvj+Rrf+1bQIVjyXJNhye/D3jMVjCvb13U5fpw0=; b=XHPtryX7tDmJsA
	el2zhk+6+nnA+4SaydTxQtoPaI+f4tOYIiabzmNKzAYZT7t6YNz+XQY5VQ7kMHqa1IqIEzrlluWEX
	KrAWqs9CJyMyfYSyoMOTqydMIr2SU0ntFeDgzQdgJVgMgRPIeSWj7lItYueapp8808H+z2iq8TJxF
	VF6uxxPeho9JXbx9LBrQdKrMFnCG1lqYrZlpqQj6V4omXy/WKN54EIcovVF29vlZLCnqvy2DV4yOB
	U/AMxAQd37AlwZtqrIqJvR8wiWInSx5Y6AoSQB3lJg2LCGBv2AQyKK4QAQLaGxigeUp/EVSxNoEDI
	8YFpFkQ4vaMzMTKUKe7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUnX-0004rU-SY; Tue, 13 Aug 2019 11:17:03 +0000
Received: from mail-yb1-f193.google.com ([209.85.219.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUnN-0004qq-93
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:16:54 +0000
Received: by mail-yb1-f193.google.com with SMTP id n7so4888056ybd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:16:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fpL8tgOC7LhjHn63gsTa4JL9oUa9w1GDwbaAmgEP2eo=;
 b=cknGFkjGZMbjWfBvLdeU/mp82+dx6f6ikaBqGKEcs9Y3ybv7/egjRHQ897ItBeMJV2
 WZuh92rS8Luuo2w2rWNB7XUlXh7CQz2HnUKtdFXcmi9+3dS4gA/d68upX9tlHdmEynoo
 oeUldgdZZHk8pDmlJHXCXg8kkuBvyxe2zv8NyQEvbu+P8P/s++MDXV7mhnAP4T2fAdE4
 O+4uN0Fo+LcJ1+mIcIGPo1eL/J9NmMdehMDfF8Cq+V3tRreGkHvtF6sq4WBENiglZDib
 EkDx6Hbu+WppNEii2W8UhW3Lq4S5oYYEjh8UtkO4PaHVzgYOzEgwRysHtBnr2jlc7ffK
 7LPQ==
X-Gm-Message-State: APjAAAU/WP2X8IS1eIhBjelWqHyyHsE/puSe5suDEEGmbm1lh6MTxdnu
 YIthsNN07JmCGjW+oiU7vMpJj359MkMPGZb78UQ=
X-Google-Smtp-Source: APXvYqxMqmMA/lHhb+ernHEQv3Mdn/NK06RJyi0cT1iBcpqYg5D9awj5M1Bel1AXoKonUVrriQpWnz/gGQYPyNBjXxI=
X-Received: by 2002:a25:5f06:: with SMTP id t6mr26379839ybb.325.1565695011491; 
 Tue, 13 Aug 2019 04:16:51 -0700 (PDT)
MIME-Version: 1.0
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
 <20190801040648.GJ2713@lunn.ch>
In-Reply-To: <20190801040648.GJ2713@lunn.ch>
From: Harini Katakam <harinik@xilinx.com>
Date: Tue, 13 Aug 2019 16:46:40 +0530
Message-ID: <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_041653_323649_E6C8A714 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (harinikatakamlinux[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 radhey.shyam.pandey@xilinx.com, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Harini Katakam <harini.katakam@xilinx.com>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Thu, Aug 1, 2019 at 9:36 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Jul 31, 2019 at 03:06:19PM +0530, Harini Katakam wrote:
> > Use the priv field in mdio device structure instead of the one in
> > phy device structure. The phy device priv field may be used by the
> > external phy driver and should not be overwritten.
>
> Hi Harini
>
> I _think_ you could use dev_set_drvdata(&mdiodev->dev) in xgmiitorgmii_probe() and
> dev_get_drvdata(&phydev->mdiomdio.dev) in _read_status()

Thanks for the review. This works if I do:
dev_set_drvdata(&priv->phy_dev->mdio.dev->dev) in probe
and then
dev_get_drvdata(&phydev->mdio.dev) in _read_status()

i.e mdiodev in gmii2rgmii probe and priv->phy_dev->mdio are not the same.

If this is acceptable, I can send a v2.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
