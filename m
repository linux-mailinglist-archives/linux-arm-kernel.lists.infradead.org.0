Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E9F18DBDF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 00:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gY/CVIukX+WP2tkiBRcTzx3Bm+Tu2ZpIOKE6Gv2bRes=; b=MhiveDu003NsDq
	0UkvZsVFbcerwqKHGx7RPnNMHhPNAMyGsoMyoN1GnyK/xstsFMozJcnvt0Zadq8OKaXmE8bScvF+q
	NWmssz7ZWnMMG7+EYd32YrXscmwQKR2AtAhvMtLQwf1M4rf4KMEBBcCSGLBrKyvFtt6gGdGf15Ub3
	qlqS0S1Fnpf1cEpap5zNBpNAFEpkXthVX7oW+SlbfK2T7LownSEVjxv6sQnk3kHrkyxz3BREr+ILU
	AMvMfwLgV19qZZcFX5oedGQI6eKUI0jr1gvOFtRUQ+lH7Hpfaci4agAuVBs4cSElSXgBAgTM6p14r
	WSioyiQhzPI4r4XLzU7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFR1k-0001LJ-Ni; Fri, 20 Mar 2020 23:26:08 +0000
Received: from gateway23.websitewelcome.com ([192.185.47.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFR1c-0001Ki-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 23:26:01 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id 264146BCE
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 18:25:58 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id FR1ajhMbPSl8qFR1ajFlhm; Fri, 20 Mar 2020 18:25:58 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oVBIDiOUACeEBMEExhB0XWqzRyL5CKRO/6X8VGFTGn4=; b=hALY/WzciDDDeEWFVpB2y/q2ON
 qP3PjjYxkSVl7XQNt2fAJqmA6l5gfpdGSVhs0M5OhSE+Y4xmHJIz3wJuv+Z2MFfk8rp7lllrnNF94
 H3va7Zo1uS7oDtuhFmuzWJW/78RTyLb+RlosCxZlD4cP6oFYKciX7l6i6Usi2bB5NFkLO0u4TtiSF
 nmYDtajvpDOxqPT1fXrrVqwyECAbY0DwK7+Px1o1M4tU83iddHbjKQzBKiaChjc6RtDD4jQBtt7El
 7DMjIv29IrGfrR0qUiv18SjB4PhppIRgecrEdXIfwJ+e00Dai2KbrXTx/h2obe5yzmDTO98ud2hAA
 RQPRjf7Q==;
Received: from cablelink-189-218-116-241.hosts.intercable.net
 ([189.218.116.241]:53620 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1jFR1Y-001MNY-IF; Fri, 20 Mar 2020 18:25:56 -0500
Date: Fri, 20 Mar 2020 18:25:56 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>
Subject: [PATCH][next] spi: spi-s3c24xx: Replace zero-length array with
 flexible-array member
Message-ID: <20200320232556.GA24989@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 189.218.116.241
X-Source-L: No
X-Exim-ID: 1jFR1Y-001MNY-IF
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: cablelink-189-218-116-241.hosts.intercable.net (embeddedor)
 [189.218.116.241]:53620
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 29
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_162600_279434_972A6E1A 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.47.80 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current codebase makes use of the zero-length array language
extension to the C90 standard, but the preferred mechanism to declare
variable-length types such as these ones is a flexible array member[1][2],
introduced in C99:

struct foo {
        int stuff;
        struct boo array[];
};

By making use of the mechanism above, we will get a compiler warning
in case the flexible array does not occur last in the structure, which
will help us prevent some kind of undefined behavior bugs from being
inadvertently introduced[3] to the codebase from now on.

Also, notice that, dynamic memory allocations won't be affected by
this change:

"Flexible array members have incomplete type, and so the sizeof operator
may not be applied. As a quirk of the original implementation of
zero-length arrays, sizeof evaluates to zero."[1]

This issue was found with the help of Coccinelle.

[1] https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html
[2] https://github.com/KSPP/linux/issues/21
[3] commit 76497732932f ("cxgb3/l2t: Fix undefined behaviour")

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/spi/spi-s3c24xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-s3c24xx.c b/drivers/spi/spi-s3c24xx.c
index 2d6e37f25e2d..2cb3b611c294 100644
--- a/drivers/spi/spi-s3c24xx.c
+++ b/drivers/spi/spi-s3c24xx.c
@@ -227,7 +227,7 @@ static inline unsigned int hw_txbyte(struct s3c24xx_spi *hw, int count)
 struct spi_fiq_code {
 	u32	length;
 	u32	ack_offset;
-	u8	data[0];
+	u8	data[];
 };
 
 extern struct spi_fiq_code s3c24xx_spi_fiq_txrx;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
