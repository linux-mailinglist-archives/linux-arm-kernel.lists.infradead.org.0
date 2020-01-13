Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9AE139BBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:37:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2J8vra50fhX1ssR6E5+Kqq0w2wfPRDFmtCFm3gqfdqU=; b=jZrugosWkcSQHXg4wU27J2oNN1
	jxRgWInZZ02tPxSZsbL/DC6gZPeOg9QWVe4r8SF7CmKAAahRC1ISGUMCWA9bq6TW8y6HO2HJLSVke
	SYNRgIg4BVGUG9Ic6b1g/BZ+xxWX1EcBZ1Ketk0hXHTUSHYVT3fZ/DeyI2ckU4NKYpnyy4awaepMl
	YVovwzbYwvEl6qopgSAxSaSE9mdeDZU+hqi/7zpQk7ty0vSjNLlIfoYskzmv47XmwEqQi7Yj9zprA
	fWE3RgEAVB8gcJIssTKysyX1NUIntwWDUarOwhnVj6hjm8E6lGUoxb8l3VQEyWCJfrYPGWGxH9w+j
	taHx1abg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7Oe-0000XO-QP; Mon, 13 Jan 2020 21:37:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7K2-0004AS-Dp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:32:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id d139so809340wmd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 13:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4kF+t8rXPA54fVuTBRUcpKVz9sRuckZYn+ok89LwgHk=;
 b=nSSsL3wNKADjnYoswmrLAY+33jqF6r+FDcxlo9OsRnMJ0T2auZ3PrF/zdkrJRTqMjh
 4NjAAG2VGq+sigYr2NirFf6BWoHbykE5YxWw0qRNDdVeub9GIZwYq2Ln/78QBlxSK9wx
 Z42a8+t5qhJIOB2S6HSW/i7DMuk9DYXzdxxoLTSULPmd90pk3eiSEP9Fy+9otsl62awG
 ndDdw0a3l3Vf3J1k+rXSwlOBwtmRUMElt4jQhVVUedpukxuPFQGJs6U3GPshcBPSIrar
 +IFbtndDnSvyXfOaV8Jd7hj41R/5LsYiTEVUWfeXxDIUSNWWD9MqOZ1ZRyv4XFZdqPHa
 FHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4kF+t8rXPA54fVuTBRUcpKVz9sRuckZYn+ok89LwgHk=;
 b=QGlv2ep8/lgpoPnC1Tp6filzSqjKCX3s31DbZb8VGiaX+sbs4h2iJM+4vIpFBDVRcY
 byC9oSigDk6XutMg156qrX2ru1vxz6B9Pruos42tRProTSDrBJ50Vo7UcYc+Q9YUZYmj
 ZneIOOfTege7He5H4XOL74+huQ2GXHadmN4pAkL9bMbGTAttjfLuZ4ahMoQhX/O3CcU1
 K5WMAbBh6zuKaQqAEDmJUyf9W3HkO19LswrGw2Fgma7TL41obtue3C6K2fLORhBj3Tko
 5eDv71twEj5cwy9KEb4LnZkd33Q6UzpTmTy9JonM2YvYh5MCOVePqzBDW4pCVleIn2zM
 aQcA==
X-Gm-Message-State: APjAAAX/rtzP19F+U6M0bk96FPzapDLecPRQfJ95kFbrGRtDCJfiQbAV
 s5cN34It0arnozGNgcQR9QMVFA==
X-Google-Smtp-Source: APXvYqyTWc0+SVAQ2AospY4KCF9spziSZOcoE3VBHgOfx5hKYIhcnlE0z6vuyV/6QSBoTHI4qG3BMQ==
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr23287336wml.55.1578951148810; 
 Mon, 13 Jan 2020 13:32:28 -0800 (PST)
Received: from linaro.org ([2a00:23c5:6815:3901:a1cf:b00b:5683:ed40])
 by smtp.gmail.com with ESMTPSA id j12sm16725120wrt.55.2020.01.13.13.32.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 13:32:28 -0800 (PST)
From: Mike Leach <mike.leach@linaro.org>
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, coresight@lists.linaro.org,
 linux-doc@vger.kernel.org
Subject: [PATCH v8 15/15] Update MAINTAINERS to add reviewer for CoreSight.
Date: Mon, 13 Jan 2020 21:31:49 +0000
Message-Id: <20200113213149.25599-16-mike.leach@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113213149.25599-1-mike.leach@linaro.org>
References: <20200113213149.25599-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_133230_495469_9AF55FCC 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org, corbet@lwn.net,
 liviu.dudau@arm.com, agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech,
 sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added myself as a designated reviewer for the CoreSight infrastructure
at the request of Mathieu Poirier.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 14076468dd25..256138198bb7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1644,6 +1644,7 @@ F:	arch/arm/mach-ep93xx/micro9.c
 ARM/CORESIGHT FRAMEWORK AND DRIVERS
 M:	Mathieu Poirier <mathieu.poirier@linaro.org>
 R:	Suzuki K Poulose <suzuki.poulose@arm.com>
+R:	Mike Leach <mike.leach@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
