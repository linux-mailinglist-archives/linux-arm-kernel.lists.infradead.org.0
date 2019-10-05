Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8405ACCAE1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 17:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ekxcjBA4As+B3OKaK/9+LrhP1weSrdOvDrVmoGuRFPo=; b=JM2
	BfAmULaBqa0NsTWCzKEzQEmI+DumFEWJ2D2xbcxkVZxVyTsu19Mr8koyxET7+K+YZMKLUQeuMHAWV
	NbwNnZbJ29XobniJM8ozKK1i/ymbNnGqLUxCrsjNdUK5ySBsksz4w1i0WEietPXCXcSMCfZjRiDG6
	hJz0tgrQi5FzdY9WgEpiebyvZYLjcp9+fVva6REMfPh9Zmyhc1n8RirdNFQ2HVALzGcKkRINBHYsQ
	MuyF3pOrqv4lrt+hleHMVRUfhRPZUVLNP0wAu7/jwCKp202RK0q/Oj8pbMEB0fmjirYusi0S9qmQu
	9O363qBrpeDFVXK8OW7qINctUN/qVrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGmCS-0007cn-Sm; Sat, 05 Oct 2019 15:42:28 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGmCM-0007cR-Hv
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 15:42:24 +0000
Received: by mail-qt1-x844.google.com with SMTP id m61so1950668qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 08:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=PtO1HczaUEw8rKJ68rUdnXqEXEV4WQIBpc+f1rV1/3s=;
 b=Ozssa16LXaP6Y62PIJJNvUfnR7M4UmF2puNT8aJQLX5oJiUEppGPWOfCGtdorkta6C
 uWiTbC+j0J0pVk9zilb0UAzrirXLGK75xjBry+tJAfg2lQTp+qL3rMwoxBLfEdWRday6
 8AuWeNan8RQa93KEabOUm9pWgq2pXnAVnxzL6jc0X2BAsNYFRgsVD9k30CxQwNzaQ8Aj
 BZWR99EAGYnZqMhitCy7faoJLlmhHnKS/rlJ6fhXL87vy1Zem4Pgu3Q9A5rEe6ZwnUH8
 ljgxrVxJ6HOeMCUT/vbKQwpYYNnxGwDcuiiSRaAsz05gvnTM0tPhaV9QCrp6I7d7k+u2
 9H2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=PtO1HczaUEw8rKJ68rUdnXqEXEV4WQIBpc+f1rV1/3s=;
 b=kcK8Mjf4zS1ZEom01yzkLQAsDl/LXuxD488eIwG/VfaJ7+unfXYFENKL5D/5o/31e7
 oz39veOWsSOry1PqpSVSyKAy8VUk7gIDYv88KmQ26E+faEOf4u4PWkpAwwNHJBrU5xPs
 WMg77a72YpClVzlHE7asIh1DK62E8+VJEhf4k3EjppkY3pNH5lO7aW7qoVijK8taDXik
 6w1Gl4lhChNF6pKWaRYWXZjTcPf8df3psJ/JZz2fZOkAS/OrZ9VfkRAgN5c5mmtR/yKS
 Rjhr66bw4uT5IYfTPb3pfqS4OIgcpCSzYcUtqb/4sT3Vzp59vEY0+VYYS8uONr1LDL5V
 9ETA==
X-Gm-Message-State: APjAAAUVOXEuES57uOBaZW5TIJVZvG8JwlcOatRIztV9s9I0f2TQRQDn
 wiDwU8hTrTmrCJYUmE22CbE=
X-Google-Smtp-Source: APXvYqxlrirB3kMn8aYNI92OKCksxa0VGjxIu30JO7Ogc6BpN2H5yOV9aRi34ay4jso+LK9eWasepQ==
X-Received: by 2002:ac8:6d21:: with SMTP id r1mr21590290qtu.256.1570290140327; 
 Sat, 05 Oct 2019 08:42:20 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:a94::1])
 by smtp.gmail.com with ESMTPSA id t65sm4542416qkh.23.2019.10.05.08.42.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 08:42:19 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: vf610-zii-scu4-aib: Remove internal debug network
 interfaces
Date: Sat,  5 Oct 2019 12:42:40 -0300
Message-Id: <20191005154240.22153-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_084222_615694_F101E2EF 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: andrew.smirnov@gmail.com, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, cphealy@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"internal_j8" and "internal_j9" are network interfaces that are not
exposed outside the board and were only ever used for debugging purposes.

Get rid of them as they are not needed.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
index c7638132c0f3..1a6903723238 100644
--- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
@@ -183,11 +183,6 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@1 {
-						reg = <1>;
-						label = "internal_j9";
-					};
-
 					port@2 {
 						reg = <2>;
 						label = "eth_fc_1000_2";
@@ -271,11 +266,6 @@
 					#address-cells = <1>;
 					#size-cells = <0>;
 
-					port@1 {
-						reg = <1>;
-						label = "internal_j8";
-					};
-
 					port@2 {
 						reg = <2>;
 						label = "eth_fc_1000_8";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
