Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB601129C7E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 02:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpQ1+TGM3wtutUxFhICp4A8Tv/JayfCAc0gQmRrjcVQ=; b=LN0M4IA/AwxXNv
	yplUJjduEduxR9om/poSZ60TK6LLP6lsnPHKQ1IhoPydsboJJitPCmX9B4ELfe+vlOXITS0OCYw+z
	DnGT/A909JsJdZa0gq4Cb3iXdatJbDeipF1Efff9dC+LrDmCNyJ9I3okIlPYlfa5ng+w7rxZVm1Hv
	sdeADdABZ90/snW1OyGdPOnAzG5FHPUcmIFWaCPGGt/Pz/j0pJOcWySwz+n+Zs6DZtrQT/1b0O9A0
	O9tTH+FrKfI6WMEp977qNkBJyVpwCu6Pb9aQtIjYozFyfsd4Q/5pQWPWswS0uQRZBN8muDEAqNIOE
	XyQywKDryOGALfL7U3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijZTG-0008Tg-RJ; Tue, 24 Dec 2019 01:58:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijZT8-0008Sv-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 01:58:43 +0000
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E5F22075B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 01:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577152718;
 bh=wrDzBWpOKSiwcb+qBm67fhEmniMtsPe08K1CDqJG+aQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oFYra1GnrPYPW0VIb0ihhkc/X1ko+xfQht7/2IKlWIyfO6uNchY0GOmxSOCGWBnY+
 oQU08j1ThgwFiIxFVbPwHNZ4a4Bg8WDDE6yE6w4LCePbFzjER6HYQqZgnlhUqcpAns
 WZQxExfAhEzKuKRq9E0Du+n4NTas+PLc/RJdGJLU=
Received: by mail-wm1-f44.google.com with SMTP id p9so1262800wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Dec 2019 17:58:38 -0800 (PST)
X-Gm-Message-State: APjAAAWX3wV9RxhQ68dQRlEllK86kQMjDkp6k2Evqk8E9bi9B3N2CcNl
 8TTAKZeHSxsTPwb308lqO6GQnK0Qy6oMnF+2EuYw3w==
X-Google-Smtp-Source: APXvYqxwNlYNszeowAFN0oKu0h4yW9ADusJeScbE5XRItW37UFXluNES85cpW6MmdJIXJdPRzP47hHREp3dIH3wiI6I=
X-Received: by 2002:a7b:cbc9:: with SMTP id n9mr1469926wmi.89.1577152716961;
 Mon, 23 Dec 2019 17:58:36 -0800 (PST)
MIME-Version: 1.0
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <fc1ff722c7cbe63a63ae02ade3a714d2049d54a5.1577111367.git.christophe.leroy@c-s.fr>
In-Reply-To: <fc1ff722c7cbe63a63ae02ade3a714d2049d54a5.1577111367.git.christophe.leroy@c-s.fr>
From: Andy Lutomirski <luto@kernel.org>
Date: Mon, 23 Dec 2019 17:58:24 -0800
X-Gmail-Original-Message-ID: <CALCETrV1TWD4iMoGFX6abxXFukz081Y2XaXy6p1KJBNLpp6ZTA@mail.gmail.com>
Message-ID: <CALCETrV1TWD4iMoGFX6abxXFukz081Y2XaXy6p1KJBNLpp6ZTA@mail.gmail.com>
Subject: Re: [RFC PATCH v2 07/10] lib: vdso: don't use READ_ONCE() in
 __c_kernel_time()
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_175842_512597_A1092587 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 6:31 AM Christophe Leroy
<christophe.leroy@c-s.fr> wrote:
>
> READ_ONCE() forces the read of the 64 bit value of
> vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec allthough
> only the lower part is needed.

Seems reasonable and very unlikely to be harmful.  That being said,
this function really ought to be considered deprecated -- 32-bit
time_t is insufficient.

Do you get even better code if you move the read into the if statement?

Reviewed-by: Andy Lutomirski <luto@kernel.org>

--Andy

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
