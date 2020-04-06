Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2918619F96C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gi6F+yDTmrKhQZUjpCntc/Hv6qVlLyFVQVZ42n+DIPA=; b=bP3nkMfaQ1SkVs
	/Tdi3YyFicMZ0WzNalMWjMtgl0Ngp91rP9Xl5oDSvDdT0tqaQQ/FL0JATOnVJZbZJbNgTlBwFbCm3
	dSacEKMZvqb9XfauuLLveIv8UZddvhvJkYaVpOZGpGbt/oq8F7bnrLpb3xcAlJttyAA9bHRR4y3Nk
	lf1RnQLyqkWKhtPe9rNFc3Euha3UHE3UAQ+fqJbfx8OBLWfSEluXg+lQaIE5vZGgfz0RdlLDY2B/Q
	w51kwr83jegcOsGZg8U5Cb6F4ZbRG2p/dSwM3qsP7cXg5lgFh9JXBAQ6PIv6cxfYmTd44xqaUuEQM
	AVZBV+341xy8c2IhnhHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU8z-0007oO-7J; Mon, 06 Apr 2020 15:58:37 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU8o-0007nV-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:58:28 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B5283C0009;
 Mon,  6 Apr 2020 15:58:22 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/3] Introduce a counter inkernel API
Date: Mon,  6 Apr 2020 17:58:03 +0200
Message-Id: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085827_046756_A7E952FA 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello everyone,

This series introduce a basic inkernel API for the counter subsystem and
add a new rotary encoder driver that use a counter interface instead of
the GPIO existing one.

See commit log in 0001-counter-add-an-inkernel-API.patch for further
details.

Kamel Bouhara (3):
  counter: add an inkernel API
  Input: rotary-encoder-counter: add DT bindings
  Input: add a rotary encoders based on counter devices

 .../input/rotary-encoder-counter.yaml         |  67 ++++++
 drivers/counter/counter.c                     | 213 ++++++++++++++++++
 drivers/input/misc/Kconfig                    |   9 +
 drivers/input/misc/Makefile                   |   1 +
 drivers/input/misc/rotary_encoder_counter.c   | 152 +++++++++++++
 include/linux/counter.h                       |  27 +++
 6 files changed, 469 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
 create mode 100644 drivers/input/misc/rotary_encoder_counter.c

--
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
