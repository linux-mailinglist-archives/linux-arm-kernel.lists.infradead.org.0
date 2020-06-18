Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D19F1FF7FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aqMB68e2K+DECLh7KGSXUI+T5ZIWbtvGS0arEf9dFgA=; b=rhxVY+Smd+GvlKvCNyTp596nrX
	aNTWZ6w7sW9h46l+JjGWIY2cvLBU4Gejh6DQ45UJ75MsrT57Uddd2dHSsjMKtjKLzSvwFhkRUIwqd
	T5jidlLEG8DLTVwMb2xiF/HCuwK3bGOc+YLlgAPMXxeAWkRrAAIK2AJWgr3pvQt4G3vtFQmSTmi06
	uH0lxex/Fd1FdHO82oB+M7ecYJLVfx0p1j1pEu5I4ROFDbc7REKVZNQuBz4qiRoiHcJgZHVpYY11p
	mvzS6aZSIz0TcQvK3yOm69OzeOrr/AuVEARcpmHrxKoWj+bQsbaZO7gMxKEAvv4DymWk78gmwsUBD
	fVZWKymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwoR-0000JU-5I; Thu, 18 Jun 2020 15:50:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwea-0004Ns-8l
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:40:39 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200618154034euoutp02fd37e952b9e1eb84d4b1b1f4a9caf2ae~ZrZ1d271x1314513145euoutp02Z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 15:40:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200618154034euoutp02fd37e952b9e1eb84d4b1b1f4a9caf2ae~ZrZ1d271x1314513145euoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592494834;
 bh=W7zLF4UUXLl3vJEsJx6vhSegl+oWVyV8PytRYNB6fZE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BK9H79oDkWmiuPF87QV55zDSO4C2L3RbTM3oiSAQcD7dOERsvHFGByChcVBSl1obJ
 6jFjuTeWeJZHqSmQEShVuWw4QFRU/MKX86GhvyToqh+P7HNL87KH19EFZpI4HQe6vw
 ebaDdCUyKJrBr2t/ompkGZZRtGJF30/yNxMslDys=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200618154034eucas1p200b642aad46f9f3dadb0b4d779961134~ZrZ05QFtV0500605006eucas1p28;
 Thu, 18 Jun 2020 15:40:34 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id AB.60.60698.1FA8BEE5; Thu, 18
 Jun 2020 16:40:33 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0~ZrZ0kWFUk1545515455eucas1p1h;
 Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200618154033eusmtrp18f40620951e8b03018ca5f7fe0349d57~ZrZ0jmufx2230622306eusmtrp1I;
 Thu, 18 Jun 2020 15:40:33 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-46-5eeb8af11c95
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 8F.E9.07950.1FA8BEE5; Thu, 18
 Jun 2020 16:40:33 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200618154032eusmtip12f8eaf6349a9de5197cc02bcf8153741~ZrZzqdGAz2806328063eusmtip1H;
 Thu, 18 Jun 2020 15:40:32 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 28/36] staging: ion: remove dead code
