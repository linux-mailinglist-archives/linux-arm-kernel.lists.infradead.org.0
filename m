Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92C21E83C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TjnOiNX7PQqPh1FeklNL3OmESc43HTMrH/TZj0Vknu4=; b=C1qZo8qaqTyO/5mJiqLY92/T/d
	5Ts2xU/883uYZ/7JfT1QQt4xnO4s6sF780hEO9yBUQJbL0+aALsn+PEi5nqxCemRyq9KXGUC+N0z/
	I0ZWkYN9RaqIIZfYRL5ULhZly7NpuPK/24xv7bpAC15+dF7m5YqzqC/Guax79fBKKER+La7qZ9otl
	xJjK3Taz/VxF5dGWbxNxTV5697O37eQ8NwUh+60ySAmCoz7an2DFYU0X2nXy+laYAtTSTM0v+Zd0H
	bJ5F5WATKLK/hDkvVDBjOXt8GPzfn40U3DpAZJ6gXVwgt5M8YA07qU2vcH/uI15JNzvZsLWOqGY8n
	68fs83jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehx0-0005HK-QC; Fri, 29 May 2020 16:33:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehvn-0004YX-KV
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:32:29 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200529163226euoutp0219c09e587fdd3bd167a2077671ab2ba4~TjNZxjVId1717217172euoutp02H
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 16:32:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200529163226euoutp0219c09e587fdd3bd167a2077671ab2ba4~TjNZxjVId1717217172euoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1590769946;
 bh=4yHPFFntuEb3nqdS26esoxlWGiVCWTYWFfHMdlSGTc4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l2m0QRhTsLRTRoGq/hSbPwoUHV8v7rOTqdVRGHTfSHwakmOJPJF6OKt9A9rdP28mh
 7sDiATzbfh1vgEv6fyQNDqioASOlqdHtpHPHZDGKWJe01zduWMBiHt//zvhQndg1NW
 k6KKLDkk/2fjUuxlGVqSSD88PZWu4F5E88/y4JHI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200529163225eucas1p26f9ed0a9bba89af44330590464ecaf22~TjNZioWjP2034120341eucas1p2a;
 Fri, 29 May 2020 16:32:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 22.10.60698.91931DE5; Fri, 29
 May 2020 17:32:25 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6~TjNY_DsPp0538605386eucas1p19;
 Fri, 29 May 2020 16:32:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200529163225eusmtrp24476b6ce41f7cd45a5cd27093fde5b6e~TjNY9Xsq00733307333eusmtrp2S;
 Fri, 29 May 2020 16:32:25 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-24-5ed13919443d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 80.EA.08375.81931DE5; Fri, 29
 May 2020 17:32:25 +0100 (BST)
Received: from AMDC3061.digital.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200529163224eusmtip1863c4173d5ee60d8ab32a320efd09ffb~TjNYL-qhR1819818198eusmtip1U;
 Fri, 29 May 2020 16:32:24 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: georgi.djakov@linaro.org, cw00.choi@samsung.com, krzk@kernel.org
Subject: [RFC PATCH v5 3/6] PM / devfreq: exynos-bus: Add registration of
 interconnect child device
