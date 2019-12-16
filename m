Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC5411FCDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 03:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8IuNg38fMHf271J/JCy+WMEHEOPl2+Vvf5SRv+bbdaQ=; b=FvN3YfwdihIkzf
	f/q/mN44N9bUFzyGGxd9iLT3ttC8uJS6QeDD1qM6TGKHljhZHTdXOQdZsO5x5yWN8kQxfgXHXDZys
	hFry8uIkeZ+s0NjE4I/EmoftnrR7VevANAD3ZxAqPV/JVMVAdZNAkSAgSK93YYv05vv6LmP/sXQ79
	altz7yaSVYLhbNtMWI1LnTHH92TdBMubTVx0ZPzOc4C2tRP17V3tfxlaeehIonLxBPEioY91aK4nJ
	dRAsHq9lBlNY4LhdcRO3PWOzT965cxQ++jHPqjSrEAhXWziv9fX8/d3/B7bdo98C4tLbtliWA8c0b
	wTN5nZMzv9Fm2IcUyESQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igg5w-0005Ib-LF; Mon, 16 Dec 2019 02:26:48 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igg5a-00057q-Mj
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 02:26:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7C7466A76;
 Sun, 15 Dec 2019 21:26:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sun, 15 Dec 2019 21:26:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=HY55BCVsizFE8+s5E5ZBDonzCD
 FgxVsezznsO8iULcc=; b=W+Xc8tt9dsunJkPbmapfHbyXyhB2inF4eWJeuWOiJK
 dZFSGVbwBCmANEChYj5alB/hZdOX4dUzeEFoCulR6wEvurJgyZnG7gZ4hNMEJw7O
 ML17QLvkLC8b1VkW88Ipi5wwQheF9It0JizgRIcmNe6xAn+l5cUssEEANiFtuwsV
 CJMOWeSHjGe59br2dondIo7k0FNNQwvLz17UxCeGipUeLYqTuZJaf6evkummXk1C
 M0MXvjoK2fRv5CRh3jooRUgParRsQ4TBaqHk96kIve28gcLA3ujO0nDUMfq3mPgB
 Dvy42fejruxyv4bE/7AICUJOBgMp8gi9zPsEKcE+8Xcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HY55BCVsizFE8+s5E
 5ZBDonzCDFgxVsezznsO8iULcc=; b=tNboqBN9XCn19Xbkqh8Z5zg0fVHL8mEOg
 QHIpglvdl8mFrMseerat/B+VBgkasl6ht6HkflO7N2rmBPz55RuJPFDiKTSbDdzA
 gKBt/CD9Zib6C82j4ZeZYo97BoCG/Inus+mgEzOvpT004NtkevpDVGCobqdR1Xbu
 BN9wZfo6df4ZpUSNUkuc0Kj+mwCLhfSTrx6a8XjNepX+ZXQ+XNc/SVPQsEPB6WnY
 Qia1/0zSo37dOLsUlH25G4Tk8u6DXAtYYD6x7RFpmp8LuBTBEpPWBLV35p+Gefud
 ToUfeAu+a2FvEd074k17YVQx1KvnuZY8fTUALi5I7aponf3KnD9AQ==
X-ME-Sender: <xms:Sev2XXu6NPaW4uIIrHyI8tUYiHz8u1LPn_e95Knw_XJUqNoFNSjJfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedggeehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegrjhdr
 ihgurdgruheqnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkphepvddtvddrke
 durddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhi
 ugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Sev2XUvprDZT1Kq-4QFhUz7J7QSFqx5SeRu6mf3Ueu-0YukI-wVLCQ>
 <xmx:Sev2XUY_RdiEA_vgeARq788LRe5KrHlkxMNehsCziEbPKzxR1q3XNA>
 <xmx:Sev2XWgG_MdkKBkDd5017W2E62NgbqFMzgBzJ959uBNJ9StiVF3nDQ>
 <xmx:Suv2XUE0TtfxRlHxN7DSR5sC2uBzlN6uKISs_F3LqXqWglTBfKeGDg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id EDC798005A;
 Sun, 15 Dec 2019 21:26:12 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: openipmi-developer@lists.sourceforge.net
Subject: [PATCH v2 0/3] ipmi: kcs-bmc: Rework bindings to clean up DT warnings
Date: Mon, 16 Dec 2019 12:57:39 +1030
Message-Id: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_182626_895940_4EE48C37 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 haiyue.wang@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is a short series reworking the devicetree binding and driver for the
ASPEED BMC KCS devices. With the number of supported ASPEED BMC devicetrees the
changes enable removal of more than 100 lines of warning output from dtc.

v1 can be found here:

https://lore.kernel.org/lkml/cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au/

v2 cleans up the commit message of 2/3 and changes the name of the property
governing the LPC IO address for the KCS devices.

Cheers,

Andrew

Andrew Jeffery (3):
  dt-bindings: ipmi: aspeed: Introduce a v2 binding for KCS
  ipmi: kcs: Finish configuring ASPEED KCS device before enable
  ipmi: kcs: aspeed: Implement v2 bindings

 Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt |  20 +-
 drivers/char/ipmi/kcs_bmc_aspeed.c                        | 151 +++++--
 2 files changed, 139 insertions(+), 32 deletions(-)

base-commit: 937d6eefc716a9071f0e3bada19200de1bb9d048
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
