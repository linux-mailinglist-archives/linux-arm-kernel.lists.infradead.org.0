Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 747A38BC27
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L0aFGJFuseNgcOJRjygJNN3fIy/3pbNEfuSH62z72NQ=; b=gXRmZStwsuCPOh
	ggNPJxhlN2Tzfg4ToGG2rtklvxmsKg+EpDXby5Zyu3N37ZHMcCAHJ0dHklQ1ysm6SIoD972i4EWUj
	pvzYlig9H/KZ1UlNaBXh1AvRgrT1NOz/tIFXl6dlZ9lUD+NYNy8HfXrXygYIKnkUzo8wXP38PA0/k
	beGSsiI7u632uBVVRDx6xJTe3dzr19Ze1zJCKRU/RSL35/jl73G1Vh0rfS6ViPYySx8w6y6kQ4H38
	cenkj4ocWizU715auHDdyNnU5GB1SbcRaY/otTvD7MUFhalCrcjqHnZEKKwxMV9P68geqyvIYyj35
	MATu9Z+wB04qRBFVdDvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYBX-00036U-Hj; Tue, 13 Aug 2019 14:54:04 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYBI-00035G-RU
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:53:50 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so23196406lfn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 07:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ebrdQpGbryAbE+PVSjTFqlvSSqkSS1ZgUmlnEvCria0=;
 b=ePZ0JHbra+U1kuq1bS8PxUS1CRnF7QVaKlFGUIrgNjPDCu4+CCfrMg478Kb1CtUJH5
 vwdSrpBbXu81gGSt/pIg2vEHaMMOkhg+qpcLnEPCeBtgzNkT5Sw77IW4fkugaERdtQ6k
 gBW79xeVntMdVPqPn+LET9tGnch6A4FieJNKmotqtgIaWkiqCiktVaIjlgkJbLXo3Am1
 UeuWkhbrgOeNuAdaSume6zhNLlQ5n3/wgIU52bR+GtcKp6Bi40tqRsggtqc1+JbrP/gn
 O0bBpACubGme787uuCgKQbTv0V7zSZcmi1+d2rw/QseVTywbyZcdZFKF9mEVvWQK+zHU
 eGoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ebrdQpGbryAbE+PVSjTFqlvSSqkSS1ZgUmlnEvCria0=;
 b=gOIFVLoF3r/AGqc0CBxQ7CLYJiIO4C4ntU9QNkvVLMpd0by6Bq/UY+R6CCzI1385jf
 y/LxU7OM7hbDPRh54MQHScszIm2BJLXEJ5/606ObhQXvP82jKz52PWzscgniEVpjzGaD
 5E4Th0mrk8NREG4iqcq583FPhXmPaBD06f54V+gctku2vMsCkwPzUJAhxKmmsJWK6mWA
 WTnC2/w26qks/B5bItzSvej13j8G9wN9Bv7LtQ7D8DGLkMLvVltwIz92kdxVp2xgvHbT
 dSLv+hmEgG0tt43u1WwvO84q7fGUuMFC2dYdLmJi3HfaO9+TbktIRH/bK6UY4A7XIEP6
 5g/g==
X-Gm-Message-State: APjAAAVR3H/0k309L16HXhau5PgLkHyz63dmil1+0261IUVzvIjsj/YK
 Rh5ljWHdOXXknObos+hmlAZ/HQ==
X-Google-Smtp-Source: APXvYqxGmBjxCMEseACgPnI5Cfymrnnc2nKAKmnZdzJtjplWsZFE5p5T7yf6fHNJ8shzOl5yl71onA==
X-Received: by 2002:ac2:550c:: with SMTP id j12mr18293687lfk.171.1565708026123; 
 Tue, 13 Aug 2019 07:53:46 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id r68sm19628100lff.52.2019.08.13.07.53.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 13 Aug 2019 07:53:45 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v4 0/3] interconnect: Add path tagging support
Date: Tue, 13 Aug 2019 17:53:38 +0300
Message-Id: <20190813145341.28530-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_075348_903137_CAB7338D 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SoCs that have multiple coexisting CPUs and DSPs, may have shared
interconnect buses between them. In such cases, each CPU/DSP may have
different bandwidth needs, depending on whether it is active or sleeping.
This means that we have to keep different bandwidth configurations for
the CPU (active/sleep). In such systems, usually there is a way to
communicate and synchronize this information with some firmware or pass
it to another processor responsible for monitoring and switching the
interconnect configurations based on the state of each CPU/DSP.

The above problem can be solved by introducing the path tagging concept,
that allows consumers to optionally attach a tag to each path they use.
This tag is used to differentiate between the aggregated bandwidth values
for each state. The tag is generic and how it's handled is up to the
platform specific interconnect provider drivers.

v4:
- Picked Reviewed-by tags (Thanks Evan!)
- Addressed comments on patch 3.

v3: https://lore.kernel.org/lkml/20190809121325.8138-1-georgi.djakov@linaro.org/
- New patch to add a pre_aggregate() callback.

v2: https://lore.kernel.org/lkml/20190618091724.28232-1-georgi.djakov@linaro.org/
- Store tag with the request. (Evan)
- Reorganize the code to save bandwidth values into buckets and use the
  tag as a bitfield. (Evan)
- Clear the aggregated values after icc_set().

v1: https://lore.kernel.org/lkml/20190208172152.1807-1-georgi.djakov@linaro.org/


David Dai (1):
  interconnect: qcom: Add tagging and wake/sleep support for sdm845

Georgi Djakov (2):
  interconnect: Add support for path tags
  interconnect: Add pre_aggregate() callback

 drivers/interconnect/core.c           |  27 ++++-
 drivers/interconnect/qcom/sdm845.c    | 141 ++++++++++++++++++++------
 include/linux/interconnect-provider.h |   7 +-
 include/linux/interconnect.h          |   5 +
 4 files changed, 145 insertions(+), 35 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
