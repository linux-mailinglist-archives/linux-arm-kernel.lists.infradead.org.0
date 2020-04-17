Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A61AD398
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 02:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H+fpK8Yl+vokl0VyrxYKhlX0G2Vf2145PBXj2Hi19f4=; b=dfXY32jWV0kUZ7
	c8KXyamm9WRuFsf98yub9yEYwLHLwLYdFfW2VCeUJ+r6QnaXzobf0DAS0kGtAl/tMnYkC53K85lya
	x484zVoAE+Q5fUUZunUILyjux9wsB9QDvdGZjZs63NkCxEELn/h3f07thC7inhtFTELfFeGXiSG6u
	Kl6h+AwQO4niMU51GoeIUd2Kz+89msl5E5wBiD7R3XXGuBEHNlfWaP47vi/8bBP6S0R2I2l3H1Hiy
	CxDocuAB7uoA31IYKicqM+Gk+d8GqVsVXGpYdgKV0Hf8H1iAu0KAm7Nj+CCxY609nKZ4uniVaJul/
	/3LYgdFHAsgn9lI0bGJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPEkt-0003lp-BF; Fri, 17 Apr 2020 00:21:15 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPEkX-0003gE-LK
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 00:20:55 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03H0KeSx002968;
 Thu, 16 Apr 2020 19:20:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587082840;
 bh=MmrL7c1P4QoUychSaHzqzrqt5M60o7cJWVq4Yc0OSjI=;
 h=From:To:CC:Subject:Date;
 b=N0O0iCnVsymFZGgsPIsioGMsvMDztXJ0PYo1zGRubWTAyRTUTF9Qdt8wg5lnbiNJr
 gOpT9CJ7GQtmNdW7eA2DZA03Grxzx2Pzu5JdhmiHzzsXdDixXctZgoz0LOxm7LclqG
 RExaPwRMLtClUMzQj4G2NsHWrsG7R6CzK0CrTmok=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03H0KeOf060155
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 16 Apr 2020 19:20:40 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 16
 Apr 2020 19:20:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 16 Apr 2020 19:20:39 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03H0Kd4W020891;
 Thu, 16 Apr 2020 19:20:39 -0500
Received: from localhost ([10.250.70.56])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 03H0Kdj3060516;
 Thu, 16 Apr 2020 19:20:39 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>
Subject: [PATCH 0/2] rproc core patches needed for TI K3 drivers
Date: Thu, 16 Apr 2020 19:20:34 -0500
Message-ID: <20200417002036.24359-1-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_172053_734128_7CC89315 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn, Mathieu,

The following 2 patches were a revised version and split out from the
TI K3 R5F remoteproc support patch series [1]. The patches do use the
cleanup logic from  Mathieu's "remoteproc: Refactor function rproc_alloc()"
series. The patches address both of your comments.

Delta changes in individual patches.

regards
Suman

[1] https://patchwork.kernel.org/cover/11456367/
[2] https://patchwork.kernel.org/cover/11492005/

Loic Pallardy (1):
  remoteproc: Add prepare and unprepare ops

Suman Anna (1):
  remoteproc: Use a local copy for the name field

 drivers/remoteproc/remoteproc_core.c     | 21 +++++++++++++++++++--
 drivers/remoteproc/remoteproc_internal.h | 16 ++++++++++++++++
 include/linux/remoteproc.h               |  4 ++++
 3 files changed, 39 insertions(+), 2 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
