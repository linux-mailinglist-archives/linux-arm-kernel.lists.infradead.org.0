Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC041B80A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3CXsRAVHqVfoujNtxdwOdQ1rPIYGEZZ4PPBhYzyc5vs=; b=ETNzQ4zSTE6HCp
	k7Dei/PyCvjQZ1M3zfUenWe2XB0nfLpiqJP1O+ZF5kvlbp7BTxZKdfh2Vc8SiWYsV2WVw242wLLhh
	c6aL3U7wBCNMUKPjA6Ip/64dUZg5BuQ1u+FPrG83MxPb5nuDNU2eTuzWcVhnayHsowCvT9L5D292o
	NUoht8XTK9RFxgESZ28nYdiQ0QgKREvzeC2h9q2u/XvsBiQ5N9LLWyaBSfiSGNVPzZwFmOA92McpI
	FyRZfi8c0QQR+8kSjCG11mTV3OzVF08R5zrQj9SPu8YSdqex8G18FS9IPGd1fuwgjl7fgVC5Vw4mW
	dNXEblBNMecR1TvLbzUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS4ta-0004u1-L0; Fri, 24 Apr 2020 20:25:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS4sn-0003yb-1U
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:25:14 +0000
Received: by mail-pl1-x642.google.com with SMTP id n24so4142906plp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 13:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/73dacrr5ih6hdF656dZ5NCkiqG8RDgJvTOSmKNoCEs=;
 b=r4xd9ee3KSRA3FkjbDp5pdoFm4oqf1ju1oMdUPs/LsELEPXvZTvfKG3lRQumA6wtBK
 x+11xAVPcf4GVSmDPoM6yZhyVTuH0Z88Wj15SecjCXvbdLCQXKiBGWk1zgiHGuKnIsre
 UznblhiyO2NnxvzlnO09WN491gJDC0If/15xLvatdvan6jKISKDaqChXy4yQAJGt+f50
 VV6RFOYRhf5L8brlwXTCehm8v5IOrJMhuIjG9/XiPVBz9bS1pgKSjPdg5Ru3DBHI3jSp
 vP5N7sSdSals8yTBFMtInrHk4tK9aYrw5h5cXjxkEnbVe9enZ5IwrJ0WDfRkBsA68auS
 3eLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/73dacrr5ih6hdF656dZ5NCkiqG8RDgJvTOSmKNoCEs=;
 b=Rw+DkQhcC/su0vxEStTxqQwPxuYUPAwBfafaNDtFtdrp+7cOiPPzkcF3ziac86B5ox
 JJjtzRWv9++1X2wwONytbzvSXyGWaHSwOfBwwNoc7WjtScRB4F3Vnba5/RllixK1DP5o
 hS51FbmT7QLBuzQXIae1lssK0kNkguJlpBA2hdjUhd6hgSt/BBY3yAyhfUC9wcK36Y8E
 0DTigHiwg9pRHF0/d5nGbK8Cfd7hr68fZ3D2KrR/LjObw6ZQfcV4nkUHTh+c8nI4YAmT
 AZUePNGVHxVVwAqZ3N7T8/jze/45aD3L2k/XXaPLVoQTTBZ3M7Cqm9cpzInvVpIVrkdh
 /qGw==
X-Gm-Message-State: AGi0PuaF5H2G6lC+dzQA7GVc57xMXsjJPAkIvqcveS3QAAjt3xUqPyoo
 j1Y6egVpD6Vqu3bef9p6Uj088u8FMM4=
X-Google-Smtp-Source: APiQypLieWB+6wi/jnde8vnz/b1lgyl0vak4oSUed0SccGbaG2k63/PSP2q2PkRgO3eDH/w4o71TWg==
X-Received: by 2002:a17:90a:26a2:: with SMTP id
 m31mr8258040pje.128.1587759907264; 
 Fri, 24 Apr 2020 13:25:07 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c1sm6553245pfc.94.2020.04.24.13.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 13:25:06 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v2 00/12] remoteproc: stm32: Add support for synchronising
 with M4 
Date: Fri, 24 Apr 2020 14:24:53 -0600
Message-Id: <20200424202505.29562-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_132512_542448_415FCA7B 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

This patchset needs to be applied on top of this one [1].

It refactors the STM32 platform code in order to introduce support for
synchronising with the M4 remote processor that would have been started by
the boot loader or another entity.

It carries the same functionatlity as the previeous revision but account
for changes in the remoteproc core to support synchronisation scenarios.
Some RB tags have been removed when the content of the patch has strayed 
too far from the original version. See patch 3, 8, 9 and 12 for more
details.

Tested on ST's mp157c board.

Thanks,
Mathieu

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=277049
[2]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=239877

Mathieu Poirier (12):
  remoteproc: stm32: Decouple rproc from memory translation
  remoteproc: stm32: Request IRQ with platform device
  remoteproc: stm32: Decouple rproc from DT parsing
  remoteproc: stm32: Remove memory translation from DT parsing
  remoteproc: stm32: Parse syscon that will manage M4 synchronisation
  remoteproc: stm32: Get coprocessor state
  remoteproc: stm32: Get loaded resource table for synchronisation
  remoteproc: stm32: Introduce new start ops for synchronisation
  remoteproc: stm32: Update M4 state in stm32_rproc_stop()
  remoteproc: stm32: Introduce new parse fw ops for synchronisation
  remoteproc: stm32: Introduce new loaded rsc ops for synchronisation
  remoteproc: stm32: Set synchronisation state machine if needed

 drivers/remoteproc/stm32_rproc.c | 262 ++++++++++++++++++++++++++++---
 1 file changed, 244 insertions(+), 18 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
