Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6894114541B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 12:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VKR4vbU7A0ofBsIqrkqi/18Pa3QhzsaJxp5V9V3h15U=; b=GODPuJbrpxK42Mbpi7xyWRJHQ
	G4hCYXU2PGgmqIghacrV9p0cYscxo5xpzJznoRJ6NLb6VtV/HshvXN1PfftmmdjlbRetTO3uxSTdm
	OoPsfsd/ljAZ+L9N6aVKx73VGKYZPWZueWIFddGm/9prB4LgAvkzs2DU1j1Xak1wpHJIopJ4Djcxb
	EKmab65ee1gUpHufsdjXRkf4V/mJDUZxZdOjMXRC4Mr9QnUotT+d72anper+qe1SDMCXstnAwPWv+
	Y6yeEDGa2OZyKaP/9I8MBk/VrE5T0LJLFijjCB2NgkxKSSSrUfsJhtPEtcYbeVx3yFeYMbonWi0EA
	5agfjQjXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEZC-0007hk-5a; Wed, 22 Jan 2020 11:53:02 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuEZ1-0007hA-GI
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 11:52:53 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id BCFA4A1ACE;
 Wed, 22 Jan 2020 12:52:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id bxS0AmGVct9U; Wed, 22 Jan 2020 12:52:43 +0100 (CET)
Subject: Re: [PATCH V3 0/3] Add i.MX6ULZ SoC support
From: Stefan Roese <sr@denx.de>
To: Shawn Guo <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
References: <1538278348-7716-1-git-send-email-Anson.Huang@nxp.com>
 <20180930073332.GO26692@dragon>
 <0581e252-2ebc-c813-9c93-a8d542a9a7f6@denx.de>
Message-ID: <99f64ec5-ab1e-7d43-9cb5-623f25138c3e@denx.de>
Date: Wed, 22 Jan 2020 12:52:39 +0100
MIME-Version: 1.0
In-Reply-To: <0581e252-2ebc-c813-9c93-a8d542a9a7f6@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_035251_694749_AF903F4C 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:67c:2050:104:0:2:25:2 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Aisheng.dong@nxp.com, fabio.estevam@nxp.com, ping.bai@nxp.com,
 linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.01.20 09:39, Stefan Roese wrote:

<snip>

> I'm currently starting work on an i.MX6ULZ custom port, which will use
> the EIM interface. While starting the pin-mux configuration for this
> board, I noticed that the pinfunc defines available for MX6UL
> (imx6ul-pinfunc.h which is used for i.MX6ULL/ULZ as well AFAICT) does
> not match the reference manual descriptions for the EIM pin muxing.
> One example:
> 
> i.MX6UL:  EIM_DATA00 is available on pad LCD_DATA08
> i.MX6ULZ: EIM_DATA00 is available on pad GPIO3_IO13
> ...
> 
> My question now: Is a i.MX6ULL/ULZ specific pinfunc.h header available
> in any (NXP?) downstream Linux repository?

Answering my own question: I missed the already available mx6ull specific
pinfunc.h header, sorry:

arch/arm/boot/dts/imx6ull-pinfunc.h

But this file is missing the EIM definitions for the MX6ULL/ULZ. Before
adding them myself, are these available in any downstream repository?

Thanks,
Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
