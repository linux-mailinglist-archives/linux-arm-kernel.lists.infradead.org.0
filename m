Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDE21247A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ie7WclEf/S2K9Bac/3f0IrLJav7FHIJqpQncCF68nqo=; b=tKexbuFz98kAMh
	taAlnTr4ngq+DPZA/nZlnSp9nKePx7fjcuTLd5gvBtQeVhfDGCp8zvHjBybzia/7O8orFfDnP3yjz
	zOxwyjIpjgoNtWhLZWXDaiPdt8vM4ihI9Lns7GQpaJ0o+TVgG2VNhoCECvz+NUb3m46O4WjTLWOv4
	ieGJbnXyFJmAOjeQr9RDcKhhbLMwHTU8Ilne5Q4zmf6nt4NTolbbKuW2o8eCgrc/7xWxlCzpDVM/W
	XYz9mKN0Vx6jymMV9E1j1Ysgkc+hevgcc7nHewDQQZyFMUG4+eKfQ/SkA2uvDCaCuH9PS8yJXWRVB
	WtusFh9fqHSNaL/VWILA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZ2F-0001yQ-U5; Wed, 18 Dec 2019 13:06:39 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZ26-0001xh-7K
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:06:31 +0000
Received: by mail-yw1-xc41.google.com with SMTP id h126so719329ywc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LLIjdUM214rts+QdFmLT0qdowpwm43aLvVt9JtuWnSI=;
 b=k7GOlgqxBrb7DrpjWzIRp+jbycjd5MM/XzKtDlUMxHwrUIXuBXNcVEDICBqRGEJtPs
 lS0/nCcvc1fRc0JI+PfYd+v/L1SoiwfhttrM7O+4gXbSI55qZkJpOQZf+XhF0jes4YXk
 8Pq7nmCmI1wZgSbmlPdn+aLh3W8SqwV1MdiiNMN4ye6CwjFBu6cWQzT2D/+3nUeJg48O
 /G2xqSbfH0pczNadzW+gfMhW40fV/8Cz2PFtRoWPatMgYbnMWWlRthAv3ao1Ft1ytePU
 PTSeq/oFPE08p59UWxEsxEk0PkvWeTSOk2IsdBR+Mv5yyfviPNmC29W87cPPPdyvwAQp
 1WtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LLIjdUM214rts+QdFmLT0qdowpwm43aLvVt9JtuWnSI=;
 b=kUPC3mBnrbxQ+X3egCSbjXHzWjUeZtvDev7b71ZeZXWzZEXa88TiNiP6YcM4B/rnXH
 DE9bz2h1DcpUMbVugJad2dQsbc0OgWOtQFG2DSkA3iInhvI+6LlNozzeqdSvJbDOCCO3
 K/aGR7FnwLKKOEEtMOqPsqVmYfQ6tvuyytjU8Ydl2CwxWiwDrLJeV9VjA4RliEPAETna
 GiEgTCg2fWhl+9EmBQa0wip57q/AVlavt/CP3jLBiPVRPrp3AGXxyDDW9epsU2/9J2st
 V2V+DGM6Ut33GG64tyUdk84sCQSjlmkfyy0Vd5C8CF7rf7TS1HKMYntLbjvH/S+e3Q9b
 m7aQ==
X-Gm-Message-State: APjAAAVLZQogv1/F0oIyZbEgc6J4If8E09Xeg5sMyYlu6xJPkQuIwP5L
 DtP/3BIwwqh1iRgGy/BJ/X9eAEZZGHg=
X-Google-Smtp-Source: APXvYqzBCz5/Y3IeMZDESTHiuAl8EZLblP3IJZCPORJ/K5z1qkW5EVc4+ZaGd3Qy/EH9AeRJOGyGQw==
X-Received: by 2002:a81:b60d:: with SMTP id u13mr1834559ywh.382.1576674388055; 
 Wed, 18 Dec 2019 05:06:28 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id r64sm909603ywg.84.2019.12.18.05.06.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 05:06:27 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 1/3] crypto: caam: Add support for i.MX8M Mini
