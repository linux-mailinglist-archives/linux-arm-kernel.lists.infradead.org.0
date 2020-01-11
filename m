Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A186A138364
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 21:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIAo9Lv/TQWfHQ51FY0k571nAk37H77m7WVMIeWUY/o=; b=M6AANTQkzxuKOU
	jWQV3/wfmgZNP71SWzUYolijAQJRurPxLAHJ2Q58wMatbT/lyEcZ7+j742MyH1Bt2Ofl8ZZVOKoc1
	LKdbunNgQCp1rSR59u5IlhZX3edOw3AheVCAZ70ztgD8yYvSmXRatM8qQv/vILVOzz+p1Yc7rsu7F
	uhKpDSWZ9vz2evv9dAcbsV3sh9h1jlQ3GV7O70u8pvr+aWRaiOANUwlzz+Z44fzPKgbhwzQjR6gPF
	rJZJU0nlRnL69dUgMQsH44gUBnbAt61qmFBx9w6LyqEt0at7666Gk4FHZmZup958WLCxzZqsipFfF
	DIp6y4SBQE36iYpmV8WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqMvw-0004xi-4H; Sat, 11 Jan 2020 20:00:32 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqMvf-0004t2-8I
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 20:00:17 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iqMvZ-0008H2-H7; Sat, 11 Jan 2020 21:00:09 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 4D705100C52; Sat, 11 Jan 2020 20:59:58 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>, arnd@arndb.de,
 vincenzo.frascino@arm.com, luto@kernel.org
Subject: Re: [PATCH] lib: vdso: mark __cvdso_clock_getres() as static
In-Reply-To: <e7becc50bee355e3872b84d91cc68ae8d7776bb9.1578764712.git.christophe.leroy@c-s.fr>
References: <e7becc50bee355e3872b84d91cc68ae8d7776bb9.1578764712.git.christophe.leroy@c-s.fr>
Date: Sat, 11 Jan 2020 20:59:58 +0100
Message-ID: <875zhhsr0h.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_120015_460287_EB9CBC13 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christophe Leroy <christophe.leroy@c-s.fr> writes:
> When __cvdso_clock_getres() became __cvdso_clock_getres_common()
> and a new __cvdso_clock_getres() was added, static qualifier was
> forgotten.
>
> Fixes: 502a590a170b ("lib/vdso: Move fallback invocation to the callers")
> Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>

I've already queued:

     https://lore.kernel.org/r/20191128111719.8282-1-vincenzo.frascino@arm.com

but thanks for caring!

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
