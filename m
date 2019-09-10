Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8380AEA8B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3aHOG4gLKHii+3alL53Wx6T6O2GUZXa7YhW2qXc4k+M=; b=ZyN+f3l4TFic77JE49zAJ0sR95
	4Ct2Y0tF7emD6Auv+a2xbgp2VJstGfN+qNjqzJ8Rp1VwUFjscJRlZAfRAZY1I0nS9p/r/j3Cx6QwG
	8d9sqr0ZrAslud3NfThawDnTcLbqyfA6i616Abk5jg7NUpIPaHBPV5Nd47xe1Ys/vD+NuvvikMRz+
	IKQYm/IEdBwWVi5dZRoHyPphXvh0Smmh4Y6ylHOSY6sA4fojvBDpF9kPSGzbb/eoz9TfkJ7cBhtmx
	00L4P1AMPu5daDKrYjh7OkoUwg/a7D+FH2Ez4NS/t3RjqqCcZEjz7a3I3niPqNLdXBm94V72B4c/X
	ukGqHurw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fOQ-00049d-Uw; Tue, 10 Sep 2019 12:37:10 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fNv-0003r9-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:40 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123637euoutp017f641c9caa59238f0ff0131c79bdf0dc~DE_ug4T531126611266euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190910123637euoutp017f641c9caa59238f0ff0131c79bdf0dc~DE_ug4T531126611266euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568118998;
 bh=ZKpf4bQTor1S77oKnP9IFT1enZBVkmaAwjSxHlzx8p4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WS4derbIR+wuKATUtWDMqro4eKb57DgiQvFN4BW67sKhN++ZGkTRB2p0250+3a4c0
 TNHoHmPVdWwY1L+iP1TkpqFqg2C9hN1zKQa8yy/Fev4dq0UbeEILiUWNO8Bb+SYckv
 b+jPbbW5Eag7H0ignxtfHuPP8rnM/oJTl+ctVA6E=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190910123636eucas1p29b97bb437eca933749f418d9ab937187~DE_tkUira1358413584eucas1p20;
 Tue, 10 Sep 2019 12:36:36 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 85.8B.04374.4D8977D5; Tue, 10
 Sep 2019 13:36:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190910123636eucas1p250ec04901f227b947cc38936563f63b2~DE_s1qErK1684516845eucas1p2t;
 Tue, 10 Sep 2019 12:36:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123635eusmtrp15cf8162473b6ae8cf6fcd2c7ca412760~DE_snaukT2381323813eusmtrp10;
 Tue, 10 Sep 2019 12:36:35 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-d0-5d7798d472c6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CA.EC.04117.3D8977D5; Tue, 10
 Sep 2019 13:36:35 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123635eusmtip15d43de96594605ba41cae925c3ed78b7~DE_sFr53T1089210892eusmtip1S;
 Tue, 10 Sep 2019 12:36:35 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 1/6] opp: Handle target/min/max voltage in
 dev_pm_opp_adjust_voltage()
