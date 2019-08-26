Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EEF9D314
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2BvVDpKrr8bYf/wFAPQaYoeRVLUsYvnhF3lbKQz+9c=; b=c1FBtIwra5hqmu
	i50KsgIaUuWeJ7uMtzHgsGaI5+/vfmgkiBTO/9vR9sOWXvhDl33aY2uk9NMbqayELTZ5r1wjFy66N
	RRIRrRW0FENURej3v+X92yd84fQqv6gpeDG5hAjKVvjngsTluVURpsj8z9m5kJzxP2W68iYpPZj4L
	ChIjRGvsEyqhaEVasu6+wUdJboE01hrTb4BwS6Rls2ytd2C76fmkk4uDkwqremfEPwtz5xRAFRjK9
	lTtOJWGlJuO8WpFCvKCSxe1kIhnFd7MdqfWY4Gi+rF+E6J1t6UcIQXXlNCGr7uBDC6FifhtDZiwF2
	Nc0GWotha2Hc1SEj2zeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H62-0003Ug-1p; Mon, 26 Aug 2019 15:39:54 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H4y-0002iv-75
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:49 +0000
Received: by mail-wm1-f67.google.com with SMTP id 10so15914061wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a4whMVybYrFM/VJAJPt+RDbk4EyD/C4nT92WrUXXMMQ=;
 b=e9TiGhbJnJ2fsHXfLZ1VpQNPJOAvJGAv3bhDiHFY6QsmRVzFAPN+JIg72G/v4dAOmR
 syRrCit9KvtzobULLZ4zrIYdFO64YrLhnB4znz0yv7kvi3yk3iQIS81UaMIDAsfjBFUj
 7PmImXzJkgEo5Lnq4gTa9Lv2RbmHAkFHlQe7Qavo7dAoVfatc6KZ2XEriXBD656UZPKA
 VXUQ5D8xicFbk+Sg9Lv6QfKw4nugCNW+orDy73dL7zMma9tpfZvziwxwFO35ckwh+TjT
 nNGUCWkube/P1Lv5zEnSTLzQ21VmfBJ+zKJxdeaU9EkBge7LaCtVWRIBW/y+boUP+4zA
 tjsw==
X-Gm-Message-State: APjAAAUM+UQHgqpeDp6sG57AKzOTBRBFG2feQsSCzyB1CZcgLOCZerFL
 Jbr2qVTUN9NP0euyPGJY5ow=
X-Google-Smtp-Source: APXvYqygTRJ64Z2TySzhfxKxSjAmfAcggoIVmXZ4r3Dc/XwC55KuebNCr5QYo+MM+8TDE2dGCd2iUw==
X-Received: by 2002:a05:600c:40f:: with SMTP id
 q15mr23039886wmb.88.1566833926763; 
 Mon, 26 Aug 2019 08:38:46 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:46 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/12] ARM: dts: imx7d: cl-som-imx7: add emmicro,em3027 RTC
Date: Mon, 26 Aug 2019 16:37:52 +0100
Message-Id: <20190826153800.35400-4-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083848_266866_A96C3B35 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Igor Grinberg <grinberg@compulab.co.il>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Ilya Ledvich <ilya@compulab.co.il>,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YWRkL2VuYWJsZSBSVEMgc3VwcG9ydCB1c2luZyB0aGUgb24tYm9hcmQgRU0zMDI3IHJlYWwgdGlt
ZQpjbG9jayBvbiBpMmMyLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRy
ZWQubmV0PgpDYzogSWx5YSBMZWR2aWNoIDxpbHlhQGNvbXB1bGFiLmNvLmlsPgpDYzogSWdvciBH
cmluYmVyZyA8Z3JpbmJlcmdAY29tcHVsYWIuY28uaWw+CkNjOiBSb2IgSGVycmluZyA8cm9iaCtk
dEBrZXJuZWwub3JnPgpDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KQ2M6
IFNoYXduIEd1byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVl
ckBwZW5ndXRyb25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVu
Z3V0cm9uaXguZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBO
WFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+CkNjOiBkZXZpY2V0cmVlQHZnZXIua2Vy
bmVsLm9yZwpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQogYXJj
aC9hcm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzIHwgNSArKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lt
eDdkLWNsLXNvbS1pbXg3LmR0cyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3
LmR0cwppbmRleCBlYzgyZjQ3MzhjNGYuLjQ4MWJkMzk3MWM1NSAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vYm9vdC9kdHMvaW14N2QtY2wtc29tLWlteDcuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2lteDdkLWNsLXNvbS1pbXg3LmR0cwpAQCAtMTgxLDYgKzE4MSwxMSBAQAogCQlyZWcgPSA8MHg1
MD47CiAJCXBhZ2VzaXplID0gPDE2PjsKIAl9OworCisJcnRjQDU2IHsKKwkJY29tcGF0aWJsZSA9
ICJlbW1pY3JvLGVtMzAyNyI7CisJCXJlZyA9IDwweDU2PjsKKwl9OwogfTsKIAogJnVhcnQxIHsK
LS0gCjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
