Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E168CBE56C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:13:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4BvoRr3wj9koblQsdHOhctmyTZjSZRMNhR2ln+JmUtM=; b=p70EpPZQxR34Ar
	z1Btb59+JgTCRttKt+Fx9tPPGn/a/SraWzA5FS+winjYEnsMdN+LztFCjZ7E2qxgl7YVGXf0huqO5
	OUXTFx2ZressfHVLlmHA/WWQ8bJKvjK3iAQ5ed9oBDS8hp60sRJUAXzs/yqSNut3k+2QDZ/cNsJVb
	7KJjTVVmuWg8sJPa2piii178M+Ggnf6mH5gD72SG4Tvng3ZamVB2B9wTnl3lfl9t8loZKfmExDJW2
	26LYEaIyV8uV0JEG7ALHMBtpIosLNZYuzaFDnLyBbflrsTNb6AeIs1QKrqiJpBC1QZ+v/CnvVZiB6
	kbZo9p5jqSskDRKbArwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDCiY-0001Ea-Ee; Wed, 25 Sep 2019 19:12:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDCiI-0001Ci-Kz; Wed, 25 Sep 2019 19:12:36 +0000
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net
 [71.197.186.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A317221D79;
 Wed, 25 Sep 2019 19:12:33 +0000 (UTC)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 0/2] soc: amlogic: ee-pwrc: cleanup init state
Date: Wed, 25 Sep 2019 12:12:31 -0700
Message-Id: <20190925191233.22253-1-khilman@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_121234_703985_E285ADD6 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup the PM domain init state and ensure that the driver state
matches the HW state for all domains.

Tested on meson-sm1-sei610.

Kevin Hilman (2):
  soc: amlogic: ee-pwrc: rename get_power
  soc: amlogic: ee-pwrc: ensure driver state maches HW state

 drivers/soc/amlogic/meson-ee-pwrc.c | 58 ++++++++++++-----------------
 1 file changed, 23 insertions(+), 35 deletions(-)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
