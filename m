Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4B71D9BF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nArNAcrZnI8bRokjh6Cy4w5rk5R/+5F9/SUlAdDPRw=; b=UNL/4K/XogKghk
	VCE9zyNCaqFLx/92Al2aEuFanwAzawO/FwLmHkH+QKnNYB4pLKcQCp29hqjKk7/7xGKhn3sBKRc5a
	hwemGS5uHFADAoI3vgVBzXXbzc+MBR3p46h2vA65oJQbjOCIl62vh9AVTzrgbaf/GR+FQ0FtOLRFr
	Ri3MuQBup6KQKttxqxAGfdESZhCdgvjwE6FrVeCir1YdCzKisVev1ThEBxuTlLR0bA36COsYZTFH3
	8ll3gR/hMvWhw5REO4iBgu5RXHUL1OYzpJ5gPAv7hnpSZsToiebhz7DxkEZEbtrRTVPeHtF7to2js
	mtAPZ92yafbr4M26ZgLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4lN-0003bv-4r; Tue, 19 May 2020 16:06:41 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4lE-0003ay-U9
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:06:34 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 6559B80FA;
 Tue, 19 May 2020 16:07:22 +0000 (UTC)
Date: Tue, 19 May 2020 09:06:30 -0700
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH] clocksource/drivers/timer-ti-dm: Fix warning for set but
 not used
Message-ID: <20200519160630.GV37466@atomide.com>
References: <20200519155157.12804-1-tony@atomide.com>
 <2f67a110-e52f-94fc-fae2-c3171a67bb8a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f67a110-e52f-94fc-fae2-c3171a67bb8a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_090633_009865_63E28B21 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Daniel Lezcano <daniel.lezcano@linaro.org> [200519 16:01]:
> On 19/05/2020 17:51, Tony Lindgren wrote:
> > We can get a warning for dmtimer_clocksource_init() with 'pa' set but
> > not used. This was used in the earlier revisions of the code but no
> > longer needed, so let's remove the unused pa and of_translate_address().
> > Let's also do it for dmtimer_clockevent_init() that has a similar issue.
> > 
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> 
> Applied, thanks

Thanks! Do you already have some immutable commit I can use
as the base for the SoC and dts changes? Or do you want to
wait a bit for that?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