Date: Wed, 18 Dec 2019 07:06:14 -0600
Message-Id: <20191218130616.13860-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_050630_262869_217138EE 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 devicetree@vger.kernel.org, Iuliana Prodan <iuliana.prodan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Will Deacon <will@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Adam Ford <aford173@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGkuTVg4TSBNaW5pIHVzZXMgdGhlIHNhbWUgY3J5cHRvIGVuZ2luZSBhcyB0aGUgaS5NWDhN
USwgYnV0CnRoZSBkcml2ZXIgaXMgcmVzdHJpY3RpbmcgdGhlIGNoZWNrIHRvIGp1c3QgdGhlIGku
TVg4TVEuCgpUaGlzIHBhdGNoIGV4cGFuZHMgdGhlIGNoZWNrIGZvciBlaXRoZXIgaS5NWDhNUSBv
ciBpLk1YOE1NLgoKU2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+
ClRlc3RlZC1ieTogSXVsaWFuYSBQcm9kYW4gPGl1bGlhbmEucHJvZGFuQG54cC5jb20+ClJldmll
d2VkLWJ5OiBJdWxpYW5hIFByb2RhbiA8aXVsaWFuYS5wcm9kYW5AbnhwLmNvbT4KUmV2aWV3ZWQt
Ynk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgotLS0KVjM6ICBObyBDaGFu
Z2UKVjI6ICBFeHBhbmQgdGhlIGNoZWNrIHRoYXQgZm9yY2VzIHRoZSBzZXR0aW5nIG9uIGlteDht
cSB0byBhbHNvIGJlIHRydWUgZm9yIGlteDhtbQogICAgIEV4cGxpY3RseSBzdGF0ZSBpbXg4bW0g
Y29tcGF0aWJsaXR5IGluc3RlYWQgb2YgbWFraW5nIGl0IGdlbmVyaWMgdG8gYWxsIGlteDhtKgog
ICAgICB0aGlzIGlzIG1vc3RseSBkdWUgdG8gbGFjayBvZiBvdGhlciBoYXJkd2FyZSB0byB0ZXN0
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jcnlwdG8vY2FhbS9jdHJsLmMgYi9kcml2ZXJzL2NyeXB0
by9jYWFtL2N0cmwuYwppbmRleCBkN2MzYzM4MDU2OTMuLmMwMWRkYTY5MmVjYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9jcnlwdG8vY2FhbS9jdHJsLmMKKysrIGIvZHJpdmVycy9jcnlwdG8vY2FhbS9j
dHJsLmMKQEAgLTEwMiw3ICsxMDIsOCBAQCBzdGF0aWMgaW5saW5lIGludCBydW5fZGVzY3JpcHRv
cl9kZWNvMChzdHJ1Y3QgZGV2aWNlICpjdHJsZGV2LCB1MzIgKmRlc2MsCiAJICAgICAqIEFwcGFy
ZW50bHkgb24gaS5NWDhNUSBpdCBkb2Vzbid0IG1hdHRlciBpZiB2aXJ0X2VuID09IDEKIAkgICAg
ICogYW5kIHRoZSBmb2xsb3dpbmcgc3RlcHMgc2hvdWxkIGJlIHBlcmZvcm1lZCByZWdhcmRsZXNz
CiAJICAgICAqLwotCSAgICBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bXEiKSkg
eworCSAgICBvZl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bXEiKSB8fAorCSAgICBv
Zl9tYWNoaW5lX2lzX2NvbXBhdGlibGUoImZzbCxpbXg4bW0iKSkgewogCQljbHJzZXRiaXRzXzMy
KCZjdHJsLT5kZWNvX3JzciwgMCwgREVDT1JTUl9KUjApOwogCiAJCXdoaWxlICghKHJkX3JlZzMy
KCZjdHJsLT5kZWNvX3JzcikgJiBERUNPUlNSX1ZBTElEKSAmJgpAQCAtNTA5LDYgKzUxMCw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc29jX2RldmljZV9hdHRyaWJ1dGUgY2FhbV9pbXhfc29jX3Rh
YmxlW10gPSB7CiAJeyAuc29jX2lkID0gImkuTVg2KiIsICAuZGF0YSA9ICZjYWFtX2lteDZfZGF0
YSB9LAogCXsgLnNvY19pZCA9ICJpLk1YNyoiLCAgLmRhdGEgPSAmY2FhbV9pbXg3X2RhdGEgfSwK
IAl7IC5zb2NfaWQgPSAiaS5NWDhNUSIsIC5kYXRhID0gJmNhYW1faW14N19kYXRhIH0sCisJeyAu
c29jX2lkID0gImkuTVg4TU0iLCAuZGF0YSA9ICZjYWFtX2lteDdfZGF0YSB9LAogCXsgLmZhbWls
eSA9ICJGcmVlc2NhbGUgaS5NWCIgfSwKIAl7IC8qIHNlbnRpbmVsICovIH0KIH07Ci0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
