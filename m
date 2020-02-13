Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0B015C8ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqI+Iz8OJYf+0WuIxz9s9M8VJ3mRJu3JCw+vKDIEeGg=; b=p9IQtYGv7DKk1s
	s7awuk+QtbfeHzGEL52pgQ5XKDw1OYIdMlmdQaOO9xiHtBwmZIcOyzbhg1dW0B9MxBpEkkJZW/ZHR
	dnYgQv3DcoUE5yOfizVOncMIs2Jr2L3fZvjrvi2rEqOtHfqYEYSIAFVhVrHjAR7fEcPeHT2KkZHe7
	Y9S1afoNpPCfeCP5FUNOtxBXgUTNOBl9Hf84mACICzUMdY5eJJM2GDst+Oz6hDKXp1R3J2K1RsmOq
	/SSkQCF7f57zEADhUF8iRkcurBbXB1Mw6GC38d7F+zQI7j1vOiEzW09kpUKdzG06ZjTy3ayx8Crza
	CfAQYxYeipilLQhDq1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hlj-0008Ud-Rq; Thu, 13 Feb 2020 16:55:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2His-00060B-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id g3so7534162wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UJQuvs9RpncXIyFZgaHy4qfH2MXeX4KRcKSd32KW02I=;
 b=FRxKsOeYxspq/g5ZXQF5hEOTsVmnm1UDJ/kf7q2GeDWRw12p5AWgkElZS1ols7kw+s
 dzR64m9v0kLvMIAf98898PxAp+rZRaCMiXSRy4brZInJjJ6/VxxLBWM/9lwa8d1fjk3H
 yrBRTY7uPwUlO475tyPxQAhFP+xtWiu24oAsL9T1/3ejakQNp4NhRXjorbqBjDQvC2x+
 umWUy9HFmYG09ozyz8p/qxPi9s9GL84tQk3qVBpVhVK7pttVl9Or84knSQx1xMAHhIfz
 CLWA+FU1t1lS2HAZfQlHELEJoCgFDSyhJVnwQLLH58Q5mnxUj/vQkHn9bAHIS8WU9hNU
 k79w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UJQuvs9RpncXIyFZgaHy4qfH2MXeX4KRcKSd32KW02I=;
 b=ql7qSifgbpNiT81ejcVUiE9NUwdmy4OCu8hmvNCvvKXUlW0NDCmNcKJLnAYokuB9t0
 nwmpyyuT9hrOqj/ca5TBlcJJZo7WHDJ6hZ2PR4OsQTZmDE3RcbyqFWBDEXfEfLPYkFyd
 2XgjnFQztft4x+FcGa9GHqQh5ZbsH+1R/ZSdpnbqIlYQXl3+vWBAb5e9rHs3YlDwGEct
 PI45a0QRU0qauncI+N6x93E0b131DnOiMvXSLjtWVdt0UxrYekVeO+NGf9LtcQt/tITy
 LdDkEHDVCip7XSYRaq6RshPauk4+b+tWGdiya07GoFJmSXTOHMftu91bLDzfq33cb7s8
 JLPQ==
X-Gm-Message-State: APjAAAU0288VfOv8/iem+JailhCQc00gm3mG796Huledkrm43W8se2Pp
 UNiio/eZTfKu4ag7ZKIqPA/k5A==
X-Google-Smtp-Source: APXvYqzeNhwO1ySgCH6GebdW+o3FuDqODOSO5w28TGumAGZvm+dXwumkzW+9YyKVQhWGqXpnMT98kw==
X-Received: by 2002:a5d:4b8f:: with SMTP id b15mr22595338wrt.100.1581612736660; 
 Thu, 13 Feb 2020 08:52:16 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:16 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 11/11] Documentation: Generalize the "pci=noats" boot parameter
Date: Thu, 13 Feb 2020 17:50:49 +0100
Message-Id: <20200213165049.508908-12-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085218_625850_BE61DD4E 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, frowand.list@gmail.com, corbet@lwn.net,
 liviu.dudau@arm.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
 guohanjun@huawei.com, amurray@thegoodpenguin.co.uk, robin.murphy@arm.com,
 dwmw2@infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "pci=noats" kernel parameter disables PCIe ATS globally, and affects
any ATS-capable IOMMU driver. So rather than adding Arm SMMUv3, which
recently gained ATS support, to the list of relevant build options,
simplify the noats description.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index dbc22d684627..e5fa8d057a3c 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -3606,8 +3606,8 @@
 				on: Turn realloc on
 		realloc		same as realloc=on
 		noari		do not use PCIe ARI.
-		noats		[PCIE, Intel-IOMMU, AMD-IOMMU]
-				do not use PCIe ATS (and IOMMU device IOTLB).
+		noats		[PCIE] Do not use PCIe ATS (and IOMMU device
+				IOTLB).
 		pcie_scan_all	Scan all possible PCIe devices.  Otherwise we
 				only look for one device below a PCIe downstream
 				port.
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
