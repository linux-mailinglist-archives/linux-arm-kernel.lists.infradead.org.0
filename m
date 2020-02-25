Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ED416EB06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LXcdwspehAWOfNYPzAIIYMlI4l/p7YLY4s9y9gTGL0=; b=jFOuMmobaCACKX
	VFZbatiS8DbNMOLJclCUUMxqaFmUnWKUlKukvXwOURoPNeUIuKNsO5BJnZYKuKAogl42eLVYsnkev
	o2lVx941TNGZlg8jlgE4ossHAckv8XyHygHW2pjj8wOVTSv/sbSo8uUpGG/EPufoTA8vbYy3fRFTO
	s4mMBxeyg1Ryx+NDRoGyjQUwT/KZBXpPm/ihRYYUea+hEsFs5FzONsFUTYehbvzp7GHpfHtCuPmx9
	GuNzbDY2EV/cX4Ssnawz7Sjk6MjPxo8LD2D2nU10v9aq9tLvlaIXztDSQiP5U1FM00VlSFD0PztQC
	pNHzFUO6QTKgCjil9MVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cpe-0006DE-6W; Tue, 25 Feb 2020 16:13:14 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6coc-0005Lo-19
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:14 +0000
Received: by mail-wr1-f66.google.com with SMTP id t3so15380830wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e3LiUsdwFrYwevxlo/tz4vkKcjo7pGSKzPtt39owm1w=;
 b=NpL93vNUhFcqQggVq9mqRp9foFvjf8FbRqWrQIt+cNNuQCpgAunATCkR/cdG9GDY46
 QVFeQkS/icW5ej/HKBHPMwIhzUJJC8Z4QL8Xq9U4SoaEDn8DMxJWytBomr9Xi7q8IGwX
 1NEI+MddxlxwRd5M/sfSmsIdXTg5FZusGg8lie8KPwc16GrEFo1ilN3qXSuw05V6PzcK
 XNkR/g3AROhQE7WpjNRRNamrS6sXit+4FdR0QBDNQgSdLUkhZEXmVMWf7ipLoxk6o2aj
 z1KuMovKPEiKNDMC2E8FqXF92NB66/JQUpmfhAiuOV4CeMa+X/Z/SnSF/EDCeWJ3OVwa
 SM5A==
X-Gm-Message-State: APjAAAXq+77db1rEWuM0Sn1JpWTCIRwj+WPZU4pmzq+dIKgXCh/7GBR5
 xbGcUzlwKuJHL5z+Nz0JPFE=
X-Google-Smtp-Source: APXvYqxg8OI6/QT5oIPTDgdPR6qug+ApccVoWzypMiLSjCLoZ5bHtn7thLRYK6+6Bvk7z0gzN3h8yg==
X-Received: by 2002:a5d:4687:: with SMTP id u7mr71319194wrq.176.1582647128894; 
 Tue, 25 Feb 2020 08:12:08 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:08 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] Input: snvs_pwrkey - enable snvs clock as needed