Date: Thu, 18 Jun 2020 17:39:49 +0200
Message-Id: <20200618153956.29558-29-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200618153956.29558-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTURzu7D52Z66uS+pQkbUwe/rAoENFmEUc6B/BQKw0r3mxSKdtviqi
 9baplSlkkrVKXb6aL5bNqWXWylcPbWipaQ9rjlJTo6SszWv53/f7Hr/vx+EwhGyEms/sV8Tx
 SgUXJaedSMPjn8/WDGtsod7JI+tRWutTERr8/ZZGZVl6Ch3/uhT9MaQTyNQ8LkbtY4M0OnlL
 T6OCokcipK3bgPLV7qjA9EOERtv7RKj8vYVCbcarNCpp6BYjQ7GaQg+GPlCosXtEjLSWcbGf
 KzZUGyhcfK0Y4N85wwTuqX1I4prvWhLf+DZG4S6LicZ3v/dSuC6nWIzfpphFuCL3GH4z8Z7A
 GR06gKs71TQerH1F4/OVhSDAZafTxgg+an8Cr/TaFOa0b8yYS8XanJPS2ztpNTg3UwMkDGTX
 Qos2k9QAJ0bG3gbQ1P9tahgF8GdKCSEMIwD2dHwg/0X6G8qmBB2AWacypyMV6nbC4aJZH6j5
 oqEd2JU9DeCTNGeHiWBTKWgtLZ0U5rAIvh4+IXZgknWHPXkDwIGl7CZ471S6SKhzg0Wl9yeX
 Sux8k/k05VgE2SsMLDivEwumrdAwmg0EPAcOmCun+IWwKSOVFAInAexrLRELQyqAbSeyphIb
 YFfruP0kxn7fCqg3egn0Zvip7j5w0JCdBTu+uDhowg4vGS4TAi2FyWdkgnsZzDbf+V/74PlL
 QsAYGt/YKOGF0gEc7GoBF4Fb9nSZFoBCMI+PV0VH8ipfBZ/oqeKiVfGKSM+9MdHlwP4VmybM
 Y1Wg9ld4PWAZIHeWft5hC5VRXILqUHQ9gAwhd5X6tzSFyqQR3KHDvDJmjzI+ilfVgwUMKZ8n
 9b1pDZGxkVwcf4DnY3nlP1XESOarAZ9vPbj8SCB51vtjQ6HNvzxt94Uobl2IzK3Xs9f6InFb
 qV9HAOcx5DHDRR3utaX34Vp9LVmfEqc7npe5oDGszTM4yGsoqUL+buLoEmOgT2vyubmh24ck
 4MVLi7Uvoc2w+sAu0zbJ7ODrjRM5T4ICVupqFAv1jUEJVSGLm1NWVS3KkJOqfZzPSkKp4v4C
 KvQFAYYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMIsWRmVeSWpSXmKPExsVy+t/xu7ofu17HGTy8omLRe+4kk8X7v/fZ
 LDbOWM9q0fhO2eL/tonMFnvO/GK3uPL1PZtF8+L1bBYrVx9lsliw39piWYOqxco9P5gsvlx5
 yGSx6fE1VovLu+awWaw9cpfdYtuaBlaLgx+esFqcuvuZ3WLBtV/sDiIe23ZvY/VYM28No8ff
 uR+ZPe7tO8zisffbAhaPhZ++snrcubaHzWP7twesHvvnrmH3uN99nMlj85J6j9v/HjN7TL6x
 nNFj980GNo/3+66yefRtWcUYIBilZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2Vk
 qqRvZ5OSmpNZllqkb5egl/F11xLWgtc8FROv3GRrYOzk7mLk5JAQMJF4dmQjM4gtJLCUUeL5
 wSiIuIzEyWkNrBC2sMSfa11sXYxcQDWfGCVeT9kA1sAmYCjR9RYiISLQySgxrfsjO4jDLDCD
 VWLdgXvsIFXCAhYStz42gdksAqoS95a+YgSxeQXsJHa2TGSCWCEvsXrDAbCpnEDx08dbWSFO
 spV4/qGNbQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBEbrt2M8tOxi73gUfYhTg
 YFTi4X0R8jpOiDWxrLgy9xCjBAezkgiv09nTcUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D0weeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGPUEubtXTN8g
 sOd1HP+nN69mJRaITfZyf6XR22582vTcPrdnCbtdJzD8je6f9rOo+zi38qZcH9kn1o6Clm4i
 Aa6z7s/aG8ylEGIy9/hvKRHJmr0Vy7bl8N+pfxUrKBW9bAFj3XmVx6KnHK5WmCQyOZeu3Sv3
 sWVbzcnLNln2gdOY76Y+7cr4oMRSnJFoqMVcVJwIAKInuRrmAgAA
X-CMS-MailID: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
X-Msg-Generator: CA
X-RootMTR: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154033eucas1p1d061fbc72e2eed8d475ab170f9a2fbf0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_084036_469651_DEB10521 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>,
 Daniel Vetter <daniel@ffwll.ch>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <labbott@redhat.com>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ion_heap_pages_zero() function is not used at all, so remove it to
simplify the ion_heap_sglist_zero() function later.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/staging/android/ion/ion.h      | 1 -
 drivers/staging/android/ion/ion_heap.c | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/drivers/staging/android/ion/ion.h b/drivers/staging/android/ion/ion.h
index 74914a266e25..c199e88afc6c 100644
--- a/drivers/staging/android/ion/ion.h
+++ b/drivers/staging/android/ion/ion.h
@@ -177,7 +177,6 @@ void ion_heap_unmap_kernel(struct ion_heap *heap, struct ion_buffer *buffer);
 int ion_heap_map_user(struct ion_heap *heap, struct ion_buffer *buffer,
 		      struct vm_area_struct *vma);
 int ion_heap_buffer_zero(struct ion_buffer *buffer);
-int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot);
 
 /**
  * ion_heap_init_shrinker
diff --git a/drivers/staging/android/ion/ion_heap.c b/drivers/staging/android/ion/ion_heap.c
index 0755b11348ed..9c23b2382a1e 100644
--- a/drivers/staging/android/ion/ion_heap.c
+++ b/drivers/staging/android/ion/ion_heap.c
@@ -145,15 +145,6 @@ int ion_heap_buffer_zero(struct ion_buffer *buffer)
 	return ion_heap_sglist_zero(table->sgl, table->nents, pgprot);
 }
 
-int ion_heap_pages_zero(struct page *page, size_t size, pgprot_t pgprot)
-{
-	struct scatterlist sg;
-
-	sg_init_table(&sg, 1);
-	sg_set_page(&sg, page, size, 0);
-	return ion_heap_sglist_zero(&sg, 1, pgprot);
-}
-
 void ion_heap_freelist_add(struct ion_heap *heap, struct ion_buffer *buffer)
 {
 	spin_lock(&heap->free_lock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
