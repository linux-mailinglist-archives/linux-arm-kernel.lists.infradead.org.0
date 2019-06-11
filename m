Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5723CEFA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZ5WM/3RKUIt/mD1sWnA41+hYMOCR0+rZsbVa+uWjM0=; b=IR5typYbG1yeo5
	jvgYgqsSYiPnEJa4YWIG7ndd6aMdMCJlOdYY+lgbJwiw2KF2KWBdgWpukauKWOcQXQ25OxFjGzQxv
	TDjf+i2wDgHxPBCnS2o6c4p804n2cxH/UJusTZ5hq0REZPlaeRMwAxr/JMIL8LmXyEPP1ZqmqlQVD
	Ub62RF9D/fGuHxhYMTZuQFh71HMksDI7b/uwP0O1FiJLRYQqOQFfpopsd7C2ozAKpo4JGktSZssAS
	GNHo1VfxNE1n8e672Cr34tUD2CqFw3al47Y3pIX0NYhSPSMeaUU2pRKQsrRSranYP4qRZY0vvCT76
	W36fFOw4tQYEnXLxjMIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahvi-0003SW-Bf; Tue, 11 Jun 2019 14:39:18 +0000
Received: from galois.linutronix.de ([2a01:7a0:2:106d:700::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahvL-0003Io-2Q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:38:57 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hahvA-00052j-8k; Tue, 11 Jun 2019 16:38:44 +0200
Date: Tue, 11 Jun 2019 16:38:43 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v4 2/4] x86: simplify _TIF_SYSCALL_EMU handling
In-Reply-To: <20190523090618.13410-3-sudeep.holla@arm.com>
Message-ID: <alpine.DEB.2.21.1906111633400.1662@nanos.tec.linutronix.de>
References: <20190523090618.13410-1-sudeep.holla@arm.com>
 <20190523090618.13410-3-sudeep.holla@arm.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_073855_394443_548B986B 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:7a0:2:106d:700:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Richard Weinberger <richard@nod.at>, Bin Lu <bin.lu@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 May 2019, Sudeep Holla wrote:

$Subject: Please use the proper prefix and start the sentence with an upper
case letter.

  x86/entry: Simplify _TIF_SYSCALL_EMU handling

> The usage of emulated/_TIF_SYSCALL_EMU flags in syscall_trace_enter
> seems to be bit overcomplicated than required. Let's simplify it.

s/seems to be bit overcomplicated/is more complicated/

 Either you are sure that it is overengineered, then say so. If not, then
 you should not touch the code at all.

s/Let's simplify it.//

 'Let's do X.' is a popular, but technically useless phrase.

> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Acked-by: Oleg Nesterov <oleg@redhat.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

This is a nice simplification indeed! With the changelog fixed:

     Reviewed-by: Thomas Gleixner <tglx@linutronix.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
