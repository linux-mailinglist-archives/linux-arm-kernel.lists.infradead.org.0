Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0B3632EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvF4mSD4kSskiOFv4/t2FOgenwdgXmIp3LrCMCLCA3U=; b=ff1qH8CPcuI+vq
	NvCx+fsdkq6KOzYfQP7SxnK49Hl2EVg16PgdTnMlsq2X6zEfFjSA7IjTCN8pBd7ay1bVqF84h/j8h
	ssLXYluPuYNZVS3dv706ZiN1PQCUZnAGZcuaQSlAMyupV+A8piUxu908AGKcWMNCi/iOaVcjS0suu
	3j5bR1iM4oX6VA3zfw3mYPlFlNxInuZ2SInzsgWZzDaNGQxkm679EHE0zbxhSpcYUdyFcp7htyVrv
	HuMpBmLS7RQFfkNVdu09WMaSIq5WdopEy9RT/NyH3aInJM9o9RAQvsafVzWSrUp3bgtWgYBFevTcu
	XzyalbO3HQe1lhGgwYyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklgq-0003cB-Pu; Tue, 09 Jul 2019 08:41:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklge-0003b8-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:41:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so18747211ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 01:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KW4urHyn9lKTkE1GguMjzjUH4Z42XiBkXGp6QALBBzE=;
 b=Kz12+iAgKvNThqsgJb5ncahTCH39onCnTWNmtzIJz8N7M6yVJCHvKMJHqX7NMCYHJf
 mSUgKbRH2UsmFJwjAZsTdsyHkeRCerZVnsy1pLHUlPVdkTMtyhKinxm8SHrQvgAnx4hO
 fRnNUGP2SszVVIzqJRRJ9j0XKZNGzA202cCe+1Yx/2rsLfyYDFiy9dEfhTI8SVkT7omr
 BTbFn6bhEzZ9gEYs2dU4yCXPaPOvvcx2LXJalHx+DIjjLq9WvE20OpKPEpO/98wjuAdd
 i15huZwwlIBni6pnJNYBIqdnSk0wxWrypHLrxCVJS0vKCvH6RCWj/qt4cBG1aMVfkEUm
 rEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KW4urHyn9lKTkE1GguMjzjUH4Z42XiBkXGp6QALBBzE=;
 b=P9tjgn9b/UzDQtm+oiyWcpLF7C7QUW0vOX3mg0aVxMWsPImdyTek7t+GgnRmOEVA6p
 45yFFFU/HQmcVZ8xW3Y50RKMkfw3ASbVrTKyDlhwq/4rrx6aLlXf4hQGM/tjCkrSBSBH
 Th5NcHO4Roub+JP4U+ipXXnsYqviP7dtKxHUH9kQmS8lMiXXDpjLJREIObvXN58QyG4b
 XH+19REZkjs6xNijzBj9c4vQkdJxa7q6wJfH4tKWg5NuFcp8L9GRbGmyzQ9jBofsCb1F
 m6FtflQiC7jbU8CosUHncRmntqgwJNKJjC+ad9ZT6ZK+kcPrk5XritCs+pQgR5TIdkEO
 FUqw==
X-Gm-Message-State: APjAAAVeUPsh1Zd/CBDvW2X5Dhd6DVorVZvN5z5JQBR3odO1VG+/zvFQ
 7DwAJlI5D7pk9l1AvD+VTbIOH+F3ThCqEinMgtJfGQ==
X-Google-Smtp-Source: APXvYqw0jyVm13vCM2kziODAQ0A5OhPssA3jNapr/manrVR+U6kZZMvBVLPyYy6OTOyqEuhjHIFh+hTX4RVT+EaZ2VI=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr9976145ljh.69.1562661677756; 
 Tue, 09 Jul 2019 01:41:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190708203049.3484750-1-arnd@arndb.de>
In-Reply-To: <20190708203049.3484750-1-arnd@arndb.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Jul 2019 10:41:05 +0200
Message-ID: <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_014121_022458_5B5B43E8 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: clang-built-linux@googlegroups.com, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 10:31 PM Arnd Bergmann <arnd@arndb.de> wrote:

> llvm gets confused by inline asm with .rep directives,

Are the LLVM developers aware of the bug?
It seems like something we can work around but should
eventually be fixed properly in LLVM, right?

> which
> can lead to miscalculating the number of instructions inside it,
> and in turn lead to an overflow for relative address calculation:
>
> /tmp/cfi_cmdset_0002-539a47.s: Assembler messages:
> /tmp/cfi_cmdset_0002-539a47.s:11288: Error: bad immediate value for offset (4100)
> /tmp/cfi_cmdset_0002-539a47.s:11289: Error: bad immediate value for offset (4100)
>
> This might be fixed in future clang versions, but is not hard
> to work around by just replacing the .rep with a series of
> eight unrolled nop instructions.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42539
> https://godbolt.org/z/DSM2Jy
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I guess this brings up the old question whether the compiler should
be worked around or just considered immature, but as it happens this
other day I was grep:ing around to find "the 8 NOP" that is so
compulsively inserted in ARM executables (like at the very start of
the kernel execution) and I couldn't find them and now I see why.
Spelling them out makes it easier to find so:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
