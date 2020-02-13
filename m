Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D220015CD71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/YDovPaRJZXkWUiZxOOy4ySHBWkc+DVxpNkO9el1GU=; b=WfRaWFrfMB4wkK
	Wjb2V5xzNxFGRG298u9ouj5nFDvlRE9H/ukBPDfOHHxuNFRJhNMal1VjsHZA3LWyPKNpD9FxyvuRl
	iN+2e0J0DyOCaGao09iB67sEXxnuMyy7iGNCVTyrtYgBmY1OLC9P8R2a2wMhNUnQW0P1bvvnKrTMc
	TwQ8gGFWAV//u5YWOICAc9iwaa3JxMYKozSD8MUc5nkYmCWtQ0gEaXWMNsfdW90lTXnExvHeafFxs
	udDrB7rWKOor5rsxE4ah5elexgOv0Qv9nAX7KEO3W8QcrRlCmQxQB1nhHXvLcFG8oMzyAZZ+4ng0A
	3zJR9xRTJ1+zRT/CEWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2MI1-0003Ka-Ff; Thu, 13 Feb 2020 21:44:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2MHs-0003JS-Lb
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:44:45 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id CBE60804F;
 Thu, 13 Feb 2020 21:45:22 +0000 (UTC)
Date: Thu, 13 Feb 2020 13:44:35 -0800
From: Tony Lindgren <tony@atomide.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: Nokia N900 on 5.4 and 5.5
Message-ID: <20200213214435.GW64767@atomide.com>
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
 <20200207163623.GA64767@atomide.com>
 <da14d6bb-f241-2dd4-8e94-886217a40ed7@wizzup.org>
 <20200207165344.GB64767@atomide.com>
 <20200207170149.GC64767@atomide.com>
 <op.0fmv4jevhxa7s4@supervisor.net28>
 <8a19bde5-f49f-ad58-3b3b-6df8a764f1f2@wizzup.org>
 <CAKv+Gu8Yh2Y5Rg6rVtL5zsm1CJhgRKjug3NW4j_uuuO+YhMzRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Yh2Y5Rg6rVtL5zsm1CJhgRKjug3NW4j_uuuO+YhMzRA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_134444_745997_1725620C 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Kees Cook <keescook@chromium.org>, Nicolas Pitre <nico@fluxnic.net>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, Merlijn Wajer <merlijn@wizzup.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-omap <linux-omap@vger.kernel.org>, "Arthur D." <spinal.by@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Ard Biesheuvel <ard.biesheuvel@linaro.org> [200213 21:34]:
> Is there any way you can enable early serial output one one of these
> boards, to see if you are making it through the decompressor all the
> way into the kernel?

I was able to reproduce this on another board with appended dtb,
looks like uncompress happens fine but then nothing. Looking at
System.map the u-boot alignment warning Merlijn posted, pc is
somewhere very early in the kernel.

I can easily reproduce the issue now if you have something in mind
to try.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
