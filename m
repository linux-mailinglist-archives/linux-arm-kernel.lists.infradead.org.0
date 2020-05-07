Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE5C1C942C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n5X1Rn/i2rVd6QNy43YAX9rROHsj1BOL+22pwxNGRfI=; b=kdXnTwC95Rh8fO
	T+j9A7Zx9cNJBvlTqCtmgSc6AWfp0TzrFbg5leFluF/U7h/I3gDqxL/+yIAs8gs84+7Dy58PF2wgu
	2ZuhXovexemLoH1+rWJSE4yiUPX0riYj7H9fzUmdgCJlFuR2gPh4ZvWrEDqPleLHDRPQnAtjuQr8f
	P7c6IquE4sVwL/hPnJiy2bC6/4G4Fmt4JF6n0ol1BFetVXzTP+wnvAhRCc63PVOHf8N9sAtwALpIK
	xN1g+Un6g9h5Uajup3akMAQXpnls56/f5cQ/e2C+zJzB4juOaWrzWiEuubnLXbn1UiyJyAuI9mfTC
	YQX6wChioJo7y3TI8qnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiCV-0000Ve-8G; Thu, 07 May 2020 15:12:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiCE-0000S3-OV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:12:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id d22so2947396pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 08:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=96jnTCBD83Wv0PAJTE2BBo0VXx5TqKQi9pMzwgM4Bvo=;
 b=qkcIoMnyddwZz6l2iGAXDhyexKTgNnQAW9lafUYWDMhTepNj8Sta9ZXm4w3wyB2AST
 1AJTMdMBajSvLBhvM16D9KgIqtXbBuhudE+UHuISqWO+qY00UPgJD8yJPr8DZ8rCOMzJ
 c2ItNvJ+ttYCUdfWTOe3xXVOp6Iplo5z9il0iU+Oml333s/6CXcW4Jgp77xvzRrLQgL+
 /ncoVKcoluCYvfQGspde7NgrHxWuU1aOLIThVKDHkx9x8j/6bqj2QsmqLDnPEMdzRg9Z
 Fznfhyk50qoESkluSuANZvefs7UgpLkAYOsCejb35HG+Jd3EE+CfYyOZaeuDWCVW5Z2i
 9hqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=96jnTCBD83Wv0PAJTE2BBo0VXx5TqKQi9pMzwgM4Bvo=;
 b=LmVgfOWaAT5aoDKPz4dKUnERdkhc/utxfy0NBvkBmW02fylj92rNjvg0clDtFiTsW8
 OVWd3M8GJKY4TCDXZ2mWHS4CbQ8+GFM5moB5Plo/yV7eRxvIsI3pBmvD2EhgF8WSF91L
 p+/oAfcheeRdnUtSADbiJStpvHZv+8tqqQH8dyJR46qY0oAhHB16t/ZVU5Jykc8mIzc8
 lFrVtwG49nA2LaPzdCXQ2T3Ok0vVTKXVicoOrLieUAlH55wGqYdGOu5hoRmmkJBqB/Id
 rpOKKHaIYoUjFUBfyJ/+3aBrEFchRLTlOfmufV8LBqc1qxQZYe9UBaJ3ET9JIKUa4ck5
 qM3Q==
X-Gm-Message-State: AGi0Pubs+6nS/UY2N/CZ2s51vVd/qU6ndM45gvQJ3aqD7t+C60gZ7S+B
 5hLgZH1l59rUaF0ca7ZFWkU=
X-Google-Smtp-Source: APiQypJdokPYKCL5kUn4xIRQIDNKHKOdREr5Pgq69HVLtf4k/OCqHfoHoqbZ9uKHEKRIlSnCEIMzsA==
X-Received: by 2002:a63:6e81:: with SMTP id
 j123mr12541889pgc.333.1588864342098; 
 Thu, 07 May 2020 08:12:22 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id a196sm5276794pfd.184.2020.05.07.08.12.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 08:12:21 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] Input: stmpe-ts - add missed input_unregister_device
Date: Thu,  7 May 2020 23:12:13 +0800
Message-Id: <20200507151213.792640-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_081222_793890_95E96ECC 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-input@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver calls input_register_device() in probe, but misses
input_unregister_device() in remove.
Add the missed function call to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/input/touchscreen/stmpe-ts.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/touchscreen/stmpe-ts.c b/drivers/input/touchscreen/stmpe-ts.c
index 7e16fcfe3b95..5e62b466629b 100644
--- a/drivers/input/touchscreen/stmpe-ts.c
+++ b/drivers/input/touchscreen/stmpe-ts.c
@@ -350,6 +350,7 @@ static int stmpe_ts_remove(struct platform_device *pdev)
 {
 	struct stmpe_touch *ts = platform_get_drvdata(pdev);
 
+	input_unregister_device(ts->idev);
 	stmpe_disable(ts->stmpe, STMPE_BLOCK_TOUCHSCREEN);
 
 	return 0;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
