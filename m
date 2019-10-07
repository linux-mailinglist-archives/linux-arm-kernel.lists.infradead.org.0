Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5549ECE1BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zeUbf2zhKjnIXLn1h4YBnP/x3eDf5tbicppQZxh2RrY=; b=RuFe7NtLJAbaC9
	uFsVZooK96AYAoyAV1qBiDfrgc04fRbDJEZtyMYKNSvVNSc+TQZSa25fC544tgBj/IXadQohxusmy
	Cfx7Ila3KP3Ot+OmTWEfDOjwX8v35Q6LPvH8k8CHtBDegdhhRozWnv4CLGRJ52upDtZz1/MihaK8d
	Q9HTqrwELPFS5EH+Omy2lr4AtJ0GdtYf5H3e/juzddfztlhsKsTI2HGZuynQgAcVZdtefT7hgo6nu
	mF6vWqsYJmYJvBrRBq9HySIYGv7wB40HYh9V8aupG/rbl+YJTgeZOxeuiTZHFF3h5XBZH7xU18QbK
	B3nK8blKrBq9a3k7cKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSAI-0007Nq-FL; Mon, 07 Oct 2019 12:31:02 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHS91-0005Q0-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:29:46 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97CTaMa092213;
 Mon, 7 Oct 2019 07:29:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570451376;
 bh=EKPQGZJtcp0oWSNo23JzQvp0rg1lGwZKndwkOQ5nfFY=;
 h=From:To:CC:Subject:Date;
 b=Giz5aNLe5i0GWwdOzvW4QxrqkXI/6LprSYRtKiJ7cXMmp3y++JGq6le48qKw17L2g
 pVfdcfdUD/yKihRKw+fUEtxE1ExRuEJtg5X+ER67VMp8T3Ts1k46sCL/j8uE7Lfibp
 z1udQY9MtglxvaUZX91xdhOWzrldciPSd0gpR/Cc=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x97CTa6n066816
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 7 Oct 2019 07:29:36 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 07:29:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 07:29:33 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97CTYe5066760;
 Mon, 7 Oct 2019 07:29:34 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 0/3] bus: ti-sysc: fix reset sequencing
Date: Mon, 7 Oct 2019 15:29:28 +0300
Message-ID: <20191007122931.18668-1-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_052943_871049_95B3EA2B 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

These three patches make sure that IOMMU/remoteprocs work across
all devices with the latest OMAP PRM series for reset support [1].
The last dangling issues were caused by the removal of the hardlink
between the reset + clock drivers.

-Tero

[1] https://patchwork.kernel.org/cover/11142871/


--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
