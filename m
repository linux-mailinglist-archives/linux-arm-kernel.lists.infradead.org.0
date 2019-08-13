Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5456D8B588
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo97k959GOb9obrkHxezQen7xpSqM1Ej0EK7FZBlsKk=; b=pVCg+XNk5JBr97
	834I7Q7AFSP7bqvSrBHGvhQ/F2Y2fzCiUrSYZm6w4IGlb8unawpoDuiCUos0S+ikMdi5JPZ6st0kb
	RTkPQwhZDGogTJM32sM+CxLWv6S/9fi1qG3WRtr0iGvxwwO9ASUgNqv27Vx/sTZQEDXa3yI8zBP5k
	sK0xyPbtwVAPbJiJcPdE5uMlZTsdddaZKZKa2AAzrr55Q6+rIPia1Qnsv/Brqr2I9eVU7gtRYlWMU
	RDg5w82bPknRAGpmuPWzFslABU/oGNURnrw4xdVOg3MBRDt8AGEKlUF5BmWZPxdhdAFWjBkb8t1tC
	53QoIxyjxuXQZI4oqOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxU0Z-0007M5-G7; Tue, 13 Aug 2019 10:26:27 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxU0J-0007Ln-Sf
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:26:13 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5C791805C;
 Tue, 13 Aug 2019 10:26:39 +0000 (UTC)
Date: Tue, 13 Aug 2019 03:26:08 -0700
From: Tony Lindgren <tony@atomide.com>
To: Janusz Krzysztofik <jmkrzyszt@gmail.com>
Subject: Re: [PATCH for v5.3] ARM: OMAP1: ams-delta-fiq: Fix missing irq_ack
Message-ID: <20190813102608.GK52127@atomide.com>
References: <20190811084802.630-1-jmkrzyszt@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811084802.630-1-jmkrzyszt@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_032611_969715_C17742A0 
X-CRM114-Status: UNSURE (   6.23  )
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Janusz Krzysztofik <jmkrzyszt@gmail.com> [190811 01:48]:
> Non-serio path of Amstrad Delta FIQ deferred handler depended on
> irq_ack() method provided by OMAP GPIO driver.  That method has been
> removed by commit 693de831c6e5 ("gpio: omap: remove irq_ack method").
> Remove useless code from the deferred handler and reimplement the
> missing operation inside the base FIQ handler.
> 
> Should another dependency - irq_unmask() - be ever removed from the OMAP
> GPIO driver, WARN once if missing.

Thanks applying into fixes.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
