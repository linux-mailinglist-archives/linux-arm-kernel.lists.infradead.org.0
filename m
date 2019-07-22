Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D4A7088D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 20:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Subject:From:References
	:In-Reply-To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ovLhWcl1wt6HxAK4KXkFY6O72keLzRdQY21dSBqoYk=; b=YQzeHduh7WoFW2
	TPhLsn2sjcubwq2+tzZke+QEpid8HfeYjcRPaPJzKMqCzPjPX/L0ygLZFFmMKmLShvfuswdvgQM0C
	g9zxiGjPhQmdSUQPEq/aprwg0qKHMtZkPkPFK0MkVzipkjFoxkiXCLgs4m8XZ1elurHrFL0lZF5Ii
	/bLghYadnzwtatUjn2ZN+/pBMkICwdRXJw7Zv2fzFalXWs2m5oVuH5jrGHVoEUnMlMUPpxcFxSMmn
	Z7tsCMGidJjiIT2OnNk5dywmKHLQeSkVfr6v4rgT4HvoGmQyl9LUyKFzibzG5S+UmCwLU4jEsQX8Y
	yQCvFKy6pyGMThlNmfww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd36-0001WY-MH; Mon, 22 Jul 2019 18:28:37 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd22-0001PN-PO
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 18:27:34 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 45sqmp49ylzLD;
 Mon, 22 Jul 2019 20:26:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1563819962; bh=7cyhUdMhixBBUfBCeVUJRa2O8CBgW7Y0NQpqrriXNt4=;
 h=Date:In-Reply-To:References:From:Subject:To:Cc:From;
 b=ES3s2M4D5ryWIG2cBgGsH3T5NSgkomJbBeUIzIkrzszGiQWvy2VxmuSCOg58TNR3c
 skzgaO7XKEsxZ6Cdi1T2uKzrCxUNPCYJqj8+QdzJsHMb3Y/AW0Ljs6xE5OAU5dw+x5
 J5Vr0KZXcineQeW5lRxFt5UYUyqj38gcbPqNTu6BsNsKPgUBW45obKwK9T6Fq0AHLU
 JaOtwreeGEHI8sX8Wmhi3ooVrCnr5cKpE159lYXh29RKraq5IKXdvCMQB7hqeO98nW
 GgvEzA1EBv7NZTHTsCIddhc99oSd+mNrDDf+e0MwqOcUeAbjwp3PtJdv8qSVSg4EuS
 Lcd14xs36rr3g==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.100.3 at mail
