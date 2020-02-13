Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DA415BD05
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:44:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uLANT11pCfHh0A6IKCSANtdAolmmHgM4Qevmm6rzIl4=; b=RftGqVXGBojSbU
	c71p2c/qxee3U9LqLinJPq//VGctdLowwdxvhQQQZlCKjwZhNT4ZuGkOUcOg8pFbHXNaiQtliUjcT
	KjEFlUWoQ8Kf7uPMm2w0/f7ePQDoYQB/q38KZslBKLSm530phd/El9LNJbClNsFg+c+7WAs+KX8Tx
	kmDRNL949vt1nsrBCBya/3R0+gduplPPtG/HpGEswSSl1jRb/tr+NI1lMSSQDPq7ZUfeSCzp6XnTq
	euOwCKdpk4MZGzkIi58GGWQshTZgIKU/LeqK4twGnYORU73J2KxMbnHfkr36iDKaHsmHmeFhu0N74
	gDd8x5rMd0F2NBGeZ7cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2BzE-0007rd-4M; Thu, 13 Feb 2020 10:44:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Bz2-0007qd-I6
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:44:37 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4926224671
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 10:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581590675;
 bh=JbaaM3wCQgbP43CQfcEhVYnKbvSGI/oQuNsbU2J944Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=d1EIBB3fpdOYfbZVDlipDaNZI7pfvlPVWpb//iA7HKs/0lMMjXl5mDJe5t4qceIAz
 5e2Uk1qNGCZ205/6pzh87+HEzpmGlgvHip0vzlAN41V5acTE0o0sEfLH+Ar0Zgvc3q
 DKvC4pdoosfd+AtmO4C8DnAMtJvycS+9DJ79Qx9I=
Received: by mail-wm1-f42.google.com with SMTP id m10so6803836wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 02:44:35 -0800 (PST)
X-Gm-Message-State: APjAAAUPpc2dkuEibIBtSsxlZKedrOe/ceOos0qSPGiDJNfPPvqk+uP+
 t1GE8HZYfKVnmAcSO4JJVUsepVZZwEhCukXhwhLfzQ==
X-Google-Smtp-Source: APXvYqyeNAdVe/yqJLR6H0X+hoGPMP4zBD/FxKoWXql/TI0MpTRDK9n3nhyRYZYAox7MRIUl0lMPJapkr9XL/Aa5l2U=
X-Received: by 2002:a1c:b603:: with SMTP id g3mr5427492wmf.133.1581590673662; 
 Thu, 13 Feb 2020 02:44:33 -0800 (PST)
MIME-Version: 1.0
References: <20200203233933.19577-1-mcroce@redhat.com>
 <20200213092355.i77luefms23jkud2@gondor.apana.org.au>
 <20200213103444.GA700076@zx2c4.com>
 <20200213103851.d26zufgvivamulcg@gondor.apana.org.au>
In-Reply-To: <20200213103851.d26zufgvivamulcg@gondor.apana.org.au>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 13 Feb 2020 10:44:22 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu8XYoCLPN3F3BbMXt6JbbhBvbHvEiyJZu=EdLGxc6tcwA@mail.gmail.com>
Message-ID: <CAKv+Gu8XYoCLPN3F3BbMXt6JbbhBvbHvEiyJZu=EdLGxc6tcwA@mail.gmail.com>
Subject: Re: [PATCH] crypto: arm64/poly1305: ignore build files
To: Herbert Xu <herbert@gondor.apana.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_024436_616689_AFEAA75A 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Matteo Croce <mcroce@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 11:39, Herbert Xu <herbert@gondor.apana.org.au> wrote:
>
> On Thu, Feb 13, 2020 at 11:34:44AM +0100, Jason A. Donenfeld wrote:
> > On Thu, Feb 13, 2020 at 05:23:55PM +0800, Herbert Xu wrote:
> > > On Tue, Feb 04, 2020 at 12:39:33AM +0100, Matteo Croce wrote:
> > > > Add arch/arm64/crypto/poly1305-core.S to .gitignore
> > > > as it's built from poly1305-core.S_shipped
> > > >
> > > > Fixes: f569ca164751 ("crypto: arm64/poly1305 - incorporate OpenSSL/CRYPTOGAMS NEON implementation")
> > > > Signed-off-by: Matteo Croce <mcroce@redhat.com>
> > > > ---
> > > >  arch/arm64/crypto/.gitignore | 1 +
> > > >  1 file changed, 1 insertion(+)
> > >
> > > Patch applied.  Thanks.
> >
> > Probably makes sense for 5.6, no?
>
> No this is too minor.  Only critical bug fixes (e.g., user
> triggerable crashes) or build issues are routinely accepted.
>

Sasha Levin's 'AI' bot finds everything with a 'fixes' tag and
proposes to backport it if it applies cleanly and doesn't break the
build, so this patch is going to end up in v5.6 anyway.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
