Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA631278DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 11:08:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wOghV/UCX/eJvnmraqfh/Ns8XX2OHUJpkO9ke23Jgw=; b=SyUJ0eTEU2DmTV
	jW79M4q7OC+YGVpTy7iyUHWI8npssndZ0JkCFhA2PzdUKmXAI5Q4NrRzhH3ma6MAc1ft8HokfvWD/
	x318AT4v/1EWkkjdsgiVGAIWulfRgyKMgfF8+bNW4MyILwv9Ryy5PdVKm+tNPd6DyRN47Bn2XLeFi
	0lJT8jUHpuyuYAc93J+RByKpr6j8BlXsJ0W7vs9aQJjb/xY2EIdihdI7SZFLeyNLwTqrhEaw7wm/F
	Q1NVtMkhqvLeUZbTh0V1Yedta5KuTzuGBflx55QmD9a0Zrl7YdRpfXbQ17KaQDsrC2CV79yv+MO1j
	wh+1abKsoRgAoYHezgqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiFDM-0007tT-4M; Fri, 20 Dec 2019 10:08:56 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiFCO-0007Be-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 10:07:58 +0000
X-Originating-IP: 90.65.102.129
Received: from kb-xps (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 64E972000A;
 Fri, 20 Dec 2019 10:07:54 +0000 (UTC)
Date: Fri, 20 Dec 2019 11:07:53 +0100
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3] power: reset: at91-reset: add sysfs interface to the
 power on reason
Message-ID: <20191220100753.GA2601@kb-xps>
References: <20191209094329.45638-1-kamel.bouhara@bootlin.com>
 <14a9f500-3f4a-2b6b-cd27-f48c6cb73cce@microchip.com>
 <20191209134458.GA47233@kb-xps>
 <20191219171314.lgltzc5bvrvpwphs@earth.universe>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219171314.lgltzc5bvrvpwphs@earth.universe>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_020756_601930_B4471542 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 thomas.petazzoni@bootlin.com, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 06:13:14PM +0100, Sebastian Reichel wrote:
> Hi,
>

Hi,

[...]

> >
> > > Moreover, you are doing 2 things on a patch:
> > > 1/ export the reset reasons through sysfs
> > > 2/ introduce the reset reason defines
> >
> > Ok, I shall split it in two patches, if it could clarify things ?
>
> Yes, please split into two patches.
>

OK.

[...]

>
> Is this user reset button from the sysfs file? I think just "User"
> is a bit too short. Also please make sure, that the list actually
> matches the API described in the documentation :)
>

OK, fixed in v4, please check.

Cheers.

Kamel

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
