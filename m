Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECA61AEFA1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYILkUj/ZkGGbJ8XHGNiylKKIkdH8sC1cm9NY6dM+QE=; b=KyfQpfUX8j2QUM
	jBlocE4g+62mz0uA0auAxgU4rclwt8nIMUxqCspz/2CrGb4DQBsH29kgihFeDi/R3JwQVZFArfqv/
	HMi7130/qaNYcjZvwa48kGi6YFNIgNQsYHXKzoL9Z/LoVYCQJFEkr7RDTC8byr14aABAiJ85shCxo
	2DUhY3Urz/edoyZlVQnYr5sSL7TnAxdPoREWJD0Jt2PpvzdP3oK7MpZBeEwuUrKGbZlLECYj9cx9n
	Ync2IiIxqoUmWU24rIhvtTR9Qhv7VWRE4IQPRGnUwXxICOM0rDdaRwiC2Lx8S7R1MvBZvDbbMHFL0
	sMXScpMM3zqEgnw1YSTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPojc-0004rF-Je; Sat, 18 Apr 2020 14:46:20 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPojT-0004fh-8N
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:46:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dpss5G2N7uvUMvkaD6b2KJzZija+Nemnz6JbBa7IjiY=; b=ouT/UqhyzwL6J/ctwSdntyWusU
 SIeWEnq+ldQajILAFZXJyifjGMy0xoYWnxvPS2GRjnKOkvT7PrOi0FCbIwKRfZ78Ai2RsbDK49QWg
 tcq4LFaMTlY/k2J83cu6d91FJxbkkyGocMEUGL6rUSdmBO2TKIK/6KRMMt9ejumCABf0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPojO-003TLN-2J; Sat, 18 Apr 2020 16:46:06 +0200
Date: Sat, 18 Apr 2020 16:46:06 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
Subject: Re: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
Message-ID: <20200418144606.GG804711@lunn.ch>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_074611_316692_93627914 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Marcin Wojtas <mw@semihalf.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Jeremy Linton <jeremy.linton@arm.com>, linux-kernel@vger.kernel.org,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 linux.cj@gmail.com, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -	ret = of_mdiobus_register(bus, np);

So this is the interesting part. What you really want to be doing is
adding a device_mdiobus_register(bus, dev) to the core. And it needs
to share as much as possible with the of_mdiobus_register()
implementation.

       Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
