Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB32DBA6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 02:07:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFmkG4tcLEHXzDj0iallvla7rstFVfA1wKEllkwm2jc=; b=F1A9wdRLtU+oH9
	jxIk2xn6nFtITu+/USiPdVKPbqi0gNJkT75lGqip8FwXrvr6OpW+Zb8r/jz/ocT9hh9mQ0NLFxIpe
	+bq/I4XbERq7oiLO/rO1x+MU0dv1TPDm1vjYDYiMor3xmlUShGJ9gdeQ+s6JaIJxjRZaoD8bqOV1x
	g0b4Hv7R3gapLjvERpUtL6Ijst8LWx0BninXBaDqXG2Gff31b3Ti2h4c0kFRXpAmIMxFLroIlVNAo
	FkHo5YBAsHLdIcximVnHD0rAdQ9XmnGws7Fn46J1NVpSvvUsv7rLE6HKzBB8jsmEfAF5xfdfz5n3A
	F60+AQ3FMw7+5ah+Us5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLFnf-0003ff-Jz; Fri, 18 Oct 2019 00:07:23 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLFnW-0003f6-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 00:07:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so4372000ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 17:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k57WvexPDzWhZ12Of1tOHrp0702fGU2Gj8454jm70nc=;
 b=Ad9lRUGdbedhRZCYVLx3Ld+8Vb8YQ9pzptyJsMjKTj+qGH2s9TQhwWB0mAQQldc0zz
 Aoi1l0RHkbkMBHPFuO2iD4GUS7g6GpvYJF/+rvwqsR0GYO+ZbU8VOsL8jTdkgih+e7SN
 rxkRVhOwYaejpJHeojcMBN63yYEk4IJMz+9ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k57WvexPDzWhZ12Of1tOHrp0702fGU2Gj8454jm70nc=;
 b=Poz/ou1t1GZAJmVgAKBumVfhlXo5o+Fydiw/2U20nxuIx3SzStNecOG0GIh/yafJVi
 jwMLwEGlCmYB/Nbpou1RM9bJunpqQ92CwO1zB45xVADtvbqVOkArDMGRF2WCNXMPC3Mh
 MOfooIfqqOWIa5z7uBN0QxRvlh4ZwDPyeUr1nFMyrwcjotLUJ1iCEhQ6mQ7e5SRzV+6o
 6tK1DMxOkY8RojBFtKu9Ezn9C4rAYKGgT232D3UHI+kjCD0r5zqNMWPNmwQSzsJB9mWI
 a4EfCCB1VObPVw81DjqFhJ77Y/s4zDtQcxWFKQXQZhQDTTHSEgo5gLMNPR75JvoiEGEz
 4KcA==
X-Gm-Message-State: APjAAAWx0jH0+tGZXCKKWEHBglOKOgiiznEfYZYhoHwdeNOQadovm2Xf
 QMTCVJq2DWkzCratoonDML4TgL5v76s=
X-Google-Smtp-Source: APXvYqzGmfz/GeF/4qPrueCjeVBtOI+AbI8I9Uv5iJdwQIeU5IQn3AcgAwLX1OAR7ONvIhYtwhEdZw==
X-Received: by 2002:a2e:80d1:: with SMTP id r17mr4170134ljg.118.1571357232124; 
 Thu, 17 Oct 2019 17:07:12 -0700 (PDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id 77sm1638639ljf.85.2019.10.17.17.07.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Oct 2019 17:07:10 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id t8so3228642lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 17:07:10 -0700 (PDT)
X-Received: by 2002:ac2:43a8:: with SMTP id t8mr4026546lfl.134.1571357230358; 
 Thu, 17 Oct 2019 17:07:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
In-Reply-To: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 17 Oct 2019 17:06:54 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
Message-ID: <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_170714_786270_0214B671 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

On Thu, Oct 17, 2019 at 4:43 PM Will Deacon <will@kernel.org> wrote:
>
> Note that the workaround code ended up being based on -rc2, so I had a
> bit of a faff trying to generate the right diffstat for this pull request
> after merging that branch into our fixes branch based on -rc1. In the end
> I had to emulate the pull locally because I couldn't figure out how to
> drive request-pull correctly despite the shortlog being correct. I'd love
> to know what I should've done instead.

You did the right thing.

When there are multiple merge bases, a regular "git diff" doesn't work
since it's fundamentally about two end-points (well, it _can_ work
almost by mistake, but doesn't work in the general case). So the only
way to get a "proper" diff is to do a merge and then diff the result.

That said, I also accept the output of "git diff" which will then have
a lot of noise from all the _other_ work done between the two merge
bases. I can figure out what happened, and do my own two-endpoint diff
and see what happened, and still se that "yes, that's what the pull
request meant, and that's why the diffstat is garbage".

What you did is the "good quality" pull request, though.

In general, people who aren't doing fancy things with git should never
get to the "multiple merge bases" situation, and then the regular pull
request logic works fine.

And people likme you who are doing multiple branches and know what
they are doing are also able to them handle the "uhhuh, I need to do a
merge to get a good diffstat" situation.

            Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
