Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 387CF2005DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m2M2umqQR0fRM2MitQ4dRTCPrIGjjdQdE8m1Zhtj694=; b=NmXBXC2R1MdQZe
	ggHnePlQ+WwnG7bxPzH4lRkEqEe0eW67t7WeH3CQGYgIcX+PLIV3jAt8wciAWNUZXVXYLeQmjw/+Q
	exftWYeGEzhMHBOjFWabxnBz/Qz0GOae7q0DNCdjHKXPD/uKAv3vOpt2nFTMhZywZl4waxbwMB57E
	mhcPzFCjFHJ+39NahG2hWwOn5l0T2m/8SXwNgLQNSeRRboCE5TGWbH3Apr2wF3vlp0NP8uzu/hfHW
	sTClhBwjelC6kCi9ZMbDitFcXFgnxsCmirsMLrA59CYPcgs3RRMaYh9BiJUUcQz4ssUgsuSVyug8G
	kGvHwsUodpXN+/+mgBww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDpL-0003VD-9g; Fri, 19 Jun 2020 10:00:51 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDpA-0003Tm-G2
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:00:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id v3so1591793wrc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 03:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UZXWIhi2JKTWw6Cc/lNPfLOjvy62Sib67v3SwJdAy9E=;
 b=TjdV8onDBzT2Fd5JUETTWnxdRXMWvNSPi67LA6nIqFPpqNiJvobLr0ALm9aRibwrHX
 YaTjaIZZ6p5StfugYuDi63G88gDDBSKRz/PlrRIts6IaGq88ODld47jQFXkvAJ+0Kcn0
 bQSWZ5vQhGfCLFlKWYnkIJyvKoAwFvfRslVJzIjTzw9FISHJxymMTd86EETalUOUTAzw
 NRfAMrOSBxynfNkfPIGplyFLrm6QiI87tnbVq34bVCbZtgEn5Y8P27BWCgKksyPagdLX
 8BNRO0PRaNITkYUMIFTh/w12Wvit+Nmlk/xE2zeYqqf/JIhBvPNUfrww9nnPCKOycdpi
 70mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UZXWIhi2JKTWw6Cc/lNPfLOjvy62Sib67v3SwJdAy9E=;
 b=LxkYgT8GVUZ7zRIl+tu767y1F4SxYo8NN9AgCkpHhH5zqxL9eho3ABxxIwO8V+s5Ko
 6CKTcAZnn7AdURtTjgZj8l4Z76Y4RhjUHPcYHF/tFt2sPmpH8mDp7/eF3qyUnsX2a6g4
 mreRzch4Mj8kVxZHqlVjWtffjfpPXBAwLfDZLcbko1eYk78FBre2WdFe5vYlnm1R9OOl
 rFA2R1IGBclcCDj+BtWbjfEnlDud8COup1zrdD9A6TvSwlrp4YP9GC3WdBHxg1GOQFPu
 AzOiFAncn7ommUP31kSqU4cXy9EcKUskoy6wAFLY1UCEkN6OFTrDjENxVJVdT5LkUufg
 p8wQ==
X-Gm-Message-State: AOAM530oaVpAU+K9QyPjqA+sbgjn3Uf0Za40kL9IhEVm73rq1e8SsTLx
 FaweMkVXu0vK/sTbvEBg/W4=
X-Google-Smtp-Source: ABdhPJws5B4LSw3cMCL6rCQZt8DnliiIlRTYO2H/69HpgityD4xdHMWr1VCyqIzCIzn25aAs1eDWhw==
X-Received: by 2002:a5d:498f:: with SMTP id r15mr3421592wrq.175.1592560838362; 
 Fri, 19 Jun 2020 03:00:38 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id v6sm7164961wrf.61.2020.06.19.03.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 03:00:37 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
Date: Fri, 19 Jun 2020 12:00:33 +0200
Message-Id: <20200619100035.4032596-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_030042_833884_5BB40684 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIEJDTTYzeHggVVNCSCBQSFkgZHJpdmVyIGZvciBCTUlQUy4KCnY1OiB1c2UgZGV2bV9yZXNl
dF9jb250cm9sX2dldF9leGNsdXNpdmUuCnY0OiBmaXggZHQtYmluZGluZ3MgZG9jdW1lbnRhdGlv
biBhbmQgaW1wcm92ZSBkZXZpY2UgbW9kZSBjb25maWcuCnYzOiBpbnRyb2R1Y2UgY2hhbmdlcyBz
dWdnZXN0ZWQgYnkgRmxvcmlhbjoKIC0gQWRkIHN1cHBvcnQgZm9yIGRldmljZSBtb2RlLgp2Mjog
aW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IEZsb3JpYW46CiAtIHBoeS1jZWxscyBjaGFu
Z2VkIHRvIDEuCiAtIERyb3AgT0YgZGVwZW5kZW5jeSAodXNlIGRldmljZV9nZXRfbWF0Y2hfZGF0
YSkuCiAtIERyb3AgX19pbml0Y29uc3QgZnJvbSB2YXJpYW50IHRhYmxlcy4KIC0gVXNlIGRldm1f
Y2xrX2dldF9vcHRpb25hbC4KCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyAoMik6CiAgZHQtYmlu
ZGluZ3M6IHBoeTogYWRkIGJjbTYzeHgtdXNiaCBiaW5kaW5ncwogIHBoeTogYmNtNjN4eC11c2Jo
OiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlcgoKIC4uLi9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4
LXVzYmgtcGh5LnlhbWwgICB8ICA4NCArKysrCiBkcml2ZXJzL3BoeS9icm9hZGNvbS9LY29uZmln
ICAgICAgICAgICAgICAgICAgfCAgIDkgKwogZHJpdmVycy9waHkvYnJvYWRjb20vTWFrZWZpbGUg
ICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4
LXVzYmguYyAgICAgICB8IDQ1NyArKysrKysrKysrKysrKysrKysKIDQgZmlsZXMgY2hhbmdlZCwg
NTUxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jCgotLSAKMi4y
Ny4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
