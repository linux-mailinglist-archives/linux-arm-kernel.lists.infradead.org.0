Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72474DC57A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KZu82d62QKpf/doYiHj7kDuVuXXqQdAVyzuzXNTndjg=; b=PcLcYtN7Bf9KGc
	DMLT0m44dIVpdV7fyeYYUoUhfoqnspS43Df5HrBHyhl/9kqKe45iEQ9Ip0jBgkkQ8NAXz1W1zv7rv
	+a0pKdlvZNHnemvAIGraE5KlHPl0Q1Sy2Mmtij8QFD64FJAv3Ca2rd3oaOr65o2MwbXiZOVY+g6h2
	yZCDLF21WCQZn02akNxP7f9lopfXT9GFjtwWCzf2VTMuLhBXWKj8xAIrPfKd3jpWaVJUJJikHSRDn
	n1izJCoVjnopQ6zitGvvmFvrSaGRRm7Nnm0k+GgWP307q2PLyZljibELGPLpwklh3pH6Poj76o50q
	osmWeakIATxDvB1/m1dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRko-0005DT-Ay; Fri, 18 Oct 2019 12:53:14 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRkJ-00051d-Qr
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:52:45 +0000
Received: by mail-lj1-x242.google.com with SMTP id m7so6129038lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 05:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X8tXbinQHwrpjZVR5SZDxD1u91iSiuAMbDTcJXFPWb8=;
 b=ZqtTvUIddQBWXaS8eT4AyKxHQxxb4LutuCYu8Et1I6qRRkCdNpIZDsBMkkiqP5LJJ3
 T++Y9k8fNV6dq4whnCc4qJYUxpkzOBGqaKv9D+WlmA2Nnrs7pPTF+ryD2Ysn6PV0lyhL
 my8Exob7bYpSp/7oQ9MbAyg6EO3GvkCC8XS9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X8tXbinQHwrpjZVR5SZDxD1u91iSiuAMbDTcJXFPWb8=;
 b=WQ/8HRIxTzy90ME0YL8zBxB426txX5eqz0sv9z7k6BA+QHKH9Npf50HAUMtd8yI5Dp
 SF1vxy8C6+f1RYSG2/i4sh3G4VO4GvAxPD7t/P8HBQdgTib2oULXseu3YP1Wn5KGcSdF
 YOQolmlIMVNqazQznleCpKKhJxL2Cf8CKhP9nGhUdvYusckbHvQtETxogE64H91QySTq
 u4r/bm+lb/dwFPYq2tvdCVK0v3Xz2ZhrejBn+opW7T6Y7RAQHZIFWnyfN1NQxoARe/Nc
 jR+5noDHKIpDajel4ZC/hWBvXbRsvEx6+IGY5bxu/mrgk6XbuzXxLuwrZxecWAeowLRL
 HJZg==
X-Gm-Message-State: APjAAAVXHWXM4e7YLV11TnkIzkFgOaPK7XtNEUvbbvl5FQXh+bOZemKV
 p9Buz14+kfEzAW5LRO1HfPtoQ1tx/eKLZXn1
X-Google-Smtp-Source: APXvYqyF9yPf+tbU7h7RQICAL7Ec07Pxt3Ja7hV0UEFHDzE2BYMYhcr3tkeM8h/HHzKMwhMhBwF9EQ==
X-Received: by 2002:a2e:3919:: with SMTP id g25mr6031311lja.162.1571403159942; 
 Fri, 18 Oct 2019 05:52:39 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id m17sm7454792lje.0.2019.10.18.05.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 05:52:38 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, Timur Tabi <timur@kernel.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: [PATCH 0/7] towards QE support on ARM
Date: Fri, 18 Oct 2019 14:52:27 +0200
Message-Id: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055244_024849_FB7E05C8 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There have been several attempts in the past few years to allow
building the QUICC engine drivers for platforms other than PPC. This
is (the beginning of) yet another attempt. I hope I can get someone to
pick up these relatively trivial patches (I _think_ they shouldn't
change functionality at all), and then I'll continue slowly working
towards removing the PPC32 dependency for CONFIG_QUICC_ENGINE.

Tested on an MPC8309-derived board.

Rasmus Villemoes (7):
  soc: fsl: qe: remove space-before-tab
  soc: fsl: qe: drop volatile qualifier of struct qe_ic::regs
  soc: fsl: qe: avoid ppc-specific io accessors
  soc: fsl: qe: replace spin_event_timeout by readx_poll_timeout_atomic
  serial: make SERIAL_QE depend on PPC32
  serial: ucc_uart.c: explicitly include asm/cpm.h
  soc/fsl/qe/qe.h: remove include of asm/cpm.h

 drivers/soc/fsl/qe/gpio.c     | 30 ++++++++--------
 drivers/soc/fsl/qe/qe.c       | 44 +++++++++++------------
 drivers/soc/fsl/qe/qe_ic.c    |  8 ++---
 drivers/soc/fsl/qe/qe_ic.h    |  2 +-
 drivers/soc/fsl/qe/qe_io.c    | 40 ++++++++++-----------
 drivers/soc/fsl/qe/qe_tdm.c   |  8 ++---
 drivers/soc/fsl/qe/ucc.c      | 12 +++----
 drivers/soc/fsl/qe/ucc_fast.c | 66 ++++++++++++++++++-----------------
 drivers/soc/fsl/qe/ucc_slow.c | 38 ++++++++++----------
 drivers/soc/fsl/qe/usb.c      |  2 +-
 drivers/tty/serial/Kconfig    |  1 +
 drivers/tty/serial/ucc_uart.c |  1 +
 include/soc/fsl/qe/qe.h       |  1 -
 13 files changed, 126 insertions(+), 127 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
