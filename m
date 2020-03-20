Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1461118D519
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9kESE/pA++cUjqYX7FAQKM+aBAKrwZ55Rcw/DAFV4Y=; b=PT4x5gfEZVQPrt
	QZFL2/elx2Nh/LM7/Jlhn1ekRRxY9UNLoWeaVTY0fB6IFwgA1Gi//ESso8rJqB6/yynBAz5eYmI+K
	oyr7lcnf7084xEzaKjIcqL4QF8iE6Dxoozf0kAPeELcaNxkqP7psARsce6a/6QltgpXe94Q2C8YNM
	b7Ha389g8ZKj0b+jsNimp5cb3ghXSOxTtLVnkKKU3Xx4mtAnU7ReVzZ9JNHsCJTvUWn9PHzJ8suvB
	xpg/O+MBVp6f6mzfzgjPG6wKbj33k5DykLe3Z+97ibYp11rT6n9+estRiPQaAwd2XcJn/spp41Q8q
	3etDF36RMMaDQPl1QLlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKwX-0006lZ-1v; Fri, 20 Mar 2020 16:56:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtc-0003D5-78
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id m15so3355790pgv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xmL7WKSSlzn7AwVehX98pnv4QVn1Y4dArQ8fGVMuiPE=;
 b=bInhT/9Z3tPBsPg8EMknvbA1Oby31u6fG3pylyWnoBarM6PXmlq/Y5wfBMZA9La5jP
 qtUS13AbDSDZrrVHk/ueAL3/npdlJ+KZG2xdCovFO7Iya6iKsMT5OjzR0awoLv0K7rzk
 CFc8pNt5Ke/SdCwVY8vYHTrGIQ8wFQHwNkI3AJ6tJC5xC2MPfhUPyHYaTpDHE54leFi/
 F6kvMiE0cQEHY1lrIcpgPql3ZHxiuai6bUaoVMAI09UVdu+uwPpwgrDmNcQV6raVmANP
 aYdduPr/uY0a+L2CH5ewqvF74DMBnuQFgjef2kl32C7wuYC5ZndIFwH86d+GnerwWoa6
 zfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xmL7WKSSlzn7AwVehX98pnv4QVn1Y4dArQ8fGVMuiPE=;
 b=c4M8KnHDF5ZVOdDm0jkKRs2uRrJJ8iOvoF+YCXk7Kn6FNYfTvkB3FzXbxQA/T05jCP
 ayu4DMDUp5Et6V1T26wAOP6RILGUUQQIJnY+VjWbaoSHWXwFM/+iDkIdcF9SKltlY3us
 D5vEz4OWwERihNwFRhUzqLJytRRAYFCG19wyMxg7sXakNp2npZQOP9wAX7d2e5mrYQcB
 t9SLF0AI4QwxQxD6e0Wz69CX9ibpE+RlwYLwSlHcdM4IzF0xe994wLTFj19SrNwe2Z1n
 GtzsGBxOFsQbITYDVxRPwAwmRO4vc0uHy14zk/AoenPnjZT0odIe88oAa7kOfNPcbzVG
 tfSQ==
X-Gm-Message-State: ANhLgQ0YbF3FMnAAYBmTYglXzL/GiwWMrYdOxVOiSb8OJvtuafoIHOZM
 ztrABEfc6Jv33xUiSua4xIiSYA==
X-Google-Smtp-Source: ADFU+vvCqMNOoII+Tvgh346RZZiWuiCEk9FlFiP3qpQ2Ts4pUCVtqJ0wR9NBNFuAaG5yilFA5SrOdA==
X-Received: by 2002:a63:a361:: with SMTP id v33mr9344642pgn.324.1584723199217; 
 Fri, 20 Mar 2020 09:53:19 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:18 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 12/12] Update MAINTAINERS to add reviewer for CoreSight
Date: Fri, 20 Mar 2020 10:53:03 -0600
Message-Id: <20200320165303.13681-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095320_331383_12168F38 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Added myself as a designated reviewer for the CoreSight infrastructure
at the request of Mathieu Poirier.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 847d1da852f9..b6f4eb83ac99 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1676,6 +1676,7 @@ F:	arch/arm/mach-ep93xx/micro9.c
 ARM/CORESIGHT FRAMEWORK AND DRIVERS
 M:	Mathieu Poirier <mathieu.poirier@linaro.org>
 R:	Suzuki K Poulose <suzuki.poulose@arm.com>
+R:	Mike Leach <mike.leach@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
