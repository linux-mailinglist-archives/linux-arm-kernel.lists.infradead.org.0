Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC500D305D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:26:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mqzt5qU5CdYn5SFe9bgFURNFiLS9HE1DmZBTqMjOcu4=; b=Lrwma7jxp3cJZK
	v16t9DJ6hPbus9weJE945f6yF9LBGj8JPRHFuQQK4VU2yY1mgYRWZzuizrjhue2O8idAzTzPO3Hvs
	H/shMx9C8FKFNlnnGAv7gkYz9BHoQnteTB8cZ+UP8mylKk6zczcXK28GkJxT26QXJNh+9JhqSoX45
	pOIIqv4QdEa662sItfbYXugecB9cFV7lCnluGb03w/eqlZ/vLHC4WjIbWYrSKYT3ArSFyPCzPMB/4
	D0tIBMLnJLOX3J2DnY9ePdypnCf9C8+PGsHG9mmjlZOH+KSi7w68/UQ1AwsiW6lMEPXhDKjd7uWyz
	YmIGUnc2SHnU/qRJpChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId9A-0006DW-5P; Thu, 10 Oct 2019 18:26:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6b-0002he-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id o18so9016726wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LKdxoiXO2qcL2j7u49KVkFwVEXUyQJUfWzDkZKrEpxA=;
 b=JbWgnsDuMhLpVCjb+YdJezFjZG8aXtqnOKnJXXWeKs7moUL5bxI6rQpxAQ7KEawMWh
 sPtpY6fMpMZIJLHl99Z0xBpbzmjsMnI4twZIUMajJ+QVKz1pHi3I0wv+u28p+18X/Ab8
 mQhU0Z8IBU/kHkULCMgYxZYcFdLgzBYRDD2oynFkHbgBq6cyPMDQQT/b0pXWo3PQV8S2
 WcNI2/uaDmFEo7l1GIusjX3GYEYu2We6fd0uFKuAVZuA7IyCwYjcrj3RSvpuBbBXRztg
 3fgzz+50Jk4oFOoAc/7iHdNucBVVI5zInrZ7lj5WObSsD8XI1Rd7CDLTCJFiXgXP9V1q
 0hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LKdxoiXO2qcL2j7u49KVkFwVEXUyQJUfWzDkZKrEpxA=;
 b=IUIMD338bqjiOuplUfF4pat4YtkbAPiB1rfHEuyb1n+LS5guKoZXHM/quR201Kqb1b
 LuJLaS9UsTrScCdV8S1JPgSZLPbIIxaffvfr6zL3I6rIBSwYAKUvyOxQ5qZgBOJnky93
 jvDYFaf+PxFz13GhNAijEgXEMlQQtd0jwnrRqeJ5NfGeS4Wz0vlT7boBHdbvpvOaQyck
 +yRNWIDABxwZcm2JPIKkAvdo4L4uWMbWsqbXQfEj96h8EegJEcmcLMA9DV+orWz4sdzQ
 zU+31jln6nU3JbHdt5TOc+XgIUbaweQoP/B6uu8xLjOvLDEb89ug/tFNeRMXVjG6GIge
 hfDg==
X-Gm-Message-State: APjAAAUngskpYN7zINs6XioRe79ZlqiLZjB3ygiYZ8UflZoFvvj+ckwy
 T0ip8myt2VMDpqCMF8FNzxs=
X-Google-Smtp-Source: APXvYqz3MCgqtkhNoSBxMkDnoDYLi2oXfF1XS84vQAfiTka5MhJvT1m4xOCTpFmxMe4HuKqops47tQ==
X-Received: by 2002:adf:f90d:: with SMTP id b13mr9538028wrr.316.1570731843957; 
 Thu, 10 Oct 2019 11:24:03 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.24.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:24:03 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 08/11] ARM64: dts: allwinner: sun50i: Add Crypto Engine
 node on H6
Date: Thu, 10 Oct 2019 20:23:25 +0200
Message-Id: <20191010182328.15826-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112405_382142_C630CB26 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is a hardware cryptographic accelerator that supports
many algorithms.

This patch enables the Crypto Engine on the Allwinner H6 SoC Device-tree.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 5d7ab540b950..68697cef8e5f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -149,6 +149,16 @@
 			allwinner,sram = <&ve_sram 1>;
 		};
 
+		crypto: crypto@1904000 {
+			compatible = "allwinner,sun50i-h6-crypto";
+			reg = <0x01904000 0x1000>;
+			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>, <&ccu CLK_MBUS_CE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_CE>;
+			reset-names = "bus";
+		};
+
 		syscon: syscon@3000000 {
 			compatible = "allwinner,sun50i-h6-system-control",
 				     "allwinner,sun50i-a64-system-control";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
