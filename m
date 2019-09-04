Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE5BA874E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 20:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2xgLD6mH1rWr+Z/GninAmZXWXDOjYcJH1VS48KlgK4=; b=Sx15RmNZL7xDy4
	ly/q3FlVdv3GzuTUI6cvLGItsKY8Av9UEteLABiDMzQz36BzLGi+hcXdOjZm08PyH7rkvwJZgWJom
	CmyUQb6H0KoYvXVjFBCMvCU4iXpCiH2h8sHl0J6y69n4iq9Jl1fU8LPy+Io98hZi6jkyrdX+oEYtF
	uLucxxFXVH7Gtq3xbjOgBQ3p11lgo/P2tG/fBdb+yaIFB4SPtc4pIT/zE1JN2tBABR1A/s279z90c
	J1vPgFOPxP2yha0C3wEZqVFEXyGFxd2nt0Jd84c1cTq4xe6PLISZIobcuJzSRki6XLieHDhQxdbLS
	bvWIKkmiucGHLQm+/rYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5aHZ-0004I1-HA; Wed, 04 Sep 2019 18:45:29 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5aHQ-0004HN-S4
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 18:45:22 +0000
Received: by mail-qt1-f196.google.com with SMTP id k10so15344910qth.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 11:45:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GzPtnoZKBXej/mlgs8PtbOknEj9n3Us0gAfYmyqSvjw=;
 b=i6QrVqtuPvgMMGsRIFbY5jPX7eMmCh45bpHO7Uv5DQXWEa2zrXK84rICYsnwGus3k8
 2Sdse1S7z8oTRD0ocO8vn8X+YyvgRgfU6O/72q8W4iUQJqbWIU/EGCTfDOOJ5rJqoK4d
 NyujnDStmMgrXIJXM58GVi+SdN13zP0ZNXfl8vgZqiGmLDcZ9xjIdFTbhivOEh7yxYaA
 6+NtSVNYEEMnBCYL+lZ7NW0NEbuzC9L99Zt4m5EN4PwEYwky6olCM/02v8+qEZH4Er3A
 PKDNVO+28FAwmQdHj1GBt17MpiuSxnDiKxK8aa/BDUnzgf8BSJLLXuj/S+o79wGgGp2F
 L7yA==
X-Gm-Message-State: APjAAAXjLCLSq2JW7a5g9iQwyWGkiPP2xWinZ0tWt40vVsRpmivOMNdY
 YFBzNQQe2YFP0iKv32GCG1kGaG7ktPXiejNB48UQSA==
X-Google-Smtp-Source: APXvYqx7VEb6qlalpWvOqPpVbV9Zbwk6y655ZqijP1UIaRUoQEo5Zrlg2JVRl5ZF1ZBXcdAB8GtncAVL/LandToRpWI=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr27338812qtn.204.1567622719308; 
 Wed, 04 Sep 2019 11:45:19 -0700 (PDT)
MIME-Version: 1.0
References: <1566875507-8067-1-git-send-email-santosh.shilimkar@oracle.com>
 <CAK8P3a3_NWWBFrpNpbPH9+47Segi_EaYx2jx5jvPhYJJqR+a7A@mail.gmail.com>
 <3af4da24-2246-ff94-b83d-2b6ada4fc362@oracle.com>
In-Reply-To: <3af4da24-2246-ff94-b83d-2b6ada4fc362@oracle.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 20:45:03 +0200
Message-ID: <CAK8P3a2cM+DCGX80otq5y37qMPtuM7jz=Gocz41b6=fOkEiXQg@mail.gmail.com>
Subject: Re: [GIT PULL] SOC: TI soc updates for 5.4
To: Santosh Shilimkar <santosh.shilimkar@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_114520_912613_51EAD1FC 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Olof Johansson <olof@lixom.net>, arm-soc <arm@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 7:35 PM <santosh.shilimkar@oracle.com> wrote:
> On 9/4/19 6:13 AM, Arnd Bergmann wrote:
> > On Tue, Aug 27, 2019 at 5:12 AM Santosh Shilimkar
> >
> > Do you have any dependencies on -rc2 in your changes? If not,
> > could you please resubmit after rebasing? I can also just
> > cherry-pick those three commits if that's easier.
> >
> No dependencies. Can you please cherry pick them this time ?
> Will use rc1 for future pull request(s). Thanks !!

Ok, done.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
