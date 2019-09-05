Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA979A9772
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 02:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5V1EvizB0egrsLUE2Opovluy0giaAOMfVn2MW7Opsbs=; b=VM7hRUJz9JacDc
	pMyiGrmwmnaZFZTBOyphjScS0Crx8bbFL3R3ErhL1l+6TlsUt70CK93QVi31f6J2cgmbzGa201S/f
	ihi6lC361TRjA7oRAEdyVPN118FsC3fyevKw/ujcOf7G/Zpsn64nZo4aZ+J1if11x5WpNPC+My8C2
	wZa2FVxVWv0oXw91BpPD5k5umHawv/7sy5uOYWxA/GS0BXTAyZoChtq9Wwu0zzICrwfHnCMYJ1ArL
	LABzUdkfOLt5NGCFY9OvQcDutkt1Gnsxj7Qi+zAPfcrKc5Cz71/asP1jfzla5/tEOUOqeVxc26TRD
	Jk8kH+clZ6EBK1xcd5eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fES-0005Q2-Ow; Thu, 05 Sep 2019 00:02:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fEL-0005Pg-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 00:02:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id x3so345012plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 17:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnsUfUbtBKZB2rj/akmEHA3OVRPrL9BVtYGuRABAW/8=;
 b=IWuhtQSa8LLMNw62XbtmPHsyHojsXEO+c1aK6SvYzjVWQOQHEQ1bSNGGvXeiNnjSQ1
 xG2e0RbPt7I8NSsudOJeISNDRSzwTPExDCI22j3FcYy3RYPHGDY1kInaTSkyjBrgGanE
 B3cpMmL92U5NpUKfhygmT3R9nB6a+TwFO1w28JZmP9nSR1qsQmJNLcqzJiL7B9ukNqmR
 90W5CeKmukinELSvaC9Q4GyzUFA3VB+hr5x2fL9SRmYdk7K8/oqHft444dbPRvVZnMle
 ccZqoIdm976qwKDheCViTC+73WV7UvUgPet6GYDrYCMOI2REDwnGIcFyl+O60BUUbPEQ
 oaOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=qnsUfUbtBKZB2rj/akmEHA3OVRPrL9BVtYGuRABAW/8=;
 b=tUL0A2o+2AavD36xuF4daE6uRgNv3HKYOZ7XlfL4Rw8rDRg4mVJKEsZwFsxeajfHhx
 R/tDTGmO7LT01UV4QgXpcMCSiyDgMKwTxITk0PoG6CON28eCv6iMjETlggM0sNxhYvzQ
 6tM2RuojE747hSIZ3Z9XbZ0Lp5zWAMXBHyl7AL7WWLBLFs9MIwpDxjKHSUeUXOd8cOXw
 mO9B3YRvOhCObOd+DgkxKc6BQ1IsMQsY+WMl9olOLL47/jJLFzSxErvNT9EvT2x8h9Md
 wqyPmsZd51qRMtaAmPzTRmWJ5/fzOBcy+whheNFZS/0Rw3+5Ehlyr5drpdAvyMmljH6A
 yGLQ==
X-Gm-Message-State: APjAAAVBSoq/5mlAoDg9+8kF5L2+rFuPBw8elhpY1/3cIJ4R17B1Nzcm
 vLGHtIfaFlGan6jXHDyKGhk=
X-Google-Smtp-Source: APXvYqxgMGuDzrKLSwYZca7Z9ikDN/d2nWwjNF85p9AHhfEtCj3dD1a+HJIdLBiRWfU/a0640prJbw==
X-Received: by 2002:a17:902:6bc5:: with SMTP id
 m5mr402172plt.169.1567641747978; 
 Wed, 04 Sep 2019 17:02:27 -0700 (PDT)
Received: from voyager.ozlabs.ibm.com ([2a00:79e1:abc:100:6ba1:43a1:a8bb:9b57])
 by smtp.gmail.com with ESMTPSA id i1sm213139pfg.2.2019.09.04.17.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 17:02:27 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Andrew Jeffery <andrew@aj.id.au>,
 =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Subject: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
Date: Wed,  4 Sep 2019 17:02:20 -0700
Message-Id: <20190905000221.31445-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_170229_365129_58FD15BD 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The FMC supports five chip selects, so describe the five possible flash
chips.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index e465cda40fe7..dffb595d30e4 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -67,6 +67,26 @@
 				compatible = "jedec,spi-nor";
 				status = "disabled";
 			};
+			flash@1 {
+				reg = < 1 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@2 {
+				reg = < 2 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@3 {
+				reg = < 3 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@4 {
+				reg = < 4 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
 		};
 
 		spi: spi@1e630000 {
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
