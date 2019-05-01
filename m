Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 228AA10ACD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClWkjUfRoA8pT1OCcKksaIyDfkJIZLJoF0dH9glLDDw=; b=Iw90X6iD5qrtiV
	Qcy3tIW6HPDcJ82yyV69zPLNHWP+8oRvwVZBduIgF2/kF7/xHtfmOKjznUwDNdFr5Pmvkvu7Q2H2v
	NtL6idoWNemzGr9DiLF8iuTGOB8PvruvvV/ZhgJQIXnmqcLWE2u9jlHSJ4nL6aoepmQPZFcPeWEK3
	BNx2r2EZzGzoZ8MlnfpwprVymcklxCG0lAtfv8ZCUmy/Xck3X2blfO/heKKeOYv1QIgdKnR56ZMt/
	WxyxqIPbw3uTWEkXUtH/OuRr0tyQl/0M9uy3DSadxWR29eqZ3Wf1QEEeehPUAkMyoYlMf+RPN+bj4
	kAz2hgW7GVf6G/1g9NdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrqT-0003og-4Q; Wed, 01 May 2019 16:12:33 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrqM-0003oK-NM
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:12:27 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C99980F7C;
 Wed,  1 May 2019 16:12:26 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 4BF0A17535;
 Wed,  1 May 2019 16:12:23 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Wed,  1 May 2019 18:12:24 +0200 (CEST)
Date: Wed, 1 May 2019 18:12:20 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v3 2/4] x86: simplify _TIF_SYSCALL_EMU handling
Message-ID: <20190501161220.GC30235@redhat.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
 <20190430170520.29470-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430170520.29470-3-sudeep.holla@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 01 May 2019 16:12:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_091226_784204_0893F871 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Bin Lu <bin.lu@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Richard Weinberger <richard@nod.at>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/30, Sudeep Holla wrote:
>
> The usage of emulated/_TIF_SYSCALL_EMU flags in syscall_trace_enter
> seems to be bit overcomplicated than required. Let's simplify it.
>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Signed-off-by: Oleg Nesterov <oleg@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
