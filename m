Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949141CF971
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 17:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5In4z3EmC3Y0S5xORYquFo9q4mMKf88sbhLRswSm00=; b=q2wYesBF9WkXqa
	yyHKIuNXrT3bB7Zt8aF26xUWVdMsZhSZsMSdHqwxoQWGqno0U0gCuAon3kpjxdkLnc4jARqHP2DOq
	/FZi0ulcqhsNzTNsvilp02hacFA4I1r7LilH429z+SGDSy4cA5O14Ob3t1RsjdnXHEVm4ebqdf3Y8
	Sby2EgvgfyXpE5Eizuw8OgftJnY+gtg2KS8yTMByz5M2Q5GDBhnXaOT/bkgm4zwTAMOCmoXQYgoeI
	IC2yYgnvbQm2QxMKUvnmhq9VhBz4oUrMIMlBorNkCWED4Y0QsSkj4W6wNnL51HyWA5isn5VirPHMM
	cCwsdQrUYZI/CkxVuOVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYX11-0008LG-DK; Tue, 12 May 2020 15:40:19 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYX0n-0007Yk-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 15:40:08 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 4B5378047;
 Tue, 12 May 2020 15:40:54 +0000 (UTC)
Date: Tue, 12 May 2020 08:40:01 -0700
From: Tony Lindgren <tony@atomide.com>
To: Samuel Zou <zou_wei@huawei.com>
Subject: Re: [PATCH -next] ARM: OMAP2+: pm33xx-core: Make
 am43xx_get_rtc_base_addr static
Message-ID: <20200512154001.GK37466@atomide.com>
References: <1589251271-106359-1-git-send-email-zou_wei@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589251271-106359-1-git-send-email-zou_wei@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_084005_720840_92096880 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 khilman@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Samuel Zou <zou_wei@huawei.com> [200511 19:36]:
> Fix the following sparse warning:
> 
> arch/arm/mach-omap2/pm33xx-core.c:270:14: warning: symbol 'am43xx_get_rtc_base_addr' was not declared.
> 
> The am43xx_get_rtc_base_addr has only call site within pm33xx-core.c
> It should be static
> 
> Fixes: 8c5a916f4c88 ("ARM: OMAP2+: sleep33/43xx: Add RTC-Mode support")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Samuel Zou <zou_wei@huawei.com>

Applying into omap-for-v5.8/soc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