Date: Fri, 29 May 2020 18:31:57 +0200
Message-Id: <20200529163200.18031-4-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200529163200.18031-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEKsWRmVeSWpSXmKPExsWy7djPc7qSlhfjDA7t1rK4P6+V0WLjjPWs
 Fte/PGe1uPL1PZvF9L2b2Cwm3Z/AYnH+/AZ2i02Pr7FaXN41h81ixvl9TBZrj9xlt7jduILN
 4vCbdlaLGZNfsjnweWxa1cnmcefaHjaP+93HmTw2L6n36NuyitHj8ya5ALYoLpuU1JzMstQi
 fbsEroyjh10LNgpU3Dg/ka2BcSNvFyMnh4SAicT/009YQWwhgRWMEn+eOnQxcgHZX4Ds3bvZ
 IZzPjBJP9u1nhumY8fA3I0RiOaPEu7ev2eFaunq/sYFUsQkYSvQe7WMEsUUEXCTans5jASli
 FtjDJLFv9jsgh4NDWCBV4vqMfJAaFgFVie6Hi1lAbF4Ba4knG9+zQGyTl1i94QDYZk4BG4nu
 PzOYQeZICKxjl1h57jdUkYvEjRUb2SBsYYlXx7ewQ9gyEv93zmeCaGhmlOjZfZsdwpnAKHH/
 +AJGiCpriTvnfrGBXMQsoCmxfpc+RNhR4srv5WBhCQE+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ
 1SoSv1dNZ4KwpSS6n/yHOs1D4uDMadAA6meUaPzRxDyBUX4WwrIFjIyrGMVTS4tz01OLjfNS
 y/WKE3OLS/PS9ZLzczcxAlPO6X/Hv+5g3Pcn6RCjAAejEg9vhdbFOCHWxLLiytxDjBIczEoi
 vE5nT8cJ8aYkVlalFuXHF5XmpBYfYpTmYFES5zVe9DJWSCA9sSQ1OzW1ILUIJsvEwSnVwMib
 M3nJs6NzJiYbb81S2F/0lXfx2s1NWpW+KhxvDBo+PVO07zO5u7Jpbczt62IvPWpZbtn5n8v6
 Liyw1jYs+sGrSfsdH+1es9HVOkas7IOVbtvtbVvjdGcfueC/JKjWTorL3sjW7tc1EdOJBzLu
 Nc8yOGfRtoTbPMPs/NMndre6T0pvbtz1faoSS3FGoqEWc1FxIgD4KQwmNQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpikeLIzCtJLcpLzFFi42I5/e/4XV1Jy4txBk8XsFrcn9fKaLFxxnpW
 i+tfnrNaXPn6ns1i+t5NbBaT7k9gsTh/fgO7xabH11gtLu+aw2Yx4/w+Jou1R+6yW9xuXMFm
 cfhNO6vFjMkv2Rz4PDat6mTzuHNtD5vH/e7jTB6bl9R79G1ZxejxeZNcAFuUnk1RfmlJqkJG
 fnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2CXsbRw64FGwUqbpyfyNbA
 uJG3i5GTQ0LARGLGw9+MILaQwFJGiSmvfbsYOYDiUhLzW5QgSoQl/lzrYuti5AIq+cQocWzV
 U7B6NgFDid6jfWC2iICHxKnWtawgRcwCJ5gknvRuZANJCAskS5ze/5sdxGYRUJXofriYBcTm
 FbCWeLLxPQvEBnmJ1RsOMIPYnAI2Et1/ZjBDHGQt0fZ4FusERr4FjAyrGEVSS4tz03OLDfWK
 E3OLS/PS9ZLzczcxAsN/27Gfm3cwXtoYfIhRgINRiYf3gs7FOCHWxLLiytxDjBIczEoivE5n
 T8cJ8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4wNvNK4g1NDc0tLA3Njc2NzSyUxHk7BA7G
 CAmkJ5akZqemFqQWwfQxcXBKNTD67lHZbHzuVPgT61gXlUjdwENHpYNu3JxtXjGfw8XgZvbU
 dXnOv5S/TVXcVLTJ1Fv3ikz49m+Zd9ssshRm2jp977xv2Zkl37FXX/fFi3llQX9nV7uLFe3m
 1+n90PT4tsLFRb7fLKRWRvovuLemZL7pwde+s6rjNthkb+Nr1fv17LHUVE8f909KLMUZiYZa
 zEXFiQBANR3LlQIAAA==
X-CMS-MailID: 20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6
X-Msg-Generator: CA
X-RootMTR: 20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6
References: <20200529163200.18031-1-s.nawrocki@samsung.com>
 <CGME20200529163225eucas1p1cfb2233c869dcc3dab84b754bbce17b6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_093227_821912_FE265E84 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sw0312.kim@samsung.com, a.swigon@samsung.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, inki.dae@samsung.com, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds registration of a child platform device for the exynos
interconnect driver. It is assumed that the interconnect provider will
only be needed when #interconnect-cells property is present in the bus
DT node, hence the child device will be created only when such a property
is present.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

Changes for v5:
 - new patch.
---
 drivers/devfreq/exynos-bus.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 8fa8eb5..856e37d 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -24,6 +24,7 @@
 
 struct exynos_bus {
 	struct device *dev;
+	struct platform_device *icc_pdev;
 
 	struct devfreq *devfreq;
 	struct devfreq_event_dev **edev;
@@ -156,6 +157,8 @@ static void exynos_bus_exit(struct device *dev)
 	if (ret < 0)
 		dev_warn(dev, "failed to disable the devfreq-event devices\n");
 
+	platform_device_unregister(bus->icc_pdev);
+
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
 	if (bus->opp_table) {
@@ -168,6 +171,8 @@ static void exynos_bus_passive_exit(struct device *dev)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
 
+	platform_device_unregister(bus->icc_pdev);
+
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
 }
@@ -431,6 +436,18 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto err;
 
+	/* Create child platform device for the interconnect provider */
+	if (of_get_property(dev->of_node, "#interconnect-cells", NULL)) {
+		    bus->icc_pdev = platform_device_register_data(
+						dev, "exynos-generic-icc",
+						PLATFORM_DEVID_AUTO, NULL, 0);
+
+		    if (IS_ERR(bus->icc_pdev)) {
+			    ret = PTR_ERR(bus->icc_pdev);
+			    goto err;
+		    }
+	}
+
 	max_state = bus->devfreq->profile->max_state;
 	min_freq = (bus->devfreq->profile->freq_table[0] / 1000);
 	max_freq = (bus->devfreq->profile->freq_table[max_state - 1] / 1000);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
