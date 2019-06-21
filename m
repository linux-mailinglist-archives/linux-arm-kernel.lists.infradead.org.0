Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE064E6BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wU2oCRAIh5y9JKnXJofyh5HqgiArzmd75Nb49+g5YN0=; b=meIcLW2R4RCX/s
	T1ObfXaU9QwSzvrDwIh2NquoQ5NLpTtGu9A0m0coBYLlA7qM75XuEU8WAf9iEXkWTB+z/e6izeVph
	k+NXaeE7xVFfav/vbKmLZJcfGzdy9e+IC4kerfcBfvGnG2R0ZS314j+Ir1I5uYkGwv/vLJHGt4k5i
	j92UcY0M3uR0jdYz+O0R10bTvKd8Txbl1vuf8wlETPKxILLCmKPvbrCSUj77aojBsnoUZmExmkPfG
	BhgyckwvJlcj9igcbiEKu5Q9a94MAKyayybONF7n8dX2x8nmQ6srZn7iIi5H0vvieR8vUHoNpKEM6
	PUaRkttyREd7zL94JLYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHNr-0005Ls-00; Fri, 21 Jun 2019 11:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHMf-0005DQ-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:05:55 +0000
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F40D621530
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 11:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561115153;
 bh=ReCmP6mZfL1ydIGUwQ4K2uET7mhSIXqXsNY0Kqa1ySw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NIC2KOGLU15vwFdrXsQ21f9HMYashjo+GAIUq6aifrxmM89h8cRes6df3JvCiA7eq
 2DU/z/gk090aRiPnYt4ngLLocux78M7bA8oaGNvZXxPpV78wQjOzz8AxZKgp8xaFRk
 xDli3JazZtxwjq8C6BEzFWnnz0XkygQ00Q2fhhMY=
Received: by mail-wr1-f45.google.com with SMTP id m3so6188576wrv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 04:05:52 -0700 (PDT)
X-Gm-Message-State: APjAAAX3/jHAPjeYbe24C7drquN6FhqDADc9uVMeAVnZidDCRqmHeTZM
 NMut9R/aNNtmdDAYnoZ9HFFnIKI1OCIdciRdgYQ=
X-Google-Smtp-Source: APXvYqy3WEx+tbb1lSRS7oX70n7cxQ8/V6LHDFq6jUOe/chVbdAzS0mtEBdOyy3UK2+rxyQyjrTafv2Wkf8jsgV+2d8=
X-Received: by 2002:adf:dd89:: with SMTP id x9mr18958136wrl.7.1561115151644;
 Fri, 21 Jun 2019 04:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <1561109999-4322-1-git-send-email-guoren@kernel.org>
 <1561109999-4322-3-git-send-email-guoren@kernel.org>
 <2c6acec4-07b7-b214-9eeb-964dc3a0d632@arm.com>
In-Reply-To: <2c6acec4-07b7-b214-9eeb-964dc3a0d632@arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Fri, 21 Jun 2019 19:05:40 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQ0xQtQY1t-g9FgWaxfDXppMkFooCQzTFy7+ouwUfyA6w@mail.gmail.com>
Message-ID: <CAJF2gTQ0xQtQY1t-g9FgWaxfDXppMkFooCQzTFy7+ouwUfyA6w@mail.gmail.com>
Subject: Re: [PATCH V2 2/4] csky: Add new asid lib code from arm
To: Julien Grall <julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_040553_976693_A31E4004 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arnd.de>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-csky@vger.kernel.org,
 Guo Ren <ren_guo@c-sky.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry, I forgot delete arm's. It's mistake, no change arm64 file.

On Fri, Jun 21, 2019 at 6:10 PM Julien Grall <julien.grall@arm.com> wrote:
>
> Hi,
>
> On 21/06/2019 10:39, guoren@kernel.org wrote:
> > Signed-off-by: Guo Ren <ren_guo@c-sky.com>
> > Cc: Arnd Bergmann <arnd@arnd.de>
> > Cc: Julien Grall <julien.grall@arm.com>
> > ---
> >   arch/arm64/lib/asid.c        |   9 ++-
>
> This change should be in a separate e-mail with the Arm64 maintainers in CC.
>
> But you seem to have a copy of the allocator in csky now. So why do you need to
> modify arm64/lib/asid.c here?
>
> Cheers,
>
> --
> Julien Grall



-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
