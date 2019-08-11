Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06367893B0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 22:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4g/xVIkpHmpfnq8pgz0/RGz6uvNDBcLM+QqdX4Bhac=; b=fCJP2Q0B53fkMN
	morUQNQCWHigBCIzSnCvJKkNLfY3rLsjmhp06fUHasX7aQF9SRqalrR/C7N5mCi1NAyASIM/tPAu5
	nEw3bQR0gbAshdLSFWxYdUl8aRKH9I0BTp7uYiWaiudPgJVMf0vvR6yyKfs5gfB6EvGOfqKgZNd7l
	vZUVu0613cK/H7YM0co4JYVzXmvBx0swmaBHzPyD/Gx1FVX2EPgeluCagEzLKC4sCNOMCKgMbcF1z
	qf3hgDysHUpFs9wBDLMfAbNpRLdSxbyU0ydRaG+X0lDjQGqOVyWMVb8m5P1DzzC58pmIkjBTKsTxN
	OjSIR16ctfCDgAIY33kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuW0-0002uO-Iv; Sun, 11 Aug 2019 20:32:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuVT-0002Hh-0K
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 20:32:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id g67so10031732wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cqEyWiFMPAZ1NvJfJjLqIDmYUzdmfNk5EDDyLjyH02E=;
 b=KHe21AKdQYzpf8mH5+VzMOd91TmxEZmAxwbxGDwKukO7Ann4MMaqndFz4uoH4rYSfZ
 QfoZF7odDseQ1LhaqKu7s07hG0k4HNpeDzgm6JqXrpLrBH4T4epkF7+AFlTfw+GiwXOl
 p+Uwm+XQE35n2BXrPCso+gsVp73LeexHhywIn7W48BnYP2Mf7W7mej4aLODyrtmIH4/8
 eCKrtO3wRkG+xhYamCGgP0KjVNQwNNUoCwaCQrYUmN3ob60NVlprGXB1LtukWjByXIdu
 7qXsg2r3Z+ppyy/xoU4Y4TkTnEX9qqI2sTMd4JIl66zMDHgtlyimdKezOO/hY/XnRmvY
 i4dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cqEyWiFMPAZ1NvJfJjLqIDmYUzdmfNk5EDDyLjyH02E=;
 b=kfPZuyfswZGl5573gyKIZtBs1TTiWJLF8YNMrbJJYVpN1Xbklx3u7XBCDmVLQbhCHA
 Nh90Dd824yVT+njUKec15ib64VmZ9yjw2TLCzFYdMKdrXYr6voQWRHi0R/C7hqpJ/nej
 nZaeMygKldKviHIptuU5oz+VTxlpvpcFhy7SG1GElNnF0tXAXP0stbb64NVfUAHQgy3Q
 2UQxkHp2P+ZkQh5HYiK8txaX/E/s5sCx44Sa+d3Zy8n6Hv1U1bx+ykfGlU5s+/klC7LB
 R9MgUCltf+6c8aEaa06YkBt3seRKw4dMlbfjvWkBezdfg52G8KIpWRyTBOezGrvUEicL
 ojxQ==
X-Gm-Message-State: APjAAAV150XZSLEP6mn99gRoHlx7tmhFgBFPgcSJnbx+mCWy2HVRSl3+
 b3KwiiOGBmWVcwPYI/LGlMI=
X-Google-Smtp-Source: APXvYqxQ0D6hBVy7gRNf9suLk16jU3u90wVI74bZGyD7Iq0fC5+3xfhAkOnad4WI0haC0pJ4awz0kQ==
X-Received: by 2002:a05:600c:231a:: with SMTP id
 26mr10158445wmo.136.1565555517369; 
 Sun, 11 Aug 2019 13:31:57 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id a8sm11063269wma.31.2019.08.11.13.31.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 11 Aug 2019 13:31:56 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 3/3] arm64: defconfig: Enable Sun4i SPDIF module
Date: Sun, 11 Aug 2019 22:31:44 +0200
Message-Id: <20190811203144.5999-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190811203144.5999-1-peron.clem@gmail.com>
References: <20190811203144.5999-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_133159_044269_70068B35 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEE2NCBhbmQgSDYgdXNlIHRoZSBTdW40aSBTUERJRiBkcml2ZXIuCgpFbmFibGUg
dGhpcyB0byBhbGxvdyBhIHByb3BlciBzdXBwb3J0LgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwppbmRleCAwZTU4ZWYwMjg4MGMuLmIwNjM4ODQ5YzE0YyAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
CkBAIC01NTgsNiArNTU4LDcgQEAgQ09ORklHX1NORF9TT0NfUk9DS0NISVBfUlQ1NjQ1PW0KIENP
TkZJR19TTkRfU09DX1JLMzM5OV9HUlVfU09VTkQ9bQogQ09ORklHX1NORF9TT0NfU0FNU1VORz15
CiBDT05GSUdfU05EX1NPQ19SQ0FSPW0KK0NPTkZJR19TTkRfU1VONElfU1BESUY9bQogQ09ORklH
X1NORF9TT0NfQUs0NjEzPW0KIENPTkZJR19TTkRfU09DX0VTNzEzND1tCiBDT05GSUdfU05EX1NP
Q19FUzcyNDE9bQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
