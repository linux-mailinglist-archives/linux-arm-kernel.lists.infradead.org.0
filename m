Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955C37022
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NDGvaqqNDtitti1mGdM3lh+dcwTKHHzv4Jt04hFZgA=; b=cxg8TtVJmXEbZ0
	Rhy/FwG2vVtMx/SiQ3Z6rTuQ0q3Fltm294zLE1Cr/qiZKGUH2/h2rdf2z+gz8X7TYdW/V/yxIkjIY
	pw7bThrosjWXeoZtuYljrDJIWhkFdhHVZa8bn0WZt+88G1HR7X5lX4+nQRrIPHZNeKiH9indGBpMl
	/0ivv97ab07EVMuTd9KEic7kIYOTA71yxnHfeHojRH5OY3VzF3X0jVGdxr3PfzQ72QNrQdzgWPXST
	26th9J+MCv11FXfo5zUJO8TjVJzI8tjXZJthqp7b9TeDkrwdX2N2F48se5lI+EjS1i9FfVfZXeatv
	q+29hJylZkqnH6yaWTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYosK-0002Ho-GG; Thu, 06 Jun 2019 09:40:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYosD-0002HR-Cz
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:39:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B1DB341;
 Thu,  6 Jun 2019 02:39:53 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8BBF3F690;
 Thu,  6 Jun 2019 02:39:50 -0700 (PDT)
Date: Thu, 6 Jun 2019 10:39:46 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 1/3] ARM64: trivial: s/TIF_SECOMP/TIF_SECCOMP/ comment
 typo fix
Message-ID: <20190606093946.GA6795@fuggles.cambridge.arm.com>
References: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
 <201906051503.010FF2AF@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906051503.010FF2AF@keescook>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023953_447267_116841F4 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Jiri Kosina <trivial@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Andy Lutomirski <luto@amacapital.net>, Julien Grall <julien.grall@arm.com>,
 "George G. Davis" <george_davis@mentor.com>, Will Drewry <wad@chromium.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 03:04:06PM -0700, Kees Cook wrote:
> On Wed, Jun 05, 2019 at 04:30:09PM -0400, George G. Davis wrote:
> > Fix a s/TIF_SECOMP/TIF_SECCOMP/ comment typo
> > 
> > Cc: Jiri Kosina <trivial@kernel.org>
> > Signed-off-by: George G. Davis <george_davis@mentor.com>
> 
> Sneaky missing "C"! :)
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>

I've already got a few arm64 patches for -rc4, so I'll include this one
in my pull as it's harmless.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
