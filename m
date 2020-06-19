Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6730020045E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JdAlW29cYGiY65rurG7YNDJ1AW2Sy0RFaauMlddu4jk=; b=qr6dtdPuA7r8hP
	O1jE262wIZGeeTckSyKVF3dqeQedyj4RxnKmYKXZqaqE3OsfCZBq2CHETtAa6VkvD1ko49N5uSD05
	vAImpMF2MhF5BVpXGa35GYvZr3cuXZJGx6PIJ/RhaOwShRzJu5dBVvvr0OtLkTsAshA4M6qfbFeGy
	+zrW6iY0KDUTTOT3D0qjqqvpgsioU7VMWBpVPAnaRZb54Gm+JUi5vYVr7ynGyERdWa33HpKJYY7IB
	+Q+0hmed+4tK3WtOJ3KSi6qT2oyY5hNEPzBKhknJA4XTtYIzOzLG3155IRlq2/RKO7yiylOr5U+Dn
	KTKO+zaHCp3pcf1wir5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCkP-0001dM-SR; Fri, 19 Jun 2020 08:51:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCkD-0001cG-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 08:51:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id y20so8368625wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 01:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VNz1wqgYkZ4nhaFJ3Q49yOh75bUAhI2XzNoMFaOBP2c=;
 b=Cr0x9R1l118oYOHpAxQu6yt75qygnLjjnOUJUITYkjjFBLi1PbwPtCovaOCs6CzM/c
 dnLwV9KJCMNRReLuJ1a/Tqmc8K/PzZmq6vm4konGmjHRYp2hapfpofsNl5xH+nQERsN3
 rmSD7Vbd+CIlMAKvYph3fNjDtrXSRE28s5vh9+9mPp/pZJF8GbX9PB7SOAmVssFCUswg
 tqL2XNf+rJaMWlYzETNoby2M2pSJ86Hz5WfNhFhTUFjvjB6vP2cFFY5chJg45h9sfNiw
 Pcq5n9DA1ONWs0HGhSsv1VCZzz/ygrEf+iwJDX3j6YAKkUUrjA8apzwEc5i2hi9hq1E9
 cC8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VNz1wqgYkZ4nhaFJ3Q49yOh75bUAhI2XzNoMFaOBP2c=;
 b=axyXUSJaVAWpLx1FpS0MDH1e4Ojf5NXUc2uK7IMn52KsGNeDsNAkzoDh51fB7vylX3
 dny/HJ/3XJ4xVnf3UByWvIBV+TRZqyUUQqZPWOAnxpiuo2vKPSZ04Os8To0m3j01eJ+W
 g2OFw26pUfzyWUj8c70frSKLMqKlWoX2x5ZFqU9ntKpgHbK9dp81CK8xS1GrEgcOAXyh
 EPX+xSRJGl666DJY5Is2E1F2LhsHDsMPmVnGSeajabYrqcoz52YcGtUMlsv1MkxS6xnV
 Icw/ykRhgBsyVN8zgUBU1k6EYm4lOphduriQYZs/k3Y5J6GBWJiIXXSiT/36vzSTCkf0
 fG9g==
X-Gm-Message-State: AOAM533cOOqzFJ1/s6P7662+/bUjXsBY+v1ZURxGZaiT/Vv73nMcKyar
 uUfuHuRpHMPJX3+pWVwSRh8=
X-Google-Smtp-Source: ABdhPJzVGH3ksKTZpYDC7GC36NRN1yR/52R3NNWLxirM/G482gskN7sgucPaMdIlLEWLsnmLotV8gA==
X-Received: by 2002:a1c:7e49:: with SMTP id z70mr2575009wmc.24.1592556687637; 
 Fri, 19 Jun 2020 01:51:27 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id l1sm6674331wrb.31.2020.06.19.01.51.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 01:51:27 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
Date: Fri, 19 Jun 2020 10:51:22 +0200
Message-Id: <20200619085124.4029400-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_015129_968528_2D5CB432 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

QWRkIEJDTTYzeHggVVNCSCBQSFkgZHJpdmVyIGZvciBCTUlQUy4KCnY0OiBmaXggZHQtYmluZGlu
Z3MgZG9jdW1lbnRhdGlvbiBhbmQgaW1wcm92ZSBkZXZpY2UgbW9kZSBjb25maWcuCnYzOiBpbnRy
b2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKIC0gQWRkIHN1cHBvcnQgZm9yIGRl
dmljZSBtb2RlLgp2MjogaW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IEZsb3JpYW46CiAt
IHBoeS1jZWxscyBjaGFuZ2VkIHRvIDEuCiAtIERyb3AgT0YgZGVwZW5kZW5jeSAodXNlIGRldmlj
ZV9nZXRfbWF0Y2hfZGF0YSkuCiAtIERyb3AgX19pbml0Y29uc3QgZnJvbSB2YXJpYW50IHRhYmxl
cy4KIC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbC4KCsOBbHZhcm8gRmVybsOhbmRleiBSb2ph
cyAoMik6CiAgZHQtYmluZGluZ3M6IHBoeTogYWRkIGJjbTYzeHgtdXNiaCBiaW5kaW5ncwogIHBo
eTogYmNtNjN4eC11c2JoOiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlcgoKIC4uLi9iaW5kaW5ncy9w
aHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwgICB8ICA4NCArKysrCiBkcml2ZXJzL3BoeS9i
cm9hZGNvbS9LY29uZmlnICAgICAgICAgICAgICAgICAgfCAgIDkgKwogZHJpdmVycy9waHkvYnJv
YWRjb20vTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvcGh5L2Jyb2Fk
Y29tL3BoeS1iY202M3h4LXVzYmguYyAgICAgICB8IDQ1NyArKysrKysrKysrKysrKysrKysKIDQg
ZmlsZXMgY2hhbmdlZCwgNTUxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55
YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgt
dXNiaC5jCgotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
