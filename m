Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EB31A1922
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 02:10:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvvaKXrum3WO2jDAr7gzplTBVyuxNHf7yJE+3X6voNI=; b=BsR8/ppgqwdsBj
	qcd2X6dJQjnS4ujZYG3Fz8Y083c/D70OIohkKz4Tw1rF3Gk5TqGct/gchnH4qJA6gs6MxLBtoD8T5
	xn17t7Z6fhnEXGER5ubxD0cZgO3V+WFQIRS3DRsdZpa4IjcUp0GAZhnvS5C7a0WAZblX6X0/hN3MO
	RIaiHo4/Mc5WSWhNBtvny1NbGMjr9UWarops0CUM/r74BP9f7nOdFs2zwh+Bv7TeJhjWOw3amYB6P
	6u6FvRXSLccIi6hd758MI8zvPrX6RaRCgNpfyfjPVcjbDfpQEcQ5ojUTb5QDbVKQrq8il/H9SfyiR
	AhEhnSFzExwhAI2sXQrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLyIE-0004ib-Of; Wed, 08 Apr 2020 00:10:10 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLyHz-0004i5-4E
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 00:09:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AYxIzcriYqOq9OLej1S4GUEYatAw7MytodFh1SBwJUU=; b=z9hdFoPyr9u/KkzOOwGU2qKKEW
 SU2VWAZUGcAFFkoTpwwRiIgVBG6BLDcbBefWtFyN2pVpO8ZhgmyE44bBEeh8/9SyGkaunVLowBHnN
 zsJJtMjQfkYylr26SX2Xnw9f7KV3IiqJL33GzmwYVtee9oEZHtHeHpX70g/nqjJHtdno=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jLyHv-001XmL-3D; Wed, 08 Apr 2020 02:09:51 +0200
Date: Wed, 8 Apr 2020 02:09:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Spooren <mail@aparcar.org>
Subject: Re: [PATCH 0/5] arm: dts: linksys: rename codename to model
Message-ID: <20200408000951.GE310042@lunn.ch>
References: <20200407210816.866084-1-mail@aparcar.org>
 <20200407224615.GA359603@lunn.ch>
 <004a2ef9c1e04f9ffbb9c3cc9907ca656a406713.camel@aparcar.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <004a2ef9c1e04f9ffbb9c3cc9907ca656a406713.camel@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_170955_169434_6373CC91 
X-CRM114-Status: GOOD (  11.87  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 daniel@makrotopia.org, freifunk@adrianschmutzler.de, robh+dt@kernel.org,
 kaloz@openwrt.org, linux-arm-kernel@lists.infradead.org,
 sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 01:38:17PM -1000, Paul Spooren wrote:
> Hi Andrew,
> 
> thank you very much for the quick response!
> Are you okay with adding the new compatible string as first element of
> the list? This would already simplify the OpenWrt build system.

That should be fine. OF will keep searching from first till last for a
match. 

> What about the changed labels? Are they considered ABI too?

You mean LED names. I would consider those ABI. People can have
scripts which configure the LEDs how they want, blinking heartbeat,
etc.

> Regarding file names, I'm new to ABI policies. Within OpenWrt this is
> all done via a single line patch, I'm not familiar with any other
> installers/bootloaders. 

Well, it would break how i boot my wrt1900ac. I tftpboot it, grabbing
both the kernel and the DB blob from my TFTP server. If the blob
changes names, i would need to modify my uboot configuration. 

I don't know if Debian has full support for any of these boards, but
if i remember correctly, flash-kernel has a database of machine names
and DTB file names. My wrt1900ac is quite happy running Debian, but i
don't have it booting the Debian way, because i use it for kernel
hacking. But maybe there are people out there that do.

	 Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
