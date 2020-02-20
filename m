Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F9166940
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5k4qLSqpQmqcUOp3SgNoqSrJAzzS2nEmCvibmHcqCCc=; b=CdWS33B6s3kRK0
	LSiOTkWqXTNGkWrnlrFShe2f89Tm8us4LSsO9NCfGlri2wSx9nR0ycWipw5k/+IcFVm/p59RUaacp
	RmKuOV2Ntq6LlmvCJJ7pBKG1R7a29xcZ5xL76vkU4ShzZlH/NjksLTchIkDq2B470IE/rG7UTwJrv
	JEB4JYHEn0XQmMDcgYR2jMdv1j/NK0lsugydIwhshdQz1I+6KRjo1CcBVogSzXpTpbg+Zg9Q7r+oP
	ro/yAdMPfAUTX2+SpdslzyhfIvcu+ddSQukxNoRfrExSe5DG1iPyMh4T2lpXcARTZ19RRu/f5jvVr
	LlCdrWvZwXKVu9m7ZpEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4std-0003zj-HK; Thu, 20 Feb 2020 20:58:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ssq-0003dP-OI; Thu, 20 Feb 2020 20:57:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id m16so6139315wrx.11;
 Thu, 20 Feb 2020 12:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2f3uV3RWKbMqCO2QFYzkPoEF8LM6TNVDI/Gi9TBUfHI=;
 b=MXSn1rgdt7P3tH8KZP0tFbRW6901b2HrvP3o9gUFzYQW2YGGn1fvKWV5NbQR8QnUEm
 VVPdxU2ZVBFz09WF9nLh6Th61kWM5IYt2PHvpZ5fMlsHe/S4YDfA6kqHtd6/bzu3Vctd
 gzuBSqpJ865xupjulzXrZpNZs2zBp6Sqbey6Yp7xpAaCm9ojA3Y3OBWgDOVD1pYeL9hi
 RiQQYprFLTNE0iABe1B0lPQOJWgYGIyYrFrBQy6rH9OSpUKysGYV2sC3AEo7pVGr0q7g
 +1d/YnfZyo9if35mQTuIQqcesG72SynQdXGtogTKJuXOSrLvOxVNtZr3BG6YaVnJgxUA
 5L8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2f3uV3RWKbMqCO2QFYzkPoEF8LM6TNVDI/Gi9TBUfHI=;
 b=Fk9eqfKns1Smz16RvEKfxpIkpKKpPifMkyWD2KhX+mXZyn1f4kgShUmG/Fq9D2UQqh
 PreRMZqn7bfHh5yMxSraIRUGQJrO+gOt9p/ivb+TstTaAtHLVbptks3tpDLhasGmAqx9
 o3n3UCTvzcwOr6kJlJz+CRWBC+iRIYkT2c+n8vPWuRV47533U8+3Y8ZpYZ0VpKsIb2e3
 7Vo8WXZc4n59xU1jeyeNf1fXZH1Fm7VXC/On05Bq94L+UB8QhpvwLMU8NTC15eiKqmg+
 ZjJHwMJsSHVNGF5Gl/7Znm5cJJCMW1zY2fAtckbjHFm6JiaAIlH5Z9f1jArVYFDYRB8h
 Qx9A==
X-Gm-Message-State: APjAAAUDjskbsW5yZZPntzcu72mzDKZ3nYAmpVs4yeNJC0LD8ZGj6s2w
 Y66M9yUuZgjIPXRXiI2NURk=
X-Google-Smtp-Source: APXvYqxE6O1xRP/s3Eex8+uTAabiof5+67V1QlISYwfPiFGVMeLM+jOyIb3TGVjHrpRx4Ny1OfKZJQ==
X-Received: by 2002:adf:f787:: with SMTP id q7mr44114421wrp.297.1582232239167; 
 Thu, 20 Feb 2020 12:57:19 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a184sm695039wmf.29.2020.02.20.12.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 12:57:18 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 1/3] ASoC: meson: aiu: Document Meson8 and Meson8b support in
 the dt-bindings
Date: Thu, 20 Feb 2020 21:57:09 +0100
Message-Id: <20200220205711.77953-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
References: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_125720_788362_D763629B 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: lgirdwood@gmail.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, tiwai@suse.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AIU audio output controller on the Meson8 and Meson8b SoC families
is compatible with the one found in the GXBB family. Document the
compatible string for these two older SoCs.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/sound/amlogic,aiu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
index 3ef7632dcb59..a61bccf915d8 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,aiu.yaml
@@ -21,6 +21,8 @@ properties:
       - enum:
         - amlogic,aiu-gxbb
         - amlogic,aiu-gxl
+        - amlogic,aiu-meson8
+        - amlogic,aiu-meson8b
       - const:
           amlogic,aiu
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
