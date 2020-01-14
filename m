Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52B413A872
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:32:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CjbyttKdpI1LfVYABja5q6fIKMv24lfsmahns7yrr8=; b=QORY0FeNmxEFSl
	XiebGfYY52WAfgK0I+0Ngjg2LlB84ix7nHXASiuTZDN05Tve95GCrMUV5kL1Av6f8ICunDcqmKzSa
	pqjkyk+hkk4i7QwlnMv4LWVfBzbMMeELnD+t39Llu0PM2NEQ0i/xOZuFNk6c/uUQsqt9iN/EtXAn8
	6Or7ZgHEwPU8MWXf4enEajgCdBgO1ly8qUG6TMOrvrytL7yqrD1JQ8ZnFy1lzNum1AajtlPGZ0wfC
	le66KsuxNbXq+tnYjXnRFwL0oSOoqFL0uRAteuUb5BHjWl5aL21lLGhbKcgAGjCZ2KjpgVpe4imQF
	Q+1nJL/TADDdwAnJbwcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irKQl-0001db-5h; Tue, 14 Jan 2020 11:32:19 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKQZ-0001d7-NW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:32:12 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irKQQ-0002Kq-3S; Tue, 14 Jan 2020 12:31:58 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 8410B101DEE; Tue, 14 Jan 2020 12:31:57 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, vincenzo.frascino@arm.com, luto@kernel.org
Subject: Re: [RFC PATCH v3 06/12] lib: vdso: __iter_div_u64_rem() is
 suboptimal for 32 bit time
In-Reply-To: <5b38617a2ca4f719760aafbdb6115eaad28c0640.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <5b38617a2ca4f719760aafbdb6115eaad28c0640.1578934751.git.christophe.leroy@c-s.fr>
Date: Tue, 14 Jan 2020 12:31:57 +0100
Message-ID: <875zheclzm.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_033207_908975_3A1A4EB5 
X-CRM114-Status: UNSURE (   7.98  )
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

> Using __iter_div_ulong_rem() is suboptimal on 32 bits.
> Nanoseconds are only 32 bits, and VDSO data is updated every 10ms
> so nsec will never overflow 32 bits.

That's theory and perhaps true for bare metal, but there is no guarantee
on VIRT that the CPU which has the timekeeping duty assigned is not
scheduled out for longer than 4 seconds.

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
