Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926F0137A0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 00:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vHws4gcPW+FUyxFd15fYGxwwlmKeYJ075ZNynofn+4=; b=LLsKWzX2n5ZyL3
	W87Euj0eXNlKVa2/ETX2HBiDKoaNiD8YBITenRTZ+zPF8qxDHZvwLjGnkkE+HpLPes97M3+5ZzjaR
	2BYkrwOnNBiDnjah8gL+sNLSMCxBYNLYnV3VLn7LhNAfRFTRpoCFXjTK5MLlnZHo8XZWRZELdCt3f
	SywETqD22mrK8TtMf/GavRRkhX3jTfktenEx/+5xZIa4ItCtGzkMd5pCuZP0KRewkXOvRguxW9QzL
	1i2zg0d8mrh8sm0TxWY7mH9Sdy35hMODxCgfpRx4jOvm58dwbPtF1OYffr/ZQ7bxp0MLJiGM0Ck+Q
	X1gxk5wQDLuYWqCbm2jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq3Yf-0001UV-HG; Fri, 10 Jan 2020 23:19:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq3YX-0001Tb-6u
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 23:19:06 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so3814755ljg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 15:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sDCm2fAgdbf9iSd/cGIS/CChQu2q61Zn9eY7u0OfUvA=;
 b=mSXSzvDisimwy4fkPM0YoB3LyDLUDwqWRyHDDL9TbdonJkxVuiWmNym9tx/UBqT/oy
 6YyoKqxhS9fU2n/yHjkdK/4+dWFx80x6lGGx4ruh0cLAJwHoASZQo0QaqjFECG0yrNN7
 TbLzcJubxPIWx14YYb3VytxYW/tOw0lsHTOfF76XMnpFYUuZ7aZ6omUmN7D+ob09G+7B
 y306y84V1d4qg9kP6oYcVS5FmbYeB2MXPegicIZWqJK7A0kDC1wknXUtB/b6nG/TQ6vc
 v7vrI/Oh+C9/RDE3+jI5vVi9FDgAZcb51u6HuQXb7o/cR/5xo67iIdyoADeuKbQFQRYQ
 X0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sDCm2fAgdbf9iSd/cGIS/CChQu2q61Zn9eY7u0OfUvA=;
 b=uNWpuXYzMr755naPvhAd1bJit2HozOYbF7D0kyKdl1sB2SipyzPzl4QJHQJN4njCrO
 63jv787lYrsgT6OKcwd+qCL0XoYA6BCpezLj6u7Xr6Oth0+i/UZ2JGlVF43dy3O20RgR
 jPobN43hBPmOy634tTas+cgEAp3IHUwgvNKtmHY0YEtazW03MrYqUX0EzVSoWMDlNkKH
 KUvdfLn5oimmpxe951C3RsMmf7TZisFedV8GNcEJtrAMO8Q5lYCIhxxapP/Cp3vIaMPe
 dgjGL4oJwepW/p8eWQD5FYXatFbHQDDwvdMKicmDmQatWcQ5bpkiARkKFXnJQdaIl9yE
 vMFw==
X-Gm-Message-State: APjAAAX2HuFnm84hl4BUeayV+z4GXi5jcVHX8TQV7FR7qrje0HBNlF44
 2jqhlwjK1y1E/rsTiAj/gPg00Te+z6okcRHzeOk=
X-Google-Smtp-Source: APXvYqyaEFKCy5sJpJYQlDZvnYhNy46CPEXRLWAVXF7WAT3sWxG5jqbHave+p4yRBIPkNC2TJa/MqW6xq+4teZD3kgY=
X-Received: by 2002:a2e:58c:: with SMTP id 134mr4241974ljf.12.1578698341335;
 Fri, 10 Jan 2020 15:19:01 -0800 (PST)
MIME-Version: 1.0
References: <20191018105657.4584ec67@canb.auug.org.au>
 <20191028110257.6d6dba6e@canb.auug.org.au>
 <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
In-Reply-To: <a367af4d-7267-2e94-74dc-2a2aac204080@ghiti.fr>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Fri, 10 Jan 2020 15:18:50 -0800
Message-ID: <CAADnVQLo5HEjTpTTRm=BtExuKifPtCJm+Hu_WP6yeyV-Er55Qg@mail.gmail.com>
Subject: Re: Re: linux-next: build warning after merge of the bpf-next tree
To: Alexandre Ghiti <alexandre@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_151905_278045_D9C0B8E7 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexei.starovoitov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Borkmann <daniel@iogearbox.net>, Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>, zong.li@sifive.com,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 ppc-dev <linuxppc-dev@lists.ozlabs.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 2:28 PM Alexandre Ghiti <alexandre@ghiti.fr> wrote:
>
> Hi guys,
>
> On 10/27/19 8:02 PM, Stephen Rothwell wrote:
> > Hi all,
> >
> > On Fri, 18 Oct 2019 10:56:57 +1100 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >> Hi all,
> >>
> >> After merging the bpf-next tree, today's linux-next build (powerpc
> >> ppc64_defconfig) produced this warning:
> >>
> >> WARNING: 2 bad relocations
> >> c000000001998a48 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_start
> >> c000000001998a50 R_PPC64_ADDR64    _binary__btf_vmlinux_bin_end
> >>
> >> Introduced by commit
> >>
> >>    8580ac9404f6 ("bpf: Process in-kernel BTF")
> > This warning now appears in the net-next tree build.
> >
> >
> I bump that thread up because Zong also noticed that 2 new relocations for
> those symbols appeared in my riscv relocatable kernel branch following
> that commit.
>
> I also noticed 2 new relocations R_AARCH64_ABS64 appearing in arm64 kernel.
>
> Those 2 weak undefined symbols have existed since commit
> 341dfcf8d78e ("btf: expose BTF info through sysfs") but this is the fact
> to declare those symbols into btf.c that produced those relocations.
>
> I'm not sure what this all means, but this is not something I expected
> for riscv for
> a kernel linked with -shared/-fpie. Maybe should we just leave them to
> zero ?
>
> I think that deserves a deeper look if someone understands all this
> better than I do.

Are you saying there is a warning for arm64 as well?
Can ppc folks explain the above warning?
What does it mean "2 bad relocations"?
The code is doing:
extern char __weak _binary__btf_vmlinux_bin_start[];
extern char __weak _binary__btf_vmlinux_bin_end[];
Since they are weak they should be zero when not defined.
What's the issue?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
