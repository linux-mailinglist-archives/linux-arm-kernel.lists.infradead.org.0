Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA2711C0E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 00:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAoiXxfVt8smAqIOzCIsFajWDSM7IucOzuDv9sEl3UY=; b=Se3wFJ+/XLkho0
	hCsFffEsvSjik+9AktHL/ME8cb6SVcNzJED5z36scnbKxSgip2FeCUeXX/b+Q6jNYTbUZTKuILeM+
	QkCvtS7PMFUfv/IwpOpcGn4+6ZojtUpe6d0rqxHYPELOH2gsQ32eDaleY/BZmoIX8ngBBycX6o9CF
	vSExlF3MMCNKNsom2zMDkhBzodlCETOLjNWF53z+VQZ27SeLXJ98yN2L/k5c0OxJubwklBehVZDNP
	WUFnrWzFRfFoQ1zvBc8eNyjkJOuu2ttW23CWRN003EjxFHsUU/yUutS9hHw/uc4AErrFAycy+MQO0
	AgnFHk7N1GfVxWqj/ATQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifBnq-00016a-BE; Wed, 11 Dec 2019 23:53:58 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifBnF-0000sG-98; Wed, 11 Dec 2019 23:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576108391;
 bh=4up7UPdrXKf7f4RHv1AgVYW/yVkK9as9YFQa80qMoKU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Gu0wgLpKWDiMw/KjGhRNXZ9fgdBWNCo60e8XriKrwIng+KPeNqpb/kEhnfL61n8xU
 y5uala2/lTNOlXb13l0+YYMpnYRQXNnxT+eF5/UJuF6VzvntIVODJG/yru99dgUhdx
 grgsKlgO5zws0iRjvX+lUFlh/JJwtKWBbhs5reT0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from localhost.localdomain ([89.204.139.166]) by smtp.web.de
 (mrweb101 [213.165.67.124]) with ESMTPSA (Nemesis) id
 0M5fsK-1hm9Ms2iPg-00xdVy; Thu, 12 Dec 2019 00:53:10 +0100
