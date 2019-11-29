Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED08F10DA69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 21:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r24fa5oeCXqQzHRFhsQFHGNbyAnvYK7Y8aRNTH+sdNQ=; b=VXeeSg1r3CjFM9
	9F7WMpqSCOK6HoLeN+5ZWOTsnjI1U3e8DOnuLOuRk21TWKbeahNkkqnaQ9tVM6NdEzZzSj+VTpyKq
	r2Suxga5SJL5kY4lA6Znc/y9sc2daFxGQYkzyrvtOE+2z1JSn5GzKMUWn12wH06i9d4YwmtOIG+3c
	r8/WYdRivTcdFO7d2dPMnkhLtpKhpiZGTMfdQFLYgDnmiPAg1lghGbISmEJCDqNtk3VoDYU7FYlic
	3qzw0MTuwOwVFC/DzyOvT2l8VsgOkQv1rYuQsLz6k2iqzlG9um0h8GLqrbcLcH0MvpLnXT8lLMgbD
	wPtKXgdHUmnMwVhuzunw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamWn-0003gg-Uy; Fri, 29 Nov 2019 20:06:09 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamWZ-0003ey-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 20:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RP2PHwp5wZl3ztgeJTb35J2c98KyKZ9pDDlofVv46EI=;
 b=GZwJvCrwSc5wlQOD6oNHAyMwlSrsWgFglvzoVPjWSVSTp4AEFooWAMpZuqEQbJrLNlo290
 bLZC6/+GZQLFuSpA05VbjoE6mKW2wFUC9TWvJTCyKn+uFzB0SZ5nceWprWWR7d4y3o7Giw
 4j2Omc42PodzzT+K6saMau4WxOnDKmM=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-356-fQZFDIWtO96Y1-Y_ESdzxw-1; Fri, 29 Nov 2019 15:05:52 -0500
Received: by mail-lf1-f72.google.com with SMTP id r187so2947466lff.21
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 12:05:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zCyHxNb/EFCllk+iZMx0l93yQzrOq+uBxpToCPQHS9k=;
 b=GLBy+FPdgB2XbB+nf9Lv35/6W767NwMONSp9gecWOaBHW3BbArQR8wN/awnpfidAhG
 B5ipw/j7p8kyZidjSu+mP1N+PszwAQyzqC+3rKcncyJCfj2m3jXBDVFKnLKI+GC0iWaT
 Jz1R464oIjfcUmq0ldfJTnCxZIUlJzgLZOJihTkXVgHYkiiXFMiCqUtXb96l+7l6pOY+
 ipSiL+ucvN1457moJNf00trL2JlUySnh7cGZM/uyCNMRJAPYdbj2i/EEjTIfRffZ7glG
 AbhLlE+kOsVPDVxJqLxt4c8Z9mrrxU2rdLlUmHeLqlfijHYzDTvSlDXJ6gPPS6+CZXpd
 xStA==
X-Gm-Message-State: APjAAAWshAuH3/pVN6uaUYJe5TUJNUlC4Z0ia2UqN4nhBKuUX6iilb7z
 0qtABBawPMhNdIXe/rt1q1FbIeYzWaMVEDjx55xQyw5n0r1DF5X/Xh9X6WpcFpii/eAfYK85+wG
 c5+HJnyh1tXKHx/MBC0z5fzTB/91qFRE+ZLx0mOeXB/Gd3aLV8ac=
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr12682052ljj.235.1575057949840; 
 Fri, 29 Nov 2019 12:05:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0eILOnKMVbbahC3Rp/NyuV7+7BmZiagne10VkRMygf99/om+7iSrw3qCYWoCJXV2cv5Un/9KS0XCSQp5JswM=
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr12682025ljj.235.1575057949585; 
 Fri, 29 Nov 2019 12:05:49 -0800 (PST)
MIME-Version: 1.0
References: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
 <20191129102421.GA28322@willie-the-truck>
In-Reply-To: <20191129102421.GA28322@willie-the-truck>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Sat, 30 Nov 2019 01:35:36 +0530
Message-ID: <CACi5LpNQPw41kGsW+d0PyZaC7gSrbgwT2VxwyO5r3j83h-mkEQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Will Deacon <will@kernel.org>
X-MC-Unique: fQZFDIWtO96Y1-Y_ESdzxw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_120558_623910_08B6F090 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Boris Petkov <bp@alien8.de>, Dave Anderson <anderson@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Fri, Nov 29, 2019 at 3:54 PM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Nov 29, 2019 at 01:53:36AM +0530, Bhupesh Sharma wrote:
> > Changes since v4:
> > ----------------
> > - v4 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
> > - Addressed comments from Dave and added patches for documenting
> >   new variables appended to vmcoreinfo documentation.
> > - Added testing report shared by Akashi for PATCH 2/5.
>
> Please can you fix your mail setup? The last two times you've sent this
> series it seems to get split into two threads, which is really hard to
> track in my inbox:
>
> First thread:
>
> https://lore.kernel.org/lkml/1574972621-25750-1-git-send-email-bhsharma@redhat.com/
>
> Second thread:
>
> https://lore.kernel.org/lkml/1574972716-25858-1-git-send-email-bhsharma@redhat.com/

There seems to be some issue with my server's msmtp settings. I have
tried resending the v5 (see
<http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/696833.html>).

I hope the threading is ok this time.

Thanks for your patience.

Regards,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
