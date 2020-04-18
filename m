Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE921AF59B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHzLCYaxU3hawboRtsVh6CMvbRVFH9r5EsxpSuBaieQ=; b=cdLoX+jX/H1db2
	KMHFyBOsdKB5vFsBpSfJZcPUCihEqnjxFPlUT/4HyM4vbUZZoHjTBRhhOmaVz/1HcmjkRQ+zqhd2z
	B5ShFHbtD9c6+KTwC1HNHFoBmdZLbAFt8WIwWY4L4cYcT8KcCY3/gqxX+Wj50fEII0IxK9g66h1lg
	IjaXKtY9ttlBYCFz4mFuoA1suY2Lqu1cHd2yKYo5A8AT01EgUu2LRr6svQVwUgqR74ve6oT+d5S7F
	Th+1hsK0conNZ3mVrJPG2zEUpVZXSPR4xaMdtLWdXs62Y1JIpT2jdGttQIWhxfbO9tcOEhQRdWiKN
	el49uzsiJ5QJOBkOTWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwEF-0002iL-Mp; Sat, 18 Apr 2020 22:46:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCd-0007V3-Ia
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id t14so7368715wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WxlFylBEMHP1jAoGZfSxBsIHY2H4BZ1sTMv7tdFsx0k=;
 b=mBpMCKqHG2SfOXcnCap8iR0f/B7HGFhKZdMy5ig7HK/OlFABYDm0hIll3vV+Fs3/E2
 MemLzcDWcEG1eZMGEt11QJROvMFeBiyeNFxbsdzZFsz30iRkOKq0KNsC499z52Y3PnIb
 rgUcOHM5l+Klk14ppPMaXuELw7kaIsqP5bFwyhXI8JiWWSzYx7mBW7XeuKjtZv3mcw8+
 BMy3XFU/sneRsFANUoXTvZdJ3YS99DW3zLWFR4nLpdboc51AHWkDqIchI+7NfrUzPUvQ
 GQZIK46c81MLKZ1cEHupP2QrODrt6n98Ko2z2YpzgmRUaiTYbsPSD79+KEkgy7cxRn44
 mOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WxlFylBEMHP1jAoGZfSxBsIHY2H4BZ1sTMv7tdFsx0k=;
 b=dpXfljnVjsPXUcGCqLAHTggJye/Y0/0zXS1p8O3wNvd3TlM0tpBJfH1lSf9+iwHZxj
 1ube2yXckhXSF5cwXn6LB7UrCeNmqIeWIFmV32xOLq3+iZAHlNIYGnjFGEtt1AlIKTBk
 AyXoPNr99nb6XQYg7UBflQ7IlwD/xGrQhUmjJFRPMeZzO/IztWFhJtGryW14pBXfmO3F
 ZUIPzINpDzEFjcrvWK5yKPqB4xPv/Z7909h0QasPoEetWmYbDCCvkaPKrl9iH3mpmayn
 ky7lpGpPsLC/+3ZKD0XDaaJwkYQz0QhVgJz0AmDUc9pRB++nB/v7xXV0bdQ8dAvLAZyK
 bfEQ==
X-Gm-Message-State: AGi0PuasukHc8sfnQ2n4C8Es8oGk8B5iNEIjtgQ3EFCXEKVfLem/2Vjt
 PFwbR1SquthkvTuu4gfEhuLjzE1hd78=
X-Google-Smtp-Source: APiQypKTnGAMc2x527csx6OG/t51sbyg6UU1kp5+g0xKPogZNyMX2T0dDmdRAiavu+QJY/l+rzDfcQ==
X-Received: by 2002:adf:ef51:: with SMTP id c17mr10700285wrp.130.1587249885925; 
 Sat, 18 Apr 2020 15:44:45 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:45 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 5/7] ASoc: sun4i-i2s: Add 20 and 24 bit support
