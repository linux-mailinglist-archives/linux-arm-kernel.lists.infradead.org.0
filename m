Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFCFF4266
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMZ8UCYDbAudWv9wbp8pTpjmlUkCdyU5f8J61haI6vY=; b=qaZVfHOfjtftaQ
	PJaTTcyQdcJg3uhFeD5w50sDyY65Ev6enUiIzi4HubOECxOeqWtLs9rC0lSwe1EJa25MnN4vzZ45Z
	oKGv5s9dVZR73fDTSMyqdzLgkWw430thTLTOdPzpuKJjbOZnpJqCpnfwQRQT1Gto9wrs7xOiXAseF
	UW9rG9h0qU1UsVG/H9i5Dwbfsw1tEzdsw5AjxYrNkNFckc9nbvB8Ic3QefAPQCegKrPGEiPhcVpBR
	QcP+kcyOSxsUBtDqG/KULyvNy7XFl66oFIP6hf1VfbDLV7pkkrah5HNSGjWOO+UEv7pp5nXv1WWcj
	+W8oO6GwbdTDDcz/pE8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzu3-0005Xc-4M; Fri, 08 Nov 2019 08:45:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzta-0005Jn-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so6033240wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4QB9cDt6fQFRk5SFMea9eu/ALXFa2Va/mC6ymi+w/Cs=;
 b=XAIZ3SDFz73VRt8TZCqiOw69FrFZzRA1dTXc1hz0ORCz+jktoeMrothomPqIFQnMX/
 zXyXRHN5y/AOcEwPSMzCu1ucukhVGog6MOeheYacZR9kWZc4zYpImP1NmndcN/7OPHOo
 xpsr6JYrl4Lt7gC1iuvuA+cojKhG0Zhk+SndYQCpyrKrISaaubKr+9LL7/bIV9keknYJ
 pk3O4dJCG7kgfcX2HK8D2cJesxBVmihhqFZVUGJNkN5PQSJmtk4hl9zh6utMONSE1e0H
 VvZEIPGHrezzqSrg6HYEJF7ayIb4arDg3BA3A7hbfceyczL1rswg/VN08wgDRfX7MXsL
 vhVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4QB9cDt6fQFRk5SFMea9eu/ALXFa2Va/mC6ymi+w/Cs=;
 b=OkUbSKvYP9dVbsFRcMSHHbvQuPB+p2RYGKzU0/wir8ufHPhToNQ17VoY19R8Tg4frs
 lv6A+WTIPnzF9btx8W+hgwlaPMi8zcQdPxqm8fzobiBTkofUAWxhPmr5rp38aPJhgeYh
 1xK/6Xkf3cc4TB74XFiQ7TDashigQ6m4g06W2wCspQ3TtQrZE6ibnipB/09LBukfRMq0
 2yVZai26FFULXWDItfGzxyNLsTXEZnDkETdtSOT4UdGJKOzZW5HpLPmqdxrfAy7jzW9l
 PWQ5+R0DOnqi81X4HIP8FhX8kJoU25OoyelHMj9ICSqOP33lwZNdR3txvLSGRCTuV6oa
 vjvQ==
X-Gm-Message-State: APjAAAWpAZPed9oRlFmAae8rZ60SUWKyOWELQpV6kIo8qfX2yXR9mVj9
 g+tIr11ssMWm9avUteY+a2g=
X-Google-Smtp-Source: APXvYqxd907rYnKrigSrYCn3h6dEANybH8eRG+Xwv2u3fyvd4zj6zcYXc+0Y4jkia+vCViGcSMYgog==
X-Received: by 2002:a5d:6947:: with SMTP id r7mr7396315wrw.129.1573202728267; 
 Fri, 08 Nov 2019 00:45:28 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:27 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 2/7] pwm: sun4i: Add an optional probe for reset line
Date: Fri,  8 Nov 2019 09:45:12 +0100
Message-Id: <20191108084517.21617-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004530_517478_F34F37A0 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMzMgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3Vu
NGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDZmNTg0MGExYTgyZC4uMmI5YTJh
Nzg1OTFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJz
L3B3bS9wd20tc3VuNGkuYwpAQCAtMTYsNiArMTYsNyBAQAogI2luY2x1ZGUgPGxpbnV4L29mX2Rl
dmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxp
bnV4L3B3bS5oPgorI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgogI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+CiAjaW5jbHVkZSA8bGludXgvdGltZS5o
PgpAQCAtNzgsNiArNzksNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewogc3RydWN0IHN1bjRp
X3B3bV9jaGlwIHsKIAlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKIAlzdHJ1Y3QgY2xrICpjbGs7CisJ
c3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKIAl2b2lkIF9faW9tZW0gKmJhc2U7CiAJc3Bpbmxv
Y2tfdCBjdHJsX2xvY2s7CiAJY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhICpkYXRhOwpAQCAt
MzY1LDYgKzM2NywyMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCWlmIChJU19FUlIocHdtLT5jbGspKQogCQlyZXR1cm4gUFRSX0VS
Uihwd20tPmNsayk7CiAKKwlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9u
YWxfc2hhcmVkKCZwZGV2LT5kZXYsIE5VTEwpOworCWlmIChJU19FUlIocHdtLT5yc3QpKSB7CisJ
CWlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycigmcGRl
di0+ZGV2LCAiZ2V0IHJlc2V0IGZhaWxlZCAlcGVcbiIsCisJCQkJcHdtLT5yc3QpOworCQlyZXR1
cm4gUFRSX0VSUihwd20tPnJzdCk7CisJfQorCisJLyogRGVhc3NlcnQgcmVzZXQgKi8KKwlyZXQg
PSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHB3bS0+cnN0KTsKKwlpZiAocmV0KSB7CisJCWRldl9l
cnIoJnBkZXYtPmRldiwgIkNhbm5vdCBkZWFzc2VydCByZXNldCBjb250cm9sXG4iKTsKKwkJcmV0
dXJuIHJldDsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKIAlwd20tPmNoaXAu
b3BzID0gJnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJhc2UgPSAtMTsKQEAgLTM3NywxOSAr
Mzk0LDMxIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAJcmV0ID0gcHdtY2hpcF9hZGQoJnB3bS0+Y2hpcCk7CiAJaWYgKHJldCA8IDAp
IHsKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGFkZCBQV00gY2hpcDogJWRcbiIs
IHJldCk7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gZXJyX3B3bV9hZGQ7CiAJfQogCiAJcGxhdGZv
cm1fc2V0X2RydmRhdGEocGRldiwgcHdtKTsKIAogCXJldHVybiAwOworCitlcnJfcHdtX2FkZDoK
KwlyZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CisKKwlyZXR1cm4gcmV0OwogfQogCiBz
dGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IHsKIAlzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnB3bSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBk
ZXYpOworCWludCByZXQ7CisKKwlyZXQgPSBwd21jaGlwX3JlbW92ZSgmcHdtLT5jaGlwKTsKKwlp
ZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJcmVzZXRfY29udHJvbF9hc3NlcnQocHdtLT5yc3Qp
OwogCi0JcmV0dXJuIHB3bWNoaXBfcmVtb3ZlKCZwd20tPmNoaXApOworCXJldHVybiAwOwogfQog
CiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzdW40aV9wd21fZHJpdmVyID0gewotLSAK
Mi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
