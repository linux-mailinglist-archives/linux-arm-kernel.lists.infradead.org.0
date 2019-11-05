Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4187EF0417
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:30:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcRixJBIiqFCeacXZW48hj1d1Fs0Fq51GagVgHjhmyo=; b=Fsvv9Zs/wqcq7Q
	qKaJV/8xdWvmLoIqGXAIOugi+o/ntTzM++zNVBrsTY8/7qQHcEAWRePRN2VGiXr7cBV8QPogk0cke
	YmBPwhTiNlu2/vDbGO2FSwo1TsXyWJkgf1ze+y4iAVOPgNhcEN+c8ansHvsbVLgRrrOGMkT+ht6dX
	uRRLXZC6W2ldtVHEPoywOfQ/j+zfUpjHwTkTuJIbO3PQKFLEwpyOFZXtaRbVw7MFuFumAJB/ZqPkU
	cP/ry3WIABY0aggmuM+acvb7VWTUq/ptFyCSSSJE44FXEYaLRYLxuRLFkHqIi+G+RIZizWHoTdeY7
	A5jGjkaK9MzBOiPqD85w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2eT-0001HO-QY; Tue, 05 Nov 2019 17:29:57 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2eJ-0001Gt-Sc
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:29:49 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0862260007;
 Tue,  5 Nov 2019 17:29:36 +0000 (UTC)
Date: Tue, 5 Nov 2019 18:29:36 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas.Ferre@microchip.com, Tudor.Ambarus@microchip.com,
 kamel.bouhara@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Subject: Re: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Message-ID: <20191105172936.GG8309@piout.net>
References: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
 <a8c16919-9842-8a2a-81b0-16551c6a7944@microchip.com>
 <c4af6562-16e4-026a-3c54-bde1d4f1b5c3@microchip.com>
 <20191101071348.niwyn3w3ybxoltvg@falbala.internal.home.lespocky.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101071348.niwyn3w3ybxoltvg@falbala.internal.home.lespocky.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_092948_063649_0DA16AA4 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/11/2019 08:13:49+0100, Alexander Dahl wrote:
> Hei hei,
> 
> I know this was already applied, but let me add some comments.
> 
> On Fri, Oct 04, 2019 at 03:25:27PM +0000, Nicolas.Ferre@microchip.com wrote:
> > Well, I'm sure to not know all the applications of this feature but 
> > surely unique serial number (per single chip) is very useful while 
> > wanting to identify your system precisely: attributing a MAC address, 
> > pairing with one service or user software, generating unique keys, etc.
> 
> +1
> 
> > What I don't know is if there is special API in the kernel to use it as 
> > several vendors seem to expose it differently (/proc/cpuinfo being one 
> > other option). This one in nvmem /sys file is surely a valid one.
> 
> With commit 9aebf4de2203 ("base: soc: Add serial_number attribute to soc")
> there was added a member serial_number to struct soc_device_attribute.
> As far as I can see this is part of mainline since v5.4-rc1.
> 
> I saw some patches for i.MX on this list recently, which also got
> applied, and which use that mechanism. So there seem to be at least
> two different ways to access this now.
> 
> FWIW: I was working on a patch for exposing the sama5d2 SN through
> that interface. If anyone is interested: 
> 
> https://github.com/LeSpocky/linux/tree/wip/sama5d2-sn-squash
> 

The main issue with that interface is that there is no way to consume
the SN from the kernel while nvmem has both in-kernel and userspace
APIs.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
