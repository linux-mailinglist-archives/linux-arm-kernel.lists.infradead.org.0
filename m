Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0DA4F43C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 09:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GVz62qFRc6VPfm/ZW5Hl+qJ6/EEGvqTOc3uAMsJ2lBI=; b=HXypq2j04EkJ9D
	kHnTcxoJXZ8cxlVv0wl/bDnTk0UbjajQSScHjjuupu9d7zO92/5eeeMzQDDgY1KHyPnhoivtDIDic
	RgY08L+ttVMovWM2097brLi7xaOXn2I9yFQAaXwtJ6SpPjt56CV0cRfOZG6P+EKXiMi6J2Jaca/KL
	2z1GHXrPPVWCsOq8ZeitX64TIfM57xuaDXk/M9JFnKDNbpmmrNzSEb/em5QZXnzF/grzz3e+VtVgI
	rJGL9bnNa2K0iq8KJdsjshtyEx+cF67o/Bfky58T0L5ZJiRXZN1WWlezCvxlHmQXz+sS677iX+njH
	JZbSOTHnbfpGkwmLubtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heavY-0002fv-AR; Sat, 22 Jun 2019 07:59:12 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heavO-0002fJ-53
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 07:59:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id x2so9424498qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Jun 2019 00:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=l6JkMxGCR4TkYnMh8TfPneR47DulikqSuvDG9umnXVI=;
 b=OeGnkvv7y+Ei1gULqYCugFOXLsimmG0XO0QLTsgjHQqhvu46hc3KZiXn2iwsY2zpcq
 WKflQC1BRLeYcJ+LUHpDai9Y2b7nFA+xKT1OzmiNg9FuQm2gL5UwXyAh6eya8DaA7n/c
 obGOyU2qw+xF8uXItSvl31hPY5U1/jdM8bpBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=l6JkMxGCR4TkYnMh8TfPneR47DulikqSuvDG9umnXVI=;
 b=aY7ktgtM0X+qLAHV60P3+wMoTxpGB4eE7b9RsOOf9dKowA8NwuNOJhFkiE+F33cMZQ
 hpecvvb++FMG/qEUPVocVQhDRHK5PCGVpeuG/d70A/vqTnnQBdMgpF87e1CAVb7G9GCt
 0qi/Sw50yTIivRX8GUTxahLdK+giAEaVodqWEySdFy/spNaBvbAlM1o2EHtV+0LSNsH8
 NBOmjlksqd+C5TESeELMYsdK7fwA+pRb7IlGLFLsNa8hJjs7S+baACpZ82St20ehX6q+
 hLt3C/JrtRlUMl00l8Mr0xnEyWu5djNYFdN1w3kF6E0tTeMDOXTOSV1WiPuUW0Esu8M7
 SNFQ==
X-Gm-Message-State: APjAAAX2L3Oh8rCG/egkcCm0a00I839CuLLkEvvXs9KOWLk+FjItirn7
 qHY/mFJjRyrLUeNLaiDMu7R/fdZYVMjMD3/rXG0=
X-Google-Smtp-Source: APXvYqwe++A1xs7ZZPPxAlWbW4nT5c67yseQmkyeJUk2auF7XiQNd32xDW1+ryWZ+Jb9yUeztgGVmIN6hcvMI5JnFBE=
X-Received: by 2002:a0c:ae31:: with SMTP id y46mr48970818qvc.172.1561190337785; 
 Sat, 22 Jun 2019 00:58:57 -0700 (PDT)
MIME-Version: 1.0
From: Joel Stanley <joel@jms.id.au>
Date: Sat, 22 Jun 2019 07:58:46 +0000
Message-ID: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
Subject: [GIT PULL] ARM: aspeed: defconfig changes for 5.3
To: arm <arm@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_005902_237174_1499E7CC 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Jeffery <andrew@aj.id.au>, linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM maintainers,

Here are some defconfig updates for the ASPEED machines. I haven't
sent one for a while, so there's a nice collection of drivers to add.

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
    tags/aspeed-5.3-defconfig

for you to fetch changes up to 2d8bf3404bb0e65dffb7326f7fb6e96fa3cee418:

  ARM: configs: multi_v5: Add more ASPEED devices (2019-06-22 17:12:17 +0930)

----------------------------------------------------------------
ASPEED device tree updates for 5.3

Add new drivers to the ASPEED G4 and G5 defconfigs, and to the armv5
multi defconfig.

----------------------------------------------------------------
Joel Stanley (2):
      ARM: configs: aspeed: Add new drivers
      ARM: configs: multi_v5: Add more ASPEED devices

 arch/arm/configs/aspeed_g4_defconfig | 10 ++++++++--
 arch/arm/configs/aspeed_g5_defconfig | 14 ++++++++++++--
 arch/arm/configs/multi_v5_defconfig  |  8 ++++++++
 3 files changed, 28 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
