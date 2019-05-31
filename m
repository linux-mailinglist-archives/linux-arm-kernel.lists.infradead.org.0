Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D0E314C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 20:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+Tl7Gw06da0TcVQlALiYyUX36ccw6bf2P7vDOxrN1o=; b=PdVxxDZvW0z1xh
	C49oGnPQ7JJc0ywzAnzoqx4w6eU8p2P6MNwMUhaPV44HEIM1P5gKp1J5+oCbc9NgPiilGKTRVzq+P
	vmEfvL3oP9i4SPwSwL7t71nHsXycyMAtt2eqqnK1EuASFy20W79aRVs/MmWRbp4/aITXuJW0R1wbv
	D+ZgsvTLassInDc+UdFY+UX4KPDvc2hSltpxH+g1lgTM9rgxtxmCTzrHT7mAZG2+dvphlqwd9TzWg
	ybdT4b79qVAwRbAxRIuQOT3MsBGR1YJpp5Ch8V2zTnLUrQOF8QpLUZQdkHfcXFrVNxrHDefdPjazA
	KymZ14S1Z6M4PhBPFHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWmKW-0004l1-MP; Fri, 31 May 2019 18:32:40 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmKO-0004kC-O5
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 18:32:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id a8so15909792edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 11:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/qCEAxJby+Q3JZ8llKzwy+sZNSav6qCCM0ocEIgzH0k=;
 b=pnA32Q//XASMsJVTAIORwQ21Lho5quheH7a5SypaIQCMLMIGfEoFksi/ihA7ieW7oW
 0k2RRAe8q6vYgDPEe9tILYVo2DQ17b2LlwcGJ4Z2KokwZlydXvUaQ4jlSRyQsUf5qWtf
 BgR8MOc3fktLlLPSQz4/QtCmnYQc0IZAx1EI5CCqgDIpT5DiMGImyQaLU5Tugy8pCta4
 6mTeWQBBi5vm10k9BzI/xPMw/sV32PS7rBtcjVDxC+pM94/USalh2aDx9kPucMWBKsDn
 vYE2L1T8UAUjMXP5KyfJOvizbZ2vnogz3af3NAdB8nYpGXxKuh9tD6fzhmQcGysydUXi
 c6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/qCEAxJby+Q3JZ8llKzwy+sZNSav6qCCM0ocEIgzH0k=;
 b=bff1GUbQ28swPbUCHgWDUdVlvPAjH9hekMn2Is7n2nRfYu/Fi0p30yeSxKmTADlles
 PE/Lk1H60pi5gTvnS0nFN9KThqEOUYUwS/RS0ehWD7V6/zxoUIdELDShH8OfXYwVCsrz
 CfIUZJkzVvtOgXl0apCHz1Him+LqmnuSq9UgJbV5kG5bivSqCUYXvVxS66pIIp4P/dOd
 LPD+gw7C2ucEoj+ig6vCAhWOcUwISlDBsOmu7ixAa1MgXByeBXLy2Pzs+wK3Zc3ZzCOY
 4wy0qL0n2zXgI4AkSsj3cGofPb3bxs83ebAkv44GpNErI2BTnKbpGC1KF+y6ZghgvstH
 rl9Q==
X-Gm-Message-State: APjAAAWCApTiRXCZdvi+eDihuPC8TqH1RTAdkztSBXVxVjkX/X9f+ExZ
 KY0dkEj05mssmPrg3qFFSR0=
X-Google-Smtp-Source: APXvYqxfLxURqU5ciVrR3TSIjSt8BDjYXtDZo/7u98PKRRpTcl7yXsUg4F/tkPwh30o1QhOS6CWM4g==
X-Received: by 2002:a17:906:265b:: with SMTP id
 i27mr10809987ejc.147.1559327550493; 
 Fri, 31 May 2019 11:32:30 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id n8sm1111182ejk.45.2019.05.31.11.32.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 11:32:29 -0700 (PDT)
Date: Fri, 31 May 2019 11:32:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
Message-ID: <20190531183227.GA34102@archlinux-epyc>
References: <20190528235742.105510-1-natechancellor@gmail.com>
 <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0a0hMsZDkqKsfsyCWpdvDni72tjAxCz2VeAaU56zqrXg@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_113232_778464_2C2BFEE7 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 10:05:22AM +0200, Arnd Bergmann wrote:
> If I remember correctly, we also had the same issue with older versions
> of clang, possibly even newer ones. Shouldn't we check for a minimum
> compiler version when building with clang to ensure that the code is
> really vectorized?
> 
>        Arnd

Even on tip of tree, it doesn't look like vectorization happens
properly. With -S -Rpass-missed='.*' added to the xor-neon.c command:

/home/nathan/cbl/linux-next/include/asm-generic/xor.h:15:2: remark: the cost-model indicates that interleaving is not beneficial [-Rpass-missed=loop-vectorize]
/home/nathan/cbl/linux-next/include/asm-generic/xor.h:11:1: remark: List vectorization was possible but not beneficial with cost 0 >= 0 [-Rpass-missed=slp-vectorizer]
xor_8regs_2(unsigned long bytes, unsigned long *p1, unsigned long *p2)
^

So right now, it doesn't look like there is a minimum version for clang
and I don't think adding a warning for clang is productive (what is a
user supposed to do?)

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
