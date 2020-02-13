Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF47115C8DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kNpR2VL3Xxs2i1pNRu65znYj4YF64ocVEhDE8UXKPQ=; b=u2mvHq49fhdYpQ
	Jt4gPsIlzDwzCc9ejsIF8fawtfn4xZzDuVvVPOzgA4wrUqyISHWseAeZLXmckcjqPzXFnFph9QnCV
	icJr9GRQISpChPaOrdR67RuAJqvXcZlHW2fCkoZxtzPIdXbXxY4UDaJvM0AtkXw+LJZlrODeKyyc2
	qEwRI+3pNVXZeVgKKYWwCKJfccC0fB2fbah2SrxEsi3g9dCwpqWrTomvTACXduX4VeOkdwksssbFk
	vYr5ix+AULFjyCPhZWjD1MNbfi7HfsEntj/iibmpuHfLhr9Bxr+9MiA0kbioqIRVs2a0hd+vgKfwR
	FDHNoUC/ZeQ6L3+rk7iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HjC-00069k-1A; Thu, 13 Feb 2020 16:52:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hig-0005pI-Cj
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:52:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so7544223wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 08:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mXCUGqeL6PbA336GlcM8rHQqOkBRfH65mxhuhA/oiUg=;
 b=FATGPw/03i+6ra7pZ+0f2Yx7d0nkjAHHARTnqpWONoRS28EzIc1UyHX9MFMwcYzjMO
 tDZF/Te4B8oxJVrV1QVr1LCSEri3Tg2n5xWLUhn1au776Ax4XiUmQ2kdo7lRUa6qX1Sx
 /Fy56EkZGaDzdzOVIv1VC7bH47seMnoM/b2J6jXZAxmX5hqaaoNdLx2scUViX1CzZjFB
 e+L7Uz0O+ni5Lcnojs3FGqgeQ9Nl7VMoe0T+RV7D5e7qrYVSitpvavCEIt6HXReEVnj5
 /n1chMpOz0k3HzMYg+rmm+sEkqhCAl9Zp8e+q8evyaL6NW/jWEpQKBfb0sQC3GI0RrPY
 +d8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mXCUGqeL6PbA336GlcM8rHQqOkBRfH65mxhuhA/oiUg=;
 b=cpanqF14phN7wqZqPp4idbq5Cvr36CZhbhXPQJA3qvXyNI1VPqO5e3yVbHHM6qoGCr
 7cUfOsgNPk2/Cg2E0rJOaC4W9GAN2hGA2dmX2dehlFuKieFK+rCc5p+HR2lppqMd+byW
 yH7Yo16j9foMwwd9m1ifavDT2rqi0IWtsWsiEFt3Yl88ivAxIXBXwfZaxbTndq7fraMf
 OKV/pPyx5tuf8msDYbDj8RLU7BJBhnMFsf6+BMjNQYSuTg8uMZBNZyPNxM+Nfmd5OMbq
 J1vIvw8zmczSytJNwPDntbx1iq5CTveymPwqNd2ZirkC33jjd4fNPbo+zctmw2Mf2eOE
 3Usg==
X-Gm-Message-State: APjAAAVQP6e14o7NXBj/Ad/k/sMqAS3frfzWswyzF5cOSJQHzt5eONLj
 N/Bx2CLw/c8gum7ksrM5Et1U5Q==
X-Google-Smtp-Source: APXvYqzT+gxKpbYpQdrXRe7VcscUkXpdsiUrg5UigA1Q8dxYZpS/a2crEVA74fADKvuMRYM9+kU+PQ==
X-Received: by 2002:a7b:c109:: with SMTP id w9mr6554015wmi.14.1581612725090;
 Thu, 13 Feb 2020 08:52:05 -0800 (PST)
Received: from localhost.localdomain ([2001:171b:2276:930:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id y6sm3484807wrl.17.2020.02.13.08.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 08:52:04 -0800 (PST)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org,
 lorenzo.pieralisi@arm.com, joro@8bytes.org, baolu.lu@linux.intel.com,
 linux-doc@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [PATCH 01/11] dt-bindings: PCI: generic: Add ats-supported property
Date: Thu, 13 Feb 2020 17:50:39 +0100
Message-Id: <20200213165049.508908-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213165049.508908-1-jean-philippe@linaro.org>
References: <20200213165049.508908-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_085206_428517_1EEF4DCC 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add a way for firmware to tell the OS that ATS is supported by the PCI
root complex. An endpoint with ATS enabled may send Translation Requests
and Translated Memory Requests, which look just like Normal Memory
Requests with a non-zero AT field. So a root controller that ignores the
AT field may simply forward the request to the IOMMU as a Normal Memory
Request, which could end badly. In any case, the endpoint will be
unusable.

The ats-supported property allows the OS to only enable ATS in endpoints
if the root controller can handle ATS requests. Only add the property to
pcie-host-ecam-generic for the moment. For non-generic root controllers,
availability of ATS can be inferred from the compatible string.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 Documentation/devicetree/bindings/pci/host-generic-pci.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
index 47353d0cd394..7d40edd7f1ef 100644
--- a/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
+++ b/Documentation/devicetree/bindings/pci/host-generic-pci.yaml
@@ -107,6 +107,12 @@ properties:
 
   dma-coherent: true
 
+  ats-supported:
+    description:
+      Indicates that a PCIe host controller supports ATS, and can handle Memory
+      Requests with Address Type (AT).
+    type: boolean
+
 required:
   - compatible
   - reg
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
