Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9674127259
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nLbkFOEuV/kkVRs6jpVpml6r5WR/59Du9jcFzo/QWyE=; b=bQaSZAoZMhdXDOi6o/iLrkcf9Z
	gxhZXB2Tvxk0pmMb6oR0KHseWGqKthb77MoTSRVfXckMr9EUDRUuSvogYXJFAEPTBBuKjvtm0t3RO
	0/pvPWCwHWwWsyGPNJ320Xft0vagNXQT4xxOP5Y5Sw75M8SGqs/od2SfN3OCnYSJV9bmgXpsXGP2z
	dDqv3tj7e/LN6wU/AVwAcIrJuNY7Ttzofz9kIoMB9yi3emlIo1i4mHguCEN+xtT1mTNAHJqayp0CY
	uLCzTLxBQBd+X5f+ldyqQKLrNmQNbVD7Dv19cd7+NfwppOp9/5n0Tbll9HvFU/6uCjto1vfmqZsSx
	LGdDEetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii625-0002CE-VW; Fri, 20 Dec 2019 00:20:41 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5zk-0007Su-Aq
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:18:23 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epoutp0483b850f2afa97bf723ccf1d6dc4a8dcb~h7DtzcRir1351913519epoutp04d
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20191220001804epoutp0483b850f2afa97bf723ccf1d6dc4a8dcb~h7DtzcRir1351913519epoutp04d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576801084;
 bh=pwijEwTWcEO4wveIqCtYvG/M9aZLMv6S/yRD0pGiFcQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IDRRT8KgI7dmTGTk/r8FxiXDSv4VHdM6XHdVDIL6tuS0VwJKscuK8q/pWO6Q82gnJ
 AxhyYBw9YXd4QOx/TG3TtiMIWhRtSCokJ0BaiqkiCdgI+cLiZKlbJJJzCOoq4ksDJP
 uQmocj8zotASYyTny5ACvgp2eRH0voa3iVF6LAvg=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191220001804epcas1p2db035ec32b8430765358187e75784ee7~h7DtOUJX80401904019epcas1p2T;
 Fri, 20 Dec 2019 00:18:04 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.153]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 47f8Tg71rtzMqYks; Fri, 20 Dec
 2019 00:17:59 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.27.51241.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405~h7Do65H9v0539005390epcas1p4X;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191220001759epsmtrp1e17e6dc2587d400e495ccb2b8e11b04f~h7Do51AbM1705617056epsmtrp1O;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
X-AuditID: b6c32a39-163ff7000001c829-de-5dfc133711d1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 AC.6C.06569.7331CFD5; Fri, 20 Dec 2019 09:17:59 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191220001759epsmtip19edd2bfef4cdde0841209094f7ac9672~h7DouN49y2071620716epsmtip1X;
 Fri, 20 Dec 2019 00:17:59 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: robh+dt@kernel.org, krzk@kernel.org, heiko@sntech.de,
 leonard.crestez@nxp.com, lukasz.luba@arm.com
Subject: [PATCH v2 01/11] PM / devfreq: Add devfreq_get_devfreq_by_node
 function
Date: Fri, 20 Dec 2019 09:24:20 +0900
Message-Id: <20191220002430.11995-2-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191220002430.11995-1-cw00.choi@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDJsWRmVeSWpSXmKPExsWy7bCmvq658J9Yg40LLS3uz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FHZNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlAbygplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCiwL9IoTc4tL
 89L1kvNzrQwNDIxMgQoTsjN2PpzJUrBKpuLatWvMDYxPxLsYOTkkBEwkPh6fytLFyMUhJLCD
 UeLapmZWCOcTo8SVOf1sEM43Roln084zw7T8e/aeCSKxl1Hi8IUF7BDOF0aJS9MeMoJUsQlo
 Sex/cYMNxBYRyJCY+foy2FxmgY9MEl3b7oIlhAWCJJb9uQQ2lkVAVeLQzvlgzbwCVhJfP25m
 hVgnL7F6wwGwGk4Ba4ktzx6CbZMQaGaX+LqpDarIRWLWpttQ9wlLvDq+hR3ClpJ42d8GZVdL
 rDx5hA2iuYNRYsv+C1DNxhL7l04GeogD6DxNifW79CHCihI7f88FO4hZgE/i3dceVpASCQFe
 iY42IYgSZYnLD+4yQdiSEovbO9kgbA+JdwvXQoOoj1Fibt971gmMcrMQNixgZFzFKJZaUJyb
 nlpsWGCKHGmbGMEpVctyB+Oxcz6HGAU4GJV4eB3SfscKsSaWFVfmHmKU4GBWEuG93fEzVog3
 JbGyKrUoP76oNCe1+BCjKTAoJzJLiSbnA9N9Xkm8oamRsbGxhYmhmamhoZI4L8ePi7FCAumJ
 JanZqakFqUUwfUwcnFINjDzZpgEyvtyz9hbMX2CsmbKyIeItWyDnk4vpWqodBYKXr6087JLR
 O0+z32/Tqj+72qpiPZQSpJ2d584TX9U1ofvO7037EjnTo6ffk+WZKKTX9EX23i7zkCU61g9m
 3C2f7OOd/KA0mmFvp7J3Y0HJ4xm39X89Zp/iXMa++craK93//fsZbif8UWIpzkg01GIuKk4E
 ALKPKNS/AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCLMWRmVeSWpSXmKPExsWy7bCSnK658J9Yg53/RCzuz2tltLj+5Tmr
 xfwj51gt/j96zWrR//g1s8X58xvYLc42vWG3WHH3I6vFpsfXWC0u75rDZvG59wijxacH/5kt
 Zpzfx2SxsKmF3WLtkbvsFkuvX2SyuN24gs2ide8RdgchjzXz1jB6bFrVyeaxeUm9x8Z3O5g8
 +rasYvTYfm0es8fnTXIB7FFcNimpOZllqUX6dglcGTsfzmQpWCVTce3aNeYGxifiXYycHBIC
 JhL/nr1n6mLk4hAS2M0o0b3gAgtEQlJi2sWjzF2MHEC2sMThw8UQNZ8YJb51drCC1LAJaEns
 f3GDDcQWEciT2LTxKzNIEbPAfyaJ7ycfMIIkhAUCJHrXfgVrYBFQlTi0cz5YnFfASuLrx82s
 EMvkJVZvOMAMYnMKWEtsefaQHcQWAqp5ef4C6wRGvgWMDKsYJVMLinPTc4sNC4zyUsv1ihNz
 i0vz0vWS83M3MYLDXktrB+OJE/GHGAU4GJV4eB3SfscKsSaWFVfmHmKU4GBWEuG93fEzVog3
 JbGyKrUoP76oNCe1+BCjNAeLkjivfP6xSCGB9MSS1OzU1ILUIpgsEwenVAOj1b+4SZHmX2d2
 /TNRT2VqWe3zwCVMMDbmzJGQlGtexRMPsTD/vz5XfO4zjrM9Ds+YkydYLJwfWTLnfX39Mz6t
 32HxP5a495yorDOdaKJ2XDmGp81qa7BNZMCLM7V7OgrK/8XPOjer1GGLcVr/M/WrnyplViTs
 KnO6fD98z5KTLHxfoq50n7mhxFKckWioxVxUnAgASv/MYXcCAAA=
