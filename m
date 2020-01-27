Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A016114ACC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 00:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v/XDH3DZs0Q0UiE+27h/RzWKJHBpi2016ylvh5bNbKA=; b=XcjIT/TugTSeZR
	0wpuiVwOxW+o7tAk2dz2LZ9mSkcRZ/uFF+1cO3fNVGAsAx9cg0YfJ1dYDketSqKXF/AAk0WCBKy/G
	I0VoZlHTAKb3isgSJO0tT4ii10WCDzoFeMXaQVbb6tq3VuEEDNgwYKot5t49Tvhgbqja9wF0jmkEw
	vO8qOM6XvdCrCGTXcu930M9iAFlzqYgIQzr9d2K83f389LLIYYJ5AecWn8kB5WZGe6uUIxsIrgn4N
	5bUa/6pbJoS3gl4FflcrgI4CR4G8BSpv7dQxE6PyHcBaF09JCdLQ6BMXsLtFXKjiiv7z1TR/kK1+e
	Nsl3UbF8jRwEVxEyXT9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEDd-0006BC-Mz; Mon, 27 Jan 2020 23:55:01 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEDK-00069d-Ll
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 23:54:44 +0000
Received: by mail-pg1-x54a.google.com with SMTP id v30so7451760pga.22
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 15:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=0WVlBZ9h/3UAmHAjFKk1i1lby5ArQALhCHp8vRDwf6s=;
 b=B0D4GdH37zFLkAB6DLlyqBHlLmNEXHfnkYgFffeTOmOr475hSOENtNB8TIo3G4sGe0
 FGQeW1LRFZFwEwZe0xYBNGSrbzuvSB/n522fs6/iqw0svGmiqpGIgfsGVIAnWpo0xe6b
 BoM87ucGn23bNOQFBFwtOThLn+0+3twkPtHYFFqqNHT27mvPiaZYPxgu4N/l/e8eaXcg
 7jQiGP//cNxEUu+McL7virtX6XQNY1Tl0esKP2c/WrVvCyn1rDqO+BVfbr+AnTAAodm8
 8eaZUZJdgvoPLStiKNbl0DHxWBNzGU98A6D6t+uV4+grA51Z1w5tPzJYd+kP7DcwXnGr
 FQyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=0WVlBZ9h/3UAmHAjFKk1i1lby5ArQALhCHp8vRDwf6s=;
 b=q70ETSE062teJmITmtYX2wFpI0K8VjYWFP508FYrpPWCTV3z3agwgOb/2VJrzYm69y
 UbndwCYuMam2gbzjEYiHVadY/oQiArAupmvUAfX/a+jk24sZpGjJ2b5jXMP2Tirnwt0z
 y2IjYouSdNJj4+QilhMHE91CLqYVqPyOHbKAD5uGY/hhtZoBFoGHFIft5lvTe26cjSqz
 B9aqIWRKpEX3Pp6i/v4LmXOyjtJxB9zS2JyI3HLofmU2TMA8rckATmd24pPrL8UIsgkJ
 o8mMlIU/OAPJz8wiNRvoTb0H2Iud+/1KV7xUGlDRf2KeITLd1NjmZ13F/G3EHFCNsMyY
 rBoA==
X-Gm-Message-State: APjAAAV5akHebFlLjiAkKOkiG/oGxAO5GN+DojYredJCGRQIT1KL0rkD
 66a10OdKfyJG87/nDvQq6qokbbgdqACmDcTRwZSutg==
X-Google-Smtp-Source: APXvYqxuHlif8YoC09sMp36DADFxZKUEjmOezwoOELE8SswXmvcrc2Cpl4SiqOBpXxHMb1qSYM81/g2GJjm81WrtmsBS6w==
X-Received: by 2002:a63:ea4c:: with SMTP id l12mr20867620pgk.29.1580169278383; 
 Mon, 27 Jan 2020 15:54:38 -0800 (PST)
Date: Mon, 27 Jan 2020 15:53:51 -0800
Message-Id: <20200127235356.122031-1-brendanhiggins@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v1 0/5] uml: add more unspecified HAS_IOMEM dependencies
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 Kevin Hilman <khilman@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Richard Cochran <richardcochran@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 "David S . Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, 
 Andrew Lunn <andrew@lunn.ch>, Robert Hancock <hancock@sedsystems.ca>, 
 Esben Haabendal <esben@geanix.com>, Thomas Gleixner <tglx@linutronix.de>, 
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_155442_709448_D5F3711C 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: heidifahim@google.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pm@vger.kernel.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org,
 davidgow@google.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

# TL;DR

This patchset adds a missing HAS_IOMEM dependency to several drivers in
an attempt to get allyesconfig closer to working for ARCH=um. Although I
had caught all the broken ones in early 5.5[1], some new ones have
broken since then.

# What am I trying to do?

This patchset is part of my attempt to get `make ARCH=um allyesconfig`
to produce a config that will build *and* boot to init, so that I can
use it as a mechanism to run tests[2].

# Why won't allyesconfig break again after this series of fixes?

Well, in short, it will break again; however, as I mentioned above, I am
using UML for testing the kernel, and I am currently working on getting
my tests to run on KernelCI. As part of our testing procedure for
KernelCI, we are planning on building a UML kernel using allyesconfig
and running our tests on it. Thus, we will find out very quickly once
someone breaks allyesconfig again once we get this all working. So this
will keep breaking until we have a build test on KernelCI running, but
we will need to send out these fixes anyway.

Brendan Higgins (5):
  net: axienet: add unspecified HAS_IOMEM dependency
  reset: brcmstb-rescal: add unspecified HAS_IOMEM dependency
  reset: intel: add unspecified HAS_IOMEM dependency
  ptp: 1588_clock_ines: add unspecified HAS_IOMEM dependency
  power: avs: qcom-cpr: add unspecified HAS_IOMEM dependency

 drivers/net/ethernet/xilinx/Kconfig | 1 +
 drivers/power/avs/Kconfig           | 2 +-
 drivers/ptp/Kconfig                 | 1 +
 drivers/reset/Kconfig               | 3 ++-
 4 files changed, 5 insertions(+), 2 deletions(-)

[1] https://lore.kernel.org/lkml/20191211192742.95699-1-brendanhiggins@google.com/
[2] https://bugzilla.kernel.org/show_bug.cgi?id=205223

-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
