Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63F1165EC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l8UzUxCqHTBeqpbVXP84N2azJ2IfyN8zAotTUXkHAqA=; b=aTc
	PpBpeJ0hBA5FUZiN2uSl/oi/aInagYkRQyvfy8uMzMbUvwWW3asz7lnQtssYucTfMY+heEbkMpetK
	8xvxK1PK4j8uezXJxg/26UuhkqC9Vhm58iKgmorEFV/C50xCT+tm6FwRJRqL6gJpgoi8pAiHtVR7M
	HP96wA4govI+buEplbWXd2C7VPa43qE3b9R9ZNOdArz6uyDsrnFvsR4QZdLjCe15f09/td25R1gBL
	KGTxjKEXdspz/cY/OcDkFz/7MI63bke5OPqy11QMSfJiIZ3RsYM4RFy4bS0YrO/Hu4e5GHCvuR6oZ
	FqEOJZ2m/80ob6NiHPzJZyOkD4p02tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ls5-00050G-Vi; Thu, 20 Feb 2020 13:28:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lrv-0004yM-Vn
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:27:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id 185so1943256pfv.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 05:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=hF0MYOxyxn24x/ZYtlarhD9w/8tgL/0AbysCyIWUqB0=;
 b=lWPdtbceOs2cC0MFwqkm4JZMtIDewpsnrzs+5eIkhjoMV2SJvYChWk3tQPO3sjcpkM
 0JRFxORvBnqb715+jTuwsvbkljzaEdBcepRokDPscyhItPgPH+t4fPcI5jox0PwRS3BU
 gv11eSFh0I619wG7GnAGNs+xrvC5o5Bj5h+wo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hF0MYOxyxn24x/ZYtlarhD9w/8tgL/0AbysCyIWUqB0=;
 b=HlBF1BAYdkbzG/wqZptAaBL08zxAX6JAdN01cATieIAWFnAw06w6dytmepUI0XRZHe
 eRRJ5msaWZuYfmgpLz0TbiPtGSFTWWhxSD6vS9rTILYu6sprvzfDPrZaGakv/jCnZzH2
 jp+9sP3UN3mTgdBMpVOG71HZmlGP4e+S4hcPftC63YQRC9S33H6dSN6M9PTl4YpxFazG
 kVbBWkuZ0rgHfafLtfJ9saT6TuIOGMQjsjw/rDM9z1+4tOkeYHpUMMSkeg9f8Hf6QoTs
 yNWXXau37CoaEKNNt2fqNe4xmsNKRh1tnCagLRh2Tzgmt0MNY97miv1dmoSIcH1QQMls
 MC5w==
X-Gm-Message-State: APjAAAURza8yR62fWJStJGLN2UqIyZoGZySztyMGnXXQRyfyda4F9s8v
 Qt3s8A5+h2thEYbnLyjuoU3QCkOgCexdRw==
X-Google-Smtp-Source: APXvYqwLKJcZDrK2vGjpR2o1+UZVY6CiHiTRMZ76Tp2Fd8qa2KqcFHdMflOCt8bmXidsxemy6zDUHg==
X-Received: by 2002:a63:df02:: with SMTP id u2mr31473112pgg.403.1582205274678; 
 Thu, 20 Feb 2020 05:27:54 -0800 (PST)
Received: from localhost.localdomain ([49.206.201.34])
 by smtp.gmail.com with ESMTPSA id 84sm3974646pgg.90.2020.02.20.05.27.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Feb 2020 05:27:53 -0800 (PST)
From: sunil@amarulasolutions.com
To: heiko@sntech.de,
	catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: defconfig: Enable REGULATOR_MP8859
Date: Thu, 20 Feb 2020 18:57:39 +0530
Message-Id: <1582205259-15274-1-git-send-email-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_052756_457000_B2561586 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jagan Teki <jagan@amarulasolutions.com>

RK3399 boards like ROC-RK3399-PC is using MP8859 DC/DC converter
for 12V supply.

roc-rk3399-pc initially used 12V fixed regulator for this supply,
but the below commit has switched to use MP8859.

commit <1fc61ed04d309b0b8b3562acf701ab988eee12de> "arm64: dts: rockchip:
Enable mp8859 regulator on rk3399-roc-pc"

So, enable bydefault on the defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>
Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Note:
This change set is applied on top of linux-rockchip, branch v5.7-armsoc/dts64.
(git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git -b v5.7-armsoc/dts64)
This change set was tested on ROC-RK3399-PC, an rk3399 based target.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f21288..973a493 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -505,6 +505,7 @@ CONFIG_REGULATOR_QCOM_RPMH=y
 CONFIG_REGULATOR_QCOM_SMD_RPM=y
 CONFIG_REGULATOR_QCOM_SPMI=y
 CONFIG_REGULATOR_RK808=y
+CONFIG_REGULATOR_MP8859=y
 CONFIG_REGULATOR_S2MPS11=y
 CONFIG_REGULATOR_VCTRL=m
 CONFIG_RC_CORE=m
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
