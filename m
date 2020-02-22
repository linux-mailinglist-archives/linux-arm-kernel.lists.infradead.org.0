Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A9E168ABB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 01:08:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUrzJkFkw1UM9SYE2HMDFCCq1U1Y/R4XTPE2XO+pPdc=; b=LySnENqPDynxOy
	ctZNf7UdBjyCZFc5yrAHZxEWgfq1muNeT2FhvYOQlPKojOGpkJxC7IAm6w4FdZp/ZsaESNv9kn0+H
	+P81L5JnkH3p0b2hkl1DZhdOQkkPy1KTZjqwm4o/pI5kfi0BAtY503FQgYHnMO2ieMxdR65aLC/Yz
	sG30VgRLRzpThp99+uKmJaHKy9q7cfBbcZzazemqfN2m1Qav2/yl8/TMF7U3AD68VlVTfzMkt+r7B
	hI8Q6xGcZbJY1dFwwsk0FZscsvDJO6Le9fnMo68R/2hBnGRSLRE1zpqv4903CrFjgCUKhRrhzNagR
	TONudxyQ7MlMPykGvQBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ILN-00033X-Oi; Sat, 22 Feb 2020 00:08:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ILB-00032c-Gt
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 00:08:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id y6so4028191lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 16:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hTZLASrKaO6Lu2MZ2kRwzgF8PAll7uJUJBFH4TuSO0k=;
 b=Q0+ypkclrbDMqnAbtdLiAw4UgHHFj80CuJmseTHZvfOXtb1BSs5LnmvcigQzHvmi26
 vInYZNvVLDqswmmLqu35PaXa+dDNmIf4eDNiAAvnnqrHBt5DIRKxaDPgxZVSNIUE/NXH
 2p2Tybx+pwJKeOkZfVcS2rzrLhwLY0Nb6vugM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hTZLASrKaO6Lu2MZ2kRwzgF8PAll7uJUJBFH4TuSO0k=;
 b=rKAoQi/qKQdsiPd8H/fJogknGkAugMQgbdKElnpBnrNX7I5s3XsXjdxkJUGsT+ngdl
 XAm7qq0mR/9nUNfXzCIglRCtEVXXi7NloPppz9GR91ue4M3aEMT+5nydP34+RI+H5j3x
 i21Cu0H2KJXTsqBgV7mpTBb3pi7157mgmHxP3JFSeLFZTer2ij531wy20f/2TBw0EZh+
 LI7HpqIhx+2lktwCT8ncQu0yv9CykoDeulYD+DEpvGzzV7ZINTkC/HTbDJBJzjUFTKnQ
 kB+YkKvL66ZnBcW8Y/EqoIfoizcvaoXDkXJiBVF13XLdQeg/66YLFk9V6b7f2qeYBOXq
 thfA==
X-Gm-Message-State: APjAAAV9Ide1I2c/WYUgVWTxDp6OMDl1C7g2cbhPkVDAV/Hm39GDU0AB
 z9uY03kp0HwyqJ91H/C8x4it5C88qT0=
X-Google-Smtp-Source: APXvYqy6xQ2XRAdNEMAgz6b/bVJwZz3YiYDdKwBgg36nKRo1+Uvtf/unSPwV6yMT/FOecRcpdEIXeA==
X-Received: by 2002:a2e:a361:: with SMTP id i1mr23061380ljn.29.1582330093810; 
 Fri, 21 Feb 2020 16:08:13 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id y29sm2391114ljd.88.2020.02.21.16.08.12
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 16:08:12 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id e18so3959908ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 16:08:12 -0800 (PST)
X-Received: by 2002:a2e:580c:: with SMTP id m12mr23646052ljb.150.1582330092251; 
 Fri, 21 Feb 2020 16:08:12 -0800 (PST)
MIME-Version: 1.0
References: <20200221160126.GB19330@willie-the-truck>
In-Reply-To: <20200221160126.GB19330@willie-the-truck>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 21 Feb 2020 16:07:56 -0800
X-Gmail-Original-Message-ID: <CAHk-=wjyde11qnRQAMgibwcvNCd0bQX5chFgdu58tP0NPhnk_Q@mail.gmail.com>
Message-ID: <CAHk-=wjyde11qnRQAMgibwcvNCd0bQX5chFgdu58tP0NPhnk_Q@mail.gmail.com>
Subject: Re: [GIT PULL] arm64 fixes for -rc3
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_160817_570477_A246AAB9 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Android Kernel Team <kernel-team@android.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 8:01 AM Will Deacon <will@kernel.org> wrote:
>
> That said, this is core code and I know you'd prefer to limit the change
> to brk(), so the patch is sitting on top of the branch in case you prefer
> not to include it. If you decide to tweak it manually, please can you
> update the docs at the same time?

I've taken it as-is, since I don't think any of the solutions were wrong.

The mremap() case looks odd, with the _old_ address untagged, but the
new one not. I see the logic, but because it looks so odd I think it
might be worth a comment.

Not a big deal, and more of a "if you get around to it later" note.

            Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
