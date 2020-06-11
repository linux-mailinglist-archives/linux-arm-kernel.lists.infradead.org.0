Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAA21F615C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 07:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QQCZRxXBeG5v2oyI0oX61R3cYqcxYu45+f5ampaeOY0=; b=nuh
	yitG3gS/hP0GxvU6tcxdiSNmcaqTnjLNaBntIep6ZFfpoogm5J1CbqLy0QSedFbHCBow3uQeigeyP
	fQs+6joT37FNxug/1PljE3zBi9n6sunR+g5lCTBlJ6AgReCehzU5CUvF68199xh2PiV1o5hdi3C2m
	v4YS6E+xK9ZXbfxv5XzLwSlUlVenZrKmwao4y4XyXObo5nSQ8Un1bvzzVvP0QJCeaq4AReR4vsH4j
	tiJ321zDEZeabac7XuWx5vEklC3JCy5yAZkfCoXhNBV2m8kkOJh1eBtTxDSUTFrt/AiFqyWXiDJUS
	0J1UJpDEmRgXpJw2HRGswWkyB83XZug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjG0f-0001tl-AK; Thu, 11 Jun 2020 05:44:17 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjG0X-0001tP-BP
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 05:44:10 +0000
Received: by mail-il1-x144.google.com with SMTP id a13so4309998ilh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 22:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=nSiAU05tdsBcdotQGowaH1I7zBOyLBN7vECCGjJR/dU=;
 b=ji97ynMSZnWF7i/GeIZYWGZa018t9todXl8lVe6jQZgyk0+NbQ9/UpbImE0F4+b8cl
 0fqSaxHfbJRvdn9MjSPPFcW7jPHKdhtKUmKW5J1EnCfVECCuL2KKXnBkTGaGHKRWhpzx
 A3jfU7pu2f0zg91ZjPjeEO8Kvh60E59y7oDo6/9mXi1FDzT8ZxeAqj8omPjExTVbh1cv
 zsGkGd0KZ9nV9svVhLOjIchSv8Dtqsf11lrgM6eBsiHxv7qrT28jJR3kuV32TAILZaKm
 AdB5Nj+c1IXs2yz6uPFU3I1je+v3C5p3oZ9Q9T5o6GX62o/o+5gyIYKJaJkE5dmXBnee
 MCXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=nSiAU05tdsBcdotQGowaH1I7zBOyLBN7vECCGjJR/dU=;
 b=lIyI/c8JIkGJ9KOWfyh9currPQ4asI4TorN4gFHJdnRv75RUI6BZwkIY3umnDixrUV
 lbkHap2DpbogZuMsmYTggBX6D9Fx278cKtz+xZJ1NS4M8fpb2iI3wc6tvj5D3yu4HkMS
 BHO8NPXHUECNd25VbmkLOVfbJGRNXtI5YHqTyhZFDq4+OynrPgT/s8l4xreMAeVrsJCc
 Rs/bsvFHvo6csw2Qr/+pvZPHbm4aZ4o6/TQSiQuF2vpBUwXInslXn/CF8Fpu2NCDei1D
 JvOjafxLtPwW1pBe/eqUaL3sUZvWqyvxN81wJkLLXBiGrBFD74fY/8UFXsVIb/KHMSuT
 VcOA==
X-Gm-Message-State: AOAM53214QlzDUQerVjEODmLpM7cSp66GxmbbOA/qSAbATkpF7Z2m6Zu
 A5uLQqRVIFwQBFeaglzKBUqWdIqIhFxZyym5pX8=
X-Google-Smtp-Source: ABdhPJygTlWUJiydLnZRkZAYdm51hzZMfvvmTVaW1Z93Ddpo5Hi7rfZfRZu+EBYc8vvTh1RFxzBffnlktKzJgzdDFqg=
X-Received: by 2002:a92:de10:: with SMTP id x16mr6780306ilm.6.1591854248170;
 Wed, 10 Jun 2020 22:44:08 -0700 (PDT)
MIME-Version: 1.0
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 11 Jun 2020 11:13:57 +0530
Message-ID: <CANAwSgQv9BKV4QfZAgSfFQvO7ftcFyCGXEo+g4pgQA4mgK52iQ@mail.gmail.com>
Subject: ARM: warning: relocation out of range on Exynos XU4 and U3+
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-samsung-soc@vger.kernel.org, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_224409_393267_09A85088 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

