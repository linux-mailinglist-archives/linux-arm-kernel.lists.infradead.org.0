Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C108DF1B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVTpAFOq3czApkHrSfgERyQTuXrK74CKYDtoj4QG+AY=; b=pTj0/4IHeKeiTT
	A+Yl+Hl7z69e5lFe3jBDUxKxgEAai6NPjJdDlJx9PgLDtwQ0jyo1cBt9WRammVfjGcLVyPqYmkM3e
	9v8938iYxN3A3F+6ytbz22SKPCQV/M6kfu8jwvv7qMnz0EB6n0i0tzykdDJYMa5JW0IBe+stL9VY5
	XKich3F/11qHMwSaCN4iJW5F3O+0BQn6a4rNrxceKPLT8+7nZ36euBw46tcP3wETFTaHEjIjDfTpO
	UVJMQ3LJj7Rpp2b8QXer+pxkyCM8y9xmB6DelBj41M+Bp2xW7v8pWTYCBEtTmQfn43rf73I+TA2HQ
	hRsODajv0V5xzO8u2kHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZkq-0002HQ-N4; Mon, 21 Oct 2019 15:37:56 +0000
Received: from smtprelay0063.hostedemail.com ([216.40.44.63]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZkh-0002GW-GH
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:37:48 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 1B985182CF66C;
 Mon, 21 Oct 2019 15:37:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:4321:4605:5007:8603:8660:10004:10400:11026:11232:11233:11473:11658:11914:12043:12048:12114:12297:12438:12679:12740:12760:12895:13069:13148:13230:13311:13357:13439:14096:14097:14659:14721:21080:21627:30029:30054:30070:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:25,
 LUA_SUMMARY:none
X-HE-Tag: dolls01_240eb4bb83a00
X-Filterd-Recvd-Size: 2849
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Mon, 21 Oct 2019 15:37:27 +0000 (UTC)
Message-ID: <0f91839d858fcb03435ebc85e61ee4e75371ff37.camel@perches.com>
Subject: Re: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
From: Joe Perches <joe@perches.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Ludovic Desroches
 <ludovic.desroches@microchip.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 "David S . Miller" <davem@davemloft.net>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Johannes Berg <johannes@sipsolutions.net>
Date: Mon, 21 Oct 2019 08:37:26 -0700
In-Reply-To: <20191021143742.14487-2-geert+renesas@glider.be>
References: <20191021143742.14487-1-geert+renesas@glider.be>
 <20191021143742.14487-2-geert+renesas@glider.be>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_083747_611496_A6BCF147 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.63 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-21 at 16:37 +0200, Geert Uytterhoeven wrote:
> The existing debugfs_create_ulong() function supports objects of
> type "unsigned long", which are 32-bit or 64-bit depending on the
> platform, in decimal form.  To format objects in hexadecimal, various
> debugfs_create_x*() functions exist, but all of them take fixed-size
> types.
> 
> Add a debugfs helper for "unsigned long" objects in hexadecimal format.
> This avoids the need for users to open-code the same, or introduce
> bugs when casting the value pointer to "u32 *" or "u64 *" to call
> debugfs_create_x{32,64}().
[]
> diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
[]
> @@ -356,4 +356,14 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
>  
>  #endif
>  
> +static inline void debugfs_create_xul(const char *name, umode_t mode,
> +				      struct dentry *parent,
> +				      unsigned long *value)
> +{
> +	if (sizeof(*value) == sizeof(u32))
> +		debugfs_create_x32(name, mode, parent, (u32 *)value);
> +	else
> +		debugfs_create_x64(name, mode, parent, (u64 *)value);

trivia: the casts are unnecessary.

This might be more sensible using #ifdef

static inline void debugfs_create_xul(const char *name, umode_t mode,
				      struct dentry *parent,
				      unsigned long *value)
{
#if BITS_PER_LONG == 64
	debugfs_create_x64(name, mode, parent, value);
#else
	debugfs_create_x32(name, mode, parent, value);
#endif
}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
