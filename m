Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2A811DD0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+TVBlR+/GaM3LZpewUnJ/ox5Y33HT+jcIeW7yx1xJGY=; b=dKS0Z222YXMEqo
	MmUg/LwcTl36fV3cehqXlh5CKH6nabcqSogJfI/5VRVvSzWF56wJzLgbb+3EynEvWcqjwgymRCjtM
	nJNd9+MULcjGT5qii0zvLcm7nGdl9Rkcu6Qv6lHkN5GiL5TPveqnGoxavUf1hj2SFHqF4mBxTq9lr
	h0DUwwBfRf8Ds6bYqs64lOflrp26dzaY/CQk39/LRTdkneu0pYF2XqAI/2nuWe+waGyqrI7c2JrKV
	o1UVbSyrsZiPEdEucZqIFWNAAJ6Fumm1cdXKFJh0aIAxFCsYNXcDoBB/N8wGdKoWaIDNfxAZI4Jls
	JOxV5kw5v7/DEp9LBSvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifcNP-0005OX-Iw; Fri, 13 Dec 2019 04:16:27 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifcNF-0005Nh-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:16:19 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBD4GCZb015201;
 Thu, 12 Dec 2019 22:16:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576210572;
 bh=wC9RBQmFmSj7MlFhLB/gvP67wVficio8GAklPgNPB/4=;
 h=From:To:CC:Subject:Date;
 b=I8cP+vaEknExtIYo3C8JYF+imFXekdgOy/4EWhsAnud5wQsKNa3KAKOTrRy5FKycr
 xRsz5ZlffLDGvlAdteTuiWUIhXdgVhSv+z647Chfz6h9y2Yq3CgwKaksNmhws7iQKq
 k8rR/oGKeNogyHCCX2dV0qOMlzDd1ST6lQrQNdm4=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBD4GCSF120254
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Dec 2019 22:16:12 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 12
 Dec 2019 22:16:12 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 12 Dec 2019 22:16:12 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBD4GCcV011374;
 Thu, 12 Dec 2019 22:16:12 -0600
From: Dave Gerlach <d-gerlach@ti.com>
To: Tony Lindgren <tony@atomide.com>, Santosh Shilimkar <ssantosh@kernel.org>
Subject: [PATCH 0/2] ARM: dts: am33xx/am4372: Add cpuidle dt states
Date: Thu, 12 Dec 2019 22:17:23 -0600
Message-ID: <20191213041725.16831-1-d-gerlach@ti.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_201617_713848_C5353A59 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dave Gerlach <d-gerlach@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
This series adds DT idle states for TI am33xx and am4372 platforms.
The mpu_gate is added for both platforms which gates the MPU clock
to save power during idle. It depends on the driver series sent
here [1].

Regards,
Dave

[1] https://marc.info/?l=linux-kernel&m=157620644400324&w=2

Dave Gerlach (2):
  ARM: dts: am33xx: Add idle_states for cpuidle
  ARM: dts: am4372: Add idle_states for cpuidle

 arch/arm/boot/dts/am33xx.dtsi | 12 ++++++++++++
 arch/arm/boot/dts/am4372.dtsi | 12 ++++++++++++
 2 files changed, 24 insertions(+)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
