Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF26F9447
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80y6st4vWUzm+kB8ko01tV76W11OhZ0B+qwg0Eou20M=; b=T3J81DCcbhhfe7
	vVjNW1JpvyIT/wqKpMRFCTD2SncERZIPxNZTTxV73+4j97aPGcKA4xmIwfkouQ0sCTYQVYvTEis9E
	MwiflZM4TZDBmBnI92WjvrXiO4+H/2X8H7KPaiMP9/u6N5iN52y7uZ1Adcn16jkjFBDWDQoqsn+R3
	VZgi8qPNzXAz4MHMn8j77ge9AkKAoJ2EJkx6p7xUp2pMh5d83LTGNMgtWj8Iv85EJoOZtpZy715DK
	KOPdjPfmv7qMTFFNiiXeV+zjA8r7IbGm/C507+8k1049fgV/t8lCp1x8uzZBd26L4ydgV6EZA4ejD
	OSkzrCMrxZ2oF4YJZGbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUY7H-0000np-W9; Tue, 12 Nov 2019 15:30:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUY76-0000nF-O9
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:29:53 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D223080F3;
 Tue, 12 Nov 2019 15:30:28 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:29:49 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 02/10] ARM: dts: dra7: add cam clkctrl node
Message-ID: <20191112152949.GF5610@atomide.com>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-3-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-3-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_072952_826473_CEEA334C 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:25]:
> Add clkctrl nodes for CAM domain.
> 
> Note that because of the current dts node name dependency for mapping to
> clock domain, we must still use "cam-clkctrl@" naming instead of generic
> "clock@" naming for the node. And because of this, it's probably best to
> apply the dts node addition together along with the other clock changes.

Thanks for updating this too.

Tero, for merging, you could create a separate clock dts changes branch
too on your clock changes if needed, up to you. Anyways best that you
queue all the clock changes and clock related dts changes:

Acked-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