From: Soeren Moch <smoch@web.de>
To: Kalle Valo <kvalo@codeaurora.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 3/9] brcmfmac: fix rambase for 4359/9
Date: Thu, 12 Dec 2019 00:52:47 +0100
Message-Id: <20191211235253.2539-4-smoch@web.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211235253.2539-1-smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:J+qJb/2Nw7OkPT3SxGUR8foewlU/Godf2lJr2WJR7yAVKyzHMHD
 qqJRwEwFwDhjVM4go/USRgAOn7yIJ7hgH0ExeEB8svnzBOJMvZm9v/oljINQkZksxz9yNOA
 nZNEOx3OYiAWZsAF9XCEJRfKHyQj1eGGSJYFqKM4drCj450VoEt1a3CZfYDmSsgUY/TjIq9
 kDe/TDllVqMrz07yDQuvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eZTTKvKqCQQ=:6Ufks9S8uTxW4FlPFgpy0Q
 71OY5XEmQ3puqHczlBr9G3y68a7jVmC4MRrtYw/khbu/oi4xTOfBxnEuLUSNqWDo5NuVfk6YQ
 WapEexeYcScN7aZ1zXFZbAu1f7Z7M4qtsmXLA6jGSufrsxzQfVP3IN1pf3GaPnizWcWf/bNIj
 O4Gh2od3tRllFMrzAJdr8VKhEJMr2Ct1LUDHAzGpmpxDF3l68Ma2mGBWlo0wvsOitYg04hQal
 mO8Eo9Rt9R1xJyzlXy/2jXuQ1/jDClhLabD+H4vfdQUJinP2q5mmcYFYQwq1EqczeTe71+v6+
 k4z9DtxSPIgIGV2ONgBvabwQz3Vw/fpTi22AkUNPF3f6FqsafoDnyMVBPfkQC99sjZ7TEAhHZ
 VUNXg92gOV7gPf8vWr8Kv6y/szKOGKrnYTDqPN2DVdrE4uSwNUTSxE/Hz11G+iAtBhVew+wH6
 I1sgG0LtAVJ+nN18k5MePHtETVFCploNouuXpHmwfChr55+hQG1KbUPh2vQdp7dvJtCiLjzGv
 kXsh0eKa3Sdv11WGjk4jads0yY5UjX9LYzYVJ+P4Kcn6i/0yhRVIYpY1b7J/QsENZy1TOr/XW
 VNiHhyOYcy7SzHKPMbtVaQF4W0V/377BbepKwymrnartfDkj9XPp/W62Hp9wG+hMKwigsg3Sb
 ifpkVeyAMdTzFM5xL+EgqNgKXkW/AsS+pa7dPhrINbc1vsd9gVCSk7pNPAh0JSGogpsic3+i8
 VKiKUU7PunL1Lpji2UjNO6nt9vgFFkPbD981hlsERwu2nxMtAfydLD6YhcP8qR5rHqB7eYeyV
 JJX3v7lJfobutiPHvkc1n9f9ePG1U0pU8LNfQ8f6CY93mp3RZEuM+wuyLDoMxncbmz7mhXStd
 ru1xsPWf+ZgsEnGCFQL+aH7X0JgJjXDPVg6x3vc0Zbr4WJw2MMqfC7qsFscAx7sqoyfMPPn06
 Nil6mLEGhUEM/W6x1H43WXV9MBqFoN6p+FWFm0N/MyfAeE+PqKqKL1CH75ZtoZ6LYDbQFFqq9
 9zSDIiIkd9pWD7Nsbr4Qu2MzWw0a0YIQXBXDh2btzsroEe34y0fvhfHrsdeeuIk8nHdlRsKx5
 cHHk+V8QTPrsRo4NowK3YbQDhTB+mNQo2qu7m7l9MWj+m5Jbm7LJyS7+jDLP4KJaDER5YPpCV
 I5QlQfPw7W77CbOXYX/IbQEl1hswoCQ0UwhOKTml+ue5HgLic42YIXpinn1+Sdh/oCLZdFPsM
 ayYpBwmhI8hqkatdtbKb/ugFIcs9ed3ldOf+M2Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_155321_657539_7C0F358D 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: brcm80211-dev-list.pdl@broadcom.com,
 Arend van Spriel <arend.vanspriel@broadcom.com>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, linux-wireless@vger.kernel.org,
 Hante Meuleman <hante.meuleman@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Newer 4359 chip revisions need a different rambase address.
This fixes firmware download on such devices which fails otherwise.

Signed-off-by: Soeren Moch <smoch@web.de>
---
changes in v2: none

Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
Cc: Franky Lin <franky.lin@broadcom.com>
Cc: Hante Meuleman <hante.meuleman@broadcom.com>
Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Cc: Wright Feng <wright.feng@cypress.com>
Cc: linux-wireless@vger.kernel.org
Cc: brcm80211-dev-list.pdl@broadcom.com
Cc: brcm80211-dev-list@cypress.com
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
index 0b5fbe5d8270..baf72e3984fc 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
@@ -712,7 +712,6 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
 	case BRCM_CC_43569_CHIP_ID:
 	case BRCM_CC_43570_CHIP_ID:
 	case BRCM_CC_4358_CHIP_ID:
-	case BRCM_CC_4359_CHIP_ID:
 	case BRCM_CC_43602_CHIP_ID:
 	case BRCM_CC_4371_CHIP_ID:
 		return 0x180000;
@@ -722,6 +721,8 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
 	case BRCM_CC_4366_CHIP_ID:
 	case BRCM_CC_43664_CHIP_ID:
 		return 0x200000;
+	case BRCM_CC_4359_CHIP_ID:
+		return (ci->pub.chiprev < 9) ? 0x180000 : 0x160000;
 	case CY_CC_4373_CHIP_ID:
 		return 0x160000;
 	default:
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
