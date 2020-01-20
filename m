Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E397E143224
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au9WaOXjJOEGN5D/SA3zUUbhhWyWQICanzNExYu2j/4=; b=HmZSYJ14yMGlYb
	jc2UDAc/5pdcUP3eUrYA3xnwUktjlwlka+Rfsym/+uH0kdEsPieIN3g7N5Mh7zZrrOMIuP7oEAtj/
	EFl3HryvBdjXvYuFbSfdUUWt8GsTwflUjYCif8mEaDTAjeIL+eBSOrsTS8LmCKJQjcHDwP3iAZcFE
	wkbo0tcHe3KIoSLN4qPAG327zP1rl7jCfrCusLlpmTAiZHjOBh0j/7kFcZJ3Mb9Wy7TGTMgGggFVu
	EDf8ChU0xKn3aJhedAesydBPdeVr/WAoLY+/M8FbUpH1di8uHNGm/cBd4rDZcndGpbpotqxh4/A0K
	E5+fW6/DrlK0diCzwiLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcgS-0000aY-9C; Mon, 20 Jan 2020 19:26:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcgA-0000Yb-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 19:25:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id i7so219103ioo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 11:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9bMt15tcXE4PE6qNXyYSET/eEWGyq0OaCNeBHtTvX4o=;
 b=BfSP3GbX71o1SHhA3EFSfMg+GZVaP73XFsEmUaUSwfO3OpnuveGOVJyWzVyYd/MaOF
 c/MsFzArRoclKltktpEVFGDeF7iPcmYEOBsZ+xL4TWvN9Kv4gux+GqDXfyv6SxxNNDd+
 rI8B7t9jh2Tk0f2XZMH62tqkLvhS7ObGiHud6yMUW79P75Fp5ABl7dBLw2vy2tD2nKw5
 gmpiCJl6d2PKMkHLDVI8I54IQeKrxEF+HMR6yuZKg1jucGSj9VqXvFGiDaCZRlt3Gs2d
 9yCvPDPFrV+lPekmbwxCwVkzoXooHZEMgoPToZ5VkuWGPLU3Kl/nJmWI8iH2G5gh9xTP
 Prdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9bMt15tcXE4PE6qNXyYSET/eEWGyq0OaCNeBHtTvX4o=;
 b=pTMA7yhM6hhiXewZ6HC+6pJBwiT+l0Djn4oX+d9CO5mafwGXtgjr9bxHmCvikXdO2s
 U/0X8wa2JlEWAeAD3Boc+Rq7wkUQpDG79Ne41bflAD5bPM8lP2+1XA3SQ5TUWYL4IZdA
 h66mtxw/7bcIe7uypOIuCJEyddJDy6Ia6Sp8rne/fEQaHNMvbWODby3djWhzEn/2qWSc
 3jYVnrBVACJ0kD9sh7XCuuQ7H6Ag9BNiE1Lol5+Qq79r+wmfV0PLAhRIbVeaUaU6RsSG
 f8j0rImAAjqiGjqVcbzOVYnhylunjtaPmW98ouqihlYWeBy2MkjyHr0br7qwWkNpMUs3
 wQ5g==
X-Gm-Message-State: APjAAAUH9BRfq98aX7vHo+e0pUEWa2CYJG7n0w0TTG8f4rSZjhfFeCHc
 4vRD0+Td9eX4f9ER7SWCFPpMZLWJAYvCOc/ozLHQ8A==
X-Google-Smtp-Source: APXvYqwP3SdqgZL0L28y5AAUef6aoJgxodib4PEZiTX3urKp74wX+5wZUuZeJp8kPylinMmxtaotG9Jkl5w2kpe7yIk=
X-Received: by 2002:a02:8817:: with SMTP id r23mr465906jai.120.1579548338589; 
 Mon, 20 Jan 2020 11:25:38 -0800 (PST)
MIME-Version: 1.0
References: <9b365e76-e346-f813-d750-d7cfd0d16e4e@gmail.com>
 <CAOesGMgFXQzHRQVQNwZU7-jO=eqWT5Dv82RRicMP-dKXwbTfvA@mail.gmail.com>
 <18fa6900-1862-d23c-8453-b7b85cac2ab3@gmail.com>
In-Reply-To: <18fa6900-1862-d23c-8453-b7b85cac2ab3@gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 20 Jan 2020 11:25:27 -0800
Message-ID: <CAOesGMgReoumBfqUX7N9aP06OomYiO0Be0Wp67FMVi3UVF1bLg@mail.gmail.com>
Subject: Re: [GIT PULL] soc: mediatek: updates for v5.6
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_112542_581363_3F5C57B2 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Mars Cheng <mars.cheng@mediatek.com>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 CK HU <ck.hu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 1:52 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 17/01/2020 20:22, Olof Johansson wrote:
> > Hi,
> >
> > On Mon, Jan 13, 2020 at 2:18 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> >>
> >> Hi Olof,
> >> Hi ARnds,
> >>
> >> Please have a look on the following patches for mediatek soc drivers for v5.6
> >>
> >> I includes the stable branch v5.5-next/cmdq-stable which should also be merged
> >> in the DRM tree. I'm not very familiar with providing a stable tree, although I
> >> double-checked that in the pull request to the DRM tree the commit IDs are the
> >> same, I thought it is worth noting.
> >
> > I'm a little confused as to how the dependencies are expected to line up here.
> >
> > Does your non-DRM contents rely on the DRM pieces? If so, you need
> > them to be based on top of that branch to make sure they are
> > bisectable, not merge the DRM branch in on top (since a bisect might
> > land on a commit before the merge).
>
> No, it's the other way round. DRM relies on the four patches I took from Bibby
> Hsieh. They are part of v5.5-next/cmdq-stable and this branch was merged into
> v5.5-next/soc as well as in Ck Hu's DRM branch. My understanding is that Ck Hu
> sends pull requests to the DRM branch.

Ah, ok -- in that case there's no need to bring in the DRM branch to
your contents here, they'll merge them at their end.

It doesn't do any harm (besides adding dependencies that aren't
strictly needed), but we usually avoid doing it.

> > But... I also don't see how there's any actual dependency here? There
> > are a few cleanups, the DRM branch builds without them, and the branch
> > when checked out right before the DRM merge in your pull request, also
> > builds.
> >
>
> The patches add some helper functions like cmdq_dev_get_client_reg on which the
> DRM branch from Ck Hu depends [1].
>
> Hope that clarifies your questions.

Yeah, ok -- merging.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
