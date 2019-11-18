Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C68310036F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 12:02:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6CjzJoPpw9L0iRbkqZ1LKvCZDRrL5XxwyszbmerE+Q=; b=ek3fE6UyjfifRn
	WBUtToZY+eRK3DtLFWxgnj2HVPLW08AZ4krjAPUNgeZ+pXTJzYW5HFgl607g1xaw7LVpXE88izTP+
	A5FN2bdrC6KltrtT6M0VK8fr0cUI37eMtqBJqmNKeUWurftkf5Ek/vmf0HwPr9ofvW6mde6tQUb+o
	U+8znpX6yVzrRFd685foDEJS7GXqUS94ptqT6ustuYwrUMGSYnqBvIfFvb/saYnpEoTQsNn6sujov
	pBptzTU3Tzm7GGmrWfyjgBap/2Dqm05/yS3aoAk4W/iLfKBV1yh6d6JBTQ+qzvsaOSTXTnRezgPMD
	gXb/RhMcSsfWZGdN7e8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWenw-0000FR-Fz; Mon, 18 Nov 2019 11:02:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWelz-0006iJ-1a
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 11:00:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so16840046wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 03:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=oHTBVWCzKbEEX8ADBqtS0nC4h3CNYn1XfnE4upjcrU9jd9WOlvNbtYTmD+5cn8y61a
 AtXhSXsQe2jqj9xCOUPD47GxZa2WNeUOQP0F/BexCFOxpgS0Cibok9YMUFQCHHSMbJru
 x54QTghn8OTid42B41o6KQZkwK9dqeYDz3fYthk6Bt5dqfpcZ5sW/n3J51nJd1mZbLha
 yshq5NVf/JpBrh8AaZV1sImpXOO7tj68GC2YnSc88Hi4ceBwsC0Na5L8yBAWQvEnswbn
 04sLIfQBYErlUi+bgzg+zfbsE0TSsFdFxMynRVwZlGfBPu7MBD8X5XDO1Grehx2HWHbG
 jSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=cALZgg8Ytu2QCLkC2Zxx8jXBbGpLezTUDiAuE5D8zJNcg+yinnsf06LP4y+tx3GrAE
 kDn1UrhQVPRg7bhrVYHuwlKDgNs/0QJ8mFQIXTN2/squ4kx07aJih+uqXmAumkf/0sO4
 utlPRMBfupaNgPn8vTR1xQokWy1s+WVAmSZjKrp6e/ihXd/zOUXznNcwTsAtaHgT3//j
 WyAEB0TFmuIn12YayI4C4Omo6mhgwwFnGX9Q9tMmPIagCfcsvcfNkiia7m7907dT7Zqb
 s2c1nDP8RNZgYGCXh+uuSMZRt3QouPcnH9a02scJvOPCXVtNFKLXRG6/3rQj7OfkVrnc
 9ZvQ==
X-Gm-Message-State: APjAAAXwu4dOe1P31M5uvcjjHkCYBA0Z8RwzU7rlV46JBTlAS0O7EWGT
 Je96a6nPwDARjAEVZU3EqHY=
X-Google-Smtp-Source: APXvYqylsRp4Nj3fkxX+SPKT7MsCCNLSmcFaIEujk7WAbZj4htC5DEVRLFeS7TNDCdftzyqTPoROuw==
X-Received: by 2002:a1c:7c06:: with SMTP id x6mr30073630wmc.34.1574074845202; 
 Mon, 18 Nov 2019 03:00:45 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id f67sm19873313wme.16.2019.11.18.03.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 03:00:44 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v6 8/8] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Mon, 18 Nov 2019 12:00:34 +0100
Message-Id: <20191118110034.19444-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118110034.19444-1-peron.clem@gmail.com>
References: <20191118110034.19444-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_030047_187680_B3C853FA 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRz
IHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
aW5kZXggZjMzNWY3NDgyYTczLi5jZjY4NGJjNzM3NGQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpAQCAtMTM2
LDYgKzEzNiwxMCBAQAogCXZjYy1wZy1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismcHdt
IHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmcl9pMmMgewogCXN0YXR1cyA9ICJva2F5IjsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
