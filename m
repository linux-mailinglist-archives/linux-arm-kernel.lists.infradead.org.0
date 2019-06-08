Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABA23A131
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GW2Hws+Vnxmq5VpxpOCbcfZ16IvZw2qn1avfL+w+r8g=; b=YlqCBDlmdeJE+s
	Ddynf1PZ8MPZR3xe2B2d7ZoEduC2wcm28NxhV6T+jzKc5FfVEKZ0mk3ZIYemicEx2yNYvThayispY
	4JQ3R73W02TqaJ75Gi3qiu1AfvyNJE+y+rxDD/XwHIsTTAOgGX5xd7lUoe2ekRC83oLXgrZNAn7Fp
	zlp6DCpTCY+yXc11qetk9ht+JyaO9ppAxkGnVqjRCL5FF07s0LVZcdA78iuJa0e3R/NYNNiv0dqEW
	97+N5HRIPFdBmdn7MaCn4jHnZ9/FuomtZagqi7lMQBon9fWQaVXrW07qA4FYwdi5Bkewu2Su8Vrkk
	NG6DImtTRpY56dTCo4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfnu-0005m8-TG; Sat, 08 Jun 2019 18:10:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfju-0000vY-BR; Sat, 08 Jun 2019 18:06:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id z23so4679585wma.4;
 Sat, 08 Jun 2019 11:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LcZp+XV+KTOIWOKJ0nzGbLimTWtElgIxN/UQOTUbAxg=;
 b=f/hhHhhEKLF/T8vWu/eNekD7NioNE5HDoSUFzP/gNeNrARsZr9Xi3ToPkymnMBNLZY
 APYc06sb5U4MeUqqXM/T7X5et0ZLwnLt1JMQKfD4h64GtQacBOHMVu/qioua03YGdzAQ
 tbC/HILGO4JMyS8X5FWZbOIVWroxO7/upi1lg3GJwdjBXOM1gTNzTB2pHX6zg72iJ8tu
 eMU9IbaZIQZ8Uzh9RCIvQhW+ULARcKPutH9Z5Ou4wvp4FV9RPuZFXvZ5fiMAjErb2dKx
 MvcRRw7C6tC8eff1mfHn7v9gaRkQTLx4hA06QqrqJR1RskuMmP8Vgty1wUuYFRz46qmZ
 fndA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LcZp+XV+KTOIWOKJ0nzGbLimTWtElgIxN/UQOTUbAxg=;
 b=Ph1HV6kySy5aX6Sg4rjFJe0q+f7jro6OUqA5r+TE8gp8zb2YMdTYxdR5BA6/smmMWI
 /OnomBA3yWeiAoYpoYtUqdmki3gbV3K3R6rofTf2cTTOXQ9Kv4YxQRxLvOSjRrEHnLVF
 CW63kKcIUuhmx7TxJqHQhg6DUTsKUfM52B+/P8xqMf8qUhicXiQE5weEA+MCgl5R6r3n
 BaH6hFJNrmHADzODI3tzVHPGDGU/nbkdnO7uT1tF+kv/Sr9uRP3FC4/fHmx4mDW7Xv+Y
 w6ePEtSnOpRrgN1M0zG2OUeX6/oTDeMCRm5lmD4kHf01r4G7ckOZYpyHLBjFJ/liGIhI
 P3ig==
X-Gm-Message-State: APjAAAV/+FrnSmO/kq3LUoxbmkEYaOJYb/rKBC1EuR6lgPfhNuFBAzZh
 FwLYhSQVX8JUU2gXKMuJEqlYx4b0
X-Google-Smtp-Source: APXvYqySdvCrYqBKMKqzayv7pE9NT7Fh66b0snU+rte5qZ39fRD1bSiBGfxJQPh0JknCKLonuMpUDA==
X-Received: by 2002:a1c:7d13:: with SMTP id y19mr7493333wmc.21.1560017208453; 
 Sat, 08 Jun 2019 11:06:48 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:47 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 14/14] pwm: meson: add documentation to the driver
