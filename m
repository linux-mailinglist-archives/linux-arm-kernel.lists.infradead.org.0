Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02801CDF52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hmaxiw/l7GXfFK52joCINSHLuxwo0BrkzWak1LKZOkE=; b=t05ayJHtXCSK1s1aHFu7sIrro
	VqP3Ik3DfiQExMgON3YaqO89xInkhF95+AUPb4eBMw2r4a25r+WDd6meWXqN4cHWlZiIkn7WoI9mX
	+M0SJgbpHBiWOK/TpVH/aKelA5TWT4djYrRY08itj2Fm5AkmMZa6hKC7dmYA15okOlqpU0CyKxcWt
	h7PVIx7kBTS4mSUJzN+DMSow4sgw2m0DtGbb03iSpJZaNzFmalsd5Q7aDONm71pV+Rfls5wcelFGP
	O1YnC+pvg8rI10ZsuzJdnYqi7EuEvrPZGAd23PoOIuOXrUcyYaeA0SVBP6JJFNt+ZxkjdtrGmb2tT
	GNNjZbXXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYAcH-0006w9-Lo; Mon, 11 May 2020 15:45:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYAc5-0005qe-BR
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:45:07 +0000
Received: from linux-8ccs.fritz.box (p57A239F2.dip0.t-ipconnect.de
 [87.162.57.242])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44B93206A3;
 Mon, 11 May 2020 15:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589211904;
 bh=Dn5xsd49kG0h2c2CrnzZeVPVNAk3al24vvTB0Sc2m0k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K4TBHeUOcbjQPuLM1SPMnGs/lByNxC7FONLY6cQMwCuoMn2VLo1q3W/mNi1Ey7Xsn
 xX/vlLJhGaVyh4NjREfDaUziNvuxEaoxjb4DRt+mdWLaka8u8YwbAXkvXBZNwreFUU
 AJEwdcc5i7A6prvHmgLpK0a0UmJgke8Ta04bdjFE=
Date: Mon, 11 May 2020 17:45:00 +0200
From: Jessica Yu <jeyu@kernel.org>
To: Vincent Whitchurch <vincent.whitchurch@axis.com>
Subject: Re: [PATCH v2 1/2] module: allow arch overrides for .init section
 names
Message-ID: <20200511154459.GA26699@linux-8ccs.fritz.box>
References: <20200511114803.4475-1-vincent.whitchurch@axis.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511114803.4475-1-vincent.whitchurch@axis.com>
X-OS: Linux linux-8ccs 4.12.14-lp150.12.61-default x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_084505_443826_E2A87699 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

+++ Vincent Whitchurch [11/05/20 13:48 +0200]:
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
>v2: Add comment and move module_init_section() next to module_exit_section().

Thanks, this patch looks fine to me. You could add my:

   Acked-by: Jessica Yu <jeyu@kernel.org>

Alternatively, I can take this through modules-next if the second
patch gets a review and ack from an ARM maintainer.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