Date: Tue, 10 Sep 2019 14:36:13 +0200
Message-Id: <20190910123618.27985-2-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjleLIzCtJLcpLzFFi42LZduzned0rM8pjDRbd1rDYOGM9q8X8I+dY
 Lfofv2a2OH9+A7vFpsfXWC0u75rDZvG59wijxYzz+5gs1h65y27RuvcIu8XhN+2sFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgyrjcPIml4KxgxbL2vewNjHP4
 uhg5OCQETCTaLth1MXJyCAmsYJRY8dG5i5ELyP7CKLHu8Sx2COczo8TVT3sZQapAGhb+38II
 kVjOKPHi/gtWuJals+awgFSxCRhK9B7tA+sQEVCXeHXqPzNIEbPAOiaJZbOWgSWEBaIlXvWt
 YAaxWQRUJVY/2g8W5xWwlljXsQpqnbzE6g0HwGo4BWwkTu3exQQySEKgm12ifc98VognXCSW
 7A2DqBeWeHV8CzuELSNxenIPC0R9M6NEz+7b7BDOBEaJ+8cXQG2wljh8/CLYIGYBTYn1u/Qh
 wo4Sb57vZoOYzydx460gSJgZyJy0bTozRJhXoqNNCKJaReL3qulMELaURPeT/ywQtofEt6e7
 mSEB1M8ose3bZNYJjPKzEJYtYGRcxSieWlqcm55abJyXWq5XnJhbXJqXrpecn7uJEZhKTv87
 /nUH474/SYcYBTgYlXh4O1rKY4VYE8uKK3MPMUpwMCuJ8F7vK40V4k1JrKxKLcqPLyrNSS0+
 xCjNwaIkzlvN8CBaSCA9sSQ1OzW1ILUIJsvEwSnVwJhjMvedzGohuTmy6zcvm3nYu1br/hcu
 n8Ob63aUa0oxLVltJca47DRbwbE3+yZZBMo7ejV6VDfPmf0wnUtpoqL5y02N3aVcjoufSM74
 vtNA1v7i7i09El+EvOo7F/Xz7/x3vXRZX9Hl5ZccL2ts2N7w1+32/wm8PtnP1He02O6zFdc4
 yLHj330lluKMREMt5qLiRACf1N1vIQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPLMWRmVeSWpSXmKPExsVy+t/xu7qXZ5THGrz9bW6xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl3G5eRJLwVnBimXte9kbGOfwdTFyckgImEgs/L+FsYuRi0NI
 YCmjRMPbc0AOB1BCSmJ+ixJEjbDEn2tdbBA1nxglln/uYARJsAkYSvQe7QOrFxHQlNi7DqyG
 WWAHk8TeZ3/ZQGqEBSIljv3aBlbPIqAqsfrRfjCbV8BaYl3HKkaIBfISqzccYAaxOQVsJE7t
 3sUEYgsB1bz+OIV1AiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIGBve3Yzy07GLve
 BR9iFOBgVOLh7WgpjxViTSwrrsw9xCjBwawkwnu9rzRWiDclsbIqtSg/vqg0J7X4EKMp0FET
 maVEk/OBUZdXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoFRUS8h
 KnzTOWH3N/Obsi/Gr9lyf+XGTo8z0zZ/DtZSM8juuamqnGIU+CK2Z6UUu9liBssXnUkXT6rO
 Ejhy//nU9Hxpz5od7snv+Fp8C0rzJnEoLK2oemfz41bUj3snGJLW5XbsDfu2Yl3eLA3vXI8r
 PnmLXu1Z8XxinX3B5hLWco0t2TF5dtFKLMUZiYZazEXFiQAoOznxggIAAA==
X-CMS-MailID: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
X-Msg-Generator: CA
X-RootMTR: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123636eucas1p250ec04901f227b947cc38936563f63b2
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123636eucas1p250ec04901f227b947cc38936563f63b2@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053639_491521_C33480DB 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To be squashed with patch "PM / OPP: Support adjusting OPP voltages
at runtime".

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v3:
 - new patch

 drivers/opp/core.c     | 10 ++++++++--
 include/linux/pm_opp.h |  3 ++-
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 407a07f29b12..4ebe5a6c280b 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -2057,14 +2057,18 @@ static int _opp_set_availability(struct device *dev, unsigned long freq,
  * dev_pm_opp_adjust_voltage() - helper to change the voltage of an OPP
  * @dev:		device for which we do this operation
  * @freq:		OPP frequency to adjust voltage of
- * @u_volt:		new OPP voltage
+ * @u_volt:		new OPP target voltage
+ * @u_volt_min:		new OPP min voltage
+ * @u_volt_max:		new OPP max voltage
  *
  * Return: -EINVAL for bad pointers, -ENOMEM if no memory available for the
  * copy operation, returns 0 if no modifcation was done OR modification was
  * successful.
  */
 int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
-			      unsigned long u_volt)
+			      unsigned long u_volt, unsigned long u_volt_min,
+			      unsigned long u_volt_max)
+
 {
 	struct opp_table *opp_table;
 	struct dev_pm_opp *tmp_opp, *opp = ERR_PTR(-ENODEV);
@@ -2098,6 +2102,8 @@ int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
 		goto adjust_unlock;

 	opp->supplies->u_volt = u_volt;
+	opp->supplies->u_volt_min = u_volt_min;
+	opp->supplies->u_volt_max = u_volt_max;

 	dev_pm_opp_get(opp);
 	mutex_unlock(&opp_table->lock);
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 86947d53e8c4..0ee1daafe6af 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -113,7 +113,8 @@ void dev_pm_opp_remove(struct device *dev, unsigned long freq);
 void dev_pm_opp_remove_all_dynamic(struct device *dev);

 int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
-			      unsigned long u_volt);
+			      unsigned long u_volt, unsigned long u_volt_min,
+			      unsigned long u_volt_max);

 int dev_pm_opp_enable(struct device *dev, unsigned long freq);

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
