Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA28271200
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 08:39:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfQf5e/rFXc/BqdnCp4Sqi6r2sB+PbU+cN7Aec9bU2A=; b=MHLkbcZ9b4lT4w
	dVXiAZ4iGju2CXb5ZFQBL4qUm8wpI9be5IBVz/z6SVfVhox5LI60WLngZPZqbMkJJ4Gitss5cmJa5
	JR3uJ9Hcrbz/4yg0wYYBRTtkt5yF3T3qeuIH+cGeJ0HK3LOKlz3MoEk0Qk54H7yRYRfUfDOHJpsOX
	TaFIKLSknHxZZgoCprKPVq6y+kAKB3fqdkrbVtgU9n1tnGK7pGD4mih7r8TIafDmmQL1N541bAb/D
	RgNFytlITWO6MQ4YqBIXgxc5logKw3KVw8oJ9u4DHqu5kuSH+3SJc0YAnKOhTt/Qq/n+6A3XYZuBa
	qNKces5ubkH5gCizglwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpoSQ-000414-9M; Tue, 23 Jul 2019 06:39:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpoRs-0003pn-RI
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 06:38:58 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D40A0808C;
 Tue, 23 Jul 2019 06:39:20 +0000 (UTC)
Date: Mon, 22 Jul 2019 23:38:52 -0700
From: Tony Lindgren <tony@atomide.com>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH 1/4] ARM: OMAP2+: Drop mmc platform data for am330x and
 am43xx
Message-ID: <20190723063852.GO5447@atomide.com>
References: <20190326181324.32140-1-tony@atomide.com>
 <20190326181324.32140-2-tony@atomide.com>
 <0af63198-5a68-2f0d-f14e-2b514580d2d5@lechnology.com>
 <20190722060951.GL5447@atomide.com>
 <d66357e0-62e1-6132-00a1-a9c48ca3e481@lechnology.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d66357e0-62e1-6132-00a1-a9c48ca3e481@lechnology.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_233856_917288_55150D7E 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* David Lechner <david@lechnology.com> [190722 14:55]:
> Not sure if this is related, but this is what I get on v5.3-rc1
> with this patch (wifi still not working, obviously):
> 
> [   21.952767] wlcore: wl18xx HW: 183x or 180x, PG 2.2 (ROM 0x11)
> [   22.011340] ------------[ cut here ]------------
> [   22.016402] WARNING: CPU: 0 PID: 65 at /home/david/work/ev3dev2/ev3dev-kernel/net/wireless/core.c:868 wiphy_register+0x860/0xba0 [cfg80211]

This one is fixed in Linux next but missed -rc1, see thread
"nl80211 wlcore regression in next".

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
