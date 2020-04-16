Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C48431AC06F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 13:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7tyrPF5dGqSj+UIkeu6dv6Yww/ACsD4QmEKOsin/So8=; b=Z6O
	WndCfQQDHanBOwRyBfIsmqJxsUWuIIEDC0D/g9MjA0Xecan5QpkpzoNu7cDBP6DWOcReM0Lz4Yu6e
	QUOJuJUgwm4KNyOWouKM2zq2ec7BHSOtVoGAfII9V0qQMz2rK2WHtacMS88+A7P5DZjX0t1ntsR+6
	Ml4CG5MtzOlFg27JUcKe4HY+5N9Dnnxirg2G0AFcAdR7qbMHYrXv5oRbGlxnslHWDcdExpKcD3MHY
	WBoOzVG4trSkm1BTnmkhIjh7NErFz4MGKVnPVOqTKzBvazJUuzV4eucOBQaUIjFeYAWXX6vq+vjLO
	5eGgyZRPMEQNoe2wrTagASaisG/mNrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP390-0000Wb-IM; Thu, 16 Apr 2020 11:57:22 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP38o-0000VT-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 11:57:13 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:fd83:81bb:c1d7:433d])
 by albert.telenet-ops.be with bizsmtp
 id TPx02200K4dKHqf06Px0Vk; Thu, 16 Apr 2020 13:57:03 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0003KY-8w; Thu, 16 Apr 2020 13:57:00 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jP38e-0005Jt-5i; Thu, 16 Apr 2020 13:57:00 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 0/2] arm64: Vendor-specific errata improvements
Date: Thu, 16 Apr 2020 13:56:56 +0200
Message-Id: <20200416115658.20406-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045711_747771_1091452E 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Wei Xu <xuwei5@hisilicon.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Robert Richter <rrichter@marvell.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi Catalin, Will, et al,

This patch series attempts to improve configuration of vendor-specific
errata, by
  1. sorting them by vendor,
  2. adding platform dependencies, to avoid asking irrelevant questions
     when configuring your kernel.

Thanks for your comments!

Geert Uytterhoeven (2):
  arm64: Sort vendor-specific errata
  [RFC] arm64: Add dependencies to vendor-specific errata

 arch/arm64/Kconfig | 82 ++++++++++++++++++++++++++--------------------
 1 file changed, 46 insertions(+), 36 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
