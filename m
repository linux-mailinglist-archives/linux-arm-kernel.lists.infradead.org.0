Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E7A1EA8C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmSoM4wM9lRYpPWgjg7JOAOZ6Za+43s/ks86AsiVD7A=; b=ZdkwHAPrA9aPpP
	LQpYafPddJsc3Yd5VjUreB2xHnDPuuFNcvpoNLhFpsrGFHLo74UaD7dEmk2vchhVeqosjFp5n5yUr
	jHJeipRKRBtmak/RH7xmkkRIBZDor4IqDanF2JrPzi+p788HSjGWwRNsWdvAdt5iYPT2lolOZZo68
	ImypU+mNaEnpvbiNW1IKwJZ4ZWNIzxMch37ONbes34iZUYg7TudrFkrkSOmZta6i+pofH5B8+pmma
	25XTnuQlBTODKaNt07ledXNp73fT+GX2Ncom3oJvNo/cQ7yfq6BftM2XHREjUNBy548pOW20+5PBV
	4PRxzRWVd+s/MBEbOYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoff-0004bx-Lz; Mon, 01 Jun 2020 17:56:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofF-0004SQ-Od
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:55:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id 185so3837510pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ly/+lULxncE0Hv/XKPdsdbKvQX3A5UmakKCmLALYjq0=;
 b=dkI7qDJyx89vpnpMR9RvXRcPeeBf1zFWx/8GgGMnZHyTtL5pipzTvNVHo3FGncZVYp
 Q7Y9OGgwFDlGDkHj7dXap5cwa0mPWzPieIeTTIoUzGl+fW7h3aF95HXddQjs0fsROJrA
 P528DEuQDIA7QACQVabOPNA0v632XS/lQMgR4b1qXKrkSqaKCYcMKk5J05O3srOpFIXY
 dUrHzjzEx2EkUO7RCMrWu181kDtXBfkA0iO0u59DOUweyH/+HKER5DQSaT4lrzGdRhMa
 gyt9sn5ZugY43f4OnB3ZlAL/eKeILEk7u/Tb+l7MBh0tkjdiYM99wXTLXsnK0qC4sIJM
 qzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ly/+lULxncE0Hv/XKPdsdbKvQX3A5UmakKCmLALYjq0=;
 b=GlH1ikDMEf+38JatbF2Js2hmpukvnWCXH3hFKuSOaCPGDh10aQxV4PZ61VQQbfKB2M
 l8do71r0jw5jAZvXWobjwfk8FzlfiqkrtpyrTzA6HZa7m5rPgGo56UlqOC0IrWGVHayu
 CrEeC8gWDgAcWl+S5oyq80WqiztU0S+bi0O3JqSUe8SbOVBDOjoPyen0P9MaXJKMDmJi
 mFUliHFzN2j2Fzw+W+QyeEDvWCNz4dxlnYLrSgNUdF/ie7sCJ4SmKjQx/D4qZ9l7L/2c
 k4mEBdeZ2cWV/PF5vTTksBdYC87UpOstri1nYNpH3fN0LNdJPqCB4MYxMTJBDsx2ffL/
 UQgA==
X-Gm-Message-State: AOAM5327TQkXCJ1ZW9xen1DRKNduQUfPqjZKxiSy+7ymBObOxDFQveuH
 bL1dCmz5ehLwKlKFesPKN8kNAQ==
X-Google-Smtp-Source: ABdhPJyfHXNxc1V3Yc+P6I77d41jXD45DyYRGH8UfzswQ1/Fjb0Q/j2fYXA57kZwWD2pF4ngIEehYg==
X-Received: by 2002:a05:6a00:148c:: with SMTP id
 v12mr21200684pfu.171.1591034156896; 
 Mon, 01 Jun 2020 10:55:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:55:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 02/11] remoteproc: stm32: Request IRQ with platform device
Date: Mon,  1 Jun 2020 11:55:43 -0600
Message-Id: <20200601175552.22286-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200601175552.22286-1-mathieu.poirier@linaro.org>
References: <20200601175552.22286-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105557_794746_6113B33F 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loic.pallardy@st.com, arnaud.pouliquen@st.com,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Request IRQ with platform device rather than remote proc in order to
call stm32_rproc_parse_dt() before rproc_alloc().  That way we can
know whether we need to synchronise with the MCU or not.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Loic Pallardy <loic.pallardy@st.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/remoteproc/stm32_rproc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index a80733fb08e7..94fd687fb5b2 100644
--- a/drivers/remoteproc/stm32_rproc.c
+++ b/drivers/remoteproc/stm32_rproc.c
@@ -261,7 +261,8 @@ static int stm32_rproc_parse_fw(struct rproc *rproc, const struct firmware *fw)
 
 static irqreturn_t stm32_rproc_wdg(int irq, void *data)
 {
-	struct rproc *rproc = data;
+	struct platform_device *pdev = data;
+	struct rproc *rproc = platform_get_drvdata(pdev);
 
 	rproc_report_crash(rproc, RPROC_WATCHDOG);
 
@@ -553,7 +554,7 @@ static int stm32_rproc_parse_dt(struct platform_device *pdev)
 
 	if (irq > 0) {
 		err = devm_request_irq(dev, irq, stm32_rproc_wdg, 0,
-				       dev_name(dev), rproc);
+				       dev_name(dev), pdev);
 		if (err) {
 			dev_err(dev, "failed to request wdg irq\n");
 			return err;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
