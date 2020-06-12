Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4C81F7F53
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 00:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcvY/lsFt2nN/sNiELWSNDa7zJ7zmjLg1Nb3YdqG+j8=; b=KUT93VJph5xTZD
	yJnmErbnvXQwZgqHoAYCT188rKIKQhYnPtf7gwZqxqHfAJkdJoJ7Z0/PBUTt4Tlls4pBem28AE0mS
	2EhC59Jween+/eZjFVqbfLuN26yywmaANzVGmkvydW8eDHC6VwRhJ0TNuH6B9jlJem/dwba2U7c2e
	fGCyiRXc5DwZGeeu36FU20zyIhZ1sYJMfS6z4x8LzlzxjiRmE5ZrEaJ6iVsZszWodmxkO1dWG7I/p
	Ii9+h3siakDFAsZQ6IOWT2MKaqe5gR2DgOkjk2H3wErRC5JlHg9gMIi5YTeHXEhv5kGmWWfY3bPdH
	SapuJ3OC3ccEy76M2a1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjsYy-0005zU-Dm; Fri, 12 Jun 2020 22:54:16 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjsYl-0005y1-7E
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 22:54:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05CMs1kL111988;
 Fri, 12 Jun 2020 17:54:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592002441;
 bh=VSni54BIp+7PUxHdxMxFN65bOJ1eAWoDkUhvs/ixIvM=;
 h=From:To:CC:Subject:Date;
 b=YZvXZVmAaMoYn+tYHOU0MNyPcBtTZiQ9trW5r74/atWbn+OH8mAETCL42JDa/VDSw
 t2ORncyIhSzR4L2fU/jqANcL3T/dA5MiCnZzfouwyJn0lVg4kbFKIhm1nmL+TtDVAR
 loQm6tFue07fQ1434AH43VZTPkp2rHxr62cKac1g=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05CMs1wX125918
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 12 Jun 2020 17:54:01 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 17:54:00 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 17:54:00 -0500
Received: from fllv0103.dal.design.ti.com (fllv0103.dal.design.ti.com
 [10.247.120.73])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05CMs0O0040608;
 Fri, 12 Jun 2020 17:54:00 -0500
Received: from localhost ([10.250.48.148])
 by fllv0103.dal.design.ti.com (8.14.7/8.14.7) with ESMTP id 05CMs0Vg063923;
 Fri, 12 Jun 2020 17:54:00 -0500
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH v3 0/2] Update K3 DSP remoteproc driver for C71x DSPs
Date: Fri, 12 Jun 2020 17:53:55 -0500
Message-ID: <20200612225357.8251-1-s-anna@ti.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_155403_304518_1E0D8296 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This series is the updated v3 version of the 64-bit TI C71x DSP support
that goes along with the updated v3 TI K3 C66x DSP patch series [1].
Please see the previous cover-letters [2][3] for a summary of supported 
features.

The only change is to Patch 1 that had to be rebased and adjusted for
the changes to the K3 DSP binding file in the C66x series. Please see the
individual patches for differences in v3.

regards
Suman

[1] C66x v3: https://patchwork.kernel.org/cover/11602331/
[2] C71x v2: https://patchwork.kernel.org/cover/11563229/
[2] C71x v1: https://patchwork.kernel.org/cover/11458599/


Suman Anna (2):
  dt-bindings: remoteproc: k3-dsp: Update bindings for C71x DSPs
  remoteproc: k3-dsp: Add support for C71x DSPs

 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  | 68 +++++++++++++++----
 drivers/remoteproc/ti_k3_dsp_remoteproc.c     | 20 +++++-
 2 files changed, 73 insertions(+), 15 deletions(-)

-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