Date: Sat,  8 Jun 2019 20:06:26 +0200
Message-Id: <20190608180626.30589-15-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110650_470788_3076458B 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIGEgbGluayB0byB0aGUgZGF0YXNoZWV0IGFuZCBhIHNob3J0IHN1bW1hcnkgaG93IHRoZSBo
YXJkd2FyZSB3b3Jrcy4KVGhlIGdvYWwgaXMgdG8gbWFrZSBpdCBlYXNpZXIgZm9yIG90aGVyIGRl
dmVsb3BlcnMgdG8gdW5kZXJzdGFuZCB3aHkgdGhlCnB3bS1tZXNvbiBkcml2ZXIgaXMgaW1wbGVt
ZW50ZWQgdGhlIHdheSBpdCBpcy4KClN1Z2dlc3RlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KQ28tYXV0aG9yZWQtYnk6IE5laWwgQXJtc3Ry
b25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KU2lnbmVkLW9mZi1ieTogTWFydGluIEJsdW1l
bnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6
IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KLS0tCiBkcml2ZXJzL3B3
bS9wd20tbWVzb24uYyB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYyBiL2Ry
aXZlcnMvcHdtL3B3bS1tZXNvbi5jCmluZGV4IGJiNDhiYTg1Zjc1Ni4uNmE5NzhjYWJhNDgzIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tbWVzb24uYworKysgYi9kcml2ZXJzL3B3bS9wd20t
bWVzb24uYwpAQCAtMSw1ICsxLDIzIEBACiAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMCBPUiBCU0QtMy1DbGF1c2UKIC8qCisgKiBQV00gY29udHJvbGxlciBkcml2ZXIgZm9yIEFt
bG9naWMgTWVzb24gU29Dcy4KKyAqCisgKiBUaGlzIFBXTSBpcyBvbmx5IGEgc2V0IG9mIEdhdGVz
LCBEaXZpZGVycyBhbmQgQ291bnRlcnM6CisgKiBQV00gb3V0cHV0IGlzIGFjaGlldmVkIGJ5IGNh
bGN1bGF0aW5nIGEgY2xvY2sgdGhhdCBwZXJtaXRzIGNhbGN1bGF0aW5nCisgKiB0d28gcGVyaW9k
cyAobG93IGFuZCBoaWdoKS4gVGhlIGNvdW50ZXIgdGhlbiBoYXMgdG8gYmUgc2V0IHRvIHN3aXRj
aCBhZnRlcgorICogTiBjeWNsZXMgZm9yIHRoZSBmaXJzdCBoYWxmIHBlcmlvZC4KKyAqIFRoZSBo
YXJkd2FyZSBoYXMgbm8gInBvbGFyaXR5IiBzZXR0aW5nLiBUaGlzIGRyaXZlciByZXZlcnNlcyB0
aGUgcGVyaW9kCisgKiBjeWNsZXMgKHRoZSBsb3cgbGVuZ3RoIGlzIGludmVydGVkIHdpdGggdGhl
IGhpZ2ggbGVuZ3RoKSBmb3IKKyAqIFBXTV9QT0xBUklUWV9JTlZFUlNFRC4gVGhpcyBtZWFucyB0
aGF0IC5nZXRfc3RhdGUgY2Fubm90IHJlYWQgdGhlIHBvbGFyaXR5CisgKiBmcm9tIHRoZSBoYXJk
d2FyZS4KKyAqIFNldHRpbmcgdGhlIGR1dHkgY3ljbGUgd2lsbCBkaXNhYmxlIGFuZCByZS1lbmFi
bGUgdGhlIFBXTSBvdXRwdXQuCisgKiBEaXNhYmxpbmcgdGhlIFBXTSBzdG9wcyB0aGUgb3V0cHV0
IGltbWVkaWF0ZWx5ICh3aXRob3V0IHdhaXRpbmcgZm9yIHRoZQorICogY3VycmVudCBwZXJpb2Qg
dG8gY29tcGxldGUgZmlyc3QpLgorICoKKyAqIFRoZSBwdWJsaWMgUzkyMlggZGF0YXNoZWV0IGNv
bnRhaW5zIHNvbWUgZG9jdW1lbnRhdGlvbiBmb3IgdGhpcyBQV00KKyAqIGNvbnRyb2xsZXIgc3Rh
cnRpbmcgb24gcGFnZSAxMDg0OgorICogaHR0cHM6Ly9kbC5raGFkYXMuY29tL0hhcmR3YXJlL1ZJ
TTIvRGF0YXNoZWV0L1M5MTJfRGF0YXNoZWV0X1YwLjIyMDE3MDMxNHB1YmxpY3ZlcnNpb24tV2Vz
aW9uLnBkZgorICoKICAqIENvcHlyaWdodCAoYykgMjAxNiBCYXlMaWJyZSwgU0FTLgogICogQXV0
aG9yOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+CiAgKiBDb3B5cmln
aHQgKEMpIDIwMTQgQW1sb2dpYywgSW5jLgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
