Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10078C3E44
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/AZO45tMxXLpvngp16ylfq8pWBh655807RBFYJ8VuZ4=; b=K3j5xIulRTsHMm
	n1UZyhJvVKacRu5Xl7rbItZNIdVyZIiah5mBLBIPtcYcbt8xb944vdgp0xA4i9qO2xrGlas6HherN
	CrNi3CvMPVTKfMiOkeYxxJq5BXF7JHhNKYJuXt7dMorg34nyY6JETePuxfM9cH8fF74G24AqZy+Qq
	lmfnhGmNYx9nRAPJBayGj4v5WzyS/N57K+qnjMBKdfwSo54BwNmj6jB0ex+2BSw2+eNcZ/0mYKZSd
	4LWbkGV+scqZ3gOba5OZFczPffhrorbTee9wZmg4d+lXK4J22kMAZBalE1VFt4CKbQNerurlJ9282
	nXFZqewQ+T+0+jmN+n6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLhC-0005ZB-H6; Tue, 01 Oct 2019 17:12:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLh5-0005Xq-EU
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:12:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A4012086A;
 Tue,  1 Oct 2019 17:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569949931;
 bh=Imi9bY+6yhPMuvw82i8Qa+vwv8Dk8KW1mW9nmAIXFe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=geALupBIgcBFHuj6zyoTCk/oBT+tBiwsHhHaHJWQ2b9e0SpvWFWc82N+LbVshFRBk
 f31tCJaL93eMsMWSstr3k34HhEAYiJFv7EzuXHlcMCF0LgTYCY46s2/gg7BGB5JFIK
 wBvuAFqqJR5B96/Qe+bX+8NlnyE3RlebOE0pzIIo=
Date: Tue, 1 Oct 2019 18:12:06 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] Partially revert "compiler: enable
 CONFIG_OPTIMIZE_INLINING forcibly"
Message-ID: <20191001171205.dubfntdlwifxik6z@willie-the-truck>
References: <20191001104253.fci7s3sn5ov3h56d@willie-the-truck>
 <20191001162121.67109-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001162121.67109-1-ndesaulniers@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_101212_250475_63235BCE 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: arnd@arndb.de, clang-built-linux@googlegroups.com, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 yamada.masahiro@socionext.com, linux-arm-kernel@lists.infradead.org,
 torvalds@linux-foundation.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 09:21:21AM -0700, Nick Desaulniers wrote:
> > So you'd prefer I do something like the diff below?
> 
> Yes, I find that diff preferable.  Use __always_inline only when absolutely
> necessary.  Even then, it sounds like this is a workaround for one compiler,
> so it should probably also have a comment. (I don't mind changing this for
> all compilers).

I wondered about a comment, but I couldn't find a good place to put it.
We basically need to say "If you're using explicit register variables in
your function, then you should use __always_inline", but there are other
functions too (such as arch/arm64/include/asm/vdso/gettimeofday.h) so
a random comment buried in the atomic code doesn't feel very helpful to
me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
