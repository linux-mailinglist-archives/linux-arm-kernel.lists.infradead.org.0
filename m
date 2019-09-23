Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B467BB793
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 17:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wWbpMdfVzPqpojcWsw8YvsJ9Au/54JHscqNAl1oVHA=; b=iJI21MmMJm3bdn
	JbUdx22mfyU6HwTCEjUbsapC1GD7wt8Lx3xPkU8ZzHbBFHi3dNF8BCJXsTOABZjAvmMzgs3mu/EX7
	uOebA9oIFbeHGYDHCF40zZ2mVaR1gtY/3hvQ8QZewvqiGE8SdMouKb+zmIUH+2/ccNb7a7BNOg8pq
	Es9LnmZ4MwekkTY/Vpeyi0nSjGEqIvD/gtQZ8pkqeseAGHZZmx94IPRBtVUWt04bGGa4xLgTa/SB1
	wgkj95anXnNvNW13DUlbUKPqkmu9iAmOhpZojtqKm9h5NjbWJuAD+QvouF0VYaHhGuknyaJ++ZhFp
	nmlCGtVO3ZM98YFTsEpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPyU-0000Ai-2e; Mon, 23 Sep 2019 15:10:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPyG-0000AC-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 15:09:49 +0000
Received: from [2001:67c:670:100:79a6:a514:42de:7079] (helo=rettich)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1iCPy4-0000Kl-Uq; Mon, 23 Sep 2019 17:09:36 +0200
Received: from jlu by rettich with local (Exim 4.92)
 (envelope-from <jlu@pengutronix.de>)
 id 1iCPy3-0006sW-5g; Mon, 23 Sep 2019 17:09:35 +0200
Message-ID: <8cc51d485ee016589b752426412e57c23e35a4cc.camel@pengutronix.de>
Subject: Re: [PATCH v5 0/3] Fix UART DMA freezes for i.MX SOCs
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, Adam Ford
 <aford173@gmail.com>
Date: Mon, 23 Sep 2019 17:09:35 +0200
In-Reply-To: <2443c553-c593-2f23-4cca-c2f03676adc9@emlix.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <CAHCN7xJL_x1ryOoNW+R2hOZ9dMFem9wni8Uo8QOA3wxpzKLbqQ@mail.gmail.com>
 <2443c553-c593-2f23-4cca-c2f03676adc9@emlix.com>
Organization: Pengutronix
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:79a6:a514:42de:7079
X-SA-Exim-Mail-From: jlu@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_080948_339117_EB361963 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: fugang.duan@nxp.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, vkoul@kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-23 at 17:06 +0200, Philipp Puschmann wrote:
> Thanks for testing.
> With my local setup i still have very few tx timeouts too. But i think they have a different
> cause and especially different consequences. When the problem addressed by this series
> appear you get a whole bunch of tx timeouts (and maybe errors from Bluetooth
> layer) and monitoring received Bluetooth packets with hciconfig shows a
> complete freeze of rx counter. Only resetting the hci_uart driver and the wl1837mon then helps.
> With these patches applied the rx data shold still coming in even if a single or
> multiple tx timeout error happen. I'm not sure where the error comes from and what the
> consequences for the Bluetooth layer are.

For testing, I've used a UART connected to my development host and
configured *mismatching* baud rates. Sending /dev/urandom from the host
to the i.MX6 then triggered the DMA hang (because each character
triggers and error indication, which "uses" a full buffer).

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
