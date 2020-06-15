Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A341F92AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX0wQflHI+FzKRaJMxJfbpDpeWbsxlAxSHEO1qysAjY=; b=t2XkESsi/4xfa8
	mV6oRW16idavWdnxMwk+ZU9VH9LINKPYt3ZWDNjRW5rNvNqODSOpLaKlRSv4xodhDxovaj8OleX7s
	GiwcH8zmr1EtBzC0HU75kvr3TfvJnPUObnRa2OZrF7bechH76BDco2xBpKIfy+1m/fYz95c+IbQbu
	iIAoduH2ffqYO7fHd9v5RUeRVD7sXOZL3m7aNW8ybD9NRVYT/drs9tCLyH3R5XVP6oI3gzWHMTBZ0
	HMFAfE6BLBBn+WZS0ZUjqjNMVB4WVGweGnHKUobOCbO+R1fuXahK+o/E2GnY+m9jIE3cKxjE0ZJEE
	i5WEMrI0F7EpGCtqd9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl3y-0003Lo-Mg; Mon, 15 Jun 2020 09:05:54 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0n-0007c1-Ga
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id p5so16216097wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lxtS6lu0f1MMLwKbznbg5Hfidh6dQZlR1AKoD5Erw7s=;
 b=kVuMZFhPf1eo0U8vCNXGm7zlLb8iILNdRoWQUK0PpgciaCkk9S4hRY2XGvR4TZrSS2
 cWdLycBE9fSWJCUlw3aTVh5DBCHjApSCmSKbfaQKPlOAtqTX0dhYjKZQ3g7+4uFcd7cd
 eKgnobWDv8jMxvqHxNFHRa5EkEcjewWAUg6astihL8ZN/2Rhv0fmSaxqeENuAW6a8K0K
 7MvjcLDgH3NH5K5xuG9+WGlV2hWOtaKpn2vBOz4r2Vu4LnGaOO0ga3WS+7koWc0EBsA2
 b10V6FBj9Ur2SjDaxjt5RKxVL3sqDmxWpMen65JYeZT4tOAkxKlOk8/SMjdaiqxKwzPJ
 FAaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lxtS6lu0f1MMLwKbznbg5Hfidh6dQZlR1AKoD5Erw7s=;
 b=b5SxQ/Tf7lJQxPCmRcb+ZUsWVhM+gmEwu2k/edRjuy5SdxLFPzhQTHN3cnjHyPmFF2
 RTDUmH/ahpN7oWN8hP3oGlULe+UBSZK6gBP/rMOkR45tXAUs5+bJdLrHbUcKv5UWf1q1
 MIRqfQcK1tWGtOBBlPREuroXfD05Q9wKdqbF4uUHccu7hdVds9L5QFuuyHz++z4+OP4W
 wFDSRYQO1xn7tW9Z9D5W85QBoPlT+ZEz8zaAG7eLMq+NVYljyzlz+h4OBDQbtMk/UfUR
 PGsJ7T0r0KB9CZbofiMT1XM3WcnT2XaSKFwyi7tzxhrO6c9TnCJX+osRo5ig65bMMeA/
 vMYw==
X-Gm-Message-State: AOAM531yDikRgNy26Z3MbOmYMTl6/c24MWeSHCnEc/bMlht8IMfLlq5K
 x1cxp1xIkHwQaDb2e1I5roI=
X-Google-Smtp-Source: ABdhPJwX/v0DIrobFoOX5TTFCQKPVL3VkIg/tzqckNaoCicn6Be0G8N7kP9EqH4u/fda7T9ws627Cg==
X-Received: by 2002:adf:82c9:: with SMTP id 67mr30210524wrc.149.1592211755931; 
 Mon, 15 Jun 2020 02:02:35 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:35 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/8] mips: bmips: add BCM3368 clock definitions
Date: Mon, 15 Jun 2020 11:02:24 +0200
Message-Id: <20200615090231.2932696-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020237_595380_0533350E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
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

QWRkIGhlYWRlciB3aXRoIEJDTTMzNjggZGVmaW5pdGlvbnMgaW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIGl0IGZyb20KZGV2aWNlIHRyZWUgZmlsZXMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2
YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtMzM2OC1jbG9jay5oIHwgMjQgKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9iY20zMzY4LWNsb2NrLmgKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2JjbTMzNjgtY2xvY2suaCBiL2luY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svYmNtMzM2OC1jbG9jay5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAw
MDAwMDAwMDAwMC4uNzRhNzM4MmY3N2I4Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1i
aW5kaW5ncy9jbG9jay9iY20zMzY4LWNsb2NrLmgKQEAgLTAsMCArMSwyNCBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArICovCisKKyNpZm5kZWYgX19EVF9CSU5ESU5HU19D
TE9DS19CQ00zMzY4X0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ00zMzY4X0gKKwor
I2RlZmluZSBCQ00zMzY4X0NMS19NQUMgCTMKKyNkZWZpbmUgQkNNMzM2OF9DTEtfVEMgICAgICAg
ICAJNQorI2RlZmluZSBCQ00zMzY4X0NMS19VU19UT1AJNgorI2RlZmluZSBCQ00zMzY4X0NMS19E
U19UT1AJNworI2RlZmluZSBCQ00zMzY4X0NMS19BQ00gCTgKKyNkZWZpbmUgQkNNMzM2OF9DTEtf
U1BJCSAgICAgICAgOQorI2RlZmluZSBCQ00zMzY4X0NMS19VU0JTCTEwCisjZGVmaW5lIEJDTTMz
NjhfQ0xLX0JNVSAgICAgICAgIDExCisjZGVmaW5lIEJDTTMzNjhfQ0xLX1BDTSAgICAgICAgIDEy
CisjZGVmaW5lIEJDTTMzNjhfQ0xLX05UUCAgICAgICAgIDEzCisjZGVmaW5lIEJDTTMzNjhfQ0xL
X0FDUF9CICAgICAgIDE0CisjZGVmaW5lIEJDTTMzNjhfQ0xLX0FDUF9BICAgICAgIDE1CisjZGVm
aW5lIEJDTTMzNjhfQ0xLX0VNVVNCICAgICAgIDE3CisjZGVmaW5lIEJDTTMzNjhfQ0xLX0VORVQw
ICAgICAgIDE4CisjZGVmaW5lIEJDTTMzNjhfQ0xLX0VORVQxICAgICAgIDE5CisjZGVmaW5lIEJD
TTMzNjhfQ0xLX1VTQlNVICAgICAgIDIwCisjZGVmaW5lIEJDTTMzNjhfQ0xLX0VQSFkgICAgICAg
IDIxCisKKyNlbmRpZiAvKiBfX0RUX0JJTkRJTkdTX0NMT0NLX0JDTTMzNjhfSCAqLwotLSAKMi4y
Ny4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
