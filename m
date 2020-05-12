Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBC91CF47E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=upaM/V4J3138tlijrwe01ywrk5Szw1JzqeX3EgXhzqg=; b=AVT8EmYolTy0Gy
	/Su9GDD01QPqBM4ceK9J72Of3pzfV+VW17jyFKrEF9ZkXuExMGyI3sR7Dv2Th6KZLfEqisKZ0sAhp
	sfPKu2afLf7ycCdLlp3+rezGFaH1ENnFkJJeXYniw9WOQ7ef+gBepdEM5PvwsijzYtkeIe06xzkc3
	h/80qOT4oUdque35wYdlcimFTYWENSDai2FVwzg0S9PofybErOyMStIsi8pYiDeWWOb3Hr7rQQgdt
	Ws9BD/HE1he2nMtAlDIWdGsNPt2CcRCvBzEIw6hwU4qdWbEUtuX9rvP4keS191JNRxDnJV0iJtHwI
	XTvpjgK8nnoyn3cT5hMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU8B-0005Ik-KI; Tue, 12 May 2020 12:35:31 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU7o-0005Fo-G4
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:35:12 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04CCYvCt080982;
 Tue, 12 May 2020 07:34:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589286897;
 bh=oavLJkiSttaKbvBVxzRsHOQSQLogqUTOGPbZllDcfe4=;
 h=From:To:CC:Subject:Date;
 b=oLE3kl7PWIy40UG6vJRYa1tsoELiEdDCVeqB1R9rfE2fI6Nm2+0y2cmdIO9iLtl+M
 r5nnx6ecphXi/UB+ORrjMknNtReRsE1ETM1i4toMnbOeIZTc2kFt1SyHNZzhXuFqPq
 Ru9ytjgaaVlZVtUeuLdJg+12bbSG0Hs6DUXVPfZk=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04CCYvEL083329
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 May 2020 07:34:57 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 12
 May 2020 07:34:57 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 12 May 2020 07:34:57 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04CCYt5H067867;
 Tue, 12 May 2020 07:34:56 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 0/2]  soc: ti: add k3 platforms chipid module driver
Date: Tue, 12 May 2020 15:34:47 +0300
Message-ID: <20200512123449.16517-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_053508_666397_6EC5D4D8 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This series introduces TI K3 Multicore SoC platforms chipid module driver
which provides identification support of the TI K3 SoCs (family, revision)
and register this information with the SoC bus. It is available under
/sys/devices/soc0/ for user space, and can be checked, where needed,
in Kernel using soc_device_match().
It is also required for introducing support for new revisions of
K3 AM65x/J721E SoCs.

Example J721E:
  # cat /sys/devices/soc0/{machine,family,revision}
  Texas Instruments K3 J721E SoC
  J721E
  SR1.0

Example AM65x:
  # cat /sys/devices/soc0/{machine,family,revision}
  Texas Instruments AM654 Base Board
  AM65X
  SR1.0

Changes in v4:
 - convert to platform_driver as suggested by Arnd Bergmann <arnd@arndb.de>

Changes in v3:
 - add handling of kasprintf() fail

Changes in v2:
 - pr_debug() replaced with pr_info() to show SoC info on init
 - minor format change
 - split series on driver and platform changes
 - add Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>

v3: https://lkml.org/lkml/2020/5/8/357
v2: https://lkml.org/lkml/2020/5/5/1193
v1: https://lwn.net/Articles/818577/

Grygorii Strashko (2):
  dt-bindings: soc: ti: add binding for k3 platforms chipid module
  soc: ti: add k3 platforms chipid module driver

 .../bindings/soc/ti/k3-socinfo.yaml           |  40 +++++
 drivers/soc/ti/Kconfig                        |  10 ++
 drivers/soc/ti/Makefile                       |   1 +
 drivers/soc/ti/k3-socinfo.c                   | 152 ++++++++++++++++++
 4 files changed, 203 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/ti/k3-socinfo.yaml
 create mode 100644 drivers/soc/ti/k3-socinfo.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
