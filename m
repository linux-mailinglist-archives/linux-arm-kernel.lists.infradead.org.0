Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDED21CE349
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVesvj9tfBrNLDZkw9CkKxlgp1WZZclPUxQYKV601Ag=; b=dDz2QQYLeqxFLr
	PDdvEBr6z5vEVPU+I8kbB/qiQNlNh0Y72Bdia6Q9kqQ7FYYUSxulA0QeCfnZ/gs7uRfYObaDxvDW/
	5dxWJRT5JvAQkcBxB2qCEgjpHQwDIQou+5g2o6vZtXwHgl0j9U2P/vLQdEkvB0lVKnJRNfJBSiRP2
	9PlLugP1nJTuJW7Q93b6Ue5iNAQt6N/gYm3wCskQ7tWZXLp3MYt5vYgvO84dtFFGTx4Yl7gPtn3bz
	rVVDQQ/aPalhV8Xu9k+LyyEfPv+G8Vy1LgVG+8qXGnxbr+QAQc2IEEecV8u0MANVu3UW9It1Lv/nH
	sxbAajiKIKpa5NfQQtZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDZq-0006vF-6C; Mon, 11 May 2020 18:54:58 +0000
Received: from smtprelay0106.hostedemail.com ([216.40.44.106]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDZB-0006gR-4l
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:54:18 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 536534DCF;
 Mon, 11 May 2020 18:54:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2282:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:4250:4321:5007:6119:7903:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13069:13311:13357:13439:14181:14659:14721:21063:21080:21365:21451:21627:21990:30029:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: grain11_24e0b558a6440
X-Filterd-Recvd-Size: 2578
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf05.hostedemail.com (Postfix) with ESMTPA;
 Mon, 11 May 2020 18:54:13 +0000 (UTC)
Message-ID: <59b3e2aac1388209d168a31294dfd2b1f7d21513.camel@perches.com>
Subject: Re: [PATCH] Revert "dynamic_debug: Remove unnecessary __used"
From: Joe Perches <joe@perches.com>
To: Elliot Berman <eberman@codeaurora.org>, Jason Baron <jbaron@akamai.com>
Date: Mon, 11 May 2020 11:54:12 -0700
In-Reply-To: <1589221618-21808-1-git-send-email-eberman@codeaurora.org>
References: <1589221618-21808-1-git-send-email-eberman@codeaurora.org>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115417_260242_30652709 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.106 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.106 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Trilok Soni <tsoni@codeaurora.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-05-11 at 11:26 -0700, Elliot Berman wrote:
> This reverts commit c0d2af637863940b1a4fb208224ca7acb905c39f.
> 
> Some compilers[1] may break dynamic_hex_dump by optimizing the
> DYNAMIC_DEBUG_BRANCH check inside __dynamic_func_call_no_desc and completely
> removing the dynamic debug metadata. Thus, there is no dynamic_debug control
> site to enable or disable. The if condition is optimized away based on the
> initial value of flags (i.e. if DEBUG macro is present).
> 
> [1]: This behavior is present on [aarch64-gnu-linux-gcc (Ubuntu/Linaro
> 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609] and [Android Common Kernel
> toolchain: "Android (6051079 based on r370808) clang version
> 10.0.1"] using arm64 default defconfig + DYNAMIC_DEBUG enabled.
> 
> Change-Id: I28e9b86088eee5d5ed2384fbcea2ac2e7337a559
> Signed-off-by: Elliot Berman <eberman@codeaurora.org>
> ---

Change-Id: probably isn't necessary.

Is there a separate mechanism possible to avoid bloating the
otherwise unused content?

>  include/linux/dynamic_debug.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
> index abcd5fd..7518db4f 100644
> --- a/include/linux/dynamic_debug.h
> +++ b/include/linux/dynamic_debug.h
> @@ -79,7 +79,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
>  			 const char *fmt, ...);
>  
>  #define DEFINE_DYNAMIC_DEBUG_METADATA(name, fmt)		\
> -	static struct _ddebug  __aligned(8)			\
> +	static struct _ddebug __used __aligned(8)		\
>  	__attribute__((section("__verbose"))) name = {		\
>  		.modname = KBUILD_MODNAME,			\
>  		.function = __func__,				\


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
