Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416BB141196
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 20:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7jlM/gt0gzuAjg9wnKBhLNduYVD4a5TnSY/0kj85aA=; b=Lignt23RjeuBdO
	ZjSX4uKq8zcrDPl+EntnQj9R2ETQcDO+Bzs/GTF2cw9GUD/oAhfOpd+9gvsPl8NZGPHvV51/LHk75
	AxNopZMsWPgy6y3cvvB1EhtPAPn37WIw/uP5H4xbbLw1UK8K7uiqilw7XGg9fCVVBLd0HH50pN+9T
	lRujWeWSXNEMegPNRAdtknz9khKlkFcB5DT+Yuw+Z7MlPVXixmircMTHDtRxHWWrxioHqjrUmOKaB
	edG5cei6M0O8061+ZmoD18ubluIWav7gHyYqw/Hoe9mj+DY1ejvXmtku+Z1ivuzxMnFgit1/HITmF
	HpS2KTvbCY4C5vcIjy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isXD4-0001bT-9m; Fri, 17 Jan 2020 19:23:10 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isXCw-0001aq-TK
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 19:23:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id i11so27164258ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 11:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e2vu/lUJwux/k4RdZ1tPxjjQtt4V6F/TAup6l5gSJnc=;
 b=vh2gbirwvq1DiMOuPyijgWfoO8nnHX6vBOHLiN4q0Ia2w8SCNnynpI7hTEqA3ytp/k
 Ba7eAsmYyijOBlgUtqrxDH9zl7pl61QpbAXj7KKwjEDTFSpVk5BzqYGJMnEZDUSA5j9O
 Eb9W78pEi6Gr+VpoRKjAqtWz3Sr5dYTX8ZoVaPLTgScnaZ2bB0xT4kN1g8LUzx0o3cA/
 8nJ8AJHHYJpMYo3YjwcuE/GOhDFMHPy68yA4t0HAzDe+eSa/bLi7u67jcsV8xWyTmjxo
 1UUtycvO1RVlMCewnV7qxEe1USyt/7iAAaPACa5JdOjrqxyQ8ohcOzyJhQDQW4tE/Oi0
 rJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e2vu/lUJwux/k4RdZ1tPxjjQtt4V6F/TAup6l5gSJnc=;
 b=gsnk6YRMaqfnVX5rAK6Fygu4Df2pa271LlcWrjaRxYWQuk/RDAZhU+RDMyiFzAQuED
 2plLRbfwUKokDzpmpEY29py9eeK92BlwfNyO/0tKjtDzfJwRphqmL5/7Hg/TRAflvoBi
 EnSEL05/KqSEF4m6ydk3mFxPW1z1FLfLjuXO0oKL6midFSVQ5QQmfnov9gZvf60EVMZn
 bIbGtvPGYs9TB12EKTPkZp+Stq5Mky+ioGd7gMA9xe5250F0wtPDj+0AGHUJdIzvb5de
 fNC0Z/pEJQq104ZvmL/KCS1zk9sIwW7I4rV1QwxSVFDBfse52BLetKMD8w6Iq9MgFvl1
 +zoQ==
X-Gm-Message-State: APjAAAVDpFZ0gFx6d5mVOg02kdkeiKag5m0Ott28dTMltr8N3DV8BJdO
 CtV/NsfFiiebpxwd142RvtjNuTsGZru0LEr7ZfayEg==
X-Google-Smtp-Source: APXvYqzzh3ttpG23e1so0Co6lB12ueWkyIT4XvJkmwX9WC01HJ8uAzVg4UxNuFWBOM6ZAbUOR0kb3PC5Ljt4y1Ll5Ig=
X-Received: by 2002:a05:6602:21c2:: with SMTP id
 c2mr30095251ioc.278.1579288981727; 
 Fri, 17 Jan 2020 11:23:01 -0800 (PST)
MIME-Version: 1.0
References: <9b365e76-e346-f813-d750-d7cfd0d16e4e@gmail.com>
In-Reply-To: <9b365e76-e346-f813-d750-d7cfd0d16e4e@gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 17 Jan 2020 11:22:50 -0800
Message-ID: <CAOesGMgFXQzHRQVQNwZU7-jO=eqWT5Dv82RRicMP-dKXwbTfvA@mail.gmail.com>
Subject: Re: [GIT PULL] soc: mediatek: updates for v5.6
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_112303_010868_CA5F16DC 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Mars Cheng <mars.cheng@mediatek.com>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jan 13, 2020 at 2:18 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
> Hi Olof,
> Hi ARnds,
>
> Please have a look on the following patches for mediatek soc drivers for v5.6
>
> I includes the stable branch v5.5-next/cmdq-stable which should also be merged
> in the DRM tree. I'm not very familiar with providing a stable tree, although I
> double-checked that in the pull request to the DRM tree the commit IDs are the
> same, I thought it is worth noting.

I'm a little confused as to how the dependencies are expected to line up here.

Does your non-DRM contents rely on the DRM pieces? If so, you need
them to be based on top of that branch to make sure they are
bisectable, not merge the DRM branch in on top (since a bisect might
land on a commit before the merge).

But... I also don't see how there's any actual dependency here? There
are a few cleanups, the DRM branch builds without them, and the branch
when checked out right before the DRM merge in your pull request, also
builds.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
