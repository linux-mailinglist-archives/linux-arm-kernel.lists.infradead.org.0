Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC471C6799
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=13v8kYYs/262t0kGI6Vj8zEJ7o7q01A7OpgiGSdDem8=; b=gchyBfWVqFHBah
	J9nY9SJP9iLYabDGhBVdf0XNcCqm7Wq/jMEZjGnCefNRE1tJ9YYVj+1sM5POHnYm7bLqOONEi/nez
	dnF5cyy6cfmm8FAMEsV+lNjxfpsNfJzvUVKaFu7rcKvEUuR5N7GnuZ3FA6RoeevxBiQiNvriCh4X0
	dXpvK4Al6jFvrknmcWi2C4MQp5KBDoOoB89oGcDhn39dALNKbK4oGONpYGfTa0fSBgP/cNOacDxD3
	RH5iWKFFa3soiW8eFdMcGrHA8mQEIhEJt/beiOYHNEoFLk+xtSQoSxj2wnOZ/PcXeLYLGIwh45np9
	YLaeIZULhRJa7OuLbJMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCwk-000519-9t; Wed, 06 May 2020 05:50:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCwS-0004XV-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:50:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id x2so458523pfx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yzL6cUEC8Sb9M0V1vJgMsz/nqVpMVfxLp+rf/lwsZKU=;
 b=kAUBHaIn2XglY81EN0TH5ycwufqdQH9VevoTUibsMR40E5b2pIhc6cR9QKtdpRt36a
 Tbc7Iftyur5i+FyD7I2vkmk3ZmM0uWNr41YIGEsZ70mj/JHi7UC1LnPWsJL8DGq9kez4
 vswVXvyYNPJBwPManb3stNUHuwpIIufgTSweQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yzL6cUEC8Sb9M0V1vJgMsz/nqVpMVfxLp+rf/lwsZKU=;
 b=q4cX+uxq6JeB8+rR8h0mNGmJgxDPlIj2Vsc35GX4P+okSNYCbFirvOHwQvfrjJonHk
 hwxFlUUzjoGe8oz0ayeiBn6su0aBLhJVclWV2jwrsGueZwcPy5NYg1nLFeOABwEbQ/nR
 JkPOWAT3ccUaCML87wGICbIkwzGQEnW6GfBZiDH5HjXnQRgSGyTTAoPI/IQnWy1eaXGl
 cc4mR2IjLjYOd2vP634CwCCYXmE5LWWBN1RYxEpEYsnIAYHhtjKaRSzfh855EJYWOnex
 7PXzjPUZVTNbHMj0xNjuu5dmBPq1WaVgUtpCWk9cjb8AemhliprJiTb9Y/vWBf4RLaP7
 XS+Q==
X-Gm-Message-State: AGi0PuaYOlzEMSqrtlOwAqGmsXo43vZlN36MrbplObH+80mNfwqmHn4A
 1FSpFg6C8ik6xklmZMjSHFe2lQ==
X-Google-Smtp-Source: APiQypL44xNcKeY9JS5dfmN3iPs0MNug++UkszcoF+ZJvAg0ou5lbnqsDADn1qqg9HVVdPkFsqBSJA==
X-Received: by 2002:aa7:9589:: with SMTP id z9mr6512255pfj.247.1588744199913; 
 Tue, 05 May 2020 22:49:59 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id t5sm729738pgp.80.2020.05.05.22.49.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:49:59 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/5] MTK MDP driver cleanups to prep for futher work
Date: Wed,  6 May 2020 15:49:15 +1000
Message-Id: <20200506054920.109738-1-eizan@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_225000_815852_6128D84A 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


It most notably converts an array of MDP components to a list instead,
but also removes some unused fields.

This series of patches does some cleanup in preparation for futher work
so that hardware video decode works on 4.19 and later kernels. We are
planning on adding a dummy driver for the relevant MDP components that
will be bound together using the component framework, which will enable
calls to set up IOMMUs and LARBs, and make calls into pm_runtime.

Changes in v2:
- remove unnecessary error handling labels in favor of err_m2m_register
- rebase onto linux-next/master to pick up
  757570f11fa4b0ce5472a6583de6f06e996a8527

Eizan Miyamoto (5):
  [media] mtk-mdp: remove mtk_mdp_comp.regs from mtk_mdp_comp.h
  [media] mtk-mdp: handle vb2_dma_contig_set_max_seg_size errors during
    probe
  [media] mtk-mdp: handle vpu_wdt_reg_handler() errors during probe
  [media] mtk-mdp: convert mtk_mdp_dev.comp array to list
  [media] mtk-mdp: Remove mtk_mdp_comp.id and supporting functionality

 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 60 ++--------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h | 23 ++----
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 70 ++++++++++++-------
 drivers/media/platform/mtk-mdp/mtk_mdp_core.h | 10 ++-
 4 files changed, 64 insertions(+), 99 deletions(-)

-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
