Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396FC1CFE71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 21:36:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=moYz26PJGDVU83mn116BHWnm3Mf6bhAc3qXYDqxo1Us=; b=uM2Bj94LuNp2QF
	b8x66AdjVdZOle+RwbB5zcrOSLpLAZYLfjDkBSJK79pxNQbE33GPduT9z98eKDzPdhi3Uo8E17+wP
	Ig/fZupxzh5vcV04xyer804TtTgGLlW0FsacQD/QvERm49L++MQVEKolcpEv8cDosfgbLj3CV/+LS
	YmEAzMvSPmxhR8u+pNkpsa493G1NBdfrJwjIUIT2l5TOJvTx+jwtVlrq8Occwj2nPJoM1W/canZfL
	sNLhJKLkc8xi2cbvvDt+NA1EzSKbzcG5vmRuwiXgQMcnBoscuMhwRJxT0EUXZtq6JMziV0GeXVZdk
	aeH3mC11OU1rdF6hiFjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYahk-0002pi-Tw; Tue, 12 May 2020 19:36:40 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYahd-0002ob-3n
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 19:36:34 +0000
IronPort-SDR: 4UGwrTzxwf0w90TIDkteT2k5SniNt06xCbV64/EyMpCu0OmYk9wDAAJHHE4NpF4X9VLCEVbdWe
 eyNWprwiM4PQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 12:36:31 -0700
IronPort-SDR: ZYUQ5kB+gY223GVFoupNeCkopSW/1uaZBLkZHNJzaJTSIm5J1c652glBiqdrSeADbcS8ZvyVQi
 ueuQRJdmjcGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="252977756"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 12 May 2020 12:36:27 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jYahW-000D7f-CF; Wed, 13 May 2020 03:36:26 +0800
Date: Wed, 13 May 2020 03:36:18 +0800
From: kbuild test robot <lkp@intel.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 Michal Simek <monstr@monstr.eu>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dinesh Kumar <dineshk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, Jacopo Mondi <jacopo@jmondi.org>
Subject: [RFC PATCH] media: v4l: xilinx: xcsi2rxss_enum_mbus_code() can be
 static
Message-ID: <20200512193617.GA20694@f5a3dcfd553e>
References: <20200512151947.120348-3-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512151947.120348-3-vishal.sagar@xilinx.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_123633_195630_B87F3037 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Signed-off-by: kbuild test robot <lkp@intel.com>
---
 xilinx-csi2rxss.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/xilinx/xilinx-csi2rxss.c b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
index cac08149ae7a8..3c2e9ff166db1 100644
--- a/drivers/media/platform/xilinx/xilinx-csi2rxss.c
+++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
@@ -813,9 +813,9 @@ static int xcsi2rxss_set_format(struct v4l2_subdev *sd,
  *
  * Return: -EINVAL or zero on success
  */
-int xcsi2rxss_enum_mbus_code(struct v4l2_subdev *sd,
-			     struct v4l2_subdev_pad_config *cfg,
-			     struct v4l2_subdev_mbus_code_enum *code)
+static int xcsi2rxss_enum_mbus_code(struct v4l2_subdev *sd,
+				    struct v4l2_subdev_pad_config *cfg,
+				    struct v4l2_subdev_mbus_code_enum *code)
 {
 	struct xcsi2rxss_state *state = to_xcsi2rxssstate(sd);
 	u32 dt, n;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
