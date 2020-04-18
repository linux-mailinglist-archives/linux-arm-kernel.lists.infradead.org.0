Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACF71AEEE6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:41:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpdB7p0HUUl9zXtTyhe9GtPsmA9+tMCP9gyAf+BTR+0=; b=sofv4PARIfQD7j
	lzrxHrVjeqfO7gnLGDE+ty1nRW23p4Pjhoa4ZyKd4jVSpqhvkbuAMo1f8X4JUwSNZwb3p2a2EwW0U
	1prhrrR8qXt7sphtja8jAOMl56XEbCpnG11mOt4XU5PfodHFTWm6BiJ8pcgHRRqaZwm0zL/dAVpmE
	SkjoqcjfxXgAOsa+UT+NfutMoS0zB50brbbYVsrxzXpUQ0FbQqdtMJNdMANj58wqeWaxpQm1qsScV
	eHaLdnsyb2CEGw4UOQKqV0cKMssVMkU0u0DJ6U3ZZrR+JNTrcj5tFTEWN6IS/GZtjaMbQ45okfqDr
	/Ym3nsfhLXvlaDKIRp9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoeN-0006uD-ON; Sat, 18 Apr 2020 14:40:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod3-0003XW-Uq
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id h2so5793341wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L754Km9Q9zep0jG23tHJM73Id+x+F/JcQ+J50WzXMn4=;
 b=kREQt1nAybMu/RdjR4TjKfiubqKWPftllECuR+Dq868v3it3j6lBhGfD3ltmcz/tMe
 YVOoHhyYMc4HCAawB2HNkZ8UfFeJwTPmM1e4k6Y5e9YRtUrWNjsQKj8X65eV60mY0o7W
 uNHDRjNH7xhbH23YmtoivilQKTAn+kzKMZiYs10gWCL0Fet+ufmuM8GIbwoh6gkfAM59
 6yoS6GEkIhgKay0ZvVl31wHQXmi1rE3E4aCqI/JXYUvQadeoka0jqsxj9NhCYfF3WubF
 FKpX4yWgiuJdAey9SnQvH4dZzJG4/H7NGfTp7D0R0KWjOq5OH+ZalOI6s56kTfPEpgSf
 AIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L754Km9Q9zep0jG23tHJM73Id+x+F/JcQ+J50WzXMn4=;
 b=HB1v5Uha6VlJ9DbBl+sN+Ec7b6Eahno1d5kBTc0IKj3xJa+E9xdyCyFeP1VQWC64qH
 S7IHao7JRYSPRNMXHLxYw/VcERTzXNL7tNlp7HcZXuByXC5tZKIY2Al7oTD/zUz3OHGg
 CbszfBE9N8s/iFnYtOFv7dd34UQzCFGIHnoOgEaHf3hmqUWuJap338+WX0zJHDDJ5hfP
 HWlS/Vo8w1QQ/ilcd0xYp6y9KIO7eDN9+V7SzsQfZlHNaz2j3HuAB8L+FCmwfY0mp3u/
 cdt+VuXObjnB2J4vYcHNp1Ah79E7BZRJkdGYJC30/cYCzpOzVK6ZUsrB8cUtwNZpjiEZ
 y6Zw==
X-Gm-Message-State: AGi0PuawKal1h8Yzpv7K4JftQMZiyMPZ+SuU/3NammYycbX2zkupT5uG
 zSz8NBY4T3GgHNKO06oS2+0=
X-Google-Smtp-Source: APiQypK70GbL5q6azow7ysviNaikQgOhrMij9w0SifS3JCnc2xPjm/sbDQKKkLmsCfYiJhtPXSVfgg==
X-Received: by 2002:a1c:964a:: with SMTP id y71mr6116731wmd.89.1587220772297; 
 Sat, 18 Apr 2020 07:39:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:31 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 5/7] ASoc: sun4i-i2s: Add 20 and 24 bit support
Date: Sat, 18 Apr 2020 16:39:21 +0200
Message-Id: <20200418143923.19608-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073934_118324_4462D966 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
dW40aS1pMnMuYwppbmRleCBlNWYwMGJlOGNkY2YuLmEwMDkwYjVjZWQ4MyAxMDA2NDQKLS0tIGEv
c291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCisrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1p
MnMuYwpAQCAtNTcxLDYgKzU3MSw5IEBAIHN0YXRpYyBpbnQgc3VuNGlfaTJzX2h3X3BhcmFtcyhz
dHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKIAljYXNlIDE2OgogCQl3aWR0aCA9
IERNQV9TTEFWRV9CVVNXSURUSF8yX0JZVEVTOwogCQlicmVhazsKKwljYXNlIDMyOgorCQl3aWR0
aCA9IERNQV9TTEFWRV9CVVNXSURUSF80X0JZVEVTOworCQlicmVhazsKIAlkZWZhdWx0OgogCQlk
ZXZfZXJyKGRhaS0+ZGV2LCAiVW5zdXBwb3J0ZWQgcGh5c2ljYWwgc2FtcGxlIHdpZHRoOiAlZFxu
IiwKIAkJCXBhcmFtc19waHlzaWNhbF93aWR0aChwYXJhbXMpKTsKQEAgLTEwNTcsNiArMTA2MCwx
MCBAQCBzdGF0aWMgaW50IHN1bjRpX2kyc19kYWlfcHJvYmUoc3RydWN0IHNuZF9zb2NfZGFpICpk
YWkpCiAJcmV0dXJuIDA7CiB9CiAKKyNkZWZpbmUgU1VONElfRk9STUFUUwkoU05EUlZfUENNX0ZN
VEJJVF9TMTZfTEUgfCBcCisJCQkgU05EUlZfUENNX0ZNVEJJVF9TMjBfTEUgfCBcCisJCQkgU05E
UlZfUENNX0ZNVEJJVF9TMjRfTEUpCisKIHN0YXRpYyBzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVy
IHN1bjRpX2kyc19kYWkgPSB7CiAJLnByb2JlID0gc3VuNGlfaTJzX2RhaV9wcm9iZSwKIAkuY2Fw
dHVyZSA9IHsKQEAgLTEwNjQsMTQgKzEwNzEsMTQgQEAgc3RhdGljIHN0cnVjdCBzbmRfc29jX2Rh
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
