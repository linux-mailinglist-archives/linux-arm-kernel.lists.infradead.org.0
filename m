Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E688B5C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CsMhVs1wSYScu0W/ifE/V82KpCF25mFLWpTuTTWcmwY=; b=qfgspityaRP5jA
	ZhISeuCPmpuvKFbqHYJ8KAk/bKqdI6ip47G17njEd5Dq7Ht+khKKPslg2jLK+ubV2Kx7ttRG7O3Ml
	H/9PouclwPtzcJorckpo24T3mgR7Z9skLNAyVcYz4Oh1OueZaXTOb+HowhgUa0ZJ2S1vNiXstzavp
	R3DoSx3tqZ3Vw8uGc6m2cPamYYTfIXvfgmKfXBat2PYwi9k3muhAG0NqEBtQUvUO6OD0VINB08sRx
	OHaDFmBrnKwbtJX2NKY671QUluyTfW5R2gfygJqhNvxRRl/12kcpZMMnvxNNUj+akP/W3yBa6phO0
	Q7MQG4ZZg3bJ6AzbWpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUC4-0002wG-BB; Tue, 13 Aug 2019 10:38:20 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUBp-0002v7-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:38:07 +0000
Received: by mail-wr1-f68.google.com with SMTP id j16so5016061wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 03:38:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7fA4ImgTXDy54WkrrWpZEbCCgZQJp3nUMqu6kivAEHE=;
 b=WG2yJbmZcOnU109AetmBtLP8qkHYLCIUdBLFpH5O9Fb26hQOvHTI2mW1U15e1IVNNn
 4yHgUS3XdSfhCABINkuljDEhDH3CiA+bJlwAeMdTTHdku0i1epCOLm5dqSIxzeLW9+3F
 GXNGOWNWLqPiRGBjpDtvGtQ3jw8G4CUWF0KRBdhdeygkS7fOyWWxOqHGRgkD9vdUGXnX
 ZN+Hz8+nhMjknwHh2XU7ZxkAQFAPmH6IZKzSYn9G9sFYwBQl7Y3Ps29fHYVdKydTfUJf
 hw6iU+knLrh0j/PzZg4VDxBy3jVxKfFpQdbCkwM/qqPofRYuOWWnNLivgN4aRkdjV4LF
 QeaA==
X-Gm-Message-State: APjAAAWBhgNZ840oxVzucnQrT79YhRMZM9Zud5xhVsa9URO9X3iAY3y6
 W3PO7VRKqIvtKVrKi79OBEw=
X-Google-Smtp-Source: APXvYqwJhQAcPo3ERBZnabP8qqSJfaIMlg+cCQT9+ITjd2tPgcv7HbOe4c56c7ufaMOznaURXCPzuw==
X-Received: by 2002:a5d:610d:: with SMTP id v13mr36286575wrt.249.1565692684135; 
 Tue, 13 Aug 2019 03:38:04 -0700 (PDT)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id f70sm1484635wme.22.2019.08.13.03.38.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 03:38:03 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: imx6q-pcie: add "fsl,
 pcie-phy-refclk-internal" for i.MX7D
Date: Tue, 13 Aug 2019 11:37:59 +0100
Message-Id: <20190813103759.38358-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190813103759.38358-1-git@andred.net>
References: <20190813103759.38358-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_033805_667463_49F17195 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 3.7 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [77.107.218.170 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Fabio Estevam <festevam@gmail.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGkuTVg3RCB2YXJpYW50IG9mIHRoZSBJUCBjYW4gdXNlIGVpdGhlciBhbiBleHRlcm5hbApj
cnlzdGFsIG9zY2lsbGF0b3IgaW5wdXQgb3IgYW4gaW50ZXJuYWwgY2xvY2sgaW5wdXQgYXMKYSBy
ZWZlcmVuY2UgY2xvY2sgaW5wdXQgZm9yIHRoZSBQQ0llIFBIWS4KCkRvY3VtZW50IHRoZSBvcHRp
b25hbCBwcm9wZXJ0eSAnZnNsLHBjaWUtcGh5LXJlZmNsay1pbnRlcm5hbCcKClNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ2M6IFJpY2hhcmQgWmh1IDxob25n
eGluZy56aHVAbnhwLmNvbT4KQ2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRl
PgpDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0u
Y29tPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtl
cm5lbEBwZW5ndXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNv
bT4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IGxpbnV4LXBjaUB2
Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpD
YzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmcKLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2ZzbCxpbXg2
cS1wY2llLnR4dCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2ZzbCxpbXg2
cS1wY2llLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvZnNsLGlt
eDZxLXBjaWUudHh0CmluZGV4IGE3ZjVmNWFmYTBlNi4uOTg1ZDcwODNkZjlmIDEwMDY0NAotLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2ZzbCxpbXg2cS1wY2llLnR4
dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL2ZzbCxpbXg2cS1w
Y2llLnR4dApAQCAtNTYsNiArNTYsMTEgQEAgQWRkaXRpb25hbCByZXF1aXJlZCBwcm9wZXJ0aWVz
IGZvciBpbXg3ZC1wY2llIGFuZCBpbXg4bXEtcGNpZToKIAkgICAgICAgLSAidHVybm9mZiIKIC0g
ZnNsLGlteDdkLXBjaWUtcGh5OiBBIHBoYW5kbGUgdG8gYW4gZnNsLGlteDdkLXBjaWUtcGh5IG5v
ZGUuCiAKK0FkZGl0aW9uYWwgb3B0aW9uYWwgcHJvcGVydGllcyBmb3IgaW14N2QtcGNpZToKKy0g
ZnNsLHBjaWUtcGh5LXJlZmNsay1pbnRlcm5hbDogSWYgcHJlc2VudCB0aGVuIGFuIGludGVybmFs
IFBMTCBpbnB1dCBpcyB1c2VkCisgIGFzIFBDSWUgUEhZIHJlZmVyZW5jZSBjbG9jayBzb3VyY2Uu
IEJ5IGRlZmF1bHQgYW4gZXh0ZXJuYWwgb2NzaWxsYXRvciBpbnB1dAorICBpcyB1c2VkLgorCiBB
ZGRpdGlvbmFsIHJlcXVpcmVkIHByb3BlcnRpZXMgZm9yIGlteDhtcS1wY2llOgogLSBjbG9jay1u
YW1lczogTXVzdCBpbmNsdWRlIHRoZSBmb2xsb3dpbmcgYWRkaXRpb25hbCBlbnRyaWVzOgogCS0g
InBjaWVfYXV4IgotLSAKMi4yMy4wLnJjMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