Date: Tue, 25 Feb 2020 16:12:00 +0000
Message-Id: <20200225161201.1975-5-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200225161201.1975-1-git@andred.net>
References: <20200225161201.1975-1-git@andred.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081210_072834_1F10AD7B 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QXQgdGhlIG1vbWVudCwgZW5hYmxpbmcgdGhpcyBkcml2ZXIgd2l0aG91dCB0aGUgU05WUyBSVEMg
ZHJpdmVyCmJlaW5nIGFjdGl2ZSB3aWxsIGhhbmcgdGhlIGtlcm5lbCBhcyBzb29uIGFzIHRoZSBw
b3dlciBidXR0b24KaXMgcHJlc3NlZC4KClRoZSByZWFzb24gaXMgdGhhdCBpbiB0aGF0IGNhc2Ug
dGhlIFNOVlMgaXNuJ3QgZW5hYmxlZCwgYW5kCmFueSBhdHRlbXB0IHRvIHJlYWQgdGhlIFNOVlMg
cmVnaXN0ZXJzIHdpbGwgc2ltcGx5IGhhbmcgZm9yZXZlci4KCkVuc3VyZSB0aGUgY2xvY2sgaXMg
ZW5hYmxlZCAoZHVyaW5nIHRoZSBpbnRlcnJ1cHQgaGFuZGxlcikgdG8KbWFrZSB0aGlzIGRyaXZl
ciB3b3JrLgoKQWxzbyBzZWUgY29tbWl0IDdmODk5Mzk5NTQxMCAoImRyaXZlcnMvcnRjL3J0Yy1z
bnZzOiBhZGQgY2xvY2sgc3VwcG9ydCIpCmFuZCBjb21taXQgZWRiMTkwY2IxNzM0CigicnRjOiBz
bnZzOiBtYWtlIHN1cmUgY2xvY2sgaXMgZW5hYmxlZCBmb3IgaW50ZXJydXB0IGhhbmRsZSIpCmZv
ciBzaW1pbGFyIHVwZGF0ZXMgdG8gdGhlIHNudnMgcnRjIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6
IEFuZHLDqSBEcmFzemlrIDxnaXRAYW5kcmVkLm5ldD4KQ2M6ICJIb3JpYSBHZWFudMSDIiA8aG9y
aWEuZ2VhbnRhQG54cC5jb20+CkNjOiBBeW1lbiBTZ2hhaWVyIDxheW1lbi5zZ2hhaWVyQG54cC5j
b20+CkNjOiBIZXJiZXJ0IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5vcmcuYXU+CkNjOiAiRGF2
aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IFJvYiBIZXJyaW5nIDxyb2Jo
K2R0QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgpD
YzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hhIEhhdWVyIDxzLmhh
dWVyQHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBw
ZW5ndXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KQ2M6
IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IERtaXRyeSBUb3Jva2hvdiA8
ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4KQ2M6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0Bu
eHAuY29tPgpDYzogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPgpDYzogbGludXgtY3J5
cHRvQHZnZXIua2VybmVsLm9yZwpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtaW5wdXRAdmdlci5r
ZXJuZWwub3JnCgotLS0KdjI6CiogZHJvcCByZWR1bmRhbnQgdGVzdHMgYW5kIHNpbXBsaWZ5IGVy
cm9yIGhhbmRsaW5nIGJ5IHVzaW5nCiAgZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCkKKiBhZGQgY2xv
Y2sgaGFuZGxpbmcgdG8gaW14X2lteF9zbnZzX2NoZWNrX2Zvcl9ldmVudHMoKQotLS0KIGRyaXZl
cnMvaW5wdXQva2V5Ym9hcmQvc252c19wd3JrZXkuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jIGIvZHJp
dmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jCmluZGV4IDJmNWUzYWI1ZWQ2My4uMzgy
ZDJhZTgyYzliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2lucHV0L2tleWJvYXJkL3NudnNfcHdya2V5
LmMKKysrIGIvZHJpdmVycy9pbnB1dC9rZXlib2FyZC9zbnZzX3B3cmtleS5jCkBAIC0xNiw2ICsx
Niw3IEBACiAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgogI2luY2x1ZGUgPGxpbnV4L3Bs
YXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BtX3dha2VpcnEuaD4KKyNpbmNsdWRl
IDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+CiAjaW5jbHVkZSA8
bGludXgvcmVnbWFwLmg+CiAKQEAgLTM4LDYgKzM5LDcgQEAgc3RydWN0IHB3cmtleV9kcnZfZGF0
YSB7CiAJaW50IHdha2V1cDsKIAlzdHJ1Y3QgdGltZXJfbGlzdCBjaGVja190aW1lcjsKIAlzdHJ1
Y3QgaW5wdXRfZGV2ICppbnB1dDsKKwlzdHJ1Y3QgY2xrICpjbGs7CiAJdTggbWlub3JfcmV2Owog
fTsKIApAQCAtNDcsNyArNDksMTAgQEAgc3RhdGljIHZvaWQgaW14X2lteF9zbnZzX2NoZWNrX2Zv
cl9ldmVudHMoc3RydWN0IHRpbWVyX2xpc3QgKnQpCiAJc3RydWN0IGlucHV0X2RldiAqaW5wdXQg
PSBwZGF0YS0+aW5wdXQ7CiAJdTMyIHN0YXRlOwogCisJY2xrX2VuYWJsZShwZGF0YS0+Y2xrKTsK
IAlyZWdtYXBfcmVhZChwZGF0YS0+c252cywgU05WU19IUFNSX1JFRywgJnN0YXRlKTsKKwljbGtf
ZGlzYWJsZShwZGF0YS0+Y2xrKTsKKwogCXN0YXRlID0gc3RhdGUgJiBTTlZTX0hQU1JfQlROID8g
MSA6IDA7CiAKIAkvKiBvbmx5IHJlcG9ydCBuZXcgZXZlbnQgaWYgc3RhdHVzIGNoYW5nZWQgKi8K
QEAgLTc0LDExICs3OSwxMyBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaW14X3NudnNfcHdya2V5X2lu
dGVycnVwdChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCiAKIAlwbV93YWtldXBfZXZlbnQoaW5wdXQt
PmRldi5wYXJlbnQsIDApOwogCisJY2xrX2VuYWJsZShwZGF0YS0+Y2xrKTsKKwogCXJlZ21hcF9y
ZWFkKHBkYXRhLT5zbnZzLCBTTlZTX0xQU1JfUkVHLCAmbHBfc3RhdHVzKTsKIAlpZiAobHBfc3Rh
dHVzICYgU05WU19MUFNSX1NQTykgewogCQlpZiAocGRhdGEtPm1pbm9yX3JldiA9PSAwKSB7CiAJ
CQkvKgotCQkJICogVGhlIGZpcnN0IGdlbmVyYXRpb24gaS5NWDYgU29DcyBvbmx5IHNlbmRzIGFu
CisJCQkgKiBUaGUgZmlyc3QgZ2VuZXJhdGlvbiBpLk1YWzZ8N10gU29DcyBvbmx5IHNlbmQgYW4K
IAkJCSAqIGludGVycnVwdCBvbiBidXR0b24gcmVsZWFzZS4gVG8gbWltaWMgcG93ZXIta2V5CiAJ
CQkgKiB1c2FnZSwgd2UnbGwgcHJlcGVuZCBhIHByZXNzIGV2ZW50LgogCQkJICovCkBAIC05Niw2
ICsxMDMsOCBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgaW14X3NudnNfcHdya2V5X2ludGVycnVwdChp
bnQgaXJxLCB2b2lkICpkZXZfaWQpCiAJLyogY2xlYXIgU1BPIHN0YXR1cyAqLwogCXJlZ21hcF93
cml0ZShwZGF0YS0+c252cywgU05WU19MUFNSX1JFRywgU05WU19MUFNSX1NQTyk7CiAKKwljbGtf
ZGlzYWJsZShwZGF0YS0+Y2xrKTsKKwogCXJldHVybiBJUlFfSEFORExFRDsKIH0KIApAQCAtMTQw
LDYgKzE0OSwyMyBAQCBzdGF0aWMgaW50IGlteF9zbnZzX3B3cmtleV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChwZGF0YS0+aXJxIDwgMCkKIAkJcmV0dXJuIC1FSU5W
QUw7CiAKKwlwZGF0YS0+Y2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJz
bnZzLXB3cmtleSIpOworCWlmIChJU19FUlIocGRhdGEtPmNsaykpCisJCXJldHVybiBQVFJfRVJS
KHBkYXRhLT5jbGspOworCisJZXJyb3IgPSBjbGtfcHJlcGFyZShwZGF0YS0+Y2xrKTsKKwlpZiAo
ZXJyb3IpIHsKKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIHByZXBhcmUgdGhlIHNu
dnMgY2xvY2tcbiIpOworCQlyZXR1cm4gZXJyb3I7CisJfQorCWVycm9yID0gZGV2bV9hZGRfYWN0
aW9uX29yX3Jlc2V0KCZwZGV2LT5kZXYsCisJCQkodm9pZCgqKSh2b2lkICopKWNsa191bnByZXBh
cmUsCisJCQlwZGF0YS0+Y2xrKTsKKwlpZiAoZXJyb3IpIHsKKwkJZGV2X2VycigmcGRldi0+ZGV2
LCAiZmFpbGVkIHRvIGFkZCByZXNldCBhY3Rpb24gb24gJ3NudnMtcHdya2V5JyIpOworCQlyZXR1
cm4gZXJyb3I7CisJfQorCiAJcmVnbWFwX3JlYWQocGRhdGEtPnNudnMsIFNOVlNfSFBWSURSMV9S
RUcsICZ2aWQpOwogCXBkYXRhLT5taW5vcl9yZXYgPSB2aWQgJiAweGZmOwogCi0tIAoyLjIzLjAu
cmMxCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
