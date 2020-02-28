Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDA0173236
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 08:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M03Z48JJjQ8L62OwgLP2OcgRWeclgSWP0UFEDOXhHVQ=; b=ReSHjtnJ3+nDlZ
	ZtqW4TTyYKL61dT3Wr3Ah3CFr7OHFRjt5l2HUQr/bH2arjYw/zUP+8tuEQNk5UhBKzlHRH+Iui/Bt
	cIiF/v3aYzpirwwBwA9TCCtE0iB9uNTwLejcjBSTtNMcW/R2/ItbSOx589Y22mi7h0p7pCsxBB1qO
	wSpjU9r4PiPEH49K+pd0hj+3Y+Rm1WlAPQAWLIlgzynOfPwZK/o1Z2SnTi2IssdoVZ9ytAFpPoL67
	9CcAq+N0JbPmkUKczsDzpwRJSfTMKjexM+WMXjJM4ErLQYBUs/AOBQB8Dfj0RVKlKhyjA218thBUT
	uxh6tUQnqpUp5IhNkiyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7aW6-0003ys-2k; Fri, 28 Feb 2020 07:57:02 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7aVv-0003yJ-0B
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 07:56:52 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 44148C109A;
 Fri, 28 Feb 2020 07:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582876606; bh=jhkGkspXY/1ypb8uBTCek0CWi0k0+SYxXRM0eW/BSDU=;
 h=From:To:Cc:Subject:Date;
 b=gtMDZjMClPasPLH/9/vtBniF2hko1IM6RWOJLYJlxunbZAhakbwYL4ud2gS7/8xvg
 orPn8pDwomOuOntaOpWYqckAKC+w5Fa04mjstyEerV0+5yqJvPMQsT1CqOfGWRPbh7
 8PGqoHcuXKIEECrWy1Xwo4TdkhN3vlErYv9WB2NzTDCRMbsB28hH0wuN1Lzs07L9NW
 MZH8XaRJD/f4q+iMdvw9McFQYdtwCY3OP82oeW7HvncYW4s7GUc7Ij+PJtyhWM1meW
 t2KDcqo9CWb8FEfihqXtS9iZJjuByruzzXPv/HxHkd49JZ+3d9QlUUX9HdrK5N4lys
 LgKzpmVAE+RuQ==
From: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: [PATCH net-next 0/4] net: ll_temac: RX/TX ring size and coalesce
 ethtool parameters
Date: Fri, 28 Feb 2020 08:56:42 +0100
Message-Id: <cover.1582875715.git.esben@geanix.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=4.0 tests=BAYES_00,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,UNPARSEABLE_RELAY,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 05ff821c8cf1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_235651_200542_0C7D44D9 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for RX/TX ring size and irq coalesce ethtool
parameters to ll_temac driver.

Esben Haabendal (4):
  net: ll_temac: Remove unused tx_bd_next struct field
  net: ll_temac: Remove unused start_p variable
  net: ll_temac: Make RX/TX ring sizes configurable
  net: ll_temac: Add ethtool support for coalesce parameters

 drivers/net/ethernet/xilinx/ll_temac.h      |   8 +-
 drivers/net/ethernet/xilinx/ll_temac_main.c | 198 +++++++++++++++-----
 2 files changed, 154 insertions(+), 52 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
