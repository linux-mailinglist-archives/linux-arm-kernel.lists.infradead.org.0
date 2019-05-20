Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E723A33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ad8MiAFSCosOWEakXCCPS5TrAPpZEjLj8/cxYPL78dk=; b=aZuNDKVdfLlLfE
	IvHdwQFsZsAhUOi3wWke49WEGw5RTwQ8H+p1WaUIpFEUtOObXjdz6cAAEHkZTXsEZuKVvRooLahWO
	h+ZuUUkV8yj/olS0OCSgRS3tAJA+5Af6Ii8qQu2a7zjHDKILacRFYIbNNwFuA4bxgr3DoQQ47FrcO
	Kx//y2JfbZGtwKebU8edIuAEp+/QGAWXuZp4TENE8eEG3ifQ3USmHOWuF+03HTKrQ300L4TPKneSE
	p+wrB9Q08W0o9TKMAV5pWedeeSHJ99F8rS4LoSAsMDLvKAyxVjnp1m/QL0e7ACSwn0jpAnnjBspUb
	CrAu25f27VXbXmIDYPZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjPR-0004kH-7b; Mon, 20 May 2019 14:37:01 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjPH-0004hi-Nl
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:36:52 +0000
Received: by mail-wr1-x433.google.com with SMTP id r7so14854971wrr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 07:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AFRzHXcbH/njSoGGo1Gbge1+dcPHXnbF0eN6VmDGfKk=;
 b=cGIxTaAv7Xxcx+gwpdz+0E36ZfBnEKC49CjmBmWKp1oag2/nul4LIkhXLIDtC28CKS
 s7+A37RJlbOJLnGk4r2rvohjxHlAqHzgliP1t36VSosNA8knV3qKQtCm7cg9QKSDXjYW
 /vK5jjh3nyiv/thu4IOsnIFKIfwXwo6kPct7PmhrhZ4QVo/LTxwDkmQXwpEJC6o+gj8R
 z9b8CjojJPGxCb1T6epaj/IkfT6df3W9XGi4gxlWoK34sk9Y/EqSbvOPRrE9kdYtRhr/
 FlXHQsDAbi+detoTyngqRN+xLcznwSjKiDT2LsULYZMpHr8LXeLMXXmsgQ/GQfPiqd+T
 v6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AFRzHXcbH/njSoGGo1Gbge1+dcPHXnbF0eN6VmDGfKk=;
 b=uj58PFKR9uxcoMRQZLprVKB6RFQjjHKOcLPnFMNOWdhq5acjJsSIkIgzRLuaRpR5aX
 3CY8Z+TF/dUp8/R4Al3iyfq9A5/eIBya+rBI8GB3gxL2n/35qCLmV7GICGcGsK5APlyl
 8Y9B/MBMDsm9GBVUqRfcIEtQyDrze2WvOxrK8nS8GYb9Lp0GLf7zhVC7RUa7lg33wjsJ
 +xB7m0xVGBu0hAyjW2fdnraI2mudMZYcXsbUH2qmTZDeK4BrOeSfSdfLwVFcB0g+Ey4L
 jLNBkDSN3yCmUe4246v4L9kwTC4khp0pYTBvEAVbNr84ZksiWlJHLukGaqrGhmYrVrmJ
 y9pA==
X-Gm-Message-State: APjAAAXP5xQ5uNb7hVfD+hy5HQvubj4D7sJotWNqYDV8ywBmCii2gVRi
 UdOpvbbpVLqZxixn95nw9CFu8Q==
X-Google-Smtp-Source: APXvYqzIAdN8iLbDHuNeo3JWIWO1opaYbet7cj7r+qxT8zkkAZ5YaL/XT5xl6XMxfrwKdAM+J/6Krw==
X-Received: by 2002:adf:f548:: with SMTP id j8mr11400171wrp.171.1558363009994; 
 Mon, 20 May 2019 07:36:49 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a10sm20518729wrm.94.2019.05.20.07.36.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:36:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: ulf.hansson@linaro.org
Subject: [PATCH 0/2] mmc: meson: update with SPDX Licence identifier
Date: Mon, 20 May 2019 16:36:45 +0200
Message-Id: <20190520143647.2503-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_073651_775322_78CDCA99 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the SPDX Licence identifier for the Amlogic MMC drivers.

Neil Armstrong (2):
  mmc: meson-gx-mmc: update with SPDX Licence identifier
  mmc: meson-mx-sdio: update with SPDX Licence identifier

 drivers/mmc/host/meson-gx-mmc.c  | 15 +--------------
 drivers/mmc/host/meson-mx-sdio.c |  6 +-----
 2 files changed, 2 insertions(+), 19 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
