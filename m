Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611EF1F92AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KM9dqqNKmmWbGVDbBhmgD1rKX8Vrax+z0WwMAPIH70E=; b=O3oK076rSVItX8
	24DHDwXHGcAKrAbLwVU0Oh3ZB1mALmbMEapDk/zq0o0LyBQjc01DoTGo/lj9gBEuCJ/+esMSSYDZg
	AKjfQ+GYR2YBuLb4jMDj+F7AOaSaB/NtWIGVeNURnxQBYewHqiEppOJTWyc/1/6MoCQFTxJxU1blR
	KbayNe5qMuinIh0M5NsXZYuy1TRbIfC7k9UsAsT9It3TIWdKwEJNTyzx6kkleTVzw315GrQeg9oUZ
	JED4zwWh5pWU7uF0/zWGauo//V9E2EreyNkIoBOPhAUlRjt16s3ik67OJzYxIATtaLX7gt3WRu0x9
	1ARIgpaTlOSU1VAfO8Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl3O-0000Zz-E9; Mon, 15 Jun 2020 09:05:18 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0m-0007Zi-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:37 +0000
Received: by mail-wr1-x429.google.com with SMTP id q11so16256197wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KsmsxYavbvBSrD5sd3Cy2FdQfI+TGdNIP59/SdH1Mm4=;
 b=XwBqsCO46r6OWhyhznF6Z/MhW6Ua8eoX38PDoHAEMn14q9mq59VjfkDz1eUN5y/yeg
 mSkLoRQyrDTeF8AmMj14+2AhyRAswUUrQp2A8gLDGVDGNwfL5Lvcpa9CIHnyUUq/twgz
 psPXqAvyG/7IoMQP0SuHOWH5oSJEFOmPt1toEtWojywbnueZb/IA1qu5aALFKiXVWdDC
 AbcvfsqaGseFN7g3IKw0xRibgtp/vQWU0tp5TtCasjp+IeJ7gZPvpD4xC+JwFeUqvZku
 TQ5JfcqArjlKbKKZWF+L6H57EvgMotIk0dKN277WMVaJ7KZAKkMQiSlfBvi22IApd3qw
 lCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KsmsxYavbvBSrD5sd3Cy2FdQfI+TGdNIP59/SdH1Mm4=;
 b=ISawIHEW3o2YESs9dwVLmAIj/JYroX+MFnd8kug+6HeCAOfaQWKwSY6MdIwBjw744g
 BT59o/YStNyzeZI73GjB8eBM7EXdJlfbde8ugYVdF+UesjXyDvLvbhAEoaDLKFkZGsKY
 f1QUgrFD+RSii50NvRe3HWxy0og+JgZ2JRcWBvHAXbNwWUT3mbbATRV8qV4TmDBzd5Ta
 R7LFLIxPLNYTnbZWyVrrIRkW9qyxiVb3rqXrsf2kBAIrEA5j4rDn8C3tZH0taQXA4u1v
 sxazOrKct7x8mLJLohmPVZ+SjqHhYhe1GkD8KwUwcOHAzhT8Kcq66lF52+LDR8/ldTal
 sEpg==
X-Gm-Message-State: AOAM530D7uLYERVo94c+19QRgsVWn/00oGs7fBzx5mdbBneTHMC1vwNl
 gY/b15GdsJSSnxoKLDPk+0Y=
X-Google-Smtp-Source: ABdhPJz1qkel+LJCwlq+pVLtp371uDu4QDVVHHKTJSDLwykQvem70/CFBM7n0bsJ+1YdNRoatC4oWw==
X-Received: by 2002:a5d:630f:: with SMTP id i15mr27280895wru.309.1592211753326; 
 Mon, 15 Jun 2020 02:02:33 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:32 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 0/8] clk: bcm63xx-gate: introduce dt-bindings definitions
Date: Mon, 15 Jun 2020 11:02:23 +0200
Message-Id: <20200615090231.2932696-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020236_097045_9C764FAD 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlc2UgcGF0Y2hlcyBhZGQgaGVhZGVyIGZpbGVzIGZvciBiY202M3h4LWdhdGUgY2xvY2sgZGVm
aW5pdGlvbnMgaW4gb3JkZXIKdG8gYmUgYWJsZSB0byB1c2UgdGhlbSBpbiBiY202M3h4LWdhdGUg
Y29udHJvbGxlciBkcml2ZXIgYW5kIEJNSVBTIGRldmljZQp0cmVlcy4KCiJjbGs6IGJjbTYzeHgt
Z2F0ZTogYWRkIEJDTTYzMTggc3VwcG9ydCIgaXMgcmVxdWlyZWQgdG8gY29ycmVjdGx5IGFwcGx5
CnRoZXNlIHBhdGNoZXMuCgrDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDgpOgogIG1pcHM6IGJt
aXBzOiBhZGQgQkNNMzM2OCBjbG9jayBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNN
NjMxOCBjbG9jayBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNNNjMyOCBjbG9jayBk
ZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNNNjM1OCBjbG9jayBkZWZpbml0aW9ucwog
IG1pcHM6IGJtaXBzOiBhZGQgQkNNNjM2MiBjbG9jayBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBz
OiBhZGQgQkNNNjM2OCBjbG9jayBkZWZpbml0aW9ucwogIG1pcHM6IGJtaXBzOiBhZGQgQkNNNjMy
NjggY2xvY2sgZGVmaW5pdGlvbnMKICBjbGs6IGJjbTYzeHgtZ2F0ZTogc3dpdGNoIHRvIGR0LWJp
bmRpbmdzIGRlZmluaXRpb25zCgogZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYyAg
ICAgICAgIHwgNTgwICsrKysrKysrKysrKysrKystLS0tLQogaW5jbHVkZS9kdC1iaW5kaW5ncy9j
bG9jay9iY20zMzY4LWNsb2NrLmggIHwgIDI0ICsKIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2sv
YmNtNjMxOC1jbG9jay5oICB8ICA0MiArKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202
MzI2OC1jbG9jay5oIHwgIDMwICsrCiBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzMjgt
Y2xvY2suaCAgfCAgMTkgKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzU4LWNsb2Nr
LmggIHwgIDE4ICsKIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjM2Mi1jbG9jay5oICB8
ICAyNiArCiBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjgtY2xvY2suaCAgfCAgMjQg
KwogOCBmaWxlcyBjaGFuZ2VkLCA2MjIgaW5zZXJ0aW9ucygrKSwgMTQxIGRlbGV0aW9ucygtKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtMzM2OC1jbG9j
ay5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY202MzE4
LWNsb2NrLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2Jj
bTYzMjY4LWNsb2NrLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL2JjbTYzMjgtY2xvY2suaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGlu
Z3MvY2xvY2svYmNtNjM1OC1jbG9jay5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9iY202MzYyLWNsb2NrLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTYzNjgtY2xvY2suaAoKLS0gCjIuMjcuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
