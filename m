Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098C59D31A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUFKReyg8suxozCLAAEvwaybuDJ4WeI5NUKalFgGLhQ=; b=YPnkcUDo8miAhP
	0fLchD/lHoBAfwtOyiomJn2ZphRKGtO3oAyiGbLWSkNLDt1ewy3vOyfDcpvlZ+Q61qkyha75LihQB
	iBZ35z9+W8imveuA0lDoYmqubVUOFRF2FlZXFn9w72eMoILtEngT35DL51riw/7xaILsZN6Fi8pHn
	kQBzFUz7Xv00NSiqarXfgvtFGE5W3wreQTduLtqrOX+VGXMkL5GwA1zL3KnCNB++z1Qd8XlNhDqXo
	yHvVNRB7coDbkeEZZYz6ng4LppOMv9Jxx6a+EJ0idgQBNgjiqJtfkEtZ/J9tgJLIO6hqX7H5nJgaP
	NUbF2GDJvFj+tJRc5vbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H6N-0003lD-En; Mon, 26 Aug 2019 15:40:15 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2H4z-0002jQ-5E
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 15:38:51 +0000
Received: by mail-wr1-f68.google.com with SMTP id z11so15806563wrt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 08:38:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C68wfOK/1whk3hXx2aI+LZu/B14qolQqF5YsPbhywYw=;
 b=nA+7fP4SUmH9SX9DvI66otIkpLxq+C1taweQHJCknVJo3ErXH4xoVnHH7XWAdq9lP+
 Hl55dTDrxiowzjlX6jz4Ldc7F0hT4GkLVhTQ2Y1/70Nde8NQUeBFoKMKdu60aicXv/rr
 Q2LimE9kn8j1BOaMRfY9cVXZH5KWICQzcp0ap7YAfQayCwLOXZYHmRiHVJLa3KdRSfbB
 i3uxd1HuWqsQLRCtyvf8FhB1MhIP/hGhgJDkACPk+1hz7GUYlkyJni+G5uHtAxEhnL6x
 VCCAiz7rPXs0O65isfok2kiXjHSbUb5qsZEpRQjN1G/H9HGcJl2RnesSXWaFw4siZ4mj
 U2ow==
X-Gm-Message-State: APjAAAXycVJ7kB1VHPJ3SRaOcocaxeIuBgjgJOJ7eyR5f8iphv2gHdsp
 CYuCRHNoiFeSVEO6lLWgHCw=
X-Google-Smtp-Source: APXvYqzSfSRNF+1JuaMYWeM7Zw0bN2vHYxbspqB/4JqdONbprhgfE3ickBcc/rF94i6b4+TlH5xkhA==
X-Received: by 2002:adf:c803:: with SMTP id d3mr24148095wrh.130.1566833927742; 
 Mon, 26 Aug 2019 08:38:47 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id z8sm11580798wru.13.2019.08.26.08.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 08:38:47 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 05/12] ARM: dts: imx7d: cl-som-imx7: update pfuze3000 max
 voltage
Date: Mon, 26 Aug 2019 16:37:53 +0100
Message-Id: <20190826153800.35400-5-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190826153800.35400-1-git@andred.net>
References: <20190826153800.35400-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_083849_299856_77DC8B92 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

VGhlIG1heCB2b2x0YWdlIG9mIFNXMUEgaXMgMy4zViBvbiBQRjMwMDAgYXMgcGVyCmh0dHA6Ly9j
YWNoZS5mcmVlc2NhbGUuY29tL2ZpbGVzL2FuYWxvZy9kb2MvZGF0YV9zaGVldC9QRjMwMDAucGRm
P2ZzcmNoPTEmc3I9MSZwYWdlTnVtPTEKCldoaWxlIGF0IGl0LCByZW1vdmUgdGhlIHVubmVjZXNz
YXJ5IGxlYWRpbmcgemVybyBmcm9tCnRoZSBpMmMgYWRkcmVzcy4KClNpZ25lZC1vZmYtYnk6IEFu
ZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ2M6IElseWEgTGVkdmljaCA8aWx5YUBjb21w
dWxhYi5jby5pbD4KQ2M6IElnb3IgR3JpbmJlcmcgPGdyaW5iZXJnQGNvbXB1bGFiLmNvLmlsPgpD
YzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVsLm9yZz4KQ2M6IE1hcmsgUnV0bGFuZCA8bWFy
ay5ydXRsYW5kQGFybS5jb20+CkNjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+CkNj
OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+CkNjOiBQZW5ndXRyb25peCBL
ZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgpDYzogRmFiaW8gRXN0ZXZhbSA8ZmVz
dGV2YW1AZ21haWwuY29tPgpDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgpD
YzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwotLS0KIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNsLXNvbS1pbXg3LmR0
cyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMg
Yi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5kdHMKaW5kZXggNDgxYmQzOTcx
YzU1Li43ODA0NjYzM2Q5MWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDdkLWNs
LXNvbS1pbXg3LmR0cworKysgYi9hcmNoL2FybS9ib290L2R0cy9pbXg3ZC1jbC1zb20taW14Ny5k
dHMKQEAgLTgxLDEyICs4MSwxMiBAQAogCiAJcG1pYzogcG1pY0A4IHsKIAkJY29tcGF0aWJsZSA9
ICJmc2wscGZ1emUzMDAwIjsKLQkJcmVnID0gPDB4MDg+OworCQlyZWcgPSA8MHg4PjsKIAogCQly
ZWd1bGF0b3JzIHsKIAkJCXN3MWFfcmVnOiBzdzFhIHsKIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jv
dm9sdCA9IDw3MDAwMDA+OwotCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0NzUwMDA+
OworCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OwogCQkJCXJlZ3VsYXRv
ci1ib290LW9uOwogCQkJCXJlZ3VsYXRvci1hbHdheXMtb247CiAJCQkJcmVndWxhdG9yLXJhbXAt
ZGVsYXkgPSA8NjI1MD47Ci0tIAoyLjIzLjAucmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
