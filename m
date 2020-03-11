Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475C01818B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqXRgoTrnx8i61r3So8lIqy/656FsWG/8Vrd7aExFKc=; b=gVpzLfpjxfl+IP
	vJxaF4+tPK7Z3KOZXy32KwirF5E+xWU5GYpYH+DcuzylngxPTF2OSsONKIxIWJXRvArMKiUmAkHy1
	Icf+2hxXZWUcNs1B/R6Dpzsz0XwtnDRmK48pu8EcWxU24890oUbyKPKrSL+agOD9vxSq/+aGZ+Xqe
	E0tugjMjtUomJ6vGV3ysXMtUG8E5iR6T4bqgGwsa04tJa7QIXSeMgjzoI+ExYCbAaNGvnTL5RqCqu
	Kn3bg3brsbt2hxEsoUrz5NERE/WD0uc/DdVtA1IFar7YtKQy8ygXmmyTF7goEEI2VcJsnbJx+lR9J
	WXJlu7dLEBdrSKR0tSHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0mG-0000F4-25; Wed, 11 Mar 2020 12:48:00 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0lG-00082x-Jk
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:46:59 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 11so1940736wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 05:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3krMYkJ5TguiyRWERa/+CMYLcOJYUhlPd6t/ch8qqgQ=;
 b=v/Zaf60vUqEkNfZdt1gJK9VC+hb3PZmmanEVWPvFm7vnZBA5ZwW1m4ZykGbhtwPbxS
 WDb8SaSMRfYNq9MWw8D64WiMIUDABRqX0BpAT4ePCPBmBilmDeqovdmyjQQbeeinzjT3
 dU7ZYFiTiptVbhWvRNSSwkbXuMm85b7zo3+WewNnxbyUAgpAYg6IacX7b8dZIsVjmoPL
 ljKaqQwgtRwTqJbizGpaPcYht4A3xsbwTlrPglZUOAUbUiWXn8f1kPSnUL4oTeXCwx5a
 HVG7oETbPqToLR4mHqQQfeuOcp3PJuFsthzK2H6yoTG+E5ivLt3KD6d/PuIk6kKoxhmV
 ptdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3krMYkJ5TguiyRWERa/+CMYLcOJYUhlPd6t/ch8qqgQ=;
 b=btv2Bpj9dGWuqriCyiAiqXvVOn512o0r8BgKJqMN0ztsEfSHtg4W4iUd/zrCS/0vR0
 v+V8v+SvNwO7sNXb6o5hQcyWIdRBwG5+lFR+h/u8zu9k6l8VBug/qIiHBkYcsGAaKYXl
 dMD1OaDicGRBr1LTIZtLMwFrCflKoKjp07gSFd03+qoX/QTNJCXCAZoUheDLcRypuS9D
 wJL8Br9/DK2uoEAer2F+J2LZuMjbvGEcRfvQ0yDc3qFD22FiFQDh5gmuOzt3m44F4Pkv
 pzar0zaayGQOF/A747rKYilXH3BYlnoqb9jGwsjCDrP4WE5DOXCnAdqi9gprmEQb7BWq
 r6NQ==
X-Gm-Message-State: ANhLgQ17vj5DWlIyCK6jO+Cf6WefIHK2eAjbV4Vy/N8eOEQUKnpTFiFM
 v8wWIzbd4b3b9t3Z/BugWwRQGw==
X-Google-Smtp-Source: ADFU+vt+OuMwfLSUXiB+t1SNAG3tC3rRy29ica+E537TLkfPGDuXQo1KUhGf31RO2GY8IfyREARQ2w==
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr3842975wmf.118.1583930815804; 
 Wed, 11 Mar 2020 05:46:55 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id c2sm8380020wma.39.2020.03.11.05.46.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 05:46:55 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: bhelgaas@google.com, will@kernel.org, robh+dt@kernel.org, joro@8bytes.org,
 baolu.lu@linux.intel.com, sudeep.holla@arm.com, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org
Subject: [PATCH v2 01/11] dt-bindings: PCI: generic: Add ats-supported property
Date: Wed, 11 Mar 2020 13:44:56 +0100
Message-Id: <20200311124506.208376-2-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311124506.208376-1-jean-philippe@linaro.org>
References: <20200311124506.208376-1-jean-philippe@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_054658_644012_42639806 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 lorenzo.pieralisi@arm.com, Rob Herring <robh@kernel.org>,
 frowand.list@gmail.com, corbet@lwn.net, liviu.dudau@arm.com, rjw@rjwysocki.net,
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

Reviewed-by: Rob Herring <robh@kernel.org>
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
