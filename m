Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEFE230FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A9g9d70sLgo8zfVAGSKsMXCOlISC4B2znrkr+0hBG3A=; b=KNR
	XPQibuOUF1aovXxBUM1JOewdQMHMJ6ubzeqSxHZpVzkh+ToE14w8qegL+aiMc8xRraeVvopr8lgA0
	HaWmKvUeQGGZf5qcINBRqpq/M+x9uGfP6RJLpj7lDac8BisttaVW/IN4WmS3AbTi9Q56ymO0nxA1i
	3IF5jogHHwNnyhhjkfvOIlCebFmHSxs4nTx1tLW2fTpWoxeVh4RRP9suSEpxe8xMrJ1VLW6W3sDR3
	eOfK7GroiYKpVwA/LfYvXGnYzhr2NTb+3OrYkucAf7mKwvvlUqirpQpoOT7tfUxtudRrjEACFBfYt
	6dwvyYe6RIBvXb4/C4q5E0I2JO/pHUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfHU-0003h4-Kh; Mon, 20 May 2019 10:12:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHM-0003fx-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:12:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id g9so6498597plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=nj86Nyw3KJK7Z3FsC5eQxrUvkQQ/Oi+NDG8wLjmFGQU=;
 b=XC8PRwo84WSBd/TUs7O4kUryHVFjZ0XnohBkePvQGh3CobFgptIyYyK9QPrxq+moTw
 qheK3uDYfkxqc+38JpOr+MuQx3M+slPhb4hsHvX/1FdLomKsDGaJBTXctgbRuPwhMo6I
 +ItbFYvP1KMvoATv/mJdHRFf42AEBmhCLxJ14QY8cCi6i5VRzHv6VW72gfwzM8yUvUm7
 H+nNdj2feSOkTDc1EC8y6kKnXffkzwVY6UGQ1UscoSQKq+jiqwPU+ZbHj6fmu/jr3bKY
 ytyKTtebsLfAXv25ZfqOOLmPcisMLpAYSSglfz3JVyN8wMm6N+4iV+lpY3eGVvGcgFev
 ee/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nj86Nyw3KJK7Z3FsC5eQxrUvkQQ/Oi+NDG8wLjmFGQU=;
 b=HzSn0ZH0KltgeYI3YS/fbjHEnBKAIOCp2GxnGCP8gBTS6ScHDNLhz4gt4x6cft1ZMp
 JOUks5EjLNv4gwXJPf7rVefq1YZKj+HBWvggdP8OH5OFpdT/mrrZfBFJBDX7LgQeIu8U
 DmPhPJPhgQifB2YJgnroz+hlzIVvRrb4QLTTczhD+/SvFv/vUA33iA9YanC8ZOpezvl/
 ClpLvdRMmmCbTbQC9sVobC/UPAqZR0jZdQZh4T+TKbnofzUWV0w4vmIAeKPDcuDhvW3v
 vI+kBlE5BK8wGvt9OxQROzcSVHgNrjp+82axVtcpRWluwpNbDMgNOFsaLsk7F/j9zqXA
 gOFg==
X-Gm-Message-State: APjAAAUEPezTX8v0EOFuvLLdLwZ5ha6Ofl9SWeocR7D4vC4E9SvwXibt
 I81Ot6pcGxIRKZbtNNZ2Signow==
X-Google-Smtp-Source: APXvYqxs+7628IuHBHqhbphPC8vlchUw/ugXo/fGIy1jfQpK4ADRQzLXXHQQSf8RfDbtwEP9NVZqPQ==
X-Received: by 2002:a17:902:860c:: with SMTP id
 f12mr76409294plo.127.1558347142768; 
 Mon, 20 May 2019 03:12:22 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.17
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:22 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 0/9] Add SD host controller support for SC9860 platform
Date: Mon, 20 May 2019 18:11:53 +0800
Message-Id: <cover.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031224_807553_4504EB45 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds optional clock support, HS400 enhanced strobe mode support,
PHY DLL configuration and other optimization to make the SD host controller
can work well on the Spreadtrum SC9860 platform.

Baolin Wang (9):
  mmc: sdhci-sprd: Check the enable clock's return value correctly
  dt-bindings: mmc: sprd: Add another optional clock documentation
  mmc: sdhci-sprd: Add optional gate clock support
  mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
  mmc: sdhci-sprd: Add HS400 enhanced strobe mode
  mmc: sdhci-sprd: Enable PHY DLL to make clock stable
  dt-bindings: mmc: sprd: Add PHY DLL delay documentation
  mmc: sdhci-sprd: Add PHY DLL delay configuration
  arm64: dts: sprd: Add Spreadtrum SD host controller support

 .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
 arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
 drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
 3 files changed, 217 insertions(+), 8 deletions(-)

-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