I would like to report some warnings I observed on pre-compiled kernel
image (5.7.1-1-ARCH) from Archlinux.
Sometimes ethernet would not come up and get connected, so in order to
investigate.
I found below warnings, So I am sharing the logs at my end.

Are these warnings related to in-consistency in locking, How can we
Investigate more to fix this issue.

On XU4 - HCI

[alarm@archl-hc1d ~]$ uname -a
Linux archl-hc1d 5.7.1-1-ARCH #1 SMP PREEMPT Tue Jun 9 01:24:41 UTC
2020 armv7l GNU/Linux
[alarm@archl-hc1d ~]$ dmesg | grep relocation
[    6.188003] x_tables: section 4 reloc 2 sym 'mutex_lock':
relocation 28 out of range (0xbf0000bc -> 0xc101c154)
[    7.452559] sch_fq_codel: section 4 reloc 34 sym
'_raw_spin_lock_bh': relocation 28 out of range (0xbf000a44 ->
0xc101e9dc)
[    8.452434] uio: section 4 reloc 33 sym 'mutex_lock': relocation 28
out of range (0xbf009210 -> 0xc101c154)
[    8.576134] exynos5422_dmc: section 4 reloc 14 sym 'mutex_lock':
relocation 28 out of range (0xbf000188 -> 0xc101c154)
[    8.578422] exynos_rng: section 4 reloc 35 sym 'mutex_lock':
relocation 28 out of range (0xbf00a330 -> 0xc101c154)
[    8.585860] rng_core: section 4 reloc 15 sym
'mutex_lock_interruptible': relocation 28 out of range (0xbf0120b8 ->
0xc101c108)
[    8.818463] videobuf2_v4l2: section 4 reloc 62 sym 'mutex_lock':
relocation 29 out of range (0xbf0009b8 -> 0xc101c154)
[    8.938475] exynos_gsc: section 4 reloc 0 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf000014 ->
0xc101e370)
[    8.996208] exynos_gsc: section 4 reloc 0 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf00f014 ->
0xc101e370)
[    9.375951] r8152: section 4 reloc 4 sym 'mutex_lock': relocation
28 out of range (0xbf007130 -> 0xc101c154)

Share the console logs on Odroid XU4 HC1
[0] https://pastebin.com/5ZnEfyEM

On U3+

Linux archl-u3et 5.7.1-1-ARCH #1 SMP PREEMPT Tue Jun 9 01:24:41 UTC
2020 armv7l GNU/Linux
[alarm@archl-u3et ~]$ dmesg | grep relocation
[    5.324703] x_tables: section 4 reloc 2 sym 'mutex_lock':
relocation 28 out of range (0xbf0000bc -> 0xc101c154)
[    6.580612] sch_fq_codel: section 4 reloc 34 sym
'_raw_spin_lock_bh': relocation 28 out of range (0xbf000a44 ->
0xc101e9dc)
[    8.054852] uio: section 4 reloc 33 sym 'mutex_lock': relocation 28
out of range (0xbf009210 -> 0xc101c154)
[    8.168492] evdev: section 4 reloc 0 sym 'mutex_lock': relocation
28 out of range (0xbf018088 -> 0xc101c154)
[    8.435888] videobuf2_common: section 4 reloc 0 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf005130 ->
0xc101e370)
[    8.656151] videobuf2_common: section 4 reloc 0 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf005130 ->
0xc101e370)
[    8.671966] gpu_sched: section 4 reloc 0 sym '_raw_spin_lock':
relocation 28 out of range (0xbf016044 -> 0xc101e98c)
[    8.794059] exynos_bus: section 4 reloc 11 sym 'mutex_lock':
relocation 28 out of range (0xbf00514c -> 0xc101c154)
[    8.824699] exynos_bus: section 4 reloc 11 sym 'mutex_lock':
relocation 28 out of range (0xbf00d14c -> 0xc101c154)
[    8.824791] snd_timer: section 4 reloc 2 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf0150d0 ->
0xc101e370)
[    9.002896] exynos_bus: section 4 reloc 11 sym 'mutex_lock':
relocation 28 out of range (0xbf01914c -> 0xc101c154)
[    9.139199] s5p_csis: section 4 reloc 2 sym
'_raw_spin_lock_irqsave': relocation 28 out of range (0xbf019050 ->
0xc101e370)
[    9.417648] snd_soc_hdmi_codec: section 4 reloc 24 sym
'mutex_lock': relocation 28 out of range (0xbf0053e0 -> 0xc101c154)

Share the console log for Odroid U3+
[1] https://pastebin.com/sm8qCHdV

Best Regards
-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
