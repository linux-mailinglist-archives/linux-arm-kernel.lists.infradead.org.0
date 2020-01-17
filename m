Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C00141111
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnzHITer/MM74CWfv3W6FVMLSPsnOsal8lZymao+WJA=; b=SzkEQotU9AZjOt
	qEzOaDmCtjXcydLQe4CdXKW7+gGXLDAfuea+r4o04m88wCWY/qaaYNiJMC9Wi4gj1OWaJX+chM5fT
	iIucxihc/5B2Yh6U827prSyoAAyeKxQ7rutLiM6KJKEoKRGeYAXvE10fg/HcCo5E2ekJoFJ9fFwZA
	et03VW2Omy7id41B228gnd8HgUcqRBtFN0LIBvJvUA8p8ESLoUI5KnWRBREAkTHiPA5L/syeBTsK6
	rwbB5RX9M49FrpPEv8YMkL9+830BB10L0cJLynovA6Sv9PL74zFkk8uHxYoIUEPCXWdmku+6Non9V
	DOaiEjviDqzRHCX9p0KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isWdK-0001aH-Um; Fri, 17 Jan 2020 18:46:14 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isWd5-0001ZL-AN
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:46:02 +0000
Received: by mail-il1-x144.google.com with SMTP id c4so22098951ilo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 10:45:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=420/qCDRks1KhueK56gSNAOoSvZ7SEAp1yLAyd/yyFM=;
 b=yCgP2tn8pQLxdsNWd/XN2QqX2CXdZFqGPPFyzspWIdPa9qUzOoE2kzJU1IE0tUdWjL
 4BXq38kFJEGC3fc597AP4qMsw2oTCVb8ODMgBngH5myjiGjB0NOgakVVrF8qkT1jXQCn
 lcO05570Ul45oz3t/HUGQpCHaUiWQZDkcmiWSn7H3n69c4jvAgrogYO2eMwdWaOVw7ly
 kSRJDVqj9ChZDf6ytvSZIzdeVpVR4iAZVONpFwOkRNCMuH4elY7iGxXBZMrL6nTdRyKB
 41MQk98RiEplwZ7uLSd6xiVgOh81zfAfG8v/8tKttjGBjQHuuobYT8OKSbu06Jjjy3ih
 8PYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=420/qCDRks1KhueK56gSNAOoSvZ7SEAp1yLAyd/yyFM=;
 b=J60gto4EtxYuPXYZSKvoiIsBWYRSCM3QTx/zbouxujim0wH/szOE0UPq9835IT7iiK
 BKg3yJxVb3Z9Oj3tm1xwFhZhQcQQQEARxHbf5723sdHgy4WQEHsdTXq0JI9Hj4Gl+bwJ
 QhpUEbv0bnjHyYDylF+14udx/hLh0mXr/tb4bzkhgD7JgQhfAv2WDhRpHreD9Le2nPAJ
 RtHGNEwp1OxBfkyZjtPdEsXmn2EfvwpyUoty/4GGGynNc9hXaDY6CVn1OvRFhXSxTQc0
 zfEPruvthr5+W3y8hhgAKKjQw5Wue4MKElZkfeGMlGL5tTgEJgj0FI3YFEPCvR4ry4ou
 6Zlw==
X-Gm-Message-State: APjAAAVk/dCy+dJO0YGWnvnry9c36qCtKrGJ4vduPFWq9W7oh+A94Ozm
 I1nFe1wFBdXPW+U4/69nB78eZ9xkVs2cLihDuQJ2cA==
X-Google-Smtp-Source: APXvYqyD3T0zxOFN2wcBKJ8V0hfXKMNOlDpYBDr5FI3wwBYODV4MtVy/MotlaHesUUq+1J5hAlsR+yalSwQOTCFwfJk=
X-Received: by 2002:a92:5d03:: with SMTP id r3mr3908789ilb.278.1579286757291; 
 Fri, 17 Jan 2020 10:45:57 -0800 (PST)
MIME-Version: 1.0
References: <20200113065808.25f28c40@canb.auug.org.au>
 <CAOesGMifHn6DbNgYm6YUbdKjSL5rNgdWrq+HX9dEusrOr9xX2A@mail.gmail.com>
 <20200113113837.130c3936@canb.auug.org.au>
In-Reply-To: <20200113113837.130c3936@canb.auug.org.au>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 17 Jan 2020 10:45:46 -0800
Message-ID: <CAOesGMgiAp=xjpyvXSmuXL493Ki3DvWXf3N5uncP3s08_FpvuQ@mail.gmail.com>
Subject: Re: linux-next: Signed-off-by missing for commit in the arm-soc tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_104559_360106_4D6EE046 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Yann Gautier <yann.gautier@st.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 ARM <linux-arm-kernel@lists.infradead.org>,
 Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Sun, Jan 12, 2020 at 4:38 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
> Hi Olof,
>
> On Sun, 12 Jan 2020 11:59:58 -0800 Olof Johansson <olof@lixom.net> wrote:
> >
> > Thanks for the report. Time to automate this at our end, we've had a
> > few too many of these slip through all the way to you lately.
> >
> > Where do you keep your scripts that you catch these things with? Do
> > you have a writeup of the checks you do? I should add it to my
> > automation once and for all.
>
> I should export my linux-next scripts as a git repo, but I haven't (yet) :-(
>
> Attached pleas find check_commits which I run after fetching each tree
> and pass the changed commit range.  This, in turn, runs check_fixes
> (also attached).

Thanks for sharing these. I'll add some slightly edited versions of
these to our soc-scripts repo and reference this thread and you as the
original author.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
