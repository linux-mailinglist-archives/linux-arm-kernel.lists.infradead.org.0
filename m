Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D5E1F853D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 22:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0Vxd1WYzrMuesJEEy0xKO5IufCIHRXRyWWNfYvr82yA=; b=pT0
	uNDpof2fdxV1uAaxy3vlXRPjx7d/1cogVCnTfpV5CChT3rkUgVIiOA/2uVRPPadFw2SD2qa4RNiZG
	UzzT6P0BlbRO4fusHXN64GJK6V1U/3b6SNQVeglRXyY0vBtuutL45nN+EA0QWC9AvMTIjsIZXzXcS
	vPktQynjv/tLE2Fw+eI5bMHiYaVDwN0xV4Q/qeCN8yyqhlHx56yeY0GBmEWCRrgi1S1x9eCxraec6
	weZb1dA3EiQ3UnZvncBPgKIhIef8ura/1OV7nFQN911+l0BZd8hqRfTFRkdLnjxwA9VZP3ab49hrb
	56lVn2KUbns/FRY9ccyXSUX65eXKRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkD8a-000101-FD; Sat, 13 Jun 2020 20:52:24 +0000
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkD8O-0000yP-6l
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 20:52:14 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 49kqXR6fgdz9vZTh
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 20:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eD7TCui2QTmA for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 15:52:07 -0500 (CDT)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 49kqXR4wnCz9vZTt
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 15:52:06 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 49kqXR4wnCz9vZTt
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 49kqXR4wnCz9vZTt
Received: by mail-io1-f72.google.com with SMTP id g3so8622873ioc.20
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=UkcroixAl0qAjD6GgNgyzou/IsN1STk9p+xVVDcmeP0=;
 b=Ardg8aLxFj2jA4QjL4csIbDmbF7Qv6ioBUq9BFwPAzpqdsP+ivgI2B8v6vEDSmF5Kq
 T+VI+cMiJyrltzxL2KJ+S2WHTXIUF/tzDx+Hy6iiCbHiebDtommqrsorIxWsJtD5Xxfl
 rSzCIoMmPWNRk35WVAw7LbUcN+FwnWoL2ov7l39z+On9rB0EWpXx0pMhwvIoyqrXUaxN
 SVjXxR5F+7oT+/CflVUIQ8BF6ijShRJTLfKceESF3Hx+zZ8lX0oXaFdA9bCViMHOZw8e
 x1Ek4ACuuHNQSXcdq2kYUQsZrqkPdIsjq0SIXmIxXnf4IToCmyoJ83/4UJ3PDAddESUD
 Xw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UkcroixAl0qAjD6GgNgyzou/IsN1STk9p+xVVDcmeP0=;
 b=XZKpv5euVfLrEHswHOF9tCdEQ0XoDvRU07MBE2YbEIsbOaMiNufZtoCaerJ+omNHri
 7szJvOPB7UB9G2oZG2LIbDkU6PuJx4mC1VD95QCuLc74frpFatbrUqxOkERkSBZH4uB2
 hl01dP9pAh+GZM7er/Y6ToSV3bUGyLzBT7q6phAC1h/KYmeNVw+T4O+To2qs3Ma1LhnU
 LpNAPMhWl7le8+dr8f3gtA+pbphQmqS7ov2Ud2qTMv2unNsTuKPtYgTNfJfIWnMvX8Gu
 UNdNmg90Yk4aT44YbO11au7cty97grfCgoF+wZcup0Ku4PPbxysHZDO6H1z7Fr6VSfXR
 UPdg==
X-Gm-Message-State: AOAM531AoFW+d0gJ+aAEeF4vQ8nekKFLm7/aSibXnHT8sIoQnKnmINUJ
 SWtmmxU8utD8covEKJW4pUDH64/ILP0gO28sQEFygMxxL2JjTWnvXG6mQV3g36hKsPE69ifWzrm
 WlEom2GGIiR934O1F9DCi36ZoRJkFQV7bJAP4dM4=
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr19700874ils.203.1592081526449; 
 Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyWlEJFk6HoO+GE9Acy8SKo/fFC/orEpAve7+rluozITdaEPrSwu9DbTGUy6wx6oKsMcR3TDA==
X-Received: by 2002:a05:6e02:542:: with SMTP id
 i2mr19700858ils.203.1592081526162; 
 Sat, 13 Jun 2020 13:52:06 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id c1sm5138369ilh.35.2020.06.13.13.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 13:52:05 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] ASoC: rockchip: Fix a reference count leak.
Date: Sat, 13 Jun 2020 15:51:58 -0500
Message-Id: <20200613205158.27296-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_135212_331565_781878AC 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.208 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 wu000273@umn.edu, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count if pm_runtime_put is not called in
error handling paths. Call pm_runtime_put if pm_runtime_get_sync fails.

Fixes: fc05a5b22253 ("ASoC: rockchip: add support for pdm controller")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 sound/soc/rockchip/rockchip_pdm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 7cd42fcfcf38..1707414cfa92 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -590,8 +590,10 @@ static int rockchip_pdm_resume(struct device *dev)
 	int ret;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put(dev);
 		return ret;
+	}
 
 	ret = regcache_sync(pdm->regmap);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
