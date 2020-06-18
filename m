Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 518781FF83E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 17:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bepbn9oRNJof/6five8Uleo9E9adAKqVtHIOgGhaAig=; b=QS38QuMsLjfrd8
	0xI7AmiYJgJ7G8kiQjJ1thBE8gOXPPMWzx6bg73Exv1yS0+MQm2II2ub1VF9S+6iz4Pqq6P3rS8zz
	lOyuOeECYwHCDJt7E9S2h8ON5g5eRGKR4bXTIwODzAeVyn7Dd2j3/HZAn4xorLN78XGqGd9c/84gP
	OjZb28owXnbbW0F4FtxLBwiwJwmBH9/TW/1SH3re3u2WOM32m90KzNEemYrZYGTKhHE2D65xskdCZ
	GW+Kh2qT7eBcKOn6zCGq3N9jXsfEGSwzHYDiNpuij0rOzUQJhDPIG9+MyapWhntbnHNqFApuihnE5
	qfDXDvXEufFnwe6Hxxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlwt3-0004vH-HZ; Thu, 18 Jun 2020 15:55:34 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlwqH-00028h-PA
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 15:52:49 +0000
Received: by mail-ed1-x543.google.com with SMTP id g1so5256894edv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 08:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yTcZ/yCb5ZAy6PQyVCfw2AueTEndBOUdt4lrv7Qejz4=;
 b=JW/LxFcIwVMI0FUMp2Hp5J9IV4CbwtAZdbhqoRMEX3idf6gsNu+wnpKU+K3PCkEzT8
 Z3hEEF3Lg+SzSDaBz8tcAqxQjhy71Hu/Nh7PPuiPBeASjeLBJqrfF5i7bXMkwYa+eigH
 8+Y0YMlZi4ZiOEFSBA3y9zy+M2LQWPS8nlsoOCRjNS4B97KfnIBhcC8uZYIvrZkmkCXZ
 fy4O/KVuDHT8KFgHZkRQkJ1/cOE6bXgfZT9ug04N9mAHyTmklDntEvl1BaNCOX6gnZO9
 laYmc4vN5AFc+ATfGfVf5zHp5iPGL+9By9clhNoZNcyQO2BWBFKRiJtia49h75bNu6W8
 +pAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yTcZ/yCb5ZAy6PQyVCfw2AueTEndBOUdt4lrv7Qejz4=;
 b=XWEV/aPySV30+3zVCYOWuGFSHzR+4b1DFE3r5Evh+o7cXD3LCmSsGqxoCh0gixyvAK
 3/ntzlyVmAcfUqAf/IvrR5scYo7ZeN/cgh5oKF7EOASKsc4hqHh84/1xguy0H2rZ/qqF
 MJy6iCS6qzDt0B3FZRuS2B6ojr+xkWQ3gJHi47D7Wvc6PE3ZvkLmGn9EjIHYy1co/qWW
 GBHMR+ijqt0fAAY5T06Xk2fn6zc5MWHILOZ/Xnk/aYQqoMw5GU29jvnsND2zVCzyITrZ
 O1n2m30X8PWR8Yx1fsgLSEmlpLUOWo0UGZ3wv/f/3U4SVv6cv1H8KVOnJe8g7Qhp4Ehy
 3pWQ==
X-Gm-Message-State: AOAM532cFLpnwwKW3AlQA8//sOLKmSYFfP0l6k5w1sgjjHNh4+Ghrvoz
 XzbLs1gDnJCqOknzuNMitg928A==
X-Google-Smtp-Source: ABdhPJyr+YsmKXyyVo8ML8+oCnbztzhK2ZSjk0S597/jP9A5VGpW8hFIgvZu6EuzmCv59bIsyCybEw==
X-Received: by 2002:aa7:c908:: with SMTP id b8mr4725695edt.76.1592495559755;
 Thu, 18 Jun 2020 08:52:39 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id 63sm2402267edy.8.2020.06.18.08.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 08:52:39 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
Subject: [PATCH v8 01/12] mm: Define pasid in mm
Date: Thu, 18 Jun 2020 17:51:14 +0200
Message-Id: <20200618155125.1548969-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618155125.1548969-1-jean-philippe@linaro.org>
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_085241_879257_1AB5D96D 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhengxiang9@huawei.com, Tony Luck <tony.luck@intel.com>,
 Christoph Hellwig <hch@infradeed.org>, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, xuzaibo@huawei.com,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fenghua Yu <fenghua.yu@intel.com>

PASID is shared by all threads in a process. So the logical place to keep
track of it is in the "mm". Both ARM and X86 need to use the PASID in the
"mm".

Suggested-by: Christoph Hellwig <hch@infradeed.org>
Signed-off-by: Fenghua Yu <fenghua.yu@intel.com>
Reviewed-by: Tony Luck <tony.luck@intel.com>
---
https://lore.kernel.org/linux-iommu/1592418233-17762-9-git-send-email-fenghua.yu@intel.com/
---
 include/linux/mm_types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 64ede5f150dc5..1ad0e54ebbbaa 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -538,6 +538,10 @@ struct mm_struct {
 		atomic_long_t hugetlb_usage;
 #endif
 		struct work_struct async_put_work;
+
+#ifdef CONFIG_IOMMU_SUPPORT
+		unsigned int pasid;
+#endif
 	} __randomize_layout;
 
 	/*
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
