Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E958F1B80A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzJa5Jb5FOjTSJyYmw4lpPZ2gdc9ssG71wbJcoEzSS8=; b=DecG4aBIiRPKco
	9/VEvvJzGYVyqdl0Hh7BZ3/jx5UWqpfKkfN/DLZ8LhTR1l16W4QtYlEXwGTjeRrxkfjLhUdwM2bQO
	3kBMisGUKLs9TR/gd62mxhgWPKIGLIl5SiTLEBCZgPPf2qiQxIpi2dnKOyphxWULKKk4MhlnzoDai
	/tlmGtNvogqeAkTeiXx6YFeprhv70FueUkJK9GxOKizUq5Ue+7VoHq6GHmJVqBZwhXMo1wsCCU2yu
	7D2h5ZH3IVz66wyQfTCqd8uhvb34nyvuOTytl4/9yw5YEsAR+Zyd/xK/5D4jpOoqSD/p7P7YIqwBO
	U3KANotM3B9kpcmdRTMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4uu-0006Cq-Ql; Fri, 24 Apr 2020 20:27:20 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4so-0004eD-Is
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id h69so5153481pgc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DgEz+wJcufUUG+teXaGNehTQCeHAZ7uJeYQ2NWLbdjg=;
 b=NOtPZXyitW1le/NvzqyO9UJvTrYAYkLFNPC5AwNo3bL0PVXogbJCl6/dVM5KWMZs36
 AQJbWdPGjvUpntXrlRaguNzGZ8aLKe/4sxDm7VniYpZJ/cLHiFA8QO6i8gFG4nSzxnQn
 VyorVL5RRNnxMxGrG95VDkNeBgfsZ4hHEl+hKZdj489+2Nk+xbfIM71/U/QYVsh3ptkX
 cn7fU4XIsj8mcTPghu1b+GGHpri9b9ix4FSMu7pekIoOLzjpb4TYkNH3JLjh4scZhuIn
 nCz0IA5ZlFaiE5dKld6FqcyTd8y55n2ve0uyvwzkx5oQYzDyASHLvE5jsofE7Rh/NCv/
 C5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DgEz+wJcufUUG+teXaGNehTQCeHAZ7uJeYQ2NWLbdjg=;
 b=fobreyrdb8oZO5EhKZaBK0b38ToiIIsUGC3hW+nZMlOhNZ8PMPjKs1ykJ+XvTrqkbc
 tAIADOHbfVJdPNrjVrHxuKQsDxwoRvWzzFQz4H+VXvxOyuxHxsP58pJmUbQxzDwMOWyR
 22/uVw+8JFjnmyffJTEmhkCIlXXUyjfUWDua1Zq+s6j6ZZsg1VpPY5sT0JUe6RWoVsFu
 FfcaYD2ADUK7mjQ0y5m95pfOPzDiS0kUzTwOuRCndHfgrZwNGD01FWLCh8AnINAk6WDX
 mOZajLXj3R1rnGvCIS8rTilsgkqMZtt4EXSo2b/H+cfG0BGGfSqxdMJF0ZearySgLU5t
 MdRw==
X-Gm-Message-State: AGi0PuZ0M8iTWTboV03G0mwUfilOBuosVTUJe42sr3flfICwAvfKuM2v
 zKsy/maC9168N4pNvUqtw2mHpw==
X-Google-Smtp-Source: APiQypJ1+f1MKeuUHrNcy2uquiy/RcZuGW6+iD8YyVNAH1nrYXeD8ZJsVVn/D5TeIgUXYDhFWGo24w==
X-Received: by 2002:a63:40f:: with SMTP id 15mr10958456pge.57.1587759909609;
 Fri, 24 Apr 2020 13:25:09 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:09 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 02/12] remoteproc: stm32: Request IRQ with platform device
Date: Fri, 24 Apr 2020 14:24:55 -0600
Message-Id: <20200424202505.29562-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200424202505.29562-1-mathieu.poirier@linaro.org>
References: <20200424202505.29562-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132512_546546_ECB16233 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 drivers/remoteproc/stm32_rproc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
index 91fd59af0ffe..1ac90adba9b1 100644
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
