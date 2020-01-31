Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC13914ED85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CT+5WlTQKTHFT/vjcJ3ZgoiICxQZiOtZO8FhKTGVww=; b=fueg8kAcAeH7ai
	L4Rk82gctdqXNZMF51AXcJ+ZpLEZmuQovQJjI7mCEJ4VS9K7BllAtw0KaEuTqx2mRdNnOFbNwuJwI
	/+oNPS5bz3bCHtOcuC4KJ7smkiLUWUH27I9VhpCFYiBZBckJaMq+8EaDMkjLl78wtOTQHEEtWUJOH
	KP0VYVScrkBGEH/w58F3gpiG3+doHa0AimVB3ZuoOdKKVLu42kvgO/Aip2lTuIxurgxIQGD7QaLVO
	YmcYNLRUrTQiBmXh9tuCFR/daVey7jhZ5jOOXXKxYyFfPxQi1ByS1EUpWlthxe5+sQ67CE7LxpQU3
	YR3KfbKFMg7Sd/EtwTiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWUm-0000mH-Dl; Fri, 31 Jan 2020 13:38:04 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWUd-0000jV-83
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:37:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bIL6s2tX20+CxxGQWJaV4RM/8y4pIfyAI9ZZqon5Vnw=; b=E+2UXLkAfhDVjyx79E0W5Yy+kM
 ivc9G26et7iRj2QkOXbpbz13uvKT9wn1zaNL1LXL51O3Idl1v+7ssyR9LMzPt66jrN3djYAO9+EDV
 z+rgCDIUJ7NkrPxrotASSbQvL/QFN96xnbf07fQ2fPjnnMSGnK6IXHotJ9wv7PB4m9uI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ixWUR-0007Iw-4I; Fri, 31 Jan 2020 14:37:43 +0100
Date: Fri, 31 Jan 2020 14:37:42 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: Re: [PATCH v3 -next 3/4] net: emaclite: Fix arm64 compilation warnings
Message-ID: <20200131133742.GD9639@lunn.ch>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
 <1580471270-16262-4-git-send-email-radhey.shyam.pandey@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580471270-16262-4-git-send-email-radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_053755_288518_6CF3B359 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gregkh@linuxfoundation.org, anirudha.sarangi@xilinx.com,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 mchehab+samsung@kernel.org, john.linn@xilinx.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 05:17:49PM +0530, Radhey Shyam Pandey wrote:
>  
>  /* BUFFER_ALIGN(adr) calculates the number of bytes to the next alignment. */
> -#define BUFFER_ALIGN(adr) ((ALIGNMENT - ((u32)adr)) % ALIGNMENT)
> +#define BUFFER_ALIGN(adr) ((ALIGNMENT - ((ulong)adr)) % ALIGNMENT)

Hi Radhey

linux/kernel.h has a few interesting macros, like

#define ALIGN(x, a)             __ALIGN_KERNEL((x), (a))

These are more likely to be correct across all architectures than
anything you role yourself.

	 Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
