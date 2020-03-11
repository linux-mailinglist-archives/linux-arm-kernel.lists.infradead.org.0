Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A8D1817E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:22:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8IyVDzNfz8qmoHteulrpoARxZv3QlxdocOWacobcGng=; b=sCe5J9SnCspVpvOWbkcOxax83O
	tY9s51FjKOcs1Bd9uJnDSgRmmjZI1/GOzp+caIdlSuyQdWCtd4YOZMY+Cp4DioBpxCxdQjZPHDliX
	zmUhGH+jEHJqseOKC2YqeGTcgA6NLNwtIAk8Wt+lOYvaN4U2LCJYBAT8ng3SDT4RACFfiuhpSb+4Y
	KHLbT18p1/K+4pVeASRw3nFeOsC9Q9IF9qDOKDHA5qKPXvY9KXsnbDYZ2fS1Sth7oS0im9zsUxiMQ
	fX9rgx81HtR0+FEt2KD61poAeZeNxJ49psorHup55RW3FETvQjPlhNXmSti2bKJkdRH0MMYwtS5I7
	PrUlDb8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0N4-0005oz-JQ; Wed, 11 Mar 2020 12:21:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0Me-0005cO-O3; Wed, 11 Mar 2020 12:21:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id r15so2343272wrx.6;
 Wed, 11 Mar 2020 05:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6tI8IqiFkVMvrJ+LF1HeAfS7yMDlsfMjzHjhhujiGLg=;
 b=Ipc4nGGldeGiRNuTzxX+94IZMSFEy/DelczRwhnFCF1XEVPCvXkXJQvAKilzWQi+P0
 5SqbX0JaMU8nI6UCls0Rn/kSyD4/rQnGO9uNzBFf1QP+bQtpalqR93/fG5HZIMSzvD3l
 uTHUCJSpYWZvAohvLVDR9tXOCE40D+RwUQcY/9SSTWkQqZ3HP94wTsR8n7vPxfPnuuV8
 f5elSVSJ+xhyAqVB3K42JO6cZB8UPQqDDfWKYhNa3tR1weoJUqnsJ7MR/YWqOOxulCi5
 zZSLFA30j7+EV5Uat4AvX+qmia2mtfTiASsFkdEwIFLBz8CG3qIuzV5u7Rm8XtpYPYbg
 IePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6tI8IqiFkVMvrJ+LF1HeAfS7yMDlsfMjzHjhhujiGLg=;
 b=d8HUzt2nTLIho9MVRpYVt7srIg0lKfRwTXLRIBnLWdOgDNo/EoV+WJUOkJ/lyiSXHC
 hyaplj5MXXkgIOGOE0UYeDHy0yMRwUsKnVZQSAc0FRkTxDOt2iGiWZAUp6zFhmURX7ax
 UO9/rpGrLvulO+fCsFJcM5ImYnkrZ1Hrdhv8bzQNhOOP/E/uESMdFkkF8VNq2yxFo+qx
 OTydFpDC0nKgnucslhI5F2LqfecmoS4SeISSyFRXRkEPy4Z0dcaC8bjWh9Trt8N2iORh
 cXZYkpNMjC4id7ArmnQcRZIFd1rXcLIL0O4+6I66WF/wRuGyynTBMo7cLy4wXX0mNSLV
 hAwA==
X-Gm-Message-State: ANhLgQ1fZ7xdap8WmrdNKK2PShOF8UuG93a7QrD9aVWpN8xidHMgDLdw
 aRi4YQ0VHslg8B/kvFnS10Aes5QJ
X-Google-Smtp-Source: ADFU+vswhcbaVOoEw7phI5b6dKzfHaE+NTsrEgnTVYhOrh/989nyMb/sImno+ijXAmm6my+y9cFQYg==
X-Received: by 2002:a05:6000:118c:: with SMTP id
 g12mr4282670wrx.341.1583929290177; 
 Wed, 11 Mar 2020 05:21:30 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u25sm7998875wml.17.2020.03.11.05.21.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 05:21:29 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] dt-bindings: usb: dwc2: add compatible property for
 rk3368 usb
Date: Wed, 11 Mar 2020 13:21:21 +0100
Message-Id: <20200311122121.8912-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200311122121.8912-1-jbx6244@gmail.com>
References: <20200311122121.8912-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_052132_781274_23FFE945 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: usb@ff580000:
compatible:
['rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2']
is not valid under any of the given schemas

The compatible property for rk3368 dwc2 usb was somehow never added to
the documention. Fix this error by adding
'rockchip,rk3368-usb', 'rockchip,rk3066-usb', 'snps,dwc2'
to dwc2.yaml.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/dwc2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changes v2:
  Combine compatible properties with enum.
---
 Documentation/devicetree/bindings/usb/dwc2.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
index d8d3c7c22..4eda7f221 100644
--- a/Documentation/devicetree/bindings/usb/dwc2.yaml
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -25,6 +25,7 @@ properties:
             - rockchip,rk3228-usb
             - rockchip,rk3288-usb
             - rockchip,rk3328-usb
+            - rockchip,rk3368-usb
             - rockchip,rv1108-usb
           - const: rockchip,rk3066-usb
           - const: snps,dwc2
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
