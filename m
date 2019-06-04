Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C586334D74
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFgpkoG4CMxBw6QqknElC7CC8N9HuNp6naY6ZdYzMQs=; b=RJJvw+oCEoUKRJ
	/Iwmtsj7X4UHL8WFRvuacqR56z1l4g2jh3iExCtlTPB7bUAS9O4wmMGccRoqRMQOcFYQQLN0jQm+N
	Oc38bdsKKk71FR3L2iDbAOPbm+C1QSjwQQaxerLUVUO/YRQJc3dgxJsFfCSjHT+V/lD/Q4wEWea8d
	MHFyJp9GkVCgKlrX9jiHlRBS5yUwkSm/p1NjMkaTqTHPMVqZlk0Khy+7oEFZeMlZEhI4zfJDoEkXK
	6OthTPol1SS39DwyQO/0FIBXcJkyd3uIxAK7cZjjV4ZRJn5f4lu/TXNHHawbYYDVvAk8K4Qrr6ZHM
	UuRZDSe7dmwngpESv43Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCLN-0007ik-KR; Tue, 04 Jun 2019 16:31:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKE-0006Nm-32
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so16529674wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JnmvhZZD8Mx24yTeSpnfmQh3x3T3CVtR6CE0dBfbLB8=;
 b=Y5cjZ26jlUxFNeNaiMKAFzUilMvI+Dc6dprxGIq8ITJDnDN8XGenta0Zc0Qt2xzz+T
 CUPjfuM/M3IFsd5YHkVn3jG0ZF+d7ttvSaW4BqSKDhwjKZhGnckRWrIKfqzaVnVT0DOg
 XrrRP/AewELt8Ljf3Bixp1jBv8HqPSRWjWxstJLZWnAOSEPa6KaPJLfnUY7ljzM38xj5
 hWBEgZ/wqjDM8gIcaSwO3XVYPrC3Sc/M+0defamCm42VoZoxVykwsLWFXkOer6+UImm9
 1N1T2JFEWwCWtRYt+7i62Okzt95sKHAPrKvZUt3BIZqfwx3ul1tYgjOIw4BHvS1NF7zU
 tyAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JnmvhZZD8Mx24yTeSpnfmQh3x3T3CVtR6CE0dBfbLB8=;
 b=bS09UqQrHfn/J2v0Fa/2K+gAbn3S6FYIweFB4A1KDwp0NHaJZIWiOBCSJXA3upyge+
 NXVjjxMGUDE+TpFTQwxZiGC9ovrlZvnnjBNJj21e6JBs7HKCdzD/VxncUaaOTMw5dYmr
 1d27tSxJDxa+MeM+rfz6QLW+I2rznl6rk+zFj5yU784pF7Pr5da7clpR2JBOQ6Zx2Zp5
 LttcGtLehPihpr46VFw0ckQ9wRonVWDAc1fQTWgXvnyPlCuAcUWvB0JgWmLiWWEUPdGT
 sImq2o58/9Y0IVw+UlPqBRgB1RFA0BZERgR2OeSBcuG1HzXB6rz0HmSNt4IxMKyLKPvQ
 2lWQ==
X-Gm-Message-State: APjAAAU7Pp31q/OY9Uc9lXSXAa1klX84X2Oj3Ma1gIgGLme15nTr7/Hl
 qKDzalaq2BfEmDEAoOlgk0U=
X-Google-Smtp-Source: APXvYqwA70yB81shWvgQA1UmGXj4nMXog36OwjUoh3hCQCaHYnAaQiNf5aqqateTqEOy2jYk39HyUg==
X-Received: by 2002:adf:e40f:: with SMTP id g15mr20287449wrm.174.1559665812558; 
 Tue, 04 Jun 2019 09:30:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 06/13] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Tue,  4 Jun 2019 18:29:52 +0200
Message-Id: <20190604162959.29199-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093014_415010_55A40771 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpBY2tlZC1ieTogU2VhbiBZb3Vu
ZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNp
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSBiL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKaW5kZXggODQ5NzdkNGViOTdhLi5mMGY1YmEzNDlj
MWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaQpAQCAtODIyLDcgKzgyMiw3IEBACiAJ
CX07CiAKIAkJaXI6IGlyQDFmMDIwMDAgewotCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3Vu
NWktYTEzLWlyIjsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CiAJ
CQljbG9ja3MgPSA8JnJfY2N1IENMS19BUEIwX0lSPiwgPCZyX2NjdSBDTEtfSVI+OwogCQkJY2xv
Y2stbmFtZXMgPSAiYXBiIiwgImlyIjsKIAkJCXJlc2V0cyA9IDwmcl9jY3UgUlNUX0FQQjBfSVI+
OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
