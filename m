Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271F95FC0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 18:44:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NHCkJxVHzInlwwac5I4E/N9ab3SajERqYTB4u+/FGXs=; b=I9iLFHd6wbmOUm
	J8LteyJDCanUt+/Tiz57QhhvmmQBeW3dVouRlwuRDWeahd7ZMw3S24YjiNihYx/BOXjbNjQhb0Ne2
	ypXyq1hhLe3XgogDoiYQqogdkOPzrfny/nPNnYsVRwmqGzDOuqTLh3PKk0qRJnUX40Ufl+9aZmDGu
	8x4B4S66Ymtd7uXOpm9IuO1PO8lDMq3xsTIJLPXMZy90vr0/Msv3Oz2t9PDYwqOcTVClRUk5u28zs
	VrNCOjUdiewTmGxanSNXZNBtkFCi4fRykGfKx5wl+f2DcrxYUySdRwbIZLXOUA8xTPRAStNaGS0Fu
	yz0kiGJq1rY7/ewOJxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj4q0-00077r-7B; Thu, 04 Jul 2019 16:44:00 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj4po-00077E-FG
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 16:43:50 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 1CA612077F;
 Thu,  4 Jul 2019 18:43:42 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id A205820701;
 Thu,  4 Jul 2019 18:43:39 +0200 (CEST)
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Peter Korsgaard <peter.korsgaard@barco.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Generic get_something from an i2c_client
Message-ID: <07aa1229-2b67-e191-5740-70e6ed2a8ce3@free.fr>
Date: Thu, 4 Jul 2019 18:43:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Jul  4 18:43:42 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_094348_667883_692971EC 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, I2C <linux-i2c@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

In media drivers, TS drivers typically hard-code their front-end (demod and tuner)
init by loading the modules themselves.

I feel this is not a good solution for SoCs, where the TS HW might be on the SoC,
and the front-end be on the board. So we may have different front-ends for
different boards, and the driver would have to hard-code all of them.

Am I making sense?

Here's an example of what I mean:
https://elixir.bootlin.com/linux/latest/source/drivers/media/usb/dvb-usb-v2/dvbsky.c#L466

I've been working on defining the demod in DT, and having a phandle
to the demod in the TSIF node.

I've got everything working like I had hoped, but I have many ugly hacks.

The TSIF driver needs to register the frontend, which is created in
the demod driver.

So I have:

	struct device_node *toto = of_parse_phandle(np, "demod", 0);
	if (!toto) panic("of_parse_phandle");
	struct i2c_client *demod = of_find_i2c_device_by_node(toto);
	if (!demod) panic("of_find_i2c_device_by_node");
	printk("\tdemod=%px\n", demod);
	struct dvb_frontend *get_fe(struct i2c_client *client);
	my_dvb_frontend = get_fe(demod);

The problem is get_fe(). It needs to be a call-back, so that every
demod can implement his own version. But only a few i2c_client's
have a dvb_frontend to return.

Could we have a generic void *get_something() callback in struct i2c_client?
(Seems like the wrong place)

How can I solve this conundrum?

Maybe look above i2c, in struct device?

Regards.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
