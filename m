Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24966A9E84
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O2niYSmTpjWutQ17dxYgvDuvs/FDn9kH0T/MlpMVTe4=; b=p93
	CTDMUbEF2ECycIkWIGKiyOQstHPehwdYcUxFbo1LjUWqNj8go6FLVXBa+zVxu36Sl0OnT74/Cjgxq
	gRh9mQm8jEduybFzMXhWzITo6+QBoJfg/tGfPM1jDA0yGHfOa0XqAApdXc6aXjLMXWORgUIgITJ/g
	6kecDenkYzB5h76w54kSIzskmxnND9grNIRoQ8YCaSIiAFkKWm5USiq12BCaYQ0SwlRb151UNcs/v
	fP9bfBqVNdD+EK3TYEQgOJFw/F42LGN82zwm1KpGCtyNLqRazFxPUz//n8VGhJLOc3ht/7wnyuZhR
	Fl+sQpZJS+YEmbqx5+uxZb3bjBgXsDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oB4-00057I-NF; Thu, 05 Sep 2019 09:35:42 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oAP-0003OI-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:35:03 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1600525B753;
 Thu,  5 Sep 2019 19:34:59 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 004A6940AC6; Thu,  5 Sep 2019 11:34:56 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] Second Round of Renesas ARM Based SoC Fixes for v5.3
Date: Thu,  5 Sep 2019 11:34:45 +0200
Message-Id: <cover.1567675986.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_023502_050199_1A2C2939 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these second round of Renesas ARM based SoC fixes for v5.3.

This pull request is based on the previous round of
such requests, tagged as renesas-next-20190813-v5.3-rc1,
which you have already pulled.


The following changes since commit 45f5d5a9e34d3fe4140a9a3b5f7ebe86c252440a:

  arm64: dts: renesas: r8a77995: draak: Fix backlight regulator name (2019-08-09 11:58:17 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-fixes2-for-v5.3

for you to fetch changes up to ae688e1720fd387de34f2140a735917411672bf1:

  arm64: dts: renesas: hihope-common: Fix eMMC status (2019-08-31 11:23:18 +0200)

----------------------------------------------------------------
Second Round of Renesas ARM Based SoC Fixes for v5.3

* RZ/G2M based HiHope main board
  - Re-enabled accidently disabled SDHI3 (eMMC) support

----------------------------------------------------------------
Fabrizio Castro (1):
      arm64: dts: renesas: hihope-common: Fix eMMC status

 arch/arm64/boot/dts/renesas/hihope-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
