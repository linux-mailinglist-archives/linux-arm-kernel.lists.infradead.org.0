Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F62011ACF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvyJ3YBykCAv2POvpWWkCETSa78uIn4Kfyfxbp35oDY=; b=pA+eq5DO+6cjZu
	bKK1KLqoSmfhLz55pBy28bSLt55a8DUsAipJyOJU1X4DkNk5CdysBw5bNTEN2y+UeKYvMaZbvm2yN
	/j6Wb2qyTQq79BXkyDnqYnil7nZitPwcM7l84A9fZPKbKomgc8bblZvlfpfnX1k0ZxdOXz0TIXxV4
	wJaIlzP2FYfM1tH7oxAYFlZTLquwCJQDuBOj2SYSFuGEfTNDzyLVoBlIrLlfHdeXfXrLOA07k0x5S
	7K0mzehuDPHsZqJTGC7uD3Eq+u8syoYU844sGuxQoQc4f5PqDolzCQeluUURLuLw6NnelNjZacWXv
	USkjVcOTtK3N2W6KBmTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2cK-0001BH-Bt; Wed, 11 Dec 2019 14:05:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2bx-00080N-8p
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:05:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id 6so10839046pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 06:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cUUCtvV6dE7G+n+i4G2mZsNxXxqu2jZTcnec8ASN3Qc=;
 b=rfjIOhRvPOYZ/dAXmCNf7a/TIjgXPUapHGuKnYw1EHqnxyIuWXwJdZ7OZ8vo5foJ4U
 hipSjIC9xJF3uHK0K3sSyzjumI8s+p9XQbvx86oz/grSzOQ78igqPg9uOy+ACckg8He+
 SnsZAvNfSZa3nxwuSgQ5q4zG/hFZt6EPR27tfVe+lrNtRkEjths8Y/cVTlR7XuL/DHU+
 +VKpUKy0Ry1OIwFa4v3J+zZXHcsQgIwFekUdX6jtfacTftC7jRakvkh/6CD+FRbD/8/5
 RKcsbuFt7fJjanI4qw7AVy4+gSvzQ4TXkF9C+wC/MVcLuyPuQuz91aFZjttOlxX0WFDA
 O9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cUUCtvV6dE7G+n+i4G2mZsNxXxqu2jZTcnec8ASN3Qc=;
 b=frY1cmwowX8Y8E9HcY37upM7U5C3/+WO+tVbzcqrmlZE/dIl8KRhmuzUhwsXmVH8Yd
 TzozVDGXCow5HPKMD6u8R0sYq2saLgJ+RJk7WKpZeuWbC4nYYXfAAGG/sVIpPB2spL+3
 txe8VWX/3HyvwB41v5+d4OmrBVRHfr/g9iOe5seXZb4mFUohK5YfsDvjaxN1pE46vkI7
 QDVn7gONmwssoe+KVtSbIOgIzrn2dDqSUrspzuO4vOYG91ynkdn8uXP3X9pkcrKdv5Qb
 ortO+0PdMboSf8GB3MxNcq25uhmK6sE+nlNABIazfjJIWCjhgwlTxFrNSGgrHUEDRmLT
 I5Xg==
X-Gm-Message-State: APjAAAVAiCtatI0hVgYiu3cBYzvHMgC6pXCasNycvCTt3ueBdsK1MVFC
 TDmJla0+VqQIvMe57rEg/mlqTpqCaDU=
X-Google-Smtp-Source: APXvYqw91JEsFIrGZNMXi9Usn6ggISlqDCZqbfwZNdXS+nPBATkP7rouWQW4phJsTFq+yy3p1gZxhQ==
X-Received: by 2002:a62:ee09:: with SMTP id e9mr3734785pfi.243.1576073100169; 
 Wed, 11 Dec 2019 06:05:00 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id o12sm3489656pfg.152.2019.12.11.06.04.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 06:04:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: dts: vf610-zii-scu4-aib: Add node for switch
 watchdog
Date: Wed, 11 Dec 2019 06:04:44 -0800
Message-Id: <20191211140444.7076-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191211140444.7076-1-andrew.smirnov@gmail.com>
References: <20191211140444.7076-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_060505_436477_275EA006 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add I2C child node for switch watchdog present on SCU4.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index a02c7ea3b92d..b642520199ba 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -536,6 +536,11 @@
 	pinctrl-0 = <&pinctrl_i2c1>;
 	status = "okay";
 
+	watchdog@38 {
+		compatible = "zii,rave-wdt";
+		reg = <0x38>;
+	};
+
 	adc@4a {
 		compatible = "adi,adt7411";
 		reg = <0x4a>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
