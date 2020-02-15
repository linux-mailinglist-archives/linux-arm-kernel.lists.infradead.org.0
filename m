Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1008315FF56
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 17:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UiNVM9uBkPXm3k4f/Q24R3QPvRw1WlB4HtkOckGRQU=; b=C/iGlxWcPnueKx
	XUZL7oipz8EwagaLIcEXoaaqz6TnSqXqKGncPjBPwcpFaJrq3/5ul4jR4jOO1sxGTvR7eDZkp5hrP
	lWvfVLxGGVUoeSG47YfXrKg4iovZKRpcgJTTYFEsOow2ALXlUqaMkp3n15HDsGvvdnyHq6Sx4Jijg
	QEdKVR/uEBkA8GICFWDFTBWArcMsi8EfpvaqaBV6SfEq8OEAExoIxAytBu3tgSG5244UGNIrTPJdg
	e0IYXrJUw04yROfKyoXePpsf1Kku6k4zkFCOk0+BHPjCeRHmt+iol2Fj2UkbNAw5rrvfFfVCNgCrX
	AYBZ2j5vV/GjEq2OrN7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j30n7-0001C4-GF; Sat, 15 Feb 2020 16:59:41 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j30mu-0001Ak-Or
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 16:59:30 +0000
Received: from mail-qt1-f170.google.com ([209.85.160.170]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M5gAG-1j5mkH3J3i-007G7D for <linux-arm-kernel@lists.infradead.org>; Sat,
 15 Feb 2020 17:59:20 +0100
Received: by mail-qt1-f170.google.com with SMTP id f3so9109048qtc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Feb 2020 08:59:19 -0800 (PST)
X-Gm-Message-State: APjAAAVtQ4Y3ODKZNh2My3i3UmBRHzldALs8IQEHpTdD7Vq8Dlh2lwUN
 4ZWcr7hX5Rwx8WS1AAcnCEkxENI9eU6K7jYEl+g=
X-Google-Smtp-Source: APXvYqyjkaMRW1i6+nG6Xmmiwkn07p7cDmjHpBuvGvwJKBe8csT7ZhEBB5nRrhRTCOtne+pNbnl2kdB0/zhmsFwcHpI=
X-Received: by 2002:ac8:1977:: with SMTP id g52mr6981067qtk.18.1581785958432; 
 Sat, 15 Feb 2020 08:59:18 -0800 (PST)
MIME-Version: 1.0
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
In-Reply-To: <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 15 Feb 2020 17:59:02 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
Message-ID: <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Provags-ID: V03:K1:cEwCpNb7whpATEPJvjIEMwXtdSxap1MI5EPx/Synw2GQVY+rGcw
 eKnDUOFg0EX3g63WMkci/uqWNwyQVt8d7/TJccSRl/r5dw0X6cEQPmgNA8LpyCAPn8G/JvW
 /rjfxthNZ3EX7cIRtCi3ilFc0MKaQ5c+AQ1mtjD3TzPxSOdef+Tnmt3slmqfK4/tHtSABWB
 RHN1DOOt8n+uP2vURajmw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kC/SFVGdjY0=:g1AK5ug3H0KbML+hkfyp5L
 hF/pB3nTeLrnEyPE0jbm/vO+yjqBVVq058cfVBjOdO4G8jvmoxbFeSP/bsrVcXI4JPeCAteU1
 Qj17WreXxOYyB452wEDvlWAfl8lpq5vx/z57OZ4U0lqWfRLKtZnUhsHxuIo0+sgPBCwcf01JJ
 AJEGxVgj5WTD02wX1pLeJlh6+XvAVq3fk1ybA/Z0gOQfhnn+jHgJNCTBrSXauUzM0+q1CZMX4
 Wj62QqLeUMqY84W9QsozsOPO1JMijBOvL7uJmpX54tn6z4zdFuIetbhzE7Whfxi98cpTuisPh
 X4jBFiaqkWYyaWYui8fBC171MR3qCSWTd/8PRjQfUgfFTrT4IHkV5MvdTTMVnmkPzBCz6BIbB
 fbVCTdikOlorTlEx7jD2apWthrM+CDUZXWA6Rz/s3MKPkpXot3AnkMsm3YFaL38SHkf+r10zF
 8OH2dk7+DPzSpkqtMDoXlveyxytuGT96FCjcoeIoi7r5L6wC+ZhvrmSeDMs9O1kraPBXKaloO
 erBy5yePV7KBQvBFFd3qqeCHktdXW5aC+2mfirBwEl0RWGrGqUMCBfuqd3GQSbBBPeEc7ugQd
 Jx2D70uCPMyTXuD/FezNu7pix0O4lOWTFQXVxlv2tuViMnwXB5SoOYgYuGb/LvjgL6hnHpqgy
 dXHk0/Mo4mwaBFsd6EmsIUFNQdDoVnzFkgcCcyGhzNxzmLTxAlYnVuhGEUIi7/jnH9jSpIGdA
 vk8l+6Y+5GBq0m+hK8E8v6XDzw7m2trGdiLXi1XBdW4zOqb/5YKf635nw79DTQDxRNFkM67Wj
 iqXbcBzAU1RXI6+BwJVCrNIGdRQkOAY42JcdaW19za3iqxinrQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200215_085929_106982_6509DC93 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Chris Paterson <Chris.Paterson2@renesas.com>, Michal Hocko <mhocko@suse.com>,
 Rik van Riel <riel@surriel.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, cip-dev@lists.cip-project.org,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 12:25 PM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
>
> The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split (even
> for 1 GiB or 2 GiB configurations) in two parts, one below and one above
> the 32-bit physical limit.

Good to know. I think there are several other chips that have dual-channel
DDR3 and thus /can/ support this configuration, but this rarely happens.
Are you aware of commercial products that use a 4GB configuration, aside from
the reference board?

For TI AM54x, there is apparently a variant of the Dragonbox Pyro with 4G,
which is said to be shipping in the near future, see
https://en.wikipedia.org/wiki/DragonBox_Pyra

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
