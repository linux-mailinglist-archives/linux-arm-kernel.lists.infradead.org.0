Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F393A856A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1N+G0FihCF3Lb3IEQb02A8likigEUD+yK2sD6cBjKY=; b=Hg7oatOvhxDdao
	FWaUPMWok26bxoqKhgFv4qjIuwUY6SUVGQ/Yc6AhZalHwce7czjNw2AR9XxoGDLQTaDoA8gadYdTL
	Vw7+T+uyqO2NbhLF7RoWcnTCew7zBIRrOwSEzxVJqD42sO3LGpmM6WBEwn+lyh3wSvSG/1ByWHzoH
	XWvCCpplMRwWbbxwdzoNT9kkeijhsXEwgN7/3cLRSDFdRbhM4lG30obfKF7eigu5ivgp5tXu/Im81
	dYqnAIPmvsf2UYzW6YDnRntQujs0qR0003d7wBRyfb78ikXy6PzOp5ZLj4PwPbmcIqOy8oTmATEOx
	7dGyIuedbLnQrZ+HuEeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5W35-0005vV-Vx; Wed, 04 Sep 2019 14:14:16 +0000
Received: from mail-yb1-f195.google.com ([209.85.219.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5W0C-0002co-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:11:18 +0000
Received: by mail-yb1-f195.google.com with SMTP id o82so7329294ybg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 07:11:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ndiu1qeyYiTsgd1IQKxLqytq07+6AvPDInzgXch1dx0=;
 b=CNgrXdA7c3VnnhnT8YGOEVUXWepXxgu01shLNoF7kfMdsh3Z8N+ziW4CtzrIZCCOoE
 KKzt8M71kuKv3Xh4FGVx8t9tpAkwPVHNC+/C5k2veWTJQp39KUmsW1mjVj8uaFjuZWVW
 bX1zwS2FWfiQw9EI1QZidfVf/TjbdC6VpbUX/8c2+gW5HCnEZNCHFDU/7bTQcEQDIiM9
 Le6rf0Iv2qqmHgactAvO/PP8eQ7UY63uwsPa1793krDrvlmx4M2qQCSXuXv9e3vYcFDN
 pQXt1Eraopxh7WjwGWifS+StaiaePv9EXc32afG2j0cCwZcnSnIFFCgXeeL0dJzHXmGV
 +Lfg==
X-Gm-Message-State: APjAAAV+9FjNfXcFybB9zOEPLQo+YB3MJC+CJXbSvWYm9Tu452XET4F7
 Yo9vmNiETYkiLJ6BKCHZZpdTxV7RcZSaOaHSGLs=
X-Google-Smtp-Source: APXvYqyhk8FpqdMml/U3tSJdYtK/Y+iACvELqeYDdxkjKbPkgsnecJqn3l9d6E1wpGWwXqCgqS5anjOZuA/G8EqrUKg=
X-Received: by 2002:a5b:981:: with SMTP id c1mr27761719ybq.14.1567606274841;
 Wed, 04 Sep 2019 07:11:14 -0700 (PDT)
MIME-Version: 1.0
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
 <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
 <20190801040648.GJ2713@lunn.ch>
 <CAFcVEC+DyVhLzbMdSDsadivbnZJxSEg-0kUF5_Q+mtSbBnmhSA@mail.gmail.com>
 <20190813132321.GF15047@lunn.ch>
 <CAFcVECKipjD9atgEJSf8j78q_1aOAX77nD6vVeytZ-M00qBt6A@mail.gmail.com>
 <20190813153820.GY14290@lunn.ch>
In-Reply-To: <20190813153820.GY14290@lunn.ch>
From: Harini Katakam <harinik@xilinx.com>
Date: Wed, 4 Sep 2019 19:41:03 +0530
Message-ID: <CAFcVECLucW=OXRnr1vVws2fswp0zHxBnMT-3JC2AOPXCLhDL1g@mail.gmail.com>
Subject: Re: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_071116_692268_C8D53513 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (harinikatakamlinux[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, Aug 13, 2019 at 9:40 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > The kernel does have a few helper, spi_get_drvdata, pci_get_drvdata,
> > > hci_get_drvdata. So maybe had add phydev_get_drvdata(struct phy_device
> > > *phydev)?
> >
> > Maybe phydev_mdio_get_drvdata? Because the driver data member available is
> > phydev->mdio.dev.driver_data.
>
> I still prefer phydev_get_drvdata(). It fits with the X_get_drvdata()
> pattern, where X is the type of parameter passed to the call, spi,
> pci, hci.
>
> We can also add mdiodev_get_drvdata(mdiodev). A few DSA drivers could
> use that.

Sorry for the late reply. I just sent a v2 adding
mdiodev_get/set_drvdata helpers
and using them in gmii2rgmii driver.
I did not add a corresponding phydev helper because there is no "struct dev" in
"struct phy_device" and I dint know if there were any users to add the member
and then a helper for driver data. Also,
strutct phy_device { struct mdio_device { struct device }}
is already available and it seemed logical to use that field to
set/get driver data
for gmii2rgmii. Please let me know if v2 is okay.

Regards,
Harini

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
