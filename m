Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992F6F6E54
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gLz6/gnaD7q1eMmOdfru+Db4r2xRhziwZW0BU48x3zc=; b=S+s9ez5yziPt/mi8uvaGW3zMKA
	m5ZoB3boArTkVu2hrn4ALRuAMkEtfn/rI452FI2FltByseFki8kWUR/QwT+EnrofP5nmNNJR2RT1p
	NvK+hTK+lf+1ti6LmqchcePyNew2ZYDlY9llPb2LIztHV02A9ZVXuYd2TpHrFKwg/fq8ENhOwZ2og
	l3yHPr3oX0V6R6foN3uuME+EdQt4d1eoHdQq2Xqvrx07uDkyuT4E8I5ykUH1DjYvrYLYtRw9SK8Ki
	O1eN7TjbVkYuwGNGWql05MGsbuv+208XKv6JDhXsJHGwsRxZxEVbKb0aQ3CNLHDmrzrKnaQ7mNRzc
	5WFDMDzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2ke-0005vo-NY; Mon, 11 Nov 2019 06:00:36 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2kV-0005un-FC
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:00:29 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191111060022epoutp01d06c5f95ef420c29f0c8d4d1678db9d6~WBkcNJloC0776607766epoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 06:00:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191111060022epoutp01d06c5f95ef420c29f0c8d4d1678db9d6~WBkcNJloC0776607766epoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1573452022;
 bh=ZHmtJwzZPCJJj1Yw3R6N0QRExV0RN+KRydhi5ot94GM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bk8oXaTfsiIJMjoHYWHvtvzcnjNC0GKZmhxl7gQd/EfhAgvrfZQpcvgScmVHEGzhl
 UReOOBZgcDS2pW1CHuRs1lzrgag2WbuZnkd/zndqUWP5XBq+FmjfQIChPzfigXsrTm
 79JALZOiFXOG5bAZVmBuOhNu590b9wtGwnLSXffo=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191111060020epcas1p4c921ab5b85780714865dc23a2d8cbf55~WBkbMqGZl0767907679epcas1p4R;
 Mon, 11 Nov 2019 06:00:20 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.154]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47BKwd6CVkzMqYlm; Mon, 11 Nov
 2019 06:00:17 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 7F.37.04224.1F8F8CD5; Mon, 11 Nov 2019 15:00:17 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191111060017epcas1p37c624e81f5421842a5a31136b4cba678~WBkXxeQtG0355803558epcas1p3a;
 Mon, 11 Nov 2019 06:00:17 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191111060017epsmtrp2d85c01a94bfe0ccb9a36df6668aca5be~WBkXwwuFV3261032610epsmtrp2A;
 Mon, 11 Nov 2019 06:00:17 +0000 (GMT)
