Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B66B105A5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XqgEUV44PDeMSSLKxzG6lXBdqRV4ojWH3ezi8B5kyA=; b=VEAIGjSjFC31TY
	EV+f39G4zxaq6rb3v27niy2jPhSAM0rxCQM2QsNbwtDy2+dFRkEqEnaNhjOd6FC6E1cCobOHr4F9m
	gDlIvDuSV0ITtvKCOLnsm/eLqVemsz0jLwaHw/NgalAfiV48Kpt151tPNTvhbVDm3DvDaGMA/nY2I
	9j7TN57ZiGkgTG45UT/9mN5r99yQ7I8Stkyn9U7w25VQPxkIqQFxgBN67sfPgLuU9Q2yiHWbyNqIa
	sl+UoeUAHE6NN6YIcOYRWenel+LSTRw6wuFp9W0JPnIdnI3LPmvmbuG3PrHCd0GcET1OkYDFsd8qW
	88xklMKveWqMPyyNTsZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXs7I-0005ql-TO; Thu, 21 Nov 2019 19:27:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXs79-0005qA-Q1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:27:41 +0000
Received: from oasis.local.home (unknown [66.170.99.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C61B22068F;
 Thu, 21 Nov 2019 19:27:38 +0000 (UTC)
Date: Thu, 21 Nov 2019 14:27:37 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: KASAN_INLINE && patchable-function-entry
Message-ID: <20191121142737.69978ef9@oasis.local.home>
In-Reply-To: <20191121183630.GA3668@lakrids.cambridge.arm.com>
References: <20191121183630.GA3668@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_112739_863463_E1C43D70 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Torsten Duwe <duwe@suse.de>, Ingo Molnar <mingo@redhat.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 18:36:32 +0000
Mark Rutland <mark.rutland@arm.com> wrote:

> As a heads-up to the ftrace folk, I think it's possible to work around
> this specific issue in the kernel by allowing the arch code to filter
> out call sites at init time (probably in ftrace_init_nop()), but I
> haven't put that together yet.

If you need to make some code invisible to ftrace at init time, it can
be possible by setting the dyn_ftrace rec flag to DISABLED, but this
can be cleared, which we would need a way to keep it from being
cleared, which shouldn't be too hard.

Is that what you would be looking for?

-- Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
