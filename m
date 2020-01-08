Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003B41349F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VF3R6jOKhglVdyueW18aMzxqcBNS86Bu0KPPu856TzI=; b=ChAXCu0SacBmiP
	Il5pIp9lRG2hxjwcI+rnr/XPfQ3IoAVR3XQHerutnBAEEqQNTi9o3TcrQSWgKBOoDvbMlQ9OrYVST
	trXPqEh5QmeJ4exBUhvBnRwDzs97xKRXI0dLbEa3QZO9YViBG1hao/5/awzbLFugUnG6ZX5Z4OAc0
	+GyROFr+9/FkQIAnfPnrDsUePXVpDpZRvIA75AmYYqYrQ3FNVteS8TvWzIbvmxz/JGVpbKqnPcI7d
	8ialIOUfr2b1em3U2opw9aZRrM2+CBWJQ9MVORdChKAs2vfQEFa7sfxCl+ceOXVMorpcutWX8DDuH
	eREoReevNwFeP1kkjReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFbx-00046w-Vi; Wed, 08 Jan 2020 17:59:17 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFbl-00044s-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:59:07 +0000
Received: by mail-ed1-x544.google.com with SMTP id m8so3277627edi.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 09:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2uEGBOLSJ2/X/0eS51RiNhJGw7wJMIxKLyleFhVXCjU=;
 b=bNfU3pqQAxrJLz5YamHpEVqhAqbwtCyAQtia8G0VcYhNt4oMjsMyEKEFJSsaPM023k
 WwYyZCoRFiDvgBZqyHWGBIwb33HRviCqZzPQ9Rwvnv+3mXF6zDMBX3LYLNWRmADSxWnU
 AhTLCkfwuKN5URHZy0XQG0kOUs2ESmqZZBjf0yO6gd7DiHyWEZal/nUYAH4tnfghehRx
 Hwhd0v7hpxd/nXxGkC6sxAB4fgSJFoTM9sld6Z/jH37HNI8+Uto9KE3qombk7p4dmMtc
 pULM+JnTaOvu7dHzcEFKAWuMIvImdzzHZ74vUt8yadsb9zL1bvktTIkcoeJkG0CZjuJB
 wQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2uEGBOLSJ2/X/0eS51RiNhJGw7wJMIxKLyleFhVXCjU=;
 b=K8t0xJ7BkowWtfFRFFDYt+dRl8JSn+kQVn3dK2O8VGCqxwDYOgLIjUJxTEEJ38USNG
 hdHiDUWI30hCL1qq7sSGyqyKolgNf1EZ2addY5GlpBIymOXgeC/xhKMqFapM+MpSqi2B
 7cLzVtJExIDvjjaBTflixb3/a7sy89ZeE0C/Hyqc0vZtnlhQFhdZS3slvsQ9Z3Fan8PR
 6kmxar5HMI72WX6UoWOxS8jD/WrbNZTmTJVgAm0HvfypJSOcV93L+Hq5diPLXKzIv8Vo
 3ksbfy1TU0jMmhLpP0QDY5BpkVz5/5fe/chQ2960+IUarOhLOAJiaOmmaQ5YeQT++ImX
 CAjA==
X-Gm-Message-State: APjAAAWWT6tumpldXlNO4+YEuqtYNdlgV9pngfyZ6A0VaInT1vTzu7zF
 +YGI4x7SDmcZH9iek9/K5+nTnBP+ObTzf1+zOUXhyA==
X-Google-Smtp-Source: APXvYqzJNhUYj7BUDWq/b5VLfPHGhXZOH/nyV2Gie8IiGDhSBzYXZZsk8IWFKTu5blsELnHIiDrlPgfetGRZnwf7rWQ=
X-Received: by 2002:a17:906:3798:: with SMTP id
 n24mr6133397ejc.15.1578506343460; 
 Wed, 08 Jan 2020 09:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
In-Reply-To: <20200108174839.GB21242@willie-the-truck>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 8 Jan 2020 12:58:52 -0500
Message-ID: <CA+CK2bBg2zaUONC_wf5na4CF0Tj3sThEPT7AgNmevycSZRdMeA@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_095905_747890_29467433 
X-CRM114-Status: GOOD (  16.57  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, robh+dt@kernel.org,
 James Morse <james.morse@arm.com>, frowand.list@gmail.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks good to me.

Pasha

On Wed, Jan 8, 2020 at 12:48 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > Enabling crash dump (kdump) includes
> > * prepare contents of ELF header of a core dump file, /proc/vmcore,
> >   using crash_prepare_elf64_headers(), and
> > * add two device tree properties, "linux,usable-memory-range" and
> >   "linux,elfcorehdr", which represent respectively a memory range
> >   to be used by crash dump kernel and the header's location
> >
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Reviewed-by: James Morse <james.morse@arm.com>
> > Tested-and-reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  arch/arm64/include/asm/kexec.h         |   4 +
> >  arch/arm64/kernel/kexec_image.c        |   4 -
> >  arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
> >  3 files changed, 106 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > index 12a561a54128..d24b527e8c00 100644
> > --- a/arch/arm64/include/asm/kexec.h
> > +++ b/arch/arm64/include/asm/kexec.h
> > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> >  struct kimage_arch {
> >       void *dtb;
> >       unsigned long dtb_mem;
> > +     /* Core ELF header buffer */
> > +     void *elf_headers;
> > +     unsigned long elf_headers_mem;
> > +     unsigned long elf_headers_sz;
> >  };
>
> This conflicts with the cleanup work from Pavel. Please can you check my
> resolution? [1]
>
> Will
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/diff/?h=for-kernelci&id=aef73191765a88cadc0a627cdc070e5a0086b015
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
