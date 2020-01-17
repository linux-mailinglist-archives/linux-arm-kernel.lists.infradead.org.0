Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82749140799
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 11:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEBqx2RkZNN7pMf9894Goscgaz8ma22sm9ebSvUioBU=; b=rAsefLjJDa36gU
	9lhcMdAfOvXw5te3NbI6vdazKg4ft63tJczdWxLhQr7hX2f3xI/JCpbd7NLUgf6xVFtjZ39lEXOkI
	rbDlOb7mesdck5PknD8EGlFeWIx/Z+9MX3bCwGFYrzbUNHohJ3e2ztYKurH3PK1MisuHb0lP62vym
	SHpoKTtdaYzynVEP0v+B/pbrIW+5MvRHftMukP4p41jfS9fC6pQNkvcx8HsRIxs0/Zw9VE54xGsQ2
	4dXhrhThPg+fCXrub8XkEhT5B+xzz5C9Zm6WcNMN40vhTLSMCWhLHewGsV09vcM/szr2ZbWB7GKM1
	dqMuzfefKsWUZA1tG65Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOaR-0007xk-7o; Fri, 17 Jan 2020 10:10:43 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOaF-0007wQ-2x; Fri, 17 Jan 2020 10:10:35 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M4K6z-1is7bH2aAL-000P0u; Fri, 17 Jan 2020 11:10:26 +0100
Received: by mail-qt1-f171.google.com with SMTP id w8so6929856qts.11;
 Fri, 17 Jan 2020 02:10:26 -0800 (PST)
X-Gm-Message-State: APjAAAXuk27iWUoZYZ/gTzOM138nCdK6RZM9qJekG7R0iDw0miqM2xUN
 rR/dlKM4X141jZH/EmYOapnFWCy1nWe9AE7fRRc=
X-Google-Smtp-Source: APXvYqwJseIcLf52SoCo+jtyEMNWCmLScJZGo/aM/tEE3YgOeqebesjzIckzh3dwWAmCE7mLdstmifhUAdg/ilxjg+0=
X-Received: by 2002:ac8:768d:: with SMTP id g13mr6672928qtr.7.1579255825449;
 Fri, 17 Jan 2020 02:10:25 -0800 (PST)
MIME-Version: 1.0
References: <cover.1579248206.git.michal.simek@xilinx.com>
 <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
In-Reply-To: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Jan 2020 11:10:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3bfO9EdL6o4+yY5BCw0pc1ANYocVjyohmG34jcjLiWpA@mail.gmail.com>
Message-ID: <CAK8P3a3bfO9EdL6o4+yY5BCw0pc1ANYocVjyohmG34jcjLiWpA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
To: Michal Simek <michal.simek@xilinx.com>
X-Provags-ID: V03:K1:hfUabt5FMFZ0HyeKqBKYepqytQqDhbdPdVeHEKb3+5GH3CjAXCU
 N0v/uSVh3wQU9m44EQI3m0IzCU3JKKg9wtJF7pN/6KjtkqJicnmHSkRKk5+ScF4w23CrU23
 W+dO/+ozcqd6MImWJDRNOEqOvL7w0QDQqf2p/9qSNMuptwQpOshv4ZXKl3bsJlWUAvMRoL6
 CJvSyQoDVGU75eEhE/llA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yphUS135LKw=:qTgRrpBavWGYeeax4339Ny
 hnVPZJzeiXollIKx9dQWNITacn3iF+y94UKuDqbx5WNPhGIfpFOwckFfPS+tCOmQPl+QLzRMR
 uGFwK9ilFTr5A20ebK0HGNG6eyWNVtcAIp6uuBJ/m/WEHCNMbqFxv6uJ3FTr8v1L/12Ltvy7h
 s1GkHwpkOABzFKqD4+rmI5ymTHwgxKmBB8OynVmajvAVlv5Wgva6NdzOwToVsEkLWLVjJg53J
 eh7Xc9G3fIxLZAaBq1OA2QZzPbID1UjnCPIg5Dks7EyK1zshr28TY4u9LyoGDYtGGWjkO+4yC
 md6oUIlHzFH+EQ/2cHKiBxcYyFWd7fpSbZfq0QFjCPI3co4fO4bVX/CwlCOmdVdWfzYEQsq4F
 EIpmBYK2V7Fr9WI6zZQWqjz93B9g4d0hPRAYP+qzFf7yE1f29jyYtKjKPIQDz/YGxnxRZD0Xb
 st37OFyZnyKfn7FwjBL4cvBXIOhIpmhbEIATRoV0FkTFFvFerBq1OjIAeOyNDAjuXrfde/46n
 TjjLHSWGkKeRjDcNiIqzzp66i7G0HypAl/1OA0TdM9vV/YsT7ejsFmbVT2KngV2/Fo+hG4hlA
 Xrrvlg/gNpxrYH8Q6WksnfeVOZa8dqsscNeZcsir2lmhRnDwge9llPCORYDiqPB6POeMazdaa
 rjBwIUWsGFg8vryOQRfae2gIMOy5wZi3O5yUX0UD6F7zxodbAP93E13ZYIRwe6/M1El5zmvAk
 rT2dudhH9FgUvG6B1AX2RuBEjRKmBxky/2nsCsXvGFzOlogJ0VWr4ofmkCNpw5VWD9uw8ruOt
 5vmcRpJWN39ipBVmMzWoPR0GeIf/GdYrYlRIrmOX5uXVCPYag9/o6ToCsD2s7FQgDoN7mauX0
 TaFyQjRD0m+k8ZOnzz8w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_021031_423938_1E947617 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Paul Burton <paulburton@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Zankel <chris@zankel.net>, Michal Simek <monstr@monstr.eu>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 9:03 AM Michal Simek <michal.simek@xilinx.com> wrote:
>
> dma-continuguous.h is generic for all architectures except arm32 which has
> its own version.
>
> Similar change was done for msi.h by commit a1b39bae16a6
> ("asm-generic: Make msi.h a mandatory include/asm header")
>
> Suggested-by: Christoph Hellwig <hch@infradead.org>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> Changes in v2:
> - New patch suggested by Christoph

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
