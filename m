Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D278C102B3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6CjzJoPpw9L0iRbkqZ1LKvCZDRrL5XxwyszbmerE+Q=; b=M5Uef2kCYxLaov
	h+/Vwl0erbQlDtVoKRP93oJMV/rTkqcxCj/VXANPjxe6/1PdJaI4unzZO+GxwzU+lFw4eE0L9jLYP
	hklOhq+7FVljDB7GLK/WUXtOAf4t8MyggSNvOSMI6O4BdITyPNirC/Zo2UFELn65UsqkIphq7JGMi
	ea4ej+G8E9KhqMoXhHsyueHLEPfzNwnZKss9ZAYW8XLITA/rBMygzfIle3VrrVY43exK/v9YNMlPT
	zTKCRF0o0DhlSf0hDCMLns8vtkcqnZ5xy9k2OdzDtuQ5fFMKQNwknQuhr8ox3A4vPMFl/GHhcZCCq
	WlS2jn5hgMpck4rP6xEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7ir-0000eL-DB; Tue, 19 Nov 2019 17:55:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gx-0007Jo-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:33 +0000
Received: by mail-wr1-x444.google.com with SMTP id z10so24925815wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=Fc13efBMJJjOXeqjH+ZH/G7w0cMsQNvHOnfUpMSgYCkHs+tF+L3ULQ25t7ZQBQutNE
 T+VProISjfu37CsMUc0z10Y3ljPZiXievptG17p1rtrrFzKesy+AvID1JSBuZ2TrUV/r
 EndFAJzzb1E1x4+NirNRghaeVYsxqn0t605JjeWRIt164/KHhNVTZP7w3zBfxksXUt63
 +UhoILSnlqiFCFsiF8OCJlyr7S+dDFExinST2zBeqUJZJC0/ck3zs25sGr/fPjVZF7Qk
 1xs+9jnhqfg+Mrx/fIX2faWX5k0tDgUj7dZ05hQ2763TpIWLsQCuGsM3L+xoJKcnIoQX
 Dgow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iGqUalssFt90BW+qC26cPJ2ocimtOg3RIH0RE3W1sS4=;
 b=Ou11uJqD1N/Nih/9HbKHr4S+GAiM27E6Pj7+Jw2unNm0Qm6l8i1D4KdiQw9f+oDoGz
 INK+gtMYgYxn2cgDTdq9FC1kkoVkvES8PfSEfSHwsbzvGIWbl8dgEjdfxiwl6Qu1r1Zn
 LRZMP5chB164fLYbQxqiR12SL6ReCHup2HWkLNfvoDMJmBqmi3Y06WoYaXTFdcx08ptX
 1gifrgsBT3tTQpIQpeh1T8Me4xKCQJajl4DndEnXEjflYrDqgT+SNzFFJ3yhZabzNMpz
 qntj1crzI9nl1Yk25AB2mZ7UiD3ynQXpti3RupJ5bJDTmNssb+JfgSCAbcwWZBPJw3AP
 HQEw==
X-Gm-Message-State: APjAAAVPC4KNBICs3hg8GF7OFCqnvf63mGpCwhUrrSWcCIEZpbeaAZCi
 cRMN2myIiNkwY6D68HDBD1E=
X-Google-Smtp-Source: APXvYqyrBcqNH9t86bk+axnFrVx1ZfsuKnxRbES8aE/F8d/qm8q7ETQ/uOkWuTpa8cWqpKUFPKW04A==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr36004693wrm.94.1574186010055; 
 Tue, 19 Nov 2019 09:53:30 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:29 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 8/8] [DO NOT MERGE] arm64: allwinner: h6: enable Beelink
 GS1 PWM
Date: Tue, 19 Nov 2019 18:53:19 +0100
Message-Id: <20191119175319.16561-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095331_637342_842040F1 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
