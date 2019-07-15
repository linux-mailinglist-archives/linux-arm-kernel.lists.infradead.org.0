Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA9168885
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3uwr+V6lI7ljZknKirwdQhf+6Pmr4fehbFzisbY51U=; b=dwhu5wOdkMDzoy
	3kTL1/b9gzjXabpDatlol+lx2SdsZ01hVCu85ySxlN2Y6g9ka+6blO2pt0qRR8L9Qimhyxd8SCPNP
	+NjGG+IH5T7sW9UtlvPSbgb/fljnvosCnZ+5gEzRXrvUmgKToEBtVlgirPAK7+7Ir0FNGC9hRijYA
	lc/WdN4GqWLh3IhQKWdOOu5RAUqHf5/HQ1MxnBZvXsjvw5uCuSyXy3S9Lg+uRhg377IIk2m7IVsm0
	yl+P4Rq6mlQ2ytWsG24wY0T6qAp8Imo0Byce3pTJbjOtyRuzi+ik0V2K3SJa7OGAAag7n670GkYCN
	ThueNVCcInoweb9Gap6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzjJ-0004JV-Sc; Mon, 15 Jul 2019 12:05:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzid-00044u-U0
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:04:37 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715120432euoutp0118661b15ac0f1dd442562a5ca0dc2f60~xkxbla10_2102021020euoutp01c
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:04:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715120432euoutp0118661b15ac0f1dd442562a5ca0dc2f60~xkxbla10_2102021020euoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563192272;
 bh=slNR/BE5Z02LanzgRyRt+VQF3nSEOhb3VQJmenTTtaY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ttYj8HvI2e/1c/1PxHy4J3YWxy+ZxJtzwC/Dr9AZ35LvLk+B+V2zg2dgg6cCfEFlx
 db8sOUBqrEuclE2kX/9+1R04J9QeFTm+lafT9iFR1b3xV3aBvlf9uIiJ43NKuVxAbO
 MRH86NFHv9IbP+IAFnYxvqtwVT4wgG6m8iaECzu4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715120431eucas1p214ba80053c1337718831edf3e1075e27~xkxa-E6mD0932509325eucas1p2I;
 Mon, 15 Jul 2019 12:04:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 9A.FF.04298.FCB6C2D5; Mon, 15
 Jul 2019 13:04:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3~xkxaPhxYD3262432624eucas1p1N;
 Mon, 15 Jul 2019 12:04:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715120430eusmtrp13259615bc9da1a3f1a30ea6ffe1b0b1f~xkxaOlzLs1141311413eusmtrp1V;
 Mon, 15 Jul 2019 12:04:30 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-cd-5d2c6bcf7dd5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 82.5B.04146.ECB6C2D5; Mon, 15
 Jul 2019 13:04:30 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190715120429eusmtip105ecc88f117c85cd52ccd596843a4ac3~xkxZa1v1B2021620216eusmtip1m;
 Mon, 15 Jul 2019 12:04:29 +0000 (GMT)
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
To: k.konieczny@partner.samsung.com
Subject: [PATCH v2 1/4] opp: core: add regulators enable and disable
Date: Mon, 15 Jul 2019 14:04:13 +0200
Message-Id: <20190715120416.3561-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTQRh29ugu1epSSBir8agxinJINHESxaASs4+EBzUaLFU2QKBVuxyi
 D4IH0kYR0CgUPIgXIShQrlKKB1bWxkoDJHgQFAQ1QSDYqmkjiLSLx9s33zH/90+GxuUDpIJO
 1WZwOq06XSmREs2dXme4My0sYcOUNxDVl9aS6NW3zyS6YesiUeHDGYAuDn/BkdNZR6GXp8Yo
 ZBruI1GvpUKC3BdsAJU6H2Lovm2AQndedWOoP69KgsY8LzF0tt1GoV999QRqGOyUxMjZmus1
 gDVV6yVsw+2T7JMJK8YWNlYDVnjdgrFu07I4ap90axKXnprF6SK3JUpT+vuLqSNdsmP2x7ty
 wbX5BkDTkNkE77yJMgApLWeqABwyfgTi4RuAtqk8Ujy4ASxwNeAGEOBP1LeX4qJwD8CiyXzi
 b0T/c9LvkjCb4YcWB+bDwcwqeOndVX8CZ7wErOutp3xCEBML+ybfUr4iBLMaGupCfbSM2Qnd
 0y5MnLYc6s1thA8HzNrN7zsp0RMI7WUjfh6f9ZxuKvffD5lxCrbetZBiOBb2VFolIg6Co0Ij
 JeKl8MWl84SIs+HHykJKDJ8BcPDc1zlhC3wqdJO+cjgTCmstkSK9HZaU3wXi4y2Er8cDxQ4L
 YUmzb0cfLYMF+XLRHQ6vzzjm2iyBhpkHc5iFtgkHKAIrjf9tY/xvG+O/uTcBXg1CuExek8zx
 UVouO4JXa/hMbXLEocMaE5j9dC9+CS4z+N5zsAMwNFAukMUkrU+Qk+osPkfTASCNK4Nl0d9n
 KVmSOuc4pzus0mWmc3wHWEITyhDZiXmD++VMsjqDS+O4I5zuj4rRAYpcQFc43bc8V6IcsZ6M
 R+sK9wrLVDGCq9QTTXHePa0w7oDnzEiuUmHcvidHZQ96/ElbbLklzxuKteunLDdUxfOnd/QU
 CBvXCo9+oH5hw+gYZmyKbxurFMISj/54VrE4oslwuXtNGcUnhnX1hqwIfr57kWtiNNRaedFc
 obDGKyKVBJ+ijlqH63j1b6jsIkRwAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsVy+t/xu7rnsnViDdZuV7fYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3H79kT2gnO8FScPuDUwzuXuYuTkkBAwkdi4dwZzFyMXh5DAUkaJpZP+
 M0MkpCUaT69mgrCFJf5c62KDKPrEKLHq/BGwBJuAucSj7WfAbBEBZYnJ96aDTWIW6GSVWPHk
 CBtIQljAReLah1vsXYwcHCwCqhJdGzRBwrwCzhKf/36CWiAv0bljNwuIzQlUvuP+MXYQWwio
 puVVPwtEvaDEyZlPwGxmoPrmrbOZJzAKzEKSmoUktYCRaRWjSGppcW56brGhXnFibnFpXrpe
 cn7uJkZgTG479nPzDsZLG4MPMQpwMCrx8DqkaMcKsSaWFVfmHmKU4GBWEuG1/QoU4k1JrKxK
 LcqPLyrNSS0+xGgK9MNEZinR5HxgusgriTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2a
 WpBaBNPHxMEp1QB03zLVSWWLLLzuy0zx/N6+5XrU7/iZdwRW737eFsroNkFwa+1lE7b1zW5X
 TrakzZ67aPr8qq2S516n25sHtuw9G/m3WiNg546AsysPvju9c9aLIMWz1RtlJDqvnVkYedJk
 nsbj1fPYTC5fjehr2qKW+GH7Eeerp7nOzxMznR6y/eU7/bbcqO8CSizFGYmGWsxFxYkAHY07
 CN8CAAA=
