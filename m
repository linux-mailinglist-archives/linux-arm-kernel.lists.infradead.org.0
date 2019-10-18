Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B312FDCF32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:18:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nZYRam0kL1p2JAPsOEdbQRkq0uFYIq7yzGpTX2M69o=; b=sX2XVMz83WQc01
	98/uQnuCwopcUbTWHvcTbIodHivYArG6seoZUWrmE9uP+8e+hNp1/Ap3fj95KtphKMBbNmqbvSxN/
	whmzwVCm5zIrHo7/KuBx6O6ZbO0ENpNYcbDWJQx4NKbQ7MJXS5VDw4TU/2fhXSiGtz2QUp9OUNCZa
	314Qan0tc0Pr87ECA39DpncM2+UmHNaqY7Mc1abhDni1Hs9XGmh9l5SK8JTTSSVw71HlFsvHZwIPc
	xWf7hmYu+PPBDgpSbM03mhh7jt6H/cDJ96fY7XF/ULmUA/i4ifjDfiTYl+Ati7/txtnb+Eeq/nDO7
	lXNnKRifIEA0vyMChSNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLXlL-0003cK-Ds; Fri, 18 Oct 2019 19:18:11 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLXl8-0003bC-TW
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:18:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id u16so5520269lfq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gfI0AJSthc554vKx2lGALI0At1GBVKK3lR5urVM2u5o=;
 b=VgncGr5yjc//ouu/7v1mSUHDd6fZju6z/Ht4L7uJcHz8C5ZjHqzHf/QU+HEdUYxEO2
 0wbGYwcxszbE4giQskHtZ5f0P2usEjfcHedLpFS+fuP/DSwO6J6N7ZCr6xa/ushP5O/t
 SIhcZZVoAesRsxU+OQYIUywvth6XYUmMSzw1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gfI0AJSthc554vKx2lGALI0At1GBVKK3lR5urVM2u5o=;
 b=dOWWGfwBi6Uv2DHftx1G78swy1P8XbL/P8u8x2cZdIN7qxGIkI/oKZqY+gx62hJ41D
 SrWFjTfP+DZhuxJseiQ5CqRBEdwsao1DqdqR+c5ZVD5O9Fft0Zjc+s0y6SGMbyMmD8mD
 vtGYCKicNmB60202yOAtqd9kYetkfwgBNHroI/DXqwcM8kzqUU80WtKkaylgoqH/y+IL
 C5gKOhrvzMIy3i+7FjdoYcaCkqPetHIKn/S+m2bHbNcdVaxAOViJ/XuMldUr0ynjYOq7
 Tj0SH3esWXHZD9kohzIaqpz3AjSr5xZUqX/Dy/l/hJSYoycDKuXCtUOSiJgCtfURa5VL
 7IEw==
X-Gm-Message-State: APjAAAWGebSWzud7LXaZMDHZAEzEdQxKURibjG2T+GNUZkI84I2eYPRF
 E3imrBFcZWZUf32WCG6qWjtyUUkrtl8=
X-Google-Smtp-Source: APXvYqxy2/XNSVddLpubGRQoSu/kN+DhsHMjlxgWI1LA5PXKuk8Z6lRBTQSNntf24mMxYs1JOykBTg==
X-Received: by 2002:ac2:52b1:: with SMTP id r17mr7003953lfm.25.1571426272117; 
 Fri, 18 Oct 2019 12:17:52 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id p86sm3181163lja.100.2019.10.18.12.17.50
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Oct 2019 12:17:51 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id z12so5503224lfj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:17:50 -0700 (PDT)
X-Received: by 2002:a19:f709:: with SMTP id z9mr7071645lfe.170.1571426270371; 
 Fri, 18 Oct 2019 12:17:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
 <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
 <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
In-Reply-To: <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 18 Oct 2019 12:17:34 -0700
X-Gmail-Original-Message-ID: <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
Message-ID: <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_121759_002858_5064ACEC 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:42 AM Will Deacon <will@kernel.org> wrote:
>
> Thanks, that's helpful to know for next time. I guess I'm most surprised by
> the discrepancy between the shortlog and the diffstat, whereas I intuitively
> expected them to be generated in the same way.

So logs and diffs are fundamentally different.

A log is an operation on a _set_ of commits (that's the whole point -
you don't list the beginning and the end, you list all the commits in
between), while a diff is fundamentally an operation on two end-points
and shows the code difference between those two points.

And the summary versions of those operations (shortlog and diffstat)
are no different.

So as a set operation, "shortlog" has no issues with multiple merge
bases. Doing a shortlog is still just a set difference between your
commits and the upstream commits, and the number of merge bases is
irrelevant. "List all commits that I have, but upstream doesn't have"
is a very straightforward and natural set operation.

But as a "two endpoints" operation, diffstat has real problems any
time you have more than two endpoints - when you have multiple merge
bases, you fundamentally have more than two endpoints: you have all of
the merge bases, and then you have your end result.

What you doing the merge does is to turn the multiple merge bases into
just one point: the thing you merged against now becomes the common
merge point, and now you have a "two endpoints" for the diffstat: the
thing you merged against, and your end result are now the two points
that you can diff against.

But the shortlog is always correct, because it just doesn't even care
about that whole issue.

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
