Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9215079B49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 23:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1o1UkDFLTsvT/SblOwLwz94K5TK9IwQdRg7WKO+Z/4o=; b=Welk+fn0Fe9utb
	5Sd8CLa/ZeDSFp9E9QEpzqAfWDHtmcdZZc4xt8JD64o8v3AEdDimv1ynGMoRgX/RnlrNm/QJAWDiS
	hTfoaLPkh/HGlbunJuCQHuvFn0SkZKI+8HjGIpHujjOwndRhLoJz/kdtty8ZJuPN8OH8BuMl3AHh+
	nMjDvefGVFDtXuN+172n8IMyyT4LLljCYegIkLETRawoY51hcDZ713bslF3SXqLqJF4LdRX6/ztqP
	JCqMBo241/EAEZmfiZtHqIb7Vlsq0gQrIpw2qhq02bEOShwGe/85UUERRleFkh0F6czNf8w9hEHyS
	mjp7Or80DQ40GA5jpNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDLi-0007b2-Tk; Mon, 29 Jul 2019 21:38:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDLQ-0007a3-M5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 21:38:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id 19so28667876pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 14:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ffJPVi2t5CZt7uPM0vsbo1dd0NvZy1s8I6KyIoGzcjE=;
 b=iOpy2TA03/ux45iq9w/+jRy0u6F/UoXwYlXZsyvOqteQs4s9KEFi6OBtIWnPoBI+1O
 xu1R3g8t+mmf+vSeqzNwyomYwrx2bVVX7hMJk5bIaKIYFVD76AuSGLtguKn60Fc2KrLx
 18+55PzxR64uo2FQF34v2OEhBTHm77ei/wOkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ffJPVi2t5CZt7uPM0vsbo1dd0NvZy1s8I6KyIoGzcjE=;
 b=b3holEU4cv/DUE1Ngf/p6W5T97tjDO32UCcXVDjLUaFDtJOMWAAzkrtXehexCbznAN
 fQpkXeqmV62/oxckz31smeqOHh0lgHp2G5YBYfjbUQk27Z5RgRtkNNJjmGEbrRsTgh6w
 dTho2QkJiusMfeTD5VGlq+GjUdmRkukZrup9omk94U4V2tJakfGr9LHkHt/C6r317MMq
 7axQazRs9zFj2pz9FSkN3ynaCDV/SQU5iX5DTSUOmJb0luWyfYmfiz1Pp37cA4Rr53P9
 faZyceC9REGP1oNxRrvsVK8Zn+qL1GIlpALFEm3ERhimnONXsp0SJV2dO20/8Zrnjjdq
 A87w==
X-Gm-Message-State: APjAAAXPPPxToWfGTzGiKokhSkWWMu1lpsjtcGUappkyy9g9qcw2HdLP
 mUeon3hbi6LY/pCFa8OIuzLLdA==
X-Google-Smtp-Source: APXvYqy/lfeMAjQ7JSuWcw5bqLLBEiYdoT23w5fMb5Dh6Wy9vrzKdLjSLcoHHWPKAKejkDqJUCsNcQ==
X-Received: by 2002:a17:90a:2525:: with SMTP id
 j34mr117004170pje.11.1564436291843; 
 Mon, 29 Jul 2019 14:38:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u128sm71133157pfu.48.2019.07.29.14.38.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 14:38:11 -0700 (PDT)
Date: Mon, 29 Jul 2019 14:38:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5] arm64: kernel: implement fast refcount checking
Message-ID: <201907291437.78313B08@keescook>
References: <20190619105431.2630-1-ard.biesheuvel@linaro.org>
 <20190703134028.6aru52r2zd2jnpm4@willie-the-truck>
 <CAKv+Gu9bCuXxJ54WMt=GcsRhkbwn_jXnjwJGuopS-7V3dHipLw@mail.gmail.com>
 <20190710122117.kk5xgei56r7vfmmj@willie-the-truck>
 <201907220942.69F916657@keescook>
 <20190722171141.3cgmw5ej7p2caddn@willie-the-truck>
 <201907221024.3BC2ABB13A@keescook>
 <20190729172414.odpcqugvtcwjnbe5@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729172414.odpcqugvtcwjnbe5@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143812_803797_79D54AF7 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jan Glauber <jglauber@marvell.com>,
 Will Deacon <will.deacon@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Hanjun Guo <guohanjun@huawei.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 06:24:15PM +0100, Will Deacon wrote:
> On Mon, Jul 22, 2019 at 10:27:07AM -0700, Kees Cook wrote:
> > On Mon, Jul 22, 2019 at 06:11:42PM +0100, Will Deacon wrote:
> > > On Mon, Jul 22, 2019 at 09:43:54AM -0700, Kees Cook wrote:
> > > > (Also, what happened to the *_checked() variations?)
> > > 
> > > The new implementation is intended to replace the *_checked() variants,
> > > and the discrepancy in naming doesn't make any sense to me once everything
> > > is inline in the header file. Am I missing something?
> > 
> > I haven't looked at the resulting builds, but the reason for the
> > _checked() macro stuff was to provide a way for callers to opt into a
> > checked refcount_t regardless of the state of REFCOUNT_FULL (especially
> > for architectures without special refcount handling). If that is
> > retained, then all is well. It just looked odd to me in the patch.
> 
> Hmm, so that has a grand total of zero users in mainline afaict. Do you
> expect that to change?

Hm, I thought Mark Rutland had one (or plans for now)... adding to Cc.

But yeah, if nothing is using it, away it goes! ;)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
