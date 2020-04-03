Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CDD19DA92
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 17:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=beptpiYQfZXoiUTolkOZAVA+W+KqxRZMe9SKAljsUQM=; b=b6nooLizzC03rEFZpp1a8L6BE
	neLyr0AY/Y0cXBVdHBD38lYxOwzDi2kR0ZOIgVgUJQNoK4N8z4zwPHiJ+ra//HIRcNGmrmq0pOBd4
	VP/5WoQQL++29ZIs9/ux3ZY828xzt6oG+vZE/3Q42vo07XLfx4lwo0Y9GFwJa4YwOb+mSoFASFyIP
	UIRjHqXf9rW4bPCFWeC/gHfZacWJtiZjGSJcUew8NkuNmJXesho8ci+4r+KfDyzoHHKfFFbRi1kAi
	gQUk7CdPOUpG+TDTL6GcIAt6Ydk9YN870PnRDCV2NDiLiZhZdhqJX10rCT0yWeYCRyaDMsCtnCiCt
	Cjoj6nGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKOZ7-000397-Vc; Fri, 03 Apr 2020 15:49:05 +0000
Received: from fieber.vanmierlo.com ([84.243.197.177]
 helo=kerio9.vanmierlo.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKOZ1-00037s-RJ
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 15:49:01 +0000
X-Footer: dmFubWllcmxvLmNvbQ==
Received: from roundcube.vanmierlo.com ([192.168.37.37])
 (authenticated user m.brock@vanmierlo.com)
 by kerio9.vanmierlo.com (Kerio Connect 9.2.11 beta 1) with ESMTPA;
 Fri, 3 Apr 2020 17:48:42 +0200
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 17:48:42 +0200
From: Maarten Brock <m.brock@vanmierlo.com>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH 0/7] serial: uartps: Revert dynamic port allocation
In-Reply-To: <2983dbe2-16e6-4b7b-73a6-49d8c3d70510@xilinx.com>
References: <cover.1585905873.git.michal.simek@xilinx.com>
 <20200403093216.GA3746303@kroah.com>
 <d9598635-a8ef-eff2-22e8-4fa37f8390b3@xilinx.com>
 <20200403094427.GA3754220@kroah.com>
 <2983dbe2-16e6-4b7b-73a6-49d8c3d70510@xilinx.com>
Message-ID: <211f564d5594994fc677d3fea4222997@vanmierlo.com>
X-Sender: m.brock@vanmierlo.com
User-Agent: Roundcube Webmail/1.3.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_084900_029597_FD4E4967 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: monstr@monstr.eu, linux-serial-owner@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, johan@kernel.org,
 linux-kernel@vger.kernel.org, git@xilinx.com, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-03 11:51, Michal Simek wrote:
> 
> Thanks. I am definitely interested to hear more how this could be done
> differently because that hardcoded limits are painful.
> On FPGAs you can have a lot of uarts for whatever reason and users are
> using DT aliases to have consistent naming.
> Specifically on Xilinx devices we are using uartps which is ttyPS,
> uartlite which is ttyUL, ns16500 which is ttyS and also pl011 which is
> ttyAMA.
> Only ttyAMA or ttyPS on one chip are possible.
> 
> And right now you can't have serial0 alias pointed ttyPS0 and another
> serial0 pointed to ttyUL0 or ttyS0. That's why others are shifted and 
> we
> can reach that hardcoded NR_UART limit easily.
> And this was the reason why I have done these patches in past to remove
> any limit from these drivers and if user asks for serial100 alias you
> simply get ttyPS100 node.

I would argue that the trouble originates from every uart driver using
its own naming scheme and thereby creating separate namespaces. If all
uarts would register as /dev/ttySnn then the serialN alias method would
work. These non-overlapping namespaces is something the linux kernel
driver community has allowed to happen.

If the namespaces are not abandoned and disallowed, then the serialN
alias method must no longer be used for any driver that does not create
/dev/ttySnn devices. Every namespace will require its own alias base.
Or forget about deriving the number from an alias and set the number in
a property in the device tree node itself. The latter has my preference.

Maarten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