Date: Sun, 19 Apr 2020 00:44:33 +0200
Message-Id: <20200418224435.23672-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154447_630888_8BE00B10 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpFeHRlbmQgdGhlIGZ1
bmN0aW9uYWxpdHkgb2YgdGhlIGRyaXZlciB0byBpbmNsdWRlIHN1cHBvcnQgb2YgMjAgYW5kCjI0
IGJpdHMgcGVyIHNhbXBsZS4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBw
ZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1A
Z21haWwuY29tPgotLS0KIHNvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDExICsrKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyBiL3NvdW5kL3NvYy9zdW54aS9z
dW40aS1pMnMuYwppbmRleCA2MThiYmM1MTU2ZjEuLjk3NzhhZjM3ZmJjYSAxMDA2NDQKLS0tIGEv
c291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCisrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1p
MnMuYwpAQCAtNTc3LDYgKzU3Nyw5IEBAIHN0YXRpYyBpbnQgc3VuNGlfaTJzX2h3X3BhcmFtcyhz
dHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKIAljYXNlIDE2OgogCQl3aWR0aCA9
IERNQV9TTEFWRV9CVVNXSURUSF8yX0JZVEVTOwogCQlicmVhazsKKwljYXNlIDMyOgorCQl3aWR0
aCA9IERNQV9TTEFWRV9CVVNXSURUSF80X0JZVEVTOworCQlicmVhazsKIAlkZWZhdWx0OgogCQlk
ZXZfZXJyKGRhaS0+ZGV2LCAiVW5zdXBwb3J0ZWQgcGh5c2ljYWwgc2FtcGxlIHdpZHRoOiAlZFxu
IiwKIAkJCXBhcmFtc19waHlzaWNhbF93aWR0aChwYXJhbXMpKTsKQEAgLTEwNjMsNiArMTA2Niwx
MCBAQCBzdGF0aWMgaW50IHN1bjRpX2kyc19kYWlfcHJvYmUoc3RydWN0IHNuZF9zb2NfZGFpICpk
YWkpCiAJcmV0dXJuIDA7CiB9CiAKKyNkZWZpbmUgU1VONElfRk9STUFUUwkoU05EUlZfUENNX0ZN
VEJJVF9TMTZfTEUgfCBcCisJCQkgU05EUlZfUENNX0ZNVEJJVF9TMjBfTEUgfCBcCisJCQkgU05E
UlZfUENNX0ZNVEJJVF9TMjRfTEUpCisKIHN0YXRpYyBzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVy
IHN1bjRpX2kyc19kYWkgPSB7CiAJLnByb2JlID0gc3VuNGlfaTJzX2RhaV9wcm9iZSwKIAkuY2Fw
dHVyZSA9IHsKQEAgLTEwNzAsMTQgKzEwNzcsMTQgQEAgc3RhdGljIHN0cnVjdCBzbmRfc29jX2Rh
aV9kcml2ZXIgc3VuNGlfaTJzX2RhaSA9IHsKIAkJLmNoYW5uZWxzX21pbiA9IDEsCiAJCS5jaGFu
bmVsc19tYXggPSA4LAogCQkucmF0ZXMgPSBTTkRSVl9QQ01fUkFURV84MDAwXzE5MjAwMCwKLQkJ
LmZvcm1hdHMgPSBTTkRSVl9QQ01fRk1UQklUX1MxNl9MRSwKKwkJLmZvcm1hdHMgPSBTVU40SV9G
T1JNQVRTLAogCX0sCiAJLnBsYXliYWNrID0gewogCQkuc3RyZWFtX25hbWUgPSAiUGxheWJhY2si
LAogCQkuY2hhbm5lbHNfbWluID0gMSwKIAkJLmNoYW5uZWxzX21heCA9IDgsCiAJCS5yYXRlcyA9
IFNORFJWX1BDTV9SQVRFXzgwMDBfMTkyMDAwLAotCQkuZm9ybWF0cyA9IFNORFJWX1BDTV9GTVRC
SVRfUzE2X0xFLAorCQkuZm9ybWF0cyA9IFNVTjRJX0ZPUk1BVFMsCiAJfSwKIAkub3BzID0gJnN1
bjRpX2kyc19kYWlfb3BzLAogCS5zeW1tZXRyaWNfcmF0ZXMgPSAxLAotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
