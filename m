Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B26CC86CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3KlIF4w/5UWS5pQ6IuvxB+m/r5ZoWNgCRAlRR8wX0c8=; b=AA9BnebabSZMqw9DI8rSds2sab
	sXjFDRnNMaSS3T6EkGMRAODTtBO6/YbLQ4DvwGRnpFnhFOYlh1VIXwxWkHhbQ+Rfoz/KdsCEWRv5G
	7gnZLsmgWJz2Fo/UaKGMr/XgxFl+0rjFRR/veQ72TW+JPmlJ9X+3g+eRdttjm3HnNB23AzvtxX9qy
	bjbZIh6k6Ia6x9XNSPWXnKJDFT58tVhvU9NW7UoHZX7l4o7d7mHGQGQCnDN8wwDxd+/lNzDj3RPoo
	WUZhBJBCDRoSiWipMRH6F+o+F6E7VBbIO5aJM0RpJTRXomGmecNhxjKDYwtvCNg98jkrE5qzeYGDh
	vIswO2XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcKE-0002Bv-25; Wed, 02 Oct 2019 10:57:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcJn-00020g-TL
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:57:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002105714euoutp02f5c587cf6284024da2af0fad35ca070e~Jz0OpyJbJ2169821698euoutp02b
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 10:57:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002105714euoutp02f5c587cf6284024da2af0fad35ca070e~Jz0OpyJbJ2169821698euoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570013834;
 bh=dxZo+xJVxceHImAWqR8TT3bo9Ohx26xddfrU+mypT+w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TAvwPuWsL27x/oUBkIVMiumvj7uiIL2I28A7RwmNd2+rl43UxI0yHG6w7Ao/rYCJw
 nX+/5wyPTQoibPc17mKWrswBAaMFg7HtoaBI4jJVO7/5o1DkCSa96kWUvaBwfquPgn
 EUJWLoMlnoOjgvHGpRduL6y02tl8EnWrhjxzcjUg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191002105714eucas1p25e68f6fd6286f7cda931687c48572283~Jz0OYLdqf0173701737eucas1p2y;
 Wed,  2 Oct 2019 10:57:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CB.86.04309.A82849D5; Wed,  2
 Oct 2019 11:57:14 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191002105714eucas1p1d22a05b0a2daf48fd5daf22e47693f3d~Jz0OGibDl1564115641eucas1p14;
 Wed,  2 Oct 2019 10:57:14 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002105714eusmtrp15f645ed9c4eaf8ca407bf3de33e87e84~Jz0OF9bGY0038800388eusmtrp1j;
 Wed,  2 Oct 2019 10:57:14 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-d5-5d94828a9a6a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 11.25.04117.982849D5; Wed,  2
 Oct 2019 11:57:14 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191002105713eusmtip2b2de30345d927c47e51d280960f63093~Jz0Nk8ve30215002150eusmtip2v;
 Wed,  2 Oct 2019 10:57:13 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v4 3/3] ASoC: samsung: Rename Arndale card driver
Date: Wed,  2 Oct 2019 12:56:52 +0200
Message-Id: <20191002105652.24821-3-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002105652.24821-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTcRjG/e/s7BzNyXEzfbNoMZQoybXqwwFHKkWtL2J+6zJq6UHNK5vT
 TMKhlpd0eSlcIjojcEzFtdTUyMrbJKmx1PDCymhULC8fJonmJefR+vZ7nvd5eP8v/ElM0IAH
 k8npWYwqXZkq5vlwu4ZXbMfKCh4qjptc/vS4vZ9DP9O34/Sjr04ePX7XgmibzUzQv8dLOLTl
 2yec1tv6OHTboIOg3YuvcXpgrhin7cYlTpSv3Owu4Ml76hyE3GIq5cmfP82X19ZvIrmuw4Tk
 bsvBWOKyjyyBSU3OZlSS09d9kqqtw1imS3jL+XiMq0VTVBnyJoE6Ba9aivAy5EMKKCOC9h+N
 O2IJQc/8OI8VbgRD0x/w3crbn+uIHTQjaG0exP5VKkYchCfFo6RQMaRDHg6gAmGmvhTzMEa9
 44BzTuZhIRUNn20r23kuFQrLy4s8D/OpCJge0fPYbSJoMb/Z7npTMhjTubY3A2UiQO9aJdjQ
 WajdmMRYFoLL2rHjH4DRmnIuWyhEUP5yhmBFJYIvVgNiUxEwYLVvHUduPe8ItPdKWDsaFqp0
 XI8NlB9MzvuzB/hBdVctxtp8KLknYNMh8MdUy2E5GO47N7ksy6FofXXbF1APEGgLD1UiUd3/
 XQaETCiI0ajTEhn1iXQmJ1ytTFNr0hPD4zPSLGjr14xuWJe6Ue/ajX5EkUjsy9fG1SgEuDJb
 nZvWj4DExAF82Vq1QsBPUObeZlQZ11SaVEbdj/aTXHEQP89r9oqASlRmMSkMk8modqcc0jtY
 i7zChAEGV1RZoGCyr4DvuhMdGHcmXCazlyfNxeypibyanxnvsCww57XGzsbCopBug0YaOfE+
 JSy5mP4oKpFc2DDPvTjHl5zsypHurTLGNkhm92mmNJOKS9/dhCgXt/esNj2pCjx8c97QaWhy
 qi4WxYj8Jn6VGkR9rdNtoVN5Yq46SSk9iqnUyr8dpqeEMQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrHLMWRmVeSWpSXmKPExsVy+t/xe7pdTVNiDS76Wly5eIjJYuOM9awW
 Ux8+YbO40rqJ0eL8+Q3sFt+udDBZbHp8jdVixvl9TBZrj9xlt/j8fj+rxeE37awWF1d8YXLg
 8djwuYnNY+esu+wem1Z1snlsXlLvMX3Of0aPvi2rGD0+b5ILYI/SsynKLy1JVcjILy6xVYo2
 tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy5h0/BhzwSvhiiczL7M0MN4U6GLk
 5JAQMJE4+OIvYxcjF4eQwFJGiZu/z7N2MXIAJaQk5rcoQdQIS/y51sUGUfOJUeLIxBNsIAk2
 AUOJ3qN9jCC2iICYxO05ncwgRcwC15gkNs16zAKSEBZwlLh3/ic7iM0ioCrx/ft7sGZeAWuJ
 WydmsEFskJdYveEAM4jNKWAjcbnvFdhQIaCaVR+vs05g5FvAyLCKUSS1tDg3PbfYSK84Mbe4
 NC9dLzk/dxMjMOy3Hfu5ZQdj17vgQ4wCHIxKPLwNQZNjhVgTy4orcw8xSnAwK4nw2vyZFCvE
 m5JYWZValB9fVJqTWnyI0RToqInMUqLJ+cCYzCuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCe
 WJKanZpakFoE08fEwSnVwOhUHdPiUDD9eVrySsuHnfnH958+98UzNtOtc+l3g03VJw+c7n+3
 0Z/teXpP5eOrBqlrt/2uMY5kPPBP4tB+i75fEV8VHnk/Cbp060xjxHGuqWvOG1w6sG7Ou53W
 7DMXPFd713LP+/i/g0y913uLH3DnL1iqfKKSu9TJS1S98YLoRecZLY151yWUWIozEg21mIuK
 EwEr4IUbkQIAAA==
