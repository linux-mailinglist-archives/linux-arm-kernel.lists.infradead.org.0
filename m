Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F218E1552E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:23:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpTGkvMtpEeWqB19MaPwMOtaAy7gF2bunuoSfRfHuUw=; b=hq+BoymKGFf+mn
	AJSW0jKCsXuXhtomCrbvRvQR9bQLkzvhWvbvlPEQBxzU72hkEnkFQAws08jLrLf6Gzxg6q58JCa3T
	yS6zHzqAj3J7Ddatj1q0ha+CqKoymHWQeKHhweLeBBj2pg0Qsatm1NBTC3+RkyaV8w6euPOc7/tNA
	3MqqDTxJarQGqmowUuYfOR2cT/Va14JGzgIc6dEpPyixYmRa4nz/27avpSUH2W9R4OMiiZFXR3ozd
	/ChNMcE7atJS01B6EaRIuh+XVi1WTgdXMBzd0e5XgH5ALwGTfh49dQRxFEGDxnxoWnjIgZiA2pYlo
	N7HUpTkCj1Jze1NOCPrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izxyn-00040T-3I; Fri, 07 Feb 2020 07:23:09 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izxyd-0003zf-4c
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 07:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581060176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J2tWq+g+e1P5IbDXbfqwkjDEr/xwTdY7B0dGPBlAbYk=;
 b=QiHMOzANvYzY96psWKkzV/sleZO+pg1rSH923l9LtUkbCQivW0acx9F0Ue9S7LgtR5wcrQ
 tDIuCri6ot36poammQ/oRgVj0EBFrWWTD513JxcPbLDzQOib5w5qSrkvV1V6AGe+pwMX0V
 bshkw5+iwXIQtH6Fbn1Rm7znCL0i+JA=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-NGDCftD_OneTMHUyNzWffQ-1; Fri, 07 Feb 2020 02:22:49 -0500
Received: by mail-qt1-f200.google.com with SMTP id l1so1066305qtp.21
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 23:22:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lgVyzV98WCkCA7JLqOF1Cqp3XlDwsyJOWyuCfKoS/hQ=;
 b=NjARs0USq/d5BkXs4PTNRhYLTQ+xzGMinL81y580q6lgCrJDheyoI88oje1PmESfIa
 oRdztSH3ZwyOfNSsqBSgcUMf+ybpsQELdyBWPEXs1zvJV9/yJrSOhwLMcrmC7gse1kWK
 3reGTcs83TbjNtmMtW1XYPnJ+IRs31ZZBO4MSIPyh8+La1rbudj1UZ4OR1YJktJ9jj42
 58t4e1pqeOLTUp/lc+IA751TYe8L5+Bo/TDYTwh4Tpba3tdR1ybDgNm+dJwhZMLZRDYt
 s/F5ZLlIYPbO+6eGSQGBTO3L9WFTr/hFNrfUscukAB1c/kkAZGWo79IvJ9lHzYKKzleT
 Qeuw==
X-Gm-Message-State: APjAAAUmmUEIZOG8OdmI+Wn+Z+za4Yj23L/+uEyZMFjX+j1Ju8Okh10Z
 RKMt4Ka5buqamVw2q5SX0uKRRq10ouQPOgNjcIn8U9HltbOwaIJjHP7AMN9MYali2ymA3FD/kTs
 ih2+IR0z+4XCnTGDC2rf540l9DerjF0BU3JsyxLPrRmIQj2E5pco=
X-Received: by 2002:a37:8cc:: with SMTP id 195mr6075722qki.456.1581060169017; 
 Thu, 06 Feb 2020 23:22:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqydmVvTffqnOIk3fXrn9Ur3ZslgLahtGidDn7lhiibNQVBA9X4nupwC/DYYmAcfTwowjXQ8U5lbiUjFW6nQ7Ac=
X-Received: by 2002:a37:8cc:: with SMTP id 195mr6075715qki.456.1581060168719; 
 Thu, 06 Feb 2020 23:22:48 -0800 (PST)
MIME-Version: 1.0
References: <1580768784-25868-1-git-send-email-bhsharma@redhat.com>
 <1580768784-25868-3-git-send-email-bhsharma@redhat.com>
 <20200206103858.GB17074@willie-the-truck>
In-Reply-To: <20200206103858.GB17074@willie-the-truck>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 7 Feb 2020 12:52:36 +0530
Message-ID: <CACi5LpPTQ6f5tHEXFsFFhPQ2phLefZY8L3rZ-9xLGyTJ7_SdCQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] perf/arm64: Allow per-task kernel breakpoints
To: Will Deacon <will@kernel.org>
X-MC-Unique: NGDCftD_OneTMHUyNzWffQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_232259_260374_92276D55 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Thanks for your inputs.

On Thu, Feb 6, 2020 at 4:09 PM Will Deacon <will@kernel.org> wrote:
>
> On Tue, Feb 04, 2020 at 03:56:24AM +0530, Bhupesh Sharma wrote:
> > commit 478fcb2cdb23 ("arm64: Debugging support") disallowed per-task
> > kernel breakpoints on arm64 since these would have potentially
> > complicated the stepping code.
> >
> > However, we now have several use-cases (for e.g. perf) which require
> > per-task address execution h/w breakpoint to be exercised/set on arm64:
>
> To be honest, the perf interface to hw_breakpoint is an abomination and
> I think we should remove it entirely for arm64. It's flakey, complicated,
> adds code to context-switch and reduces the capabilities available to
> ptrace.

Sure, I agree.

> > For e.g. we can set address execution h/w breakpoints, using the
> > format prescribed by 'perf-list' command:
> > mem:<addr>[/len][:access]                          [Hardware breakpoint]
> >
> > Without this patch, currently 'perf stat -e' reports that per-task
> > address execution h/w breakpoints are 'not supported' on arm64. See
> > below:
> >
> > $ TEST_FUNC="vfs_read"
> > $ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
> > $ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null
> >
> > <not supported>;;mem:0xffff00001031dd68:x;0;100.00;;
> >
> > After this patch, this use-case can be supported:
> >
> > $ TEST_FUNC="vfs_read"
> > $ ADDR=0x`cat /proc/kallsyms | grep -P "\\s$TEST_FUNC\$" | cut -f1 -d' '`
> > $ perf stat -e mem:$ADDR:x -x';' -- cat /proc/cpuinfo > /dev/null
> >
> > 5;;mem:0xfffffe0010361d20:x;912200;100.00;;
> >
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  arch/arm64/kernel/hw_breakpoint.c | 7 -------
> >  1 file changed, 7 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/hw_breakpoint.c b/arch/arm64/kernel/hw_breakpoint.c
> > index 0b727edf4104..c28f04e02845 100644
> > --- a/arch/arm64/kernel/hw_breakpoint.c
> > +++ b/arch/arm64/kernel/hw_breakpoint.c
> > @@ -562,13 +562,6 @@ int hw_breakpoint_arch_parse(struct perf_event *bp,
> >       hw->address &= ~alignment_mask;
> >       hw->ctrl.len <<= offset;
> >
> > -     /*
> > -      * Disallow per-task kernel breakpoints since these would
> > -      * complicate the stepping code.
> > -      */
> > -     if (hw->ctrl.privilege == AARCH64_BREAKPOINT_EL1 && bp->hw.target)
> > -             return -EINVAL;
> > -
>
> Sorry, but this is broken; the check is there for a reason, not just for
> fun!
>
> Look at how the step handler toggles the bp registers.

Not sure I follow. Can you please give me some pointers. All the perf
tests I have from test-suite run fine with this chunk removed.

Thanks for your help.
Regards,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
