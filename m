Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4512319171D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 18:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9AF4bp7uOQDvaOXbqoLVuPcuQeH+e1KfUcP63VH9+b4=; b=hvesrdwgWtNxqa
	HQgdENq6H4irbIixTwskW5spkq8RTemfACcD3TnFwZKPFsbxkJBs0iyNdLNg01VdIfL5c/vLf3fxU
	llH4V0NQA216HfxaJn9EZJhE0wGCnH1jK5/mSBlKyU31WdEEttHDt4KfS+JMzsV70YodjJqYej+Eq
	sikQ2cEYeXOSOU13JfrAWyo7FRWhrdAYU+FJZiqikEVYzmnlwaVijQ+myr0cTgTsNgqeFZ7NarF6v
	akPQOCB+HUCwJyW+qRfmalcT7m3hASdzytccYzmKHoUsBCPMj4drsdBasXDE1qGPvubiaz8VU3HCl
	itxDRf7cn4x2+o8mpMKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGmvh-0003wp-Sb; Tue, 24 Mar 2020 17:01:29 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGmvY-0003vu-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 17:01:21 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id CE63E81CA;
 Tue, 24 Mar 2020 17:02:00 +0000 (UTC)
Date: Tue, 24 Mar 2020 10:01:10 -0700
From: Tony Lindgren <tony@atomide.com>
To: Pavel Machek <pavel@denx.de>
Subject: Re: Droid 4 in -next -- still no backlight was Re: [PATCH 1/4] tty:
 n_gsm: Add support for serdev drivers
Message-ID: <20200324170110.GB37466@atomide.com>
References: <20200319173755.65082-1-tony@atomide.com>
 <20200319173755.65082-2-tony@atomide.com>
 <20200322224230.GB28082@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200322224230.GB28082@amd>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_100120_617163_F6D1C923 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: devicetree@vger.kernel.org, mpartap@gmx.net, merlijn@wizzup.org,
 martin_rysavy@centrum.cz, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-serial@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Peter Hurley <peter@hurleysoftware.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Pavel Machek <pavel@denx.de> [200322 22:43]:
> Hi!
> 
> > We can make use of serdev drivers to do simple device drivers for
> > TS 27.010 chanels, and we can handle vendor specific protocols on top
> > of TS 27.010 with serdev drivers.
> 
> I took all three series (
> 
> [PATCHv3 0/3] Lost key-up interrupt handling for omap4-keypa
> [PATCH 1/3] Input: atmel_mxt_ts - use runtime PM instead of
> [PATCHv5 0/4] n_gsm serdev support and protocol driver for d
> 
> ) and applied them on top of next-20200320.
> 
> Good news is that result boots. (So I did partial testing of the patches).
> 
> Bad news is that I still don't have working backlight. I do have LED
> and there's backlight device connected to the LED, so I can't control
> the LED directly, but the screen is black (and I don't see boot
> messages either).
> 
> Before I start debugging, does screen work for you in -next, or do you
> have some fixes I could try?

Yes the backlight works for me now just fine with current v5.6-rc.

But yeah, looks like LCD is again broken in current Linux next,
maybe Laurent and Sebastian have some clues?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
