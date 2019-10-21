Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38924DEB49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exiD3E+52RJ8pbDRRPLi+PyA6b4Idz54SkiQ3NCUOUE=; b=iDo5ymNSJZVLKf
	SV5j7wPnPj59PzXevnYVxmsCtsb1iJuOsUmJ50xKMa/oaNxHYnS06sKfItIl5ikAnmEm4toGzI+GM
	IpEcdlctTRonWYyyfKnz4fkTAhKcBvYj2tqHG5pRIzRS48wtVLHlM4Vb4TvGLI+hpcB0+EZ2vOJaE
	oT04efiS2qZRp+96aEOThHYNWYMpT/BmSKdRodfk6nzMDtaqGpOdz/YXRRJZEUPcIab1UgG35EMxx
	DlAMLRmp5yODvl7aEdt3QSZRZAnIY7SpFwoA0cpdDE3r165qET+JtyDpzOXv8eKukgY0BPbJ3eqlY
	8Kn9TppxedArMB3Cfq1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW88-0001VJ-R2; Mon, 21 Oct 2019 11:45:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW7w-0001US-8Y
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:45:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id y6so3550273lfj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Dwxj+uOUwiu2R0WFfBHrgW9ls+QdQwTPDol7q0pKZ3g=;
 b=DiJhkOHHFUpKDOyxqHB4vaKmVpAstfvhXZIH4GkcCFzoF5QWbnyBOFNNm6UpRicVgI
 nEoYUkbP8FlO//n5TfoPf37YJpVoTBQsy12/8bfGZf9e+74Opqtm7XODV/VV7FRUaCYG
 SETbygzuap2Mr/iVlQcyZCqAWCkC1rtzVkHhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Dwxj+uOUwiu2R0WFfBHrgW9ls+QdQwTPDol7q0pKZ3g=;
 b=PXy1FK+ZMsBjI6L2P8nz1JP6xZlgNu7IVkq6WYnH8PVH21NXyv6IKzD9nitfAVN6eV
 BUiyXAsIT828kMsuafynrBqUGt8K2qRqsPyuUvJo1EexQiIKuKcol73mN0x1XK1fboPP
 WUgpcVbHYE0jBbIVvurRGziv6Nn8nNhdWtceo6rfwGf2A2BOw6Vytc7LmeNB86lY4DNf
 Plp1xwhCNMfrjG/KNtM1AYMWIdRjq1QdBgawKxv/tivqo7W4oEp7I1aRRwnSRU0bY498
 Re6rqk8gWDR5vZz4KHfGi3Xl7r37GNO7Y5byQfW+2gx3Q9dFj3Qfu22To99tPU8NAWiG
 1bpQ==
X-Gm-Message-State: APjAAAUGfY/Zapi2Ip1aDMMC81V8PFllsnHBDnGO6gmauz8gVP0Tv0lY
 B66V0QO3MgGE1PA0yPIqzIBnf/Lz7UOXLA==
X-Google-Smtp-Source: APXvYqy8m9bKw/B/BjQr+g2lE90myHhnO1bskCp/RMQ6bFnv0C6LmHkpr0J9nLnfCSOp7dj9I61qdQ==
X-Received: by 2002:a19:8c05:: with SMTP id o5mr14544909lfd.53.1571658328962; 
 Mon, 21 Oct 2019 04:45:28 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id q16sm6291470lfb.74.2019.10.21.04.45.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 04:45:27 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id a22so12971308ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:45:27 -0700 (PDT)
X-Received: by 2002:a2e:9848:: with SMTP id e8mr14847939ljj.148.1571658327338; 
 Mon, 21 Oct 2019 04:45:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191017234348.wcbbo2njexn7ixpk@willie-the-truck>
 <CAHk-=wjPZYxiTs3F0Vbrd3kRizJGq-rQ_jqH1+8XR9Ai_kBoXg@mail.gmail.com>
 <20191018174153.slpmkvsz45hb6cts@willie-the-truck>
 <CAHk-=whmtB98b8=YL2b8HzPKRadk2A9pL0aasmvgebhePrDP9w@mail.gmail.com>
 <20191021064658.GB22042@gmail.com>
In-Reply-To: <20191021064658.GB22042@gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 21 Oct 2019 07:45:11 -0400
X-Gmail-Original-Message-ID: <CAHk-=wgxm_w-BCEuBOFnRpTwQuCYwMtsDNz3cW0MDGEmQZTUGg@mail.gmail.com>
Message-ID: <CAHk-=wgxm_w-BCEuBOFnRpTwQuCYwMtsDNz3cW0MDGEmQZTUGg@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: Fixes for -rc4
To: Ingo Molnar <mingo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044532_324072_735AF2EA 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM Kernel Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 2:47 AM Ingo Molnar <mingo@kernel.org> wrote:
>
> I think at least once I ran into that and sent you a 'slightly wrong'
> diffstat - and maybe there's also been a few cases where you noticed
> diffstats that didn't match your merge result, double checked it yourself
> and didn't complain about it because you knew that this is a "git
> request-pull" artifact?

Right. If I see a diffstat that doesn't match, I just look at what a
non-merged diffstat would have looked like, and if that matches I know
what happened.

There are other reasons why diffstats won't match, of course. Like me
just having merged part of the same commits from another source (or
multiple trees applying the same patch). So it's not _just_ due to
multiple merge bases that the mis-match can happen.

> Most of the time I notice it like Will did because the diffstat is
> obviously weird and it's good to check pull requests a second (and a
> third :-) time as well, but it's possible to have relatively small
> distances between the merge bases where the diffstat doesn't look
> 'obviously' bogus and mistakes can slip through.

Yup.

> Anyway, a small Git feature request: it would be super useful if "git
> request-pull" output was a bit more dependable and at least warned about
> this and didn't include what is, from the viewpoint of the person doing
> the merge, a bogus diffstat.

Well, warning for it would be fairly simple. Giving the "right" result
isn't simple, though, since the merge might need manual fixup to
succeed.

The warning you can check yourself: just do

    git merge-base --all upstream mybranch

and if you get more than one result, you know you are in the situation
where a diff from the merge base might not work (it *might* work, but
probably won't).

You can play around with it yourself, of course. Look at the
git-request-puill.sh script, it says something like this:

  merge_base=$(git merge-base $baserev $headrev) ||
  die "fatal: No commits in common between $base and $head"

and you could add something like

  all_merge_bases="$(git merge-base --all $baserev $headrev)"

and then add a warning if "all_merge_bases" doesn't match "merge_base".

                Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
