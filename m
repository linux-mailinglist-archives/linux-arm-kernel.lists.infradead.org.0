Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953E31EA8BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m0Ebm5/pEAsp48rWNZ603TW99EOa1C4Cw+zeng88QBs=; b=Ihw0rBKceX+83R
	9vPvq6FTMQg4uh1iuqSzlZckMGyiIVc9YV92OpDiooyo9J7xCgbg1kxkTijQvOMlxZBusf8Lb+x95
	ZRdS8wiGSL4XsCAPbFRrNHC6sE1p2WVuh1CKC2ZycfXIGZEPFQZo6qoLtT/dqMd0aD5NsJg1GrnbP
	+ba1YLp1MpHanR0ko3R54iQOvFViXfbHnIp2BM7C1VCovMGjyvAaU68rmFu4ZxIF7LFuE0sZnlLzN
	V43POLkcVWlqDiPyKp/QCyKqWEh7OaORNTlE3zud7wQgG3cw08IHxJXtfGx3x0EMqLbGYrQMtAv9G
	96NHSbyqJtRJLF/1JVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfofN-0004TR-JV; Mon, 01 Jun 2020 17:56:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfofE-0004Rv-7w
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:55:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id v2so3822633pfv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 10:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zACkuhg/77H3zeO+PGHNh+9yMlSwDDWi/x5X1ISMcog=;
 b=PLoEnhnypIxdDYglWjZWdbmVY9O/3d/FXn7/fOGLX1J0QDbcyq5yORuXvRPyf69GmH
 bPmuZpFDZjpxs3BNlZhAHlyAgGtEMEaGUOkeX2GeG6uWEGH6IiHYN5iv6fgkoia729ic
 ukbV9fvbH6EccxPGYp4IcT2N++qdipIqSfWyHPUiwWylioQAnUx6SmnS0U5wt9sn7I2r
 UgI/3DvCL6guNdStmxOeftLH3GgBU0iz+2AdiElVirEa8e3vyBspGCr1Bhs4voehcJiU
 uexyoOA9cpespFyQz8k1bf0tB1pWLksPQnbJGucIYnyTYj7SR+jT1oVyu66oYWuZi+iR
 NJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zACkuhg/77H3zeO+PGHNh+9yMlSwDDWi/x5X1ISMcog=;
 b=KIrNBAvPk9phi8UFrOtce4ldUc7DLv8s4A424Z7EG0kGiBp0LccB50EJXL4+Hf8RaH
 P2K34CeixepyWAEkw0VDI/jBm/Bk6QrqGrOj3VnBSQr5aIrhDFDQ3Qbr5IOfhfvvugl0
 ++YIHUrW2nctBJ14noplyke/KMgWjVn/vwBmN31jUYjA/hcdYe/xMV1nA3cqFy5RljgP
 zIJTK19mzUymkqXwgfpZLtIeGq1iChOqC7uZM2YOrKphGeYNPMR+csUZdnB4UEF2Pbyi
 igbLp/UuUteSlzNsKOZ++KdEzOOThyHSbSZtgU2qXzBMpYky3CuMIrd2DrKhKn/7seTw
 HPSg==
X-Gm-Message-State: AOAM532ZY2XPJFybUkzW0C0dYWEky/cEjzU7ooeIxTu/LEfqkapNTUZx
 WaD004nF7J4OLlakzCDielKxyfDDsoo=
X-Google-Smtp-Source: ABdhPJx7mm5a3eTp+VHkriv3BjsSxvd0F8RrxXaATmZINzJsX7X4HNjbdTel9tb4XVNDl4GzAM/86Q==
X-Received: by 2002:a62:1681:: with SMTP id 123mr20422249pfw.306.1591034154312; 
 Mon, 01 Jun 2020 10:55:54 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id p7sm64771pfq.184.2020.06.01.10.55.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 10:55:53 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: bjorn.andersson@linaro.org, ohad@wizery.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v4 00/11] remoteproc: stm32: Add support for attaching to M4 
Date: Mon,  1 Jun 2020 11:55:41 -0600
Message-Id: <20200601175552.22286-1-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_105556_314338_7C2CE680 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

This set applies on top of [1] and refactors the STM32 platform code in
order to attach to the M4 remote processor when it has been started by the
boot loader.

It carries the same functionatlity as the previeous revision but account
for changes in the remoteproc core to support attaching scenarios.  More
specifically patches 6 to 10 should be given special consideration.

Note that I skipped over v3 and went directly to v4 in order to synchronise
with the remoterproc core patchset[1] that is set at v4.

Tested on ST's mp157c development board.

Thanks,
Mathieu

[1]. https://patchwork.kernel.org/project/linux-remoteproc/list/?series=296713

Mathieu Poirier (11):
  remoteproc: stm32: Decouple rproc from memory translation
  remoteproc: stm32: Request IRQ with platform device
  remoteproc: stm32: Decouple rproc from DT parsing
  remoteproc: stm32: Remove memory translation from DT parsing
  remoteproc: stm32: Parse syscon that will manage M4 synchronisation
  remoteproc: stm32: Properly set co-processor state when attaching
  remoteproc: Make function rproc_resource_cleanup() public
  remoteproc: stm32: Split function stm32_rproc_parse_fw()
  remoteproc: stm32: Properly handle the resource table when attaching
  remoteproc: stm32: Introduce new attach() operation
  remoteproc: stm32: Update M4 state in stm32_rproc_stop()

 drivers/remoteproc/remoteproc_core.c |   3 +-
 drivers/remoteproc/stm32_rproc.c     | 214 ++++++++++++++++++++++++---
 include/linux/remoteproc.h           |   1 +
 3 files changed, 198 insertions(+), 20 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
