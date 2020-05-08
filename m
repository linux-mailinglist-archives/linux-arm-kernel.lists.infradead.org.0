Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F861CA600
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q/AaFo6SMIT5qItVOUUtuZWLSrf6MwVWIIg9rAsRXw8=; b=GO1dkPkqclHk5J53rpXHfZ90K
	JImmrSk6aQYp36Ik6Meq+2s+btUcBLqNjapPG2sSpNVWyz4mW7qdUg6cVidfI94WbLlrf84PlnkRC
	6vkyt1+D+Zw9PFWmMzNdLrvw3NUPu4dWJ83jPrJ1mGJvrZNVJSVJigyDPVMMGNMTljNoR6UtlNuMv
	agiZ+/UEqt4knDRVa852AKk4szXdAbgb1KIXFgLf6UlIcN0tkbUgXrCFhFNKZQGkFv8OkGkuLlwu2
	a2jFeXcIWk33Lni+PLOWvsXw/G9xIQ4iF/k98BoTXjZBQF0ffKPhJGjkZ0pZOdrbpmYTXEmDL2I+P
	0r4LxSJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyJr-0002Pe-UL; Fri, 08 May 2020 08:25:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyJk-0002Nc-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:25:13 +0000
Received: from linux-8ccs.fritz.box (p57A239F2.dip0.t-ipconnect.de
 [87.162.57.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AAAE208CA;
 Fri,  8 May 2020 08:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588926311;
 bh=nXOlXreEj4ITmMhrknV0ABFkeWV53vYLs9Lxe0vrS9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fgqadvh0KYrgQ+vVt7gNXOSWy+5bu8SWM9NpQUF3xDcwcDDKiRS6/BXu91SeQwo++
 AhR9oqCCV7WjvhdGVo7TTrdj5sCxdS+sTJWlXkGTYtI1yGWrJswnZ+ioYIZPOX+A9E
 ftmv7/n/dkq5KNcqkCNzg1YJOkatQjPbSjVxxxuU=
Date: Fri, 8 May 2020 10:25:07 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Vincent Whitchurch <vincent.whitchurch@axis.com>
Subject: Re: [PATCH 1/2] module: allow arch overrides for .init section names
Message-ID: <20200508082504.GA15302@linux-8ccs.fritz.box>
References: <20200506152533.31286-1-vincent.whitchurch@axis.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506152533.31286-1-vincent.whitchurch@axis.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_012512_265991_B9E977F8 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel@axis.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+++ Vincent Whitchurch [06/05/20 17:25 +0200]:
>ARM stores unwind information for .init.text in sections named
>.ARM.extab.init.text and .ARM.exidx.init.text.  Since those aren't
>currently recognized as init sections, they're allocated along with the
>core section, and relocation fails if the core and the init section are
>allocated from different regions and can't reach other.
>
>  final section addresses:
>        ...
>        0x7f800000 .init.text
>        ..
>        0xcbb54078 .ARM.exidx.init.text
>        ..
>
> section 16 reloc 0 sym '': relocation 42 out of range (0xcbb54078 ->
> 0x7f800000)
>
>Allow architectures to override the section name so that ARM can fix
>this.
>
>Signed-off-by: Vincent Whitchurch <vincent.whitchurch@axis.com>
>---
> include/linux/moduleloader.h | 2 ++
> kernel/module.c              | 9 +++++++--
> 2 files changed, 9 insertions(+), 2 deletions(-)
>
>diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
>index ca92aea8a6bd..07d079085f11 100644
>--- a/include/linux/moduleloader.h
>+++ b/include/linux/moduleloader.h
>@@ -29,6 +29,8 @@ void *module_alloc(unsigned long size);
> /* Free memory returned from module_alloc. */
> void module_memfree(void *module_region);
>
>+bool module_init_section(const char *name);
>+

Hi, I just have two small nits. Could you please add a comment on top of
module_init_section to document it? (similar to module_exit_section())

> /* Determines if the section name is an exit section (that is only used during
>  * module unloading)
>  */
>diff --git a/kernel/module.c b/kernel/module.c
>index 33569a01d6e1..a5f2b4e1ef53 100644
>--- a/kernel/module.c
>+++ b/kernel/module.c
>@@ -2370,6 +2370,11 @@ static long get_offset(struct module *mod, unsigned int *size,
> 	return ret;
> }
>
>+bool __weak module_init_section(const char *name)
>+{
>+	return strstarts(name, ".init");
>+}
>+

Could you move this next to module_exit_section()? Just trying to keep
similar functions together. Otherwise, the patch looks fine to me.

Thanks!

Jessica


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
