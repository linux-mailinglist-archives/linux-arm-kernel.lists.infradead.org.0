Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 143FCD9946
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 20:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2Xuf7KwGtp/QYB89L2Z5/F66ZE4Woug3t1zD5yjI4w=; b=CPsdNSMOAwQp72
	tF4VdTfoQ3bd5L36jHCIfTRX+AesX/XgYbFdX3++Dq+R4SlTwj+QQojdO38+VLyk7XYINIaiwzhEY
	3k0JkioLKtF8etgRU9ANuA7HCaJUx9E+ceBWtJc8/auW7VzQBWtsWBVIK36zHxM6ZKx+h56sFdVa1
	Tsc8ivvE0vyuxxMUK7OrStYv2rcWo8SaTNlqyjm/rD4UrPcT/FUOZ2dzGh4XflSZ5qX1cTTZ+/EFS
	pzRZprearsM4GMLM99Dd6GeHC4rtUy2AtMLraSSTPlUPXzt8YizRA4pJKbzmFm3op/ZhOVo5qLAdE
	Cr2aRQL5SGtZJIZYzqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKo7j-0002AB-Vm; Wed, 16 Oct 2019 18:34:15 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKo7a-00029a-AI
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 18:34:07 +0000
Received: by mail-qt1-f196.google.com with SMTP id v52so37561620qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 11:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VOTETHI987/a7DKz+ZLwclVIgY/4Ia6DHQt0viRnS6s=;
 b=ZNKoMt4otzUWtykMK6vorLNq04DBA5w0uH/m1OqfiC8Yf71IIAML08/OcYxYWfyGY6
 xoP2+sMqSOFIKHklMDPAqk6RnH857fbp3XIvf/ahAJRD5rW9d6TrN+tS3ziUkdANn3oX
 U7z0vtssNlIBKv5tuzr42JvZ9PtxNXCdIpAmHQAKCp7GcV12VJ+YpcolxRCuuSywzklW
 PPF3R4PBUC6XwEVU8N8qzuU0L7GORXwX+M/us5+5WC9wJK71vuAzFMlo6Y81ZQ1+lu7k
 MkvJPN87WAxPuGXyA4pG+m06zck0em6BVVEUtQjCATOZTzSsq+i9IvHJgO+hRh4ZIn8k
 f5Eg==
X-Gm-Message-State: APjAAAUUqXDpnVHE7INV8GbNeymaXgZA0xrrqlbYcwOple2f68ZvJ6TH
 50YBsFvWA3E8Jvitfl+VmJ/5fL5cHIAicwEvP6Y=
X-Google-Smtp-Source: APXvYqxtZ+wYoNxSY1AMgCNj5fzhBzpFtzcFP9wkg4hj1UUZjX/jV+EBI9KCrKulb4TeyyYHYFOI6NRiOt/YC4gkeCw=
X-Received: by 2002:ac8:6956:: with SMTP id n22mr2737131qtr.7.1571250845127;
 Wed, 16 Oct 2019 11:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191013221310.30748-1-sebastian@breakpoint.cc>
 <20191016155755.66ges3ybn3awx45l@willie-the-truck>
 <a14cbac0-3eab-c136-ad2d-9b4d8b95a098@redhat.com>
In-Reply-To: <a14cbac0-3eab-c136-ad2d-9b4d8b95a098@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 16 Oct 2019 20:33:49 +0200
Message-ID: <CAK8P3a074XTSfu0sWZokA7-tirUv_L3KAyskDn3JoSNkXg8Lvw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/6 v2] Queued spinlocks/RW-locks for ARM
To: Waiman Long <longman@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_113406_358205_33C0AB60 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 7:45 PM Waiman Long <longman@redhat.com> wrote:
> So if the target is 4 cores or less, there isn't too much to gain from
> using qspinlock. Lock function inlining probably has a bigger
> performance benefit here than switching to qspinlock. Just food for thought.

As a very crude estimate, here are the numbers of machine descriptions
based on the number of CPUs in each machine:

git grep -c '\<cpu@' arch/arm/boot/dts/ | cut -f 2 -d: | sort -n | uniq -c
    115 1
     63 2
     48 4
      1 5
      1 6
      8 8
      2 16

Filtering out the machines with at most four cores:

$ git grep -c '\<cpu@' arch/arm/boot/dts/  | grep -v ':[124]$'
arch/arm/boot/dts/axm5516-cpus.dtsi:16
arch/arm/boot/dts/exynos5260.dtsi:6
arch/arm/boot/dts/exynos5420-cpus.dtsi:8
arch/arm/boot/dts/exynos5422-cpus.dtsi:8
arch/arm/boot/dts/hip04.dtsi:16
arch/arm/boot/dts/mt6592.dtsi:8
arch/arm/boot/dts/r8a7790.dtsi:8
arch/arm/boot/dts/sun8i-a83t.dtsi:8
arch/arm/boot/dts/sun9i-a80.dtsi:8
arch/arm/boot/dts/tegra124.dtsi:8
arch/arm/boot/dts/tegra30.dtsi:8
arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts:5

None of the above are recent or popular. There are still more
dual-core systems than quad-code, but most of the new ones
are either quad-code or single-core.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
