Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7B3D5F9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79xsxBuJDFYQ5BQmHGUKjFCsHXTEshd5OQ5H1N+oFM8=; b=o2yMN88rPZVbmn
	55EvELiSw5O89Ose07trC/Red2ZZC2/XyPdxrhMH0cOWpNcLkV8H4x+OnCtGhfhMMD8N+QTV9F8yI
	qH8/EKHl9d+bpV/SB73EpgfhBV/o92stoaiftI54tTBy9I+0eZA1Sn4NyejznxYMIWw78UXD9TEfC
	1Oh/oHUhtYz+UQ83lyVBaP/QUkqq46Z9WvQc3Ml1ZhcQsaEUsYO+dtg0eZMZ1uOoZdyMHaCi2bkD8
	Qs13lLY79prHup9OBSq0tWc9VuHHfyM2CkB/HT3z/5MeDI9RouWwgDl2zVs1GPlmqFVLxfVR9Abwr
	7zXBV3Uq705HipRrBeaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxAj-0002ES-6B; Mon, 14 Oct 2019 10:01:49 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxAG-00022U-Jj
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:01:22 +0000
Received: by mail-qt1-f194.google.com with SMTP id 3so24666249qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 03:01:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FRuhLY1QYg/ulu1dxOqzU9kcWYSOoucL1MD2ga6NJNo=;
 b=rQOKzHTQFUTvUv4DjYNup7FyII5DsKSBwPz/fd70a48tussXunq/x6s8vGsEuVZp9K
 LKd6neS1nz9c+DMRdvFE4AieXbgvMFOoVYPxrh55R/4HKN82H5ZdQv2JG4zyDOLuvyzi
 mr68bj3fGgDuzy7z006DR9d/+DVdDrV8jx4n/rgrzdfc7uJXe6lwOldci0Uc/Js2f0LC
 u3pjNAqmjJM+iThtuCgODIoljEhFKZLBZWgMi7AMgWcTsYn3+jvGoxk5deHVvQI+9tAL
 xGjsfnO02H61QWcjWy4DJxB920hO9/uirgQUEseeVxFxA0X1INndNJeKw7gDD+xGXiAQ
 4ilg==
X-Gm-Message-State: APjAAAWpS+FoWNebPgGrTwAysQymcYBX8zCKSiHgMQh+RgiHzlG2JL5M
 pKh6PNUsm+2G8xaT2hzyhOdW+BdL7cm2iJof4Wu4U0r/
X-Google-Smtp-Source: APXvYqySQYqoGAjxLGaI76iw9WTQCwvypRaOugxLuC0ckFyGkQDMa9rjsWsFV1lf8/djLBMhwfoswTv84W1ZKaMHnrc=
X-Received: by 2002:a0c:fde8:: with SMTP id m8mr682921qvu.4.1571047278920;
 Mon, 14 Oct 2019 03:01:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191013221310.30748-7-sebastian@breakpoint.cc>
 <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
In-Reply-To: <CAK8P3a2hYteGizk=--_Z1kE200_ORL52QEK5RBTMtXt5_UzmhA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 14 Oct 2019 12:01:02 +0200
Message-ID: <CAK8P3a1Mu0Ghy1VtD7NBKQ4-ZMsYQe_bjYBAshRMTYTWtxzbPw@mail.gmail.com>
Subject: Re: [PATCH 6/6] ARM: Inline locking functions for !PREEMPTION
To: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_030120_666628_9C927FFC 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 9:43 AM Arnd Bergmann <arnd@arndb.de> wrote:
> On Mon, Oct 14, 2019 at 12:14 AM Sebastian Andrzej Siewior <sebastian@breakpoint.cc> wrote
>
> Also, the output of 'size vmlinux' before and after the patch for
> multi_v7_defconfig would be useful to have in the changelog, as there
> are a couple of platforms that are particularly sensitive to object code
> size changes.

To follow up, here are the numbers I get, building the linux-5.4-rc2
multi_v7_defconfig with clang-9, comparing the original spinlock
and the qspinlock, combined with inlining all locks or leaving them
out of line:

   text    data     bss     dec     hex filename
15294816 6958636 404480 22657932 159bb8c vmlinux-orig
16004898 6962060 404480 23371438 1649eae vmlinux-orig-inline
15198619 6958812 404560 22561991 15844c7 vmlinux-qlock-noinline
15622897 6962116 404560 22989573 15ecb05 vmlinux-qlock-inline

This gives us a 1.5% size increase over the original code with
inlining, or a 0.5% decrease without inlining, or about 1.9% size
difference for the Kconfig change itself, which does sound
significant.

Maybe it should be configurable?

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
