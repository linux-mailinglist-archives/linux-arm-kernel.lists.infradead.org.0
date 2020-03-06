Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D617BB09
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uMi3lMOBA8FKni7fEmcsmhsu4rEIHiE7pW5kQARxnZc=; b=p//1vL7M93VAby
	VwO9m4zofbTGUqjZW9WloEwZ2nUeSdPoIS90qRGMaUcpSXlsB3eNjaTUK0Q/UN3epXIdqy8gAQ+3F
	rxVlfOrRlQrPY16L7pfVEoj+H7G5YAhDthqLykeW36W2413gWZhUJD1NBiGdWn6n/VGnGuSR8wIlY
	8m8a+Fxi+glK34FiwVx7JVl7XEzVpSGvHsFnNTpPT91QCHyvBWTHxRPia03kKJqi7pFYvgYKi/YoG
	7ld9bboloUxzauEhygOKaI/Y9YRyyv0ylnuZCeVEQ/yLzC1SRxvifbut5ekoKHZzZUMnw/2B7jklU
	07CBRQ9mQDeZD9Zxo+QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAhv-00033m-US; Fri, 06 Mar 2020 10:59:55 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAhp-00033K-9O
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:59:50 +0000
Received: by mail-yw1-xc44.google.com with SMTP id d206so1755300ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 02:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TBvqtw1rT8oj53bds/9pHiEsrfFjmVYGB/WkMRXU24A=;
 b=LeqqtLzfeKmOQZLpcaR8j9znQ9JAD/wOHzJiUppULGsU1OylgqthG2XwJxJvoTMxFy
 Rw2qeixGoG9BYFvrU6lJc6Gk9IxsVLv49Wg+zJSrl8976wjf4J2XggJC5QWRUHntt2ZK
 sHLEGesp1zL2jILZ0z+rjVyKuefITlxFSHgjGkDp1Ifkw6C0S+Cxze3aSqxUpZq2PTOt
 BwwvjJMM9wAdY6tkpH0J6Q96WxMSGAoqC1HtV7w1/F3cc/kn5TcEdMvoN3NXO6SlU36u
 gFSH7SHvfAJ5yH+Zw4/X/uIBe73adze+q0vMnX394KdW26jtM/TQr2qw0zpJXm7g9KOD
 U6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TBvqtw1rT8oj53bds/9pHiEsrfFjmVYGB/WkMRXU24A=;
 b=oMpGBbsTvQt4vy4F/OUCEJVvB5fTxLOsox925ei7ep4Ar30wS6oE0yDcsY1euSNMjg
 Tc838u3CaDpCaZAKP/fvTZxYJqihE/kBxXVNqCgyr0bPFh0sfs5f7CKcRtAY9ofV3l4c
 2/uU6UsduIk4kBsruoHQgUE/+KszcNsi7hM33hkldHPjvuCDK8NiMAAOTOnsS1pXOQvg
 Ne+qrshdT9jgL02QOfojmTqVhko47qBGcQWVCp99WyrAgTIvnUN+ZD6w0JXBwi9ZgM1f
 gMwdRiWozeUPCP04nwdJbiB+vBvcVa7W+PSlRAt/bRDIEq71bQLlaXZCu1a6+EgUGZBv
 ILcw==
X-Gm-Message-State: ANhLgQ290ic/+yV26yXLfhr6Gc1za0YqrNIlnSQ1FDunT5ww/5B/pOde
 zlvf1/DygSD4VafladnbCr7wKmGXYEc=
X-Google-Smtp-Source: ADFU+vvc5MWvUlx6fGSwjfqz5fE9ypyuPklzAgTPtnQyPQSNrECNvjeXBVQ49MSdX60DrEU/05vliA==
X-Received: by 2002:a25:7ac3:: with SMTP id v186mr3179149ybc.181.1583492387622; 
 Fri, 06 Mar 2020 02:59:47 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id 133sm13775687ywj.25.2020.03.06.02.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:59:47 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: defconfig: Enable AT24 EEPROM as module
Date: Fri,  6 Mar 2020 04:59:39 -0600
Message-Id: <20200306105939.1233360-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_025949_351853_9A71B00B 
X-CRM114-Status: UNSURE (   7.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>,
 aford@beaconembedded.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Beacon EmbeddedWorks Kit based on i.MX8M Mini uses an AT24
EEPROM on one of its I2C buses.

This patch enables the AT24 as a module.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ab71a407288f..8018a52f6792 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -224,6 +224,7 @@ CONFIG_BLK_DEV_NBD=m
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_NVME=m
 CONFIG_SRAM=y
+CONFIG_EEPROM_AT24=m
 CONFIG_EEPROM_AT25=m
 # CONFIG_SCSI_PROC_FS is not set
 CONFIG_BLK_DEV_SD=y
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