X-CMS-MailID: 20191002105714eucas1p1d22a05b0a2daf48fd5daf22e47693f3d
X-Msg-Generator: CA
X-RootMTR: 20191002105714eucas1p1d22a05b0a2daf48fd5daf22e47693f3d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002105714eucas1p1d22a05b0a2daf48fd5daf22e47693f3d
References: <20191002105652.24821-1-s.nawrocki@samsung.com>
 <CGME20191002105714eucas1p1d22a05b0a2daf48fd5daf22e47693f3d@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_035716_078571_6C63DB81 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com, krzk@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename arndale_rt5631.c to just arnddale.c as we support other CODECs
than RT5631.  While at it replace spaces in Kconfig with tabs.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - none.

Changes since v1:
 - new patch.
---
 sound/soc/samsung/Kconfig                         | 10 +++++-----
 sound/soc/samsung/Makefile                        |  4 ++--
 sound/soc/samsung/{arndale_rt5631.c => arndale.c} |  0
 3 files changed, 7 insertions(+), 7 deletions(-)
 rename sound/soc/samsung/{arndale_rt5631.c => arndale.c} (100%)

diff --git a/sound/soc/samsung/Kconfig b/sound/soc/samsung/Kconfig
index 6803cbfa9e46..1a0b163ca47b 100644
--- a/sound/soc/samsung/Kconfig
+++ b/sound/soc/samsung/Kconfig
@@ -194,11 +194,11 @@ config SND_SOC_ODROID
 	help
 	  Say Y here to enable audio support for the Odroid XU3/XU4.

-config SND_SOC_ARNDALE_RT5631_ALC5631
-        tristate "Audio support for RT5631(ALC5631) on Arndale Board"
-        depends on I2C
-        select SND_SAMSUNG_I2S
-        select SND_SOC_RT5631
+config SND_SOC_ARNDALE
+	tristate "Audio support for Arndale Board"
+	depends on I2C
+	select SND_SAMSUNG_I2S
+	select SND_SOC_RT5631
 	select MFD_WM8994
 	select SND_SOC_WM8994

diff --git a/sound/soc/samsung/Makefile b/sound/soc/samsung/Makefile
index c3b76035f69c..8f5dfe20b9f1 100644
--- a/sound/soc/samsung/Makefile
+++ b/sound/soc/samsung/Makefile
@@ -39,7 +39,7 @@ snd-soc-lowland-objs := lowland.o
 snd-soc-littlemill-objs := littlemill.o
 snd-soc-bells-objs := bells.o
 snd-soc-odroid-objs := odroid.o
-snd-soc-arndale-rt5631-objs := arndale_rt5631.o
+snd-soc-arndale-objs := arndale.o
 snd-soc-tm2-wm5110-objs := tm2_wm5110.o

 obj-$(CONFIG_SND_SOC_SAMSUNG_JIVE_WM8750) += snd-soc-jive-wm8750.o
@@ -62,5 +62,5 @@ obj-$(CONFIG_SND_SOC_LOWLAND) += snd-soc-lowland.o
 obj-$(CONFIG_SND_SOC_LITTLEMILL) += snd-soc-littlemill.o
 obj-$(CONFIG_SND_SOC_BELLS) += snd-soc-bells.o
 obj-$(CONFIG_SND_SOC_ODROID) += snd-soc-odroid.o
-obj-$(CONFIG_SND_SOC_ARNDALE_RT5631_ALC5631) += snd-soc-arndale-rt5631.o
+obj-$(CONFIG_SND_SOC_ARNDALE) += snd-soc-arndale.o
 obj-$(CONFIG_SND_SOC_SAMSUNG_TM2_WM5110) += snd-soc-tm2-wm5110.o
diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale.c
similarity index 100%
rename from sound/soc/samsung/arndale_rt5631.c
rename to sound/soc/samsung/arndale.c
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
