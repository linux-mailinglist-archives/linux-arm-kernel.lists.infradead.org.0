Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2CF121EB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 00:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e7zx90ROYuHA6w13ipsz6k9OLe5IO/elVhh9P/RIby0=; b=OlR
	iibwQAgHn719GT46QA2ZtPymx4gSJJy0iwWv0OY2z4NDyj6m2abTPODGoDrhZgGFn4FbTJQy7djXQ
	ZNYfisRezeW4t7j9zadBOEOuLmN0ebWEA6zAhsRDtu4up9nV2qzzyTUZpNzll9bZURmHuLt/FlIu5
	P3wB69AnHpYRn82yllZZ+Hxh1ilNsWUl9U9SBY0Hgmzq27YsrvPOVUwMO6ncHnzlFEi7XDiOLMOWx
	Hd6aGE7U5/IhLWAlDCm5MiaCKnFonqUtjGu+S37/Px+yVFpdwEV7sNAQsh+LfuPn3EyC36xWc/qV+
	dbeLG88kcUKF1d8KBvo5bqMPTT4wbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igzTZ-00021V-De; Mon, 16 Dec 2019 23:08:29 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igzTP-00020L-Ca; Mon, 16 Dec 2019 23:08:20 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 456FF30C352;
 Mon, 16 Dec 2019 15:03:20 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 456FF30C352
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1576537400;
 bh=DjLnM+MErrP1BNFwRNMg+raNJmSUHkPT8G5uPAXYc5w=;
 h=From:To:Cc:Subject:Date:From;
 b=IN3ylqNIf57uqiiBHcDOZlRzvZk6oYxJ7Bv9zteS6nfV944RYebTI4lDu7zDrLV93
 7GmhqFBKScSj4+cSVlc0HjrgbuDgK843kzkD7SfihnhAxUaAN/msqtLkBdKL0IXc7v
 +t3YW4iHT0lnWkVUpuQRUn3ZA7fneR8HpRADU5lI=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id 84466140069;
 Mon, 16 Dec 2019 15:08:06 -0800 (PST)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-spi@vger.kernel.org
Subject: [PATCH v2 0/1] spi: bcm2835: no dev_err() on clk_get() -EPROBE_DEFER
Date: Mon, 16 Dec 2019 18:08:01 -0500
Message-Id: <20191216230802.45715-1-jquinlan@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_150819_449396_214BC2F4 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Jim Quinlan <james.quinlan@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes in v2:
- use dev_dbg() for -EPROBE_DEFER, dev_err() for other errors.

Jim Quinlan (1):
  spi: bcm2835: no dev_err() on clk_get() -EPROBE_DEFER

 drivers/spi/spi-bcm2835.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
