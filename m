Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1B632A87
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=B4OZfrEoFi6MdeaR7b00wmUGksz0B3UfL7G0QR2sdK0=; b=d2E
	mQGQ3DMstT1PVXJSotSIx4BrEiuHE5xYatMZEhhWcUqQ89Jka1RfbtqoAIjoRZG9/JzX7Kn/QMlWk
	1PEYRjfH/oOk5hMyZAGtorz3nv2yYPzGG8yKVGiTlusIlpWbT8xM5QeMOR9UgIPCRz3bWz6GUhG5j
	QEmFhc3ILQqfxqhc2rzffpLj6Nt1dsli7dA8SfB6VhUtXjqKbcMTTfOp4j225Ve86oUjSDNET1LeS
	CgU3rgqylNmikkayobarKtmNZ07XssVayY1nvBOW6XU9gyUQme9sAhIPBjiafk27nbmUKWzzDpkC4
	Ql1CAUcVFotRyZRz2hOdcsAk8irC+5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXi5x-0006Nc-6R; Mon, 03 Jun 2019 08:13:29 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXi5p-0006Mc-Fx
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:13:23 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x538Cdop002048;
 Mon, 3 Jun 2019 17:12:39 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x538Cdop002048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559549560;
 bh=CSp6dvaAsVp+fen60fg+myoBPeV8iOlGhqeP8oJkU2M=;
 h=From:To:Cc:Subject:Date:From;
 b=EUKpa71hQh7iuTY1IYqESDW86tHlQhgGgdKflIKYHHvGpezMaBr8vawija1OYHQdQ
 2kqomTdlJ9AX7dwnGeuMJGBTNQbMyU8y2Om6/hb9p88FIvo74YPP584uHl1pvbk+8W
 S2woKzAkc4Atsb1KPfdMgFu4ZTC7bXejymZrHHiNlOwGXxHdHQ/nCi2PBr053KO2xL
 QB3KQtXIZlChUERhQjl3X6aAB/T04RiyfZNcEyVUoSMsc282eC1dJ8JgzQiqbtGSYr
 QzASsNn/C1EKROVY9bT3pgg138OC9hCB6OYbF/YxuKMx9XSjW/hhsZsMRGzU9J+zfc
 +S6/h5fsKfjKw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: arm@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [RESEND PATCH 0/2] memory: move jedec_ddr_data.c and jedec_ddr.h to
 drivers/memory/
Date: Mon,  3 Jun 2019 17:12:31 +0900
Message-Id: <20190603081233.17394-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_011321_867982_5B8BD83B 
X-CRM114-Status: UNSURE (   6.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


I believe this is a nice clean-up of directory path.

include/memory/ has existed just for containing one header,
and it is gone now.

There is no sub-system that takes care of drivers/memory/.
I sent this series some time ago, but I did not get any feedback.

I am resending it to ARM-SOC ML.
I hope Arnd or Olof will take a look at this.



Masahiro Yamada (2):
  memory: move jedec_ddr_data.c from lib/ to drivers/memory/
  memory: move jedec_ddr.h from include/memory to drivers/memory/

 drivers/memory/Kconfig                   | 8 ++++++++
 drivers/memory/Makefile                  | 1 +
 drivers/memory/emif.c                    | 3 ++-
 {include => drivers}/memory/jedec_ddr.h  | 6 +++---
 {lib => drivers/memory}/jedec_ddr_data.c | 5 +++--
 drivers/memory/of_memory.c               | 3 ++-
 lib/Kconfig                              | 8 --------
 lib/Makefile                             | 2 --
 8 files changed, 19 insertions(+), 17 deletions(-)
 rename {include => drivers}/memory/jedec_ddr.h (97%)
 rename {lib => drivers/memory}/jedec_ddr_data.c (98%)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