Date: Mon, 22 Jul 2019 20:27:21 +0200
Message-Id: <718983d82091da8cf619010c026dca541af3f4d1.1563819483.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
References: <cover.1563819483.git.mirq-linux@rere.qmqm.pl>
From: =?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Subject: [PATCH 4/5] ASoC: atmel_ssc_dai: split TX/RX FS constants
MIME-Version: 1.0
To: alsa-devel@alsa-project.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112731_430825_8754E093 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGNvbnN0YW50cyBhcmUgdGhlIHNhbWUsIGJ1dCB0aGUgbmFtZXMgYXJlIG1pc2xlYWRpbmcg
d2hlbiB1c2VkIGZvcgpUQ01SIGNvbmZpZ3VyYXRpb24uIFVzZSBuYW1lcyBmcm9tIFNBTUE1RDIg
ZGF0YXNoZWV0LgoKU2lnbmVkLW9mZi1ieTogTWljaGHFgiBNaXJvc8WCYXcgPG1pcnEtbGludXhA
cmVyZS5xbXFtLnBsPgotLS0KIHNvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMgfCA2ICsr
Ky0tLQogc291bmQvc29jL2F0bWVsL2F0bWVsX3NzY19kYWkuaCB8IDkgKysrKysrKystCiAyIGZp
bGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvc291bmQvc29jL2F0bWVsL2F0bWVsX3NzY19kYWkuYyBiL3NvdW5kL3NvYy9hdG1lbC9hdG1l
bF9zc2NfZGFpLmMKaW5kZXggMDQ1NDFkN2MzM2ZlLi5jZjJjZmMzNDU2NzYgMTAwNjQ0Ci0tLSBh
L3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmMKKysrIGIvc291bmQvc29jL2F0bWVsL2F0
bWVsX3NzY19kYWkuYwpAQCAtNTcyLDcgKzU3Miw3IEBAIHN0YXRpYyBpbnQgYXRtZWxfc3NjX2h3
X3BhcmFtcyhzdHJ1Y3Qgc25kX3BjbV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwKIAkJCXwgU1NDX0JG
KFJDTVJfU1RBUlQsIFNTQ19TVEFSVF9SSVNJTkdfUkYpOwogCiAJCXRjbXIgPQkgIFNTQ19CRihU
Q01SX1NUVERMWSwgMCkKLQkJCXwgU1NDX0JGKFRDTVJfU1RBUlQsIFNTQ19TVEFSVF9SSVNJTkdf
UkYpOworCQkJfCBTU0NfQkYoVENNUl9TVEFSVCwgU1NDX1NUQVJUX1JJU0lOR19URik7CiAKIAkJ
YnJlYWs7CiAKQEAgLTU4NCw3ICs1ODQsNyBAQCBzdGF0aWMgaW50IGF0bWVsX3NzY19od19wYXJh
bXMoc3RydWN0IHNuZF9wY21fc3Vic3RyZWFtICpzdWJzdHJlYW0sCiAJCQl8IFNTQ19CRihSQ01S
X1NUQVJULCBTU0NfU1RBUlRfRkFMTElOR19SRik7CiAKIAkJdGNtciA9CSAgU1NDX0JGKFRDTVJf
U1RURExZLCAxKQotCQkJfCBTU0NfQkYoVENNUl9TVEFSVCwgU1NDX1NUQVJUX0ZBTExJTkdfUkYp
OworCQkJfCBTU0NfQkYoVENNUl9TVEFSVCwgU1NDX1NUQVJUX0ZBTExJTkdfVEYpOwogCiAJCWJy
ZWFrOwogCkBAIC02MDMsNyArNjAzLDcgQEAgc3RhdGljIGludCBhdG1lbF9zc2NfaHdfcGFyYW1z
KHN0cnVjdCBzbmRfcGNtX3N1YnN0cmVhbSAqc3Vic3RyZWFtLAogCQkJfCBTU0NfQkYoUkNNUl9T
VEFSVCwgU1NDX1NUQVJUX1JJU0lOR19SRik7CiAKIAkJdGNtciA9CSAgU1NDX0JGKFRDTVJfU1RU
RExZLCAxKQotCQkJfCBTU0NfQkYoVENNUl9TVEFSVCwgU1NDX1NUQVJUX1JJU0lOR19SRik7CisJ
CQl8IFNTQ19CRihUQ01SX1NUQVJULCBTU0NfU1RBUlRfUklTSU5HX1RGKTsKIAogCQlicmVhazsK
IApkaWZmIC0tZ2l0IGEvc291bmQvc29jL2F0bWVsL2F0bWVsX3NzY19kYWkuaCBiL3NvdW5kL3Nv
Yy9hdG1lbC9hdG1lbF9zc2NfZGFpLmgKaW5kZXggYWU3NjRjYjU0MWM3Li5lZmI0NThiNmQxODcg
MTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9hdG1lbC9hdG1lbF9zc2NfZGFpLmgKKysrIGIvc291bmQv
c29jL2F0bWVsL2F0bWVsX3NzY19kYWkuaApAQCAtNDIsMTMgKzQyLDIwIEBACiAgKi8KIC8qIFNU
QVJUIGJpdCBmaWVsZCB2YWx1ZXMgKi8KICNkZWZpbmUgU1NDX1NUQVJUX0NPTlRJTlVPVVMJMAot
I2RlZmluZSBTU0NfU1RBUlRfVFhfUlgJCTEKKyNkZWZpbmUgU1NDX1NUQVJUX1RSQU5TTUlUCTEK
KyNkZWZpbmUgU1NDX1NUQVJUX1JFQ0VJVkUJMQogI2RlZmluZSBTU0NfU1RBUlRfTE9XX1JGCTIK
KyNkZWZpbmUgU1NDX1NUQVJUX0xPV19URgkyCiAjZGVmaW5lIFNTQ19TVEFSVF9ISUdIX1JGCTMK
KyNkZWZpbmUgU1NDX1NUQVJUX0hJR0hfVEYJMwogI2RlZmluZSBTU0NfU1RBUlRfRkFMTElOR19S
Rgk0CisjZGVmaW5lIFNTQ19TVEFSVF9GQUxMSU5HX1RGCTQKICNkZWZpbmUgU1NDX1NUQVJUX1JJ
U0lOR19SRgk1CisjZGVmaW5lIFNTQ19TVEFSVF9SSVNJTkdfVEYJNQogI2RlZmluZSBTU0NfU1RB
UlRfTEVWRUxfUkYJNgorI2RlZmluZSBTU0NfU1RBUlRfTEVWRUxfVEYJNgogI2RlZmluZSBTU0Nf
U1RBUlRfRURHRV9SRgk3CisjZGVmaW5lIFNTQ19TVEFSVF9FREdFX1RGCTcKICNkZWZpbmUgU1NT
X1NUQVJUX0NPTVBBUkVfMAk4CiAKIC8qIENLSSBiaXQgZmllbGQgdmFsdWVzICovCi0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