X-CMS-MailID: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
X-Msg-Generator: CA
X-RootMTR: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_050436_185786_8CC6AC3F 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add enable regulators to dev_pm_opp_set_regulators() and disable
regulators to dev_pm_opp_put_regulators(). This prepares for
converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
--
Changes in v2:

- move regulator enable and disable into loop

---
 drivers/opp/core.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 0e7703fe733f..069c5cf8827e 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1570,6 +1570,10 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
 			goto free_regulators;
 		}
 
+		ret = regulator_enable(reg);
+		if (ret < 0)
+			goto disable;
+
 		opp_table->regulators[i] = reg;
 	}
 
@@ -1582,9 +1586,15 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
 
 	return opp_table;
 
+disable:
+	regulator_put(reg);
+	--i;
+
 free_regulators:
-	while (i != 0)
-		regulator_put(opp_table->regulators[--i]);
+	for (; i >= 0; --i) {
+		regulator_disable(opp_table->regulators[i]);
+		regulator_put(opp_table->regulators[i]);
+	}
 
 	kfree(opp_table->regulators);
 	opp_table->regulators = NULL;
@@ -1610,8 +1620,10 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
 	/* Make sure there are no concurrent readers while updating opp_table */
 	WARN_ON(!list_empty(&opp_table->opp_list));
 
-	for (i = opp_table->regulator_count - 1; i >= 0; i--)
+	for (i = opp_table->regulator_count - 1; i >= 0; i--) {
+		regulator_disable(opp_table->regulators[i]);
 		regulator_put(opp_table->regulators[i]);
+	}
 
 	_free_set_opp_data(opp_table);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
