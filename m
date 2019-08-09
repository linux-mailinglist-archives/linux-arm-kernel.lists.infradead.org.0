Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543DB87FEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8PK04dcNBRcsyGKiTmYc71Tn/pYcGEP8RsPuNcColk=; b=MUGnT3m6R6/xTC
	tmyELPqnomPMQJ40QnLDy/6cJfV0l6edesMarznvOXN5qmesQZoA+62TwHe67Szm5j9ewIeYxWqic
	KGxCT8PG5kDWqBJpaBIlVRDMitfhjg671icetqHL5BmWyTYocLDIZku9yFpPn+8aoOYxvfy5sAYfd
	Nv+pvY06dHB+sjWv0VgX3smHlIyckLG1rH45n4U5Pf8MpfwCyrZm5uP+14NXF7MCZk/1WUDbs7339
	ic0NJzB7O5s2Ego5BK884/qmy5Hg1wzpu3e7PG9rJ35MdFFyFT6bJIwUhkXkkDB+4EG5QHZk7PuW8
	6/+RMnOIwTL24vgeTWwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw7jp-0000rh-NO; Fri, 09 Aug 2019 16:27:33 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw7jb-0000ql-Qm
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:27:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x79GRHmd008862;
 Fri, 9 Aug 2019 11:27:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565368037;
 bh=ycgZGu5jizhkdNlgseKrh0xuvw11PVPMLsg9Kj5tN+w=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ybXgvvzX349Gw1IsgaEQY0uV4oCn6ib/HczFWW7kF1QJ4xMNBF1QT/Fi8jo8LX5B9
 oq1E/oPW3fqup2kSp3TKnbKqh5tl4spWMvv5FvvAjILqNo2dGRY/QPBkt495Axx2n/
 OnDwGeBqfCLJ76FotwO1fSr9+XU5089WJlYyj0/k=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x79GRHR5029802
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 11:27:17 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 11:27:17 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 11:27:17 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com
 [128.247.22.53])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x79GRHlg092929;
 Fri, 9 Aug 2019 11:27:17 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x79GRGZ10540; 
 Fri, 9 Aug 2019 11:27:16 -0500 (CDT)
From: Suman Anna <s-anna@ti.com>
To: Bjorn Andersson <bjorn.andersson@linaro.org>, Ohad Ben-Cohen
 <ohad@wizery.com>
Subject: [PATCH 1/2] samples/rpmsg: Replace print_hex_dump() with
 print_hex_dump_debug()
Date: Fri, 9 Aug 2019 11:27:09 -0500
Message-ID: <20190809162710.823-2-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809162710.823-1-s-anna@ti.com>
References: <20190809162710.823-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_092719_926097_A85CF8D5 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the raw print_hex_dump() call in the rpmsg_sample_cb() function
with the equivalent print_hex_dump_debug() better suited for dynamic
debug. This switch allows flexibility of controlling this trace through
dynamic debug when enabled.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 samples/rpmsg/rpmsg_client_sample.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/samples/rpmsg/rpmsg_client_sample.c b/samples/rpmsg/rpmsg_client_sample.c
index 2a0695573b47..b9a99e621a5c 100644
--- a/samples/rpmsg/rpmsg_client_sample.c
+++ b/samples/rpmsg/rpmsg_client_sample.c
@@ -29,8 +29,8 @@ static int rpmsg_sample_cb(struct rpmsg_device *rpdev, void *data, int len,
 	dev_info(&rpdev->dev, "incoming msg %d (src: 0x%x)\n",
 		 ++idata->rx_count, src);
 
-	print_hex_dump(KERN_DEBUG, __func__, DUMP_PREFIX_NONE, 16, 1,
-		       data, len,  true);
+	print_hex_dump_debug(__func__, DUMP_PREFIX_NONE, 16, 1, data, len,
+			     true);
 
 	/* samples should not live forever */
 	if (idata->rx_count >= MSG_LIMIT) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
