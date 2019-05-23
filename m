Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BEC27C3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 13:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4RI3IGb/hqqSSn8V48EH+6sgRm56Jjc0JdAE0DDUso=; b=GyZYNso+mAFn+X
	52eb34lul8eMaMLrPFV+be1IQH5FZJP9SQI8O0vyNY50dBy8T9ia47sJPCPOt4tr/dN4be/WkO8E6
	4eNDRa116c/tUtA3xlrDUZZ0b7v8RvQIUY7UmOe/7puWaEip5EwKVh94VW+Vkda6Eb0HLk0xN5N2h
	Wa4g6KbkGIs8Ws2PHx/zOJAgVH7OClM+jsJUo6evXb8wQzotTxi8nyk1mhMnVqJJJPTAT3X9ToWI5
	ISnTeh+JJkKLUXGpr585qfKq7ZG7n+zJCqOkMd9SRorhp0w25O9Zz2a5Eog6W2x6rALabFZL/3NEz
	CSTiXP4uD6Xezp7XZKEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmHH-0005lZ-CL; Thu, 23 May 2019 11:52:55 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmHB-0005l5-0c
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 11:52:50 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id 79A4768AFE; Thu, 23 May 2019 13:52:24 +0200 (CEST)
Date: Thu, 23 May 2019 13:52:24 +0200
From: Torsten Duwe <duwe@lst.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 3/6] drm/bridge: extract some Analogix I2C DP common code
Message-ID: <20190523115224.GA15685@lst.de>
References: <20190523065013.2719D68B05@newverein.lst.de>
 <20190523065352.8FD7668B05@newverein.lst.de>
 <CAGb2v66+1+goJfnY7nWTGN2fupqMUm5o+gkPdUW6nxcwQEDwog@mail.gmail.com>
 <20190523075035.GA5971@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523075035.GA5971@pendragon.ideasonboard.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_045249_208324_76D3B80D 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Harald Geyer <harald@ccbib.org>, Sean Paul <seanpaul@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:50:35AM +0300, Laurent Pinchart wrote:
> On Thu, May 23, 2019 at 03:40:25PM +0800, Chen-Yu Tsai wrote:
> > 
> > If this was simple code movement, then the original copyright still applies.
> > A different copyright notice should not be used. I suppose the same applies
> > to the module author.
> 
> And likely to patch 2/6 too.

Absolutely correct. Wdiff does not lie.
Re-evaluating...

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
