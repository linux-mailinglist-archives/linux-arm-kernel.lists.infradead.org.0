Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07F3A3C19
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQubalrK03EaqjJPFG0Qx95fbcyubGDyMtCDnADZswY=; b=oMkhnu2CkT/ouF
	i1tvC4CtiTn73w7ZPuCcWN4O2DB9qXZOAJe8lNBfJ+AVqpuaOnqwJRGSkyFNfOYJDECRUZJJvqm9x
	ZprQ4ttsHPxGjzoCyhdfkYmAg2/K7Vx0+dizsFl7fip5H59YDwwj+bwZZE/OiQBiIBP0XeY54paol
	q6V9tmpah5/3klIvoQQYSQ2JvIPNFKZMYHH582CSxISHUvOzHzuANPvQgxFi8/5capOuQYzzsv5LB
	WRo9J7SpaT3wxA+m2vwL1Dpeod/wRuZ7WXTHkpTrYqofJu6ckbG3YfOvfZBxfQp/kNM/z5vST0BJm
	rJcRJO5eNCcPImIX5ARQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jr9-000817-MF; Fri, 30 Aug 2019 16:34:35 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jqx-00080U-Sa
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:34:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id l14so7044016ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IjdkwsKSf2VRq5W1pF0YFvlLHvkAKLdWUUMauCVdd1k=;
 b=cZ97VWp463OQmkWYxTJ3976yRGFL44HW3ecfvAYbV7yurzSFFe5/p6MB3LHoNqdarN
 R/fxSaFNSs360fZmHMPWTChJym4lYPeKwQcycWe+7oBNP0/w5DXo7BCLGzCvzSMeRcI0
 PMrJnck7KEGRpprtR2Wfi/laL2lQscD73tsCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IjdkwsKSf2VRq5W1pF0YFvlLHvkAKLdWUUMauCVdd1k=;
 b=Kbh8HQFFL0polDj34x6oX9SPFXdzILUan3jF5ZKaHvwrNTuu4XI4kJwFxgnvKHAHKY
 ElmBiQOaob0TXCbRy9mRSZnQoNRLonRUZozlgTneGLnrgtHxNyhU9vTyCSUN/HGAtVxr
 zW57lt9wX9XLiyLd8DWcVaIAsCFZOwvt/zCAsgjcanbXFo/6D7Vw+vQlrf68/7+vuCnd
 sTMvVjPNWYgeVUEfyBmVObslUYSvDs641uZk0B1ZRBb5shdIx3bsP5yQTnOMCDfL20Go
 yRmxgCsxu+f6bsiVayMJo4Fq54u+6mIoMs1EKbhnOAkYDAmLGvVR7PK1QlhstN6SIRPy
 vy7w==
X-Gm-Message-State: APjAAAVKhRnamZJ6lp6HpeCVufKUNsbj328p0KCBBDkoqTfaVlndH74m
 8PPvGIPpaFCwlIYhrxcRhgMtlDDsoCQ=
X-Google-Smtp-Source: APXvYqy4E8uIb+2z+kMTcYezrDv4kRE55MGQKhN+difzV8zApbeKqvbka1rR9AOYVptscVrnEbNdEw==
X-Received: by 2002:a05:651c:1023:: with SMTP id
 w3mr8638776ljm.94.1567182861272; 
 Fri, 30 Aug 2019 09:34:21 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id r16sm922824lji.33.2019.08.30.09.34.20
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:34:20 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id q27so5788644lfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:34:20 -0700 (PDT)
X-Received: by 2002:ac2:4c12:: with SMTP id t18mr10064627lfq.134.1567182859940; 
 Fri, 30 Aug 2019 09:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
In-Reply-To: <CAK8P3a2OZPybUQ=2xXcF4Qft-Gpe3a1mvgPncJZugETnaOxsvw@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Aug 2019 09:34:04 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgq71zNZtcb7vAsgb0EEozJsBDrLC0L+91tmMCBG=8FiQ@mail.gmail.com>
Message-ID: <CAHk-=wgq71zNZtcb7vAsgb0EEozJsBDrLC0L+91tmMCBG=8FiQ@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: SoC fixes for Linux-5.3
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_093423_940175_88E85B4F 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Tony Lindgren <tony@atomide.com>, SoC Team <soc@kernel.org>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 9:26 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git armsoc-fixes
>
> for you to fetch changes up to 7a6c9dbb36a415c5901313fc89871fd19f533656:

Nope. That's a stale tag for me, pointing to commit 7bd9d465140a. Your
old pull request from end of July, it looks like.

Forgot to push out? Or forgot to use "-f" to overwrite the old tag?

                    Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
