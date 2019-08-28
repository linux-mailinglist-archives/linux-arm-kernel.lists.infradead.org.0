Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC846A09C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9/8Uv3skdgSTOLFkn95qMH59dV7ThSDQ+qSiV9jw3Rg=; b=LkQQJyL1it6sgEAVgsCTQOdQtg
	2KbdskVV/YqR6zTkuUTX8+lKEN+furCu8BN6llEFFY9NXnb1tmP/67XDRKMB+YU66NPEUY5jLolCX
	iyc6i5xK5Ni9eQcolsHx/XelbR+ivrHUz6PMOsIyensW/QQ03jpz5ohGkZM26svKby0nfO5cMR1Xa
	kkBT2QUkqIo35t67TsmAStwzqyqxnlCYDqvqk9LrFUNVOZBwnVt70pRh/UTyWJo6sfhYLAvKKH3gH
	S4aWbTz0LfUcSfPOp+3HLOMPh7iVPk2ClwVb20UbJ+jHDVesNOqC+WQ0qGHrj0cOS5sEsECsCHZVm
	e9JqUjRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32pm-0007H4-A2; Wed, 28 Aug 2019 18:38:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pb-0007FE-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:09 +0000
Received: by mail-lf1-x141.google.com with SMTP id w67so395950lff.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xCaK1ced0ulZ5Oi9MjTSpYNGY2zdz0BpkWuSplpvYpM=;
 b=DLDXIOeukCSaR4ozFwatuOZ0GeW1Fdfn4XiPmOgxc+Htze5r+wmOShGgoki8kTD5dL
 RpLUyDw6fgLbP5W9jBazIJRLTJfLaEzmDrqCWslsN+DHvQAH2MpRpmPJzN1gqyIRfv0h
 teXXeWouWgOUsWdbsbcu1BvN0MeB/DD2aUrB+DcNeX9bueneDq1EN6cBNbdTQS4fDhdx
 r1LMrh6kEH5ICvnfgshJvOnKmJJXsZTXpRgAH3UPp7iG21wTL35XSIHpURAQSJyuOwIb
 FazZFZrgskbu3HMsijJfKtNwcgxfh2pM0M755q+1vKr3QYM9WSYRo+SCv/gAqxG4ynAB
 2MLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xCaK1ced0ulZ5Oi9MjTSpYNGY2zdz0BpkWuSplpvYpM=;
 b=UnT/JjA/nCXBc4Sup34Z8abKdlDMtjV2QIRqbXAxUU/r2WCtMWLuVbfof4lUatoLMu
 c+nt4Ngh22DNhGNmF35m28sYcM/J0+0UlonYlja2ZxfUXKfEZYRG3Eba0zV4ZfGUswP3
 N7qCidnj+7AkGMyJgbMp+q+PJxWXZhRWwoxjnhSE+wyynOMVQnJakD1ll9PnzESwSqfR
 4v6w+SjdNbLqUqcHBaIhqdTTEyTiyDeA9QH3SkvUUdGLs5rtA3qdSBKTeQenUJeLn1LC
 Cg3/YMrRulbstDH70yNebjGvMYBG0qOuKTSa6aZkabfMSRaYRQatpJ+fU4pJp7NR94zG
 dG9Q==
X-Gm-Message-State: APjAAAXJ2gSxuPvYz+JTC+1elUNoNPbcuqYA1Ko1nsRYCxJSX8mMQCYI
 ID5JMJiEULF3BZcIjVtQ2lQ=
X-Google-Smtp-Source: APXvYqxZcQaMXFbFrhwlGpA29oI6ZlxWY2I7KCR8fOMirHvzdALnfMPFwVHc24srptHbofDqkM/lEQ==
X-Received: by 2002:ac2:4558:: with SMTP id j24mr3364247lfm.54.1567017484096; 
 Wed, 28 Aug 2019 11:38:04 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:03 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 0/5] Serial: imx: various fixes
Date: Wed, 28 Aug 2019 21:37:50 +0300
Message-Id: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20190530152950.25377-1-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113807_826485_B6FF3ED0 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original problem that caused these changes was broken bytes being
sent/received at random on RTS/CTS handshake switch (i.e., on
setting/clearing termios CRTSCTS bit).

As it went, a few other problems were found and fixed, and then the
fix for original issue has been split into multiple patches that seem
to make sense by themselves. Thus, the "serial: imx: fix data breakage
on termios change", that finally fixes the issue, depends on 2
preceding patches.

The last patch in the series, "serial: imx: use Tx ready rather than
Tx empty irq" is independent of the rest and doesn't fix any serious
issue, but it should get rid of holes in continuous output,
specifically in PIO mode.

Changes in v2:
  - Removed wrong [PATCH 1/8] serial: imx: fix DTR inversion
  - Rebased on top of "tty-next"

Sergey Organov (5):
  serial: imx: get rid of unbounded busy-waiting loop
  serial: imx: do not stop Rx/Tx on termios change
  serial: imx: do not disable individual irqs during termios change
  serial: imx: fix data breakage on termios change
  serial: imx: use Tx ready rather than Tx empty irq

 drivers/tty/serial/imx.c | 56 ++++++++++++++++++++++--------------------------
 1 file changed, 26 insertions(+), 30 deletions(-)

-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