X-AuditID: b6c32a38-d43ff70000001080-3f-5dc8f8f17596
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 26.F3.24756.1F8F8CD5; Mon, 11 Nov 2019 15:00:17 +0900 (KST)
Received: from localhost.localdomain (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191111060017epsmtip2d361588ef8e0bde92397ce4fdeb16f63~WBkXiuppH3118631186epsmtip2Z;
 Mon, 11 Nov 2019 06:00:17 +0000 (GMT)
From: Chanwoo Choi <cw00.choi@samsung.com>
To: arnd@arndb.de, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
 krzk@kernel.org, kgene@kernel.org
Subject: [PATCH v2] PM / devfreq: events: Fix excessive stack usage
Date: Mon, 11 Nov 2019 15:05:57 +0900
Message-Id: <20191111060557.15650-1-cw00.choi@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191022142703.1789898-1-arnd@arndb.de>
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHeXZ3767V5DZXnfxQdsUPCuquc3mt2ZsRo4SM6Esk66YXJ+6t
 3a20AnsjzXSlidiLEWlZRjTWGBq+K6aWGpkWmBRaWVZGLXsv27xGffufw+///A/nOSSm+I2H
 kllmO28zc0aamCP1tkeqoj987UpT1U/Fsb9KO2VsyeOHUvbRp3GcPTn2BmP7+10ytvfwWxnr
 HhvC2YHb5wnWV9yB2Ir+Jgk7fOgqsWau7sf3UqRz1x4ndLeq83ROTy3S+dxLUvHt2VoDz2Xw
 tjDenG7JyDJnJtGbtuqT9ZrlKiaaSWQT6DAzZ+KT6PUpqdEbsoz+yeiwPZzR4W+lcoJAx67S
 2iwOOx9msAj2JJq3ZhitidYYgTMJDnNmTLrFtIJRqeI0fnBntqGnowS3nlPk1LsmsINoMrgQ
 BZFAxUPrdBFWiOaQCqoOwa3O31Kx+IigvduLi8VnBE7vIPprcXZ3zVKNCEaLvsrE4hOCoc8n
 pAGKoKKg+dVjohCRpJLKhkvOlQEGo1oRXBhwSQJMCJUM499e4gEtpSLgXWWFLKDl1AqYGK/F
 xLSlcN3VMqODKA3UFI+hwENAtRDgbi/HRWg9lL8umx0vBCbueGSiDgXfZCMh6v1wrbuDEM0F
 CDzN92fNami+fFoSmBSjIuHm7VixvQzqf1TOvIlRwTA5VYQHEKDkUHBMISLhMPBsRCLqxVCV
 f3w2Sgd3XVeQuBR/VLGnVXIKLTn7L+EiQrVoIW8VTJm8wFjj//8zN5q5vSi2DjX0pbQhikT0
 PHlqbFeaAuf2CLmmNgQkRivldTn+ljyDy93H2yx6m8PIC21I419lCRa6IN3iv2SzXc9o4tRq
 NRvPLNcwDL1IvrbmcpqCyuTsfDbPW3nbX5+EDAo9iNYUHanpb9oMPYN1wfGJ97y9ecqC6p/b
 sJ6EB+/zhgdvLHNeudaXWKpvjZTvRTE7Rp+f6rsq7T4asbLB7auZHvlYNl+b3zRaJg0/ULLa
 e8bDa54eTTH4dk9tUbrX+ZLHuK6qjdoTX3Y5prfefKTWjn843fRERuerlC++zUsw7js2REsF
 A8dEYTaB+wPx1Wy4kQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOLMWRmVeSWpSXmKPExsWy7bCSvO7HHydiDZbv4bL4O+kYu8XEG1dY
 LK5/ec5q0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XtxhVsDtwev39N
 YvTYtKqTzWPzknqPvi2rGD0+b5ILYI3isklJzcksSy3St0vgyjh1ZCJrwWyhip0bXjE3ML7j
 62Lk5JAQMJHoO3mCpYuRi0NIYDejRNfhJYwQCUmJaRePMncxcgDZwhKHDxdD1HxilOg9eIIV
 pIZNQEti/4sbbCC2iEChxLtP25lAipgFjjNKvP92gRkkISzgLPH85zOwBhYBVYm3c2ewg9i8
 AlYSr56vYoZYJi+xesMBMJtTwFRiee9jsCOEgK7rWfeJcQIj3wJGhlWMkqkFxbnpucWGBYZ5
 qeV6xYm5xaV56XrJ+bmbGMHBqaW5g/HykvhDjAIcjEo8vD90TsQKsSaWFVfmHmKU4GBWEuHd
 UQEU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzvs071ikkEB6YklqdmpqQWoRTJaJg1OqgbE05FiR
 UO7GzyVP1A2OXK5Y4r/ng/bNAk8h9a1hv2a3n7YPeLfo05vOl51iT7WLJ9o11h6xs2iR33Vu
 tnhwSxObVvFpXjUOuZzLIizSD4zSjiYI3/Bjl17t9OZmkE54/DUX/kPPor7MNF7CK/l086/d
 Vuk2T1JrF+5SM7kmxqv+NunDgb2fFyixFGckGmoxFxUnAgCftVZuSgIAAA==
X-CMS-MailID: 20191111060017epcas1p37c624e81f5421842a5a31136b4cba678
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191111060017epcas1p37c624e81f5421842a5a31136b4cba678
References: <20191022142703.1789898-1-arnd@arndb.de>
 <CGME20191111060017epcas1p37c624e81f5421842a5a31136b4cba678@epcas1p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_220027_887868_830A6BB0 
X-CRM114-Status: GOOD (  21.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 chanwoo@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

Putting a 'struct devfreq_event_dev' object on the stack is generally
a bad idea and here it leads to a warnig about potential stack overflow:

drivers/devfreq/event/exynos-ppmu.c:643:12: error: stack frame size of 1040 bytes in function 'exynos_ppmu_probe' [-Werror,-Wframe-larger-than=]

There is no real need for the device structure, only the string inside
it, so add an internal helper function that simply takes the string
as its argument and remove the device structure.

Fixes: 1dd62c66d345 ("PM / devfreq: events: extend events by type of counted data")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
[cw00.choi: Fix the issue from 'desc->name' to 'desc[j].name']
Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
---
Changes from v1:
- Fix the issue from 'desc->name' to 'desc[j].name'

 drivers/devfreq/event/exynos-ppmu.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/devfreq/event/exynos-ppmu.c b/drivers/devfreq/event/exynos-ppmu.c
index 85c7a77bf3f0..055deea42c37 100644
--- a/drivers/devfreq/event/exynos-ppmu.c
+++ b/drivers/devfreq/event/exynos-ppmu.c
@@ -101,17 +101,22 @@ static struct __exynos_ppmu_events {
 	PPMU_EVENT(dmc1_1),
 };
 
-static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
+static int __exynos_ppmu_find_ppmu_id(const char *edev_name)
 {
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(ppmu_events); i++)
-		if (!strcmp(edev->desc->name, ppmu_events[i].name))
+		if (!strcmp(edev_name, ppmu_events[i].name))
 			return ppmu_events[i].id;
 
 	return -EINVAL;
 }
 
+static int exynos_ppmu_find_ppmu_id(struct devfreq_event_dev *edev)
+{
+	return __exynos_ppmu_find_ppmu_id(edev->desc->name);
+}
+
 /*
  * The devfreq-event ops structure for PPMU v1.1
  */
@@ -556,13 +561,11 @@ static int of_get_devfreq_events(struct device_node *np,
 			 * use default if not.
 			 */
 			if (info->ppmu_type == EXYNOS_TYPE_PPMU_V2) {
-				struct devfreq_event_dev edev;
 				int id;
 				/* Not all registers take the same value for
 				 * read+write data count.
 				 */
-				edev.desc = &desc[j];
-				id = exynos_ppmu_find_ppmu_id(&edev);
+				id = __exynos_ppmu_find_ppmu_id(desc[j].name);
 
 				switch (id) {
 				case PPMU_PMNCNT0:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
