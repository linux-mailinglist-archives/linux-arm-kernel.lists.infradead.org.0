Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD13F8F1EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 19:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=55UNwSxiEDfXLPpP3SGY4LexRH8vChzUws3TNrIEqTA=; b=F83hzEuAFEH7An/azGFJve1KMp
	gW0akRa41KxKO/bDdYR+QqLnbqwd/tVWWm2Ewpkm+l1r+LRwDpNxzK505dl3H+vrZZ/kJLaryIwB4
	4W+WaIaYnQd7ry/rbama81qOjvp/0c8gx8vpYLG7of0VqqJ1bUprzTl7VWCDB28VBOn5qBrdyGEMw
	YmahOHS66VprKl+P2TftQt4kx0yfLuZL3KH8kJJJdsfdqiyKODHRPKnX0HcFAqsrfDfwzkPnL8q1q
	bcs+r75wXCmKlIsO6mpQvvUp7DUAybkOBBylVlMf1MxmM9gD0a+uqUbdj4ynMkpUxgsNCiTH4f7eY
	bFm/sMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJN1-0008St-9o; Thu, 15 Aug 2019 17:17:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJMX-0008RI-Cw
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 17:16:39 +0000
Received: by mail-ed1-x544.google.com with SMTP id a21so2685349edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 10:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=HvH/9QkJPpLkWxDBArczHr4uoHoZvdo767/gla+0Cq4=;
 b=pKHPfBNQUfx3iIaUdBEjdoQBnwVE33BsffdbfdtS4c7cz0NChF2ssj7n0oUNYvLBml
 1GW7C9tC38qeN54CAe2livGh5ZgyPHx1kBuk/IvtFXrnFpJB8Ek/GI0NZfSHqLaPD9oi
 2UtsZ5gQknSqtRiljMnlxI6c8SaAZBr3tZ3nhrRXJUZrIF7INC4o3B2dXzMQTBEzum7c
 jLOY3vrE7M080p/0Pboi6nDaUWr6lRajGfmDoPJJol5qFQmqtvJbODsLpb22T2hQaxvL
 NgnhaiHSKPHsKDlHk1m/gx0MjaiOiKCkfxPxDFJOO4hcsmg0h7rmTCnKZY6RTOJVN9Jc
 fE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=HvH/9QkJPpLkWxDBArczHr4uoHoZvdo767/gla+0Cq4=;
 b=eeon37f1D5Sy8Ii+cD84zsCZq/hIH5PHs43e9UetmukpR5LEA+QD81Y4Q9W1np1qNR
 Bfv1AXUkzEuIlOakK1pvsVY5EewtOBRPZq86sOKRA2NPq47xpLVSwSA+tQjO+g8umsOq
 QkiUc/xb/jw/sFVuomIWaXfuZnMZ7Hcvh95xciV5xGLsKk6rMvcLZXVsxXMZkbvpP2/9
 ULQkMx9rjig/mU2SXV0z9jY0viAFv31RmUnXUcrDlftNm3YTiS/X1TCbraTz1DUQFEHK
 FGrPC4j3yTIkdQyC15WobTAMmSjCzWdWeHRE4vXJdP/zZMTMK0fo8pqvpu6lLNojc1qG
 gg+A==
X-Gm-Message-State: APjAAAVqIxl9qJ8CmRNJTKahPWpzVVyfgVKhNqT9nuRe7rohN6w1XX7Z
 Iq1p/dhO1u82vXoEfJIOTqO7QJ1UTnFvkNYN3XID7g==
X-Google-Smtp-Source: APXvYqxjQMegw/1NCxtxkMv+zw0eXzahg5VKDPdm64IBjqfvOgF3V96t+tXb8M/4zCohVqTP+H/B/YvKeSv6kTxEdbs=
X-Received: by 2002:aa7:d48c:: with SMTP id b12mr6512796edr.170.1565889391108; 
 Thu, 15 Aug 2019 10:16:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
