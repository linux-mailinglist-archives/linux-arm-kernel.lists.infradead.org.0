Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBCB12EAB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 20:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrnEgO04FCaNWbV86bj+e78LbeYqmrMUv+VbO/iX748=; b=djC16dHbGizCWz
	OIqi+jWJHQr6oYpJY+a/2VjxV2b7LjcG96Rqb/awcw2imBqbiHHmd14Ec134pSw1DLkYtGNQ6mQK2
	su5F1a0IqFz0j8gEx59bGwoQP67T/drJTDd2IkziClIXcoVFzIiRWjJt5+Yx3IstUQiR5isd+8OUx
	DiWU4bkX+wSM6WU/GE7qVJmp5ZZJ16lF+58gdf6TkOne6TiCCQXu4wxCp57jqsNMsoNzmDFUCiz33
	C/lA+AedEsiaYdBDycUAk44KsaI1yhbKryichoew/x61K+ELuSMoU/m0agUgvxnP7JhnWTFp6xTYC
	7klkWmm0FDo4e9ioxjkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in6d0-0005va-5B; Thu, 02 Jan 2020 19:59:30 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in6cr-0005uj-Tv
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 19:59:24 +0000
Received: from mail-qt1-f180.google.com ([209.85.160.180]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M1aQN-1ikcSE3ngp-00367R for <linux-arm-kernel@lists.infradead.org>; Thu,
 02 Jan 2020 20:59:18 +0100
Received: by mail-qt1-f180.google.com with SMTP id g1so28511326qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 11:59:17 -0800 (PST)
X-Gm-Message-State: APjAAAUPCJwJ9DZ6ZxCHXvIfmt5daDJ/vqFSpEbWjjlc8NSecSjk04iI
 LNAT6xS69csTRNGpDea1l/rji/V/59jATXIlr5A=
X-Google-Smtp-Source: APXvYqyMexwubr905g8IFy5rPyKxmy5F8mo4h/FyF5+Eh+Q+KNUhRdx6WKOpGs5LIKlENSVsLmNfAAn4pjNodXYNVLY=
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr60247574qtr.142.1577995156713; 
 Thu, 02 Jan 2020 11:59:16 -0800 (PST)
MIME-Version: 1.0
References: <20200102172413.654385-1-amanieu@gmail.com>
 <20200102172413.654385-2-amanieu@gmail.com>
 <20200102175011.q7afo45nc2togtfh@wittgenstein>
 <CAK8P3a3a88e=hkzYG5mj=NuVQWMtyougkKzBznnn2y9ZoZfEGg@mail.gmail.com>
 <CA+y5pbTwsN6dUWQ+hAWpuo4c7418GV1RdpmKFiJW+cEu+ibGJw@mail.gmail.com>
In-Reply-To: <CA+y5pbTwsN6dUWQ+hAWpuo4c7418GV1RdpmKFiJW+cEu+ibGJw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jan 2020 20:59:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2nqRkEnkLD8she+d34UhP=FNWSZXf_47dM4+g-eZMJNw@mail.gmail.com>
Message-ID: <CAK8P3a2nqRkEnkLD8she+d34UhP=FNWSZXf_47dM4+g-eZMJNw@mail.gmail.com>
Subject: Re: [PATCH 1/7] arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi
 headers
To: "Amanieu d'Antras" <amanieu@gmail.com>
X-Provags-ID: V03:K1:IJKWeiCcE/2EpbK1a9chLcaAJ7FSiXgaOA1imzxS76HlE6K+nLe
 qUdf1mpXfh1qyyPRMOCXU0wv+AECjtNXSIdSWcBlwXimGInwzBDmcnfQvZd0+TKq1uWHEqU
 HeQdm+mah5aCq97BJTZXq+ogSdI9krrPqWJQ+FjP84Vb9Wai3wp4ldd7N9hNGh5fFuwDUjU
 p/6nh84e10SNt6cVuVnTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:31J4M6gX0Ro=:2Gd2vFZlZTq2EA2OYzAfQO
 iKo6qWrzoZowls7QR6D85hwINBVgvunyFLjtnFmcie2nYZ/jcwD7za+GC5qxQGO1SriL5hJV0
 2fQmtyEadNWRTxN2t3CRgs7R8cDB4W0mGV6hgnRFHH6VF2Hz6jTLZ66MxSFiGJ9O4wCJxMdtS
 NJgslequnmt/yK/RLM0iRxTpEi94Lr8rZXdjmSLv4i6E4Sgny3qGR1nEQ1vaODMKb++IcAXJ1
 7CwTXyBnG8MjLIfPucpZ5F/svX2cGtRQDja4w/x3IYtqSjyla6/96HM3o1xxJ+3VOaGbiK0Tm
 g7cAvAAJfczNkbryyV4rzEksCCczIw69OF+7IM5U7YWbJIZDH0dM1b0XuCTjePFF3Vzo99q8V
 6AddDwnwOKB9C7TYAksyHkZOX7pc2vq2WBsE90HcfFESnPuGJgzive5azVS5W1PTeOR1DRx0e
 jkeeMsEm2Ablf5x4ZImtV3a6nmi/1LtNa378iD30pOBU5y5ZbMODQInf8pCaTdjySkWfW9JYc
 T4WSrPQ7P+z9/6hSlg4MVPKh5E26lj8MFPIj0sqBSh7UxMz5HAHT1pJwslao1uCxOuTjqeDhE
 6wZOhmmPfiUR0KegGRzFSb5BNXQY5Nw4qeXmtLI/cNzDGph+LXt3bnPjqJzDk3Apgniks0HE/
 OiO8kKD+h+l5hJvZQkUJvLhv+Em+LDC/477TY0g08LyBS0JtntGL2FKP5CQr6WaYJ4YKxE+IX
 P0QfQux0/RjoWgxkY1SQwk3b72PjulpPK/Mxoc7iJDAZK9ZvI6PtVe1fL9aanQ4w035fGPjQp
 4SQ3N7ODWodLC0o2V7cTRybG13avjExFyFKfZ63LTfo0z9YBnBltMKrqse2pCl8S5QxWfq4uG
 WgQhCxbPwg0/xiitkzBA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_115922_256807_32636F46 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "# 3.4.x" <stable@vger.kernel.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 8:33 PM Amanieu d'Antras <amanieu@gmail.com> wrote:
>
> On Thu, Jan 2, 2020 at 8:25 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Thu, Jan 2, 2020 at 6:50 PM Christian Brauner
> > <christian.brauner@ubuntu.com> wrote:
> > > On Thu, Jan 02, 2020 at 06:24:07PM +0100, Amanieu d'Antras wrote:
> > > > Previously this was only defined in the internal headers which
> > > > resulted in __NR_clone3 not being defined in the user headers.
> > > >
> > > > Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
> > > > Cc: linux-arm-kernel@lists.infradead.org
> > > > Cc: <stable@vger.kernel.org> # 5.3.x
> > > > ---
> > > >  arch/arm64/include/asm/unistd.h      | 1 -
> > > >  arch/arm64/include/uapi/asm/unistd.h | 1 +
> > > >  2 files changed, 1 insertion(+), 1 deletion(-)
> >
> > Good catch, this is clearly needed, but please make the patch change
> > every copy of asm/unistd.h that defines this, not just the arm64 one.
>
> Actually __ARCH_WANT_SYS_CLONE3 only needs to be in the uapi headers
> for architectures that use the asm-generic/unistd.h header, which uses
> it to guard the definition of __NR_clone3. Architectures not using the
> asm-generic header don't need this define to export __NR_clone3. The
> only other architecture with clone3 that uses the asm-generic header
> is riscv, which already defines __ARCH_WANT_SYS_CLONE3 in the uapi
> headers.

Ah, of course. The patch looks fine to me then.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
