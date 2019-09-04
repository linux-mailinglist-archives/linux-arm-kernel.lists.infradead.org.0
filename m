Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C79EA85C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvQc+wIL4olXVwXzu/LCnyqmrRNuGT7INT+YgF5TExo=; b=Eh4wy5g0790Bqi
	nG5qY1k6MPQlqMNhj+Q50zeYQyGJrwk4xhLfXIz9P07J4r56LCBVMUqDz5Fk0jyoiPSYSfwpH6lzR
	IMxq/PgofX4PwYauemA/8rF6kVtSAa3Ghk2edB5Z3Pv6jkpjJo4Xc3Ek1Gsa1jHZ1mB7RPzME85TX
	YylrB5u2rpdW9RdsZOsL+2KSk3v8C11kZOLxbliPjx4QBXDJ1HSNIh/RR5k+inozJlr1o7G/dmpbG
	+9MJzW2/aVFijBMvF7SJOZGIyIobd/Gwt98boe+Hfl63aohy8yIVyf+zuOYGI2SIFsC+RmnEBAWiv
	dx1leBnjkOl5Knp6WxCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WdO-0007B9-Hn; Wed, 04 Sep 2019 14:51:46 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WdH-0007AO-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:51:40 +0000
Received: by mail-qt1-f194.google.com with SMTP id o12so13133022qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 07:51:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ghMUA3WDYpcU+WrPXEItQsWs5j+o2J3zKbaTmc/B068=;
 b=HbpkyHgk4nMauviF8EVZ4AsiWj0Ivm8K8sWBh4UYzpIrXsN/BSUVvYAbkP/3J369uA
 YX73SoqIWysK9SKSrZHObrfxPo18Pz8834hR0Z5bdFdlC/I1jLmm9NErDZhVwd7QZ1Uk
 etdPj6qHzPypAHQgsj89v+J3QcHRia5Xe1f+46yEWU49aTUjCnL5L53iEsERAwaSeV4w
 lrh+nANj0DACUxaNyynFnP9rAaCh+qJOUiffBYvSpIo1/9OB9QdvL9zO8cGZr0on0Mpe
 I3s0cMQ2XxogeqbP9EuecH2aBnAaLSQy0le6qz+uuZwGfRaJINwG6st6jjfMfmjzfcdv
 lzLw==
X-Gm-Message-State: APjAAAUzofuUUwdCZEgcUzcDejTQ/mgq3lgaKSDN28EfrzUAjGvrx7pe
 bdLddPAQRhV+yIg+cdL8BHnQglfUfqIb90cPBD/FZ4hk
X-Google-Smtp-Source: APXvYqyTGrwb7IQxK45FkT58vQU3+FgD1Wp7qnO0szJibC40TKlw7QbzVaV8GwLxelcHcEM3m8uIgJM3S0lsWa0bMpI=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr26080715qtn.204.1567608697823; 
 Wed, 04 Sep 2019 07:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190828151754.21023-1-nsekhar@ti.com>
 <20190828151754.21023-2-nsekhar@ti.com>
In-Reply-To: <20190828151754.21023-2-nsekhar@ti.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 16:51:21 +0200
Message-ID: <CAK8P3a0NGVHhWBtXwbB7aZMA-hsGn-jwJDYUS1WgLoux6j-hBA@mail.gmail.com>
Subject: Re: [GIT PULL 2/4] DaVinci defconfig updates for v5.4
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_075139_593679_4DA8A307 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 5:18 PM Sekhar Nori <nsekhar@ti.com> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.4/defconfig
>
> for you to fetch changes up to e869e44f2d82b9b4d35d58ceaeeadb0242bc634c:
>
>   ARM: davinci_all_defconfig: enable GPIO backlight (2019-08-08 14:33:45 +0530)
>
> ----------------------------------------------------------------
> Contains davinci_all_defconfig refresh using savedefconfig and a
> patch to enable GPIO backlight.
>
> ----------------------------------------------------------------
> Bartosz Golaszewski (2):
>       ARM: davinci: refresh davinci_all_defconfig
>       ARM: davinci_all_defconfig: enable GPIO backlight

I'm generally not a fan of these 'refresh defconfig' patches when they
silently change options that may or may not be needed.

Some lines are just moved around but these ones
are completely removed:

-# CONFIG_IOSCHED_DEADLINE is not set
-# CONFIG_IOSCHED_CFQ is not set
-CONFIG_PREEMPT=y
-CONFIG_SND_SOC_TLV320AIC3X=m
-CONFIG_SND_SOC_DAVINCI_MCASP=m
-CONFIG_LEDS_TRIGGERS=y
-CONFIG_TI_EDMA=y
-# CONFIG_ARM_UNWIND is not set

I think most of these are ok, but I don't see any explanation
about why you turn off CONFIG_PREEMPT.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