In-Reply-To: <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Aug 2019 13:16:20 -0400
Message-ID: <CA+CK2bD6e2WGxuPG+jX8c_qyHNZOC=8NZ-wVZXQuMS2ncBNndg@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 linux-mm <linux-mm@kvack.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101633_465048_1C03B80C 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

It is been two weeks, and no review activity yet. Please help with
reviewing this work.

Thank you,
Pasha

On Thu, Aug 8, 2019 at 2:44 PM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> Just a friendly reminder, please send your comments on this series.
> It's been a week since I sent out these patches, and no feedback yet.
> Also, I'd appreciate if anyone could test this series on vhe hardware
> with vhe kernel, it does not look like QEMU can emulate it yet
>
> Thank you,
> Pasha
>
> On Thu, Aug 1, 2019 at 11:24 AM Pavel Tatashin
> <pasha.tatashin@soleen.com> wrote:
> >
> > Enable MMU during kexec relocation in order to improve reboot performance.
> >
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs takes a significant portion
> > of reboot.
> >
> > The reason for slow relocation is because it is done without MMU, and thus
> > not benefiting from D-Cache.
> >
> > Performance data
> > ----------------
> > For this experiment, the size of kernel plus initramfs is small, only 25M.
> > If initramfs was larger, than the improvements would be greater, as time
> > spent in relocation is proportional to the size of relocation.
> >
> > Previously:
> > kernel shutdown 0.022131328s
> > relocation      0.440510736s
> > kernel startup  0.294706768s
> >
> > Relocation was taking: 58.2% of reboot time
> >
> > Now:
> > kernel shutdown 0.032066576s
> > relocation      0.022158152s
> > kernel startup  0.296055880s
> >
> > Now: Relocation takes 6.3% of reboot time
> >
> > Total reboot is x2.16 times faster.
> >
> > Previous approaches and discussions
> > -----------------------------------
> > https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
> > reserve space for kexec to avoid relocation, involves changes to generic code
> > to optimize a problem that exists on arm64 only:
> >
> > https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
> > The first attempt to enable MMU, some bugs that prevented performance
> > improvement. The page tables unnecessary configured idmap for the whole
> > physical space.
> >
> > https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
> > No linear copy, bug with EL2 reboots.
> >
> > Pavel Tatashin (8):
> >   kexec: quiet down kexec reboot
> >   arm64, mm: transitional tables
> >   arm64: hibernate: switch to transtional page tables.
> >   kexec: add machine_kexec_post_load()
> >   arm64, kexec: move relocation function setup and clean up
> >   arm64, kexec: add expandable argument to relocation function
> >   arm64, kexec: configure transitional page table for kexec
> >   arm64, kexec: enable MMU during kexec relocation
> >
> >  arch/arm64/Kconfig                     |   4 +
> >  arch/arm64/include/asm/kexec.h         |  51 ++++-
> >  arch/arm64/include/asm/pgtable-hwdef.h |   1 +
> >  arch/arm64/include/asm/trans_table.h   |  68 ++++++
> >  arch/arm64/kernel/asm-offsets.c        |  14 ++
> >  arch/arm64/kernel/cpu-reset.S          |   4 +-
> >  arch/arm64/kernel/cpu-reset.h          |   8 +-
> >  arch/arm64/kernel/hibernate.c          | 261 ++++++-----------------
> >  arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
> >  arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
> >  arch/arm64/mm/Makefile                 |   1 +
> >  arch/arm64/mm/trans_table.c            | 273 +++++++++++++++++++++++++
> >  kernel/kexec.c                         |   4 +
> >  kernel/kexec_core.c                    |   8 +-
> >  kernel/kexec_file.c                    |   4 +
> >  kernel/kexec_internal.h                |   2 +
> >  16 files changed, 758 insertions(+), 340 deletions(-)
> >  create mode 100644 arch/arm64/include/asm/trans_table.h
> >  create mode 100644 arch/arm64/mm/trans_table.c
> >
> > --
> > 2.22.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
