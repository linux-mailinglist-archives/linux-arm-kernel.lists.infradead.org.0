Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836B81B8EFD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 12:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=75Y/U52804lIT4p50/8UXwScYP8zXWcahkAoGCQs9+w=; b=siQRSbEA7B2krT
	Ixrh2kyC3MgWnV4lpBdk/ZihB2G0DhJidVoTpXLwZN8B66+Z/35nOXnzc2AMmzi9OKw983VXiOqlZ
	yMPm4vBchwh7as5HH8+YUkDrlEI5BPjg8uYBDxCqh4JYwuMjJw/N+9ZNwQmZruRzN1HZW816KFx0W
	RxatwuZNWwMLZa+IHbe+e4tAYTghgFpW+vQ33EHj20K0Cmk6AtPr4Ukgy/XfpGCCpaVlO56UZZZic
	wejaSlmGkPmT+6jyCHrKXECUVL9zJp9wFcphKzWhkplY3nGBWsMgcXewFHlhaa1kOFBa5HLLrEyL9
	guSR1+lI2VZXJ6VX7Eng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSel5-0004cI-Rz; Sun, 26 Apr 2020 10:43:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSej1-0002xu-AY
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 10:41:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id x4so16248951wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 03:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gPmRG0eokqpdl/q2VMZgNzJBd9cVrpLdjOI8ETo+m6A=;
 b=EpGT0O9Iarn76rrEIWIz78idcptdCG/Ex0bRkE0WB14Sp3hBUGQsGfpbJz2soHss1S
 /6r+2EqiqnXv98wkZN7flIEf6HlTQfO/CVxJ5vf0kchFY3vZzzwrQEkH0sSjAve6amxg
 6jSNxGlqrfmsePNfMBCh9yRL1Xp3EDoqLnMWlGpgKwfaEtL3751QfsdxZ85KsSfbT8Pb
 ytTLHsDCB0wKayozdQp47VkK3ykTeaDMOm3oIfIop8R9rXanGyVX0uzPzuqJjzBYmisi
 6s2CEQc1KyudTuYsY657g0DiNqHh4xOupY0Cza2WgP7ao3Efj8CmIzRGBSBriWg5fihR
 bDNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gPmRG0eokqpdl/q2VMZgNzJBd9cVrpLdjOI8ETo+m6A=;
 b=cvW1NIww1AxdiV0T5Lt0iT6O5F8T+PS2wLO4IzufKzjG4ZV2CzQeYLIQGbnXSfDvGh
 3DOa2Srp0nUrHmzLTjvFL8yCccI24cSmiXH2Tgfyhvf5Qpac2XCtdeQLREzqSRFTQq+R
 wcE45hPxOcfnTJLu067d/MaE4AG2nNeiEnwiqBOozDx6Rvb9vi1DIRkgOLQWW9zPj1Th
 uXD0y+yU24LJv492xF51nZ7dCsmp70TV0IIQZK67+7KPz8UGaB4fCMMuW6cWc+fa365J
 HW2E7GG1KU+AaeLtk4U407j8aCH0wjq4gXXuP3MhkuyGRKdnqdIE5Z97ZIv2sF37dvMh
 UJnA==
X-Gm-Message-State: AGi0Pub5kf9vuXSSIoc/wd38OmwN+kxb7SHDaZDzdEJ9ZPCK0nwYoK6R
 PDSTy3vQWEixkj0OP9NR6N8=
X-Google-Smtp-Source: APiQypI6n/5+7cpoIEtCz+tkkyK76+2/yd5WP4fqwKKPC90tfsehNHzeXrlr753fWnjqoEVUFPBkCw==
X-Received: by 2002:a1c:24d4:: with SMTP id k203mr20537615wmk.49.1587897684680; 
 Sun, 26 Apr 2020 03:41:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 y10sm10491793wma.5.2020.04.26.03.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 03:41:23 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v3 5/7] ASoc: sun4i-i2s: Add 20 and 24 bit support
Date: Sun, 26 Apr 2020 12:41:13 +0200
Message-Id: <20200426104115.22630-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426104115.22630-1-peron.clem@gmail.com>
References: <20200426104115.22630-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_034127_391088_AFA0E31E 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
dW40aS1pMnMuYwppbmRleCA4ZWEwOGI0OWU3ZmUuLjI3N2JmNTY2YzE1NCAxMDA2NDQKLS0tIGEv
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