X-CMS-MailID: 20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4bbbcf6a84c09229db0ddae86be294405@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_161816_628769_81767DBA 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>

Split off part of devfreq_get_devfreq_by_phandle into a separate
function. This allows callers to fetch devfreq instances by enumerating
devicetree instead of explicit phandles.

[lkp: Reported the build error]
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
[cw00.choi: Export devfreq_get_devfreq_by_node function and
 add function to devfreq.h when CONFIG_PM_DEVFREQ is enabled.]
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 drivers/devfreq/devfreq.c | 46 +++++++++++++++++++++++++++++----------
 include/linux/devfreq.h   |  6 +++++
 2 files changed, 41 insertions(+), 11 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 89260b17598f..cb8ca81c8973 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -966,6 +966,32 @@ struct devfreq *devm_devfreq_add_device(struct device *dev,
 EXPORT_SYMBOL(devm_devfreq_add_device);
 
 #ifdef CONFIG_OF
+/*
+ * devfreq_get_devfreq_by_node - Get the devfreq device from devicetree
+ * @node - pointer to device_node
+ *
+ * return the instance of devfreq device
+ */
+struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
+{
+	struct devfreq *devfreq;
+
+	if (!node)
+		return ERR_PTR(-EINVAL);
+
+	mutex_lock(&devfreq_list_lock);
+	list_for_each_entry(devfreq, &devfreq_list, node) {
+		if (devfreq->dev.parent
+			&& devfreq->dev.parent->of_node == node) {
+			mutex_unlock(&devfreq_list_lock);
+			return devfreq;
+		}
+	}
+	mutex_unlock(&devfreq_list_lock);
+
+	return ERR_PTR(-ENODEV);
+}
+
 /*
  * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
  * @dev - instance to the given device
@@ -988,26 +1014,24 @@ struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
 	if (!node)
 		return ERR_PTR(-ENODEV);
 
-	mutex_lock(&devfreq_list_lock);
-	list_for_each_entry(devfreq, &devfreq_list, node) {
-		if (devfreq->dev.parent
-			&& devfreq->dev.parent->of_node == node) {
-			mutex_unlock(&devfreq_list_lock);
-			of_node_put(node);
-			return devfreq;
-		}
-	}
-	mutex_unlock(&devfreq_list_lock);
+	devfreq = devfreq_get_devfreq_by_node(node);
 	of_node_put(node);
 
-	return ERR_PTR(-EPROBE_DEFER);
+	return devfreq;
 }
+
 #else
+struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
 {
 	return ERR_PTR(-ENODEV);
 }
 #endif /* CONFIG_OF */
+EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
 EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
 
 /**
diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
index c6f82d4bec9f..1dccc47acbce 100644
--- a/include/linux/devfreq.h
+++ b/include/linux/devfreq.h
@@ -253,6 +253,7 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
 				struct devfreq *devfreq,
 				struct notifier_block *nb,
 				unsigned int list);
+extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
 extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
 						int index);
 
@@ -407,6 +408,11 @@ static inline void devm_devfreq_unregister_notifier(struct device *dev,
 {
 }
 
+static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
+{
+	return ERR_PTR(-ENODEV);
+}
+
 static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
 							int index)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
