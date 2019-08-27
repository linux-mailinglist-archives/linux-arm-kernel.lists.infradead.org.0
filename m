Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AA59E536
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6G5WD0YImGh4f4/iUlDyS5wEW9RfaUXTgnNTRc4qqs=; b=WbJ3KyZoVpIJ89
	BTmHeXjoh7znwo9QALPAUAduDvHCAINPuKZS4Q8m1mj96L1SSysgnzDHzMvPasHhM0jWJZD94S2UP
	4l+fFZyKPREgff3DOgqGHTWUdTbNyvy/TL3ubaeL06xU/H5DMI/bdMO23ZSJ3+H7E6evHSd82VDg2
	Um/wez4QUpcYgWwKd/JiTVhqfomx+0lQ7V+Hx+pWEqgIYgyiCezF2Y/sR7abn5R0plUUJ71sXQQ1o
	px9y0Qm+xmIaldA5tveYZQVeC06baLXd7RZp/bBoNNHDCLk1BNbZ9xKfCg9cYDiJLIeC7deb+BiAv
	xcesw+AolILfMUzcnfww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2YK7-0004am-KB; Tue, 27 Aug 2019 10:03:35 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YJk-0004Se-Dd
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:03:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id m125so2348737wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 03:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dfpmBSGlcGs38lFamRyhz8Fa4xFl9r4NMSFw+nilf+4=;
 b=scgDvIvYRNMAtfMsmF6Kh5SAZnT0KCRLs+0S/9i8oDKab6se5Z5PPJmdgM3hUyWwGg
 oNRzD2ab73hMIsdjPOhvy4BfuCYiK8X+yPGeNIdkDm9M/x70PxQshaNZDT+G+vDhcOqA
 Sbs+LOEBKDPBuAoicHDF1b1lMFVhvFxYBwUZFhKOLEYmWgOa40f7sR+Q9M/Fn1A5MkOL
 ItsxIMys3gGfraHcxeYWYf0RW3cuF2b4GnrvbBfV7AJgK1W8JmZMKJ7porS1vak4FIBV
 w1XS3t8Fey0CM3EXuWJ5D9MaSppcUh/au6vtXwF1eb9vqJ89JtMhN9nh5qXLRwBkSrw6
 zujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dfpmBSGlcGs38lFamRyhz8Fa4xFl9r4NMSFw+nilf+4=;
 b=ixRo4bG6f/xxA+w5ZHVs3ENQ4AQ9YeOGuKwQUCXWwM7hm4Vb2D5saUVJBpCLbmi+Q4
 XspwXpeq1xPcHP4gyk8+c6FFZeSyXFnHdG5Jtx6jhXcCHs+rRQlxIdYYAC7hBFq+mO7s
 Cnzjm2rxVy3mPU67RrYk+zktmx7VRIW9bIVpd/O+bwCFLJYlkat28bhYwLfbVF2LIZDm
 liqKalsR/tvKBEuNAPRxKOkBNo8FNubPQRE+jbUXUpdgDI2qPGFknhN5ZsSqLcZWTbxn
 CyVTdXi6PZkXCR6It0qnJiLQX8Tx05Cmt+qLqiHkMrUKHUgzhEAEAEwZICwHISQBYWxe
 t59A==
X-Gm-Message-State: APjAAAX4PoBv0rMEDGShgNNmHxpkpsMaYsG98l4pPXB6J1wz4CNZjH9O
 Q6GKkPxhdHCTRJUZNtjXrql0HA==
X-Google-Smtp-Source: APXvYqwSlvXctj1/5N+lx0316n3C/TFLI2SVBe9G3fCjk/sXsHm1IWI8Id8tmjD/QhJB0i02kSVDGA==
X-Received: by 2002:a1c:a481:: with SMTP id
 n123mr25414549wme.123.1566900190939; 
 Tue, 27 Aug 2019 03:03:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o25sm1816289wmc.36.2019.08.27.03.03.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 03:03:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 0/3] arm64: dts: meson-g12: specify suspend OPP
Date: Tue, 27 Aug 2019 12:03:04 +0200
Message-Id: <20190827100307.21661-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_030312_495146_D81130B7 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tag the 1,2GHz OPP as suspend OPP to be set before going in suspend mode,
for the G12A, G12B and SM1 SoCs.

It has been reported that using various OPPs can lead to error or
resume with a different OPP from the ROM, thus use this safe OPP as
it is the default OPP used by the BL2 boot firmware.

Neil Armstrong (3):
  arm64: dts: meson-g12a: specify suspend OPP
  arm64: dts: meson-sm1: specify suspend OPP
  arm64: dts: meson-g12b: specify suspend OPP

 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi       | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi | 2 ++
 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi | 2 ++
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi        | 1 +
 4 files changed, 6 insertions(+)

-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
