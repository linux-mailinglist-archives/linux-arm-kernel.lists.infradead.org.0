Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C451F9BD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p04HxjcJOcHbAynhjSniFNGJFtVw+OV1BISOoUi5l6A=; b=QTtfKk1nqJBwCs
	xgZAf/l6uqqIqRbLMUSTiYopY+1ZttEu16acLmj6bQegOaJ74+MLDjtZQdLwjrw6g1u5PLXVXV09W
	rikNFgwfrmeXeO4fynTYSFUv67RcG6IlOaHpHAY8pIbGab1bN1lSfnSaXUtNi0LWA3b2OBZ0ykXsI
	ICpJEzrc5YMW6JKgCg6CpuKbJARgPcFDcjmsUsBYxz4wmPVSSvfAr/RRDYJh9KIDKSrjjt2lG9t0Q
	IMXqlqz0YtcatbxMCbrQLs0MFLfwxNtna5F1oKwPbC319jromlVL50sanyb3Pw8BbPOI4lF0xMyqQ
	qOSb5i9vyBS+59T8Z/Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqvB-000543-Jn; Mon, 15 Jun 2020 15:21:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqux-00053X-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:21:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id s1so19701857ljo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5YUAhbASJon5GxhmWno0UoRd7BXd3jntWstkJEM2o8s=;
 b=yNn2ctI1SfK1LU9sjVUCAZM9mhj4YDZuAWmfynbvq85hPMfnCOhaC6oCQBS3Q4um9u
 mv1svS6NviJsqTxaZEffHLdtwWaeLQ3xfQnJgPM2jFVQ93fQ06n1B35N/Vnq4XVvNL+i
 pQSTGwfgG+Ewgxvnps2493sU126aJvkx55UYYaObKtYFBs2Pbm36wyapZiko4NGGs40c
 hJi46M5jehm/uTcc5wQOa2uaYjxg9upPkg5I4HWroA8iBTW/7i+oBk7HRNw7Mep0BYoL
 lPvEOj7HJlpEgxeuVQ2Lc936Wo65dMpvixTd60yjBJE97GplYXkCEebiQ7DLpbn4wu9S
 L0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5YUAhbASJon5GxhmWno0UoRd7BXd3jntWstkJEM2o8s=;
 b=J+BNXUbC+SeALDG0JjG0H4bOEJJeW5otccsu9IG3Jo1bA/10+8wq9d2hhTVflUAQ21
 AFDYiW+jnRKw1JtMQ7d2pmoag4MuApyLKkGQPnTIW7y3sZtQN0GhMrBxVM77PCKeIa5k
 +Qo0FRFnHDHyW46r2Gx6Sv+jy0y3Lp/If+06o0jqEwetrGSNEkEXXVQkd9bZvEc+dahP
 1m4tZinShTd0oPG6pP3IpNOV8pARxkB9fPb/3l51GlWmhP2yzskvCXNsOXF3UCh5RDH+
 BrkJ2M5UtFldhCyLMEGMBKAV3nx4AV2YKU/fVrgNcxwfUu3MQ6PbiXH9M7fuQPYDnNUO
 //QA==
X-Gm-Message-State: AOAM530Rp77ue/pxhuJddc7BbblChXo9GPv8+n+OWGlfbe8PhakdulJH
 XLz4G81ihnhlAd/O5ddoOWbbqw==
X-Google-Smtp-Source: ABdhPJzFxU2e2MXPewL8AqJPAT1Mbo56PQXpiOZD7US0acJ+F2SxlwrrnbD5r4HvBYB8XfHD2pIMHw==
X-Received: by 2002:a2e:8809:: with SMTP id x9mr11781735ljh.442.1592234457863; 
 Mon, 15 Jun 2020 08:20:57 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-181-7.NA.cust.bahnhof.se.
 [98.128.181.7])
 by smtp.gmail.com with ESMTPSA id r13sm507045lfp.80.2020.06.15.08.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 08:20:56 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org
Subject: [PATCH 0/5] cpuidle: psci: Various improvements for PSCI PM domains
Date: Mon, 15 Jun 2020 17:20:49 +0200
Message-Id: <20200615152054.6819-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_082059_904629_BF6C1D2D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The main change in this series is done in patch 5/5, which implements support
to prevent domain idlestates until all PSCI PM domain consumers are ready for
it. To reach that point the corresponding code for cpuidle-psci and
cpuidle-psci-domain, needed to be converted into platform drivers, which is
done by the earlier changes in the series.

Additionally, some improvements have been made to the error path, which becomes
easier when the code gets converted to platform drivers.

Deployment for a Qcom SoC, which actually takes full benefit of these changes
are also in the pipe, but deferring then a bit until $subject series have been
discussed.

Kind regards
Ulf Hansson

Ulf Hansson (5):
  cpuidle: psci: Fail cpuidle registration if set OSI mode failed
  cpuidle: psci: Fix error path via converting to a platform driver
  cpuidle: psci: Split into two separate build objects
  cpuidle: psci: Convert PM domain to platform driver
  cpuidle: psci: Prevent domain idlestates until consumers are ready

 drivers/cpuidle/Kconfig.arm           |  10 ++
 drivers/cpuidle/Makefile              |   5 +-
 drivers/cpuidle/cpuidle-psci-domain.c |  74 +++++++++-----
 drivers/cpuidle/cpuidle-psci.c        | 141 +++++++++++++++-----------
 drivers/cpuidle/cpuidle-psci.h        |  11 +-
 5 files changed, 150 insertions(+), 91 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
