Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6114B1EA5CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:29:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UaZY8b9yL5rXgfHGOCEirKbFcFUuKgvks0LQpGVMY4=; b=DS6iMPKtZKKUtw
	HS2nneVAFRyBDOhz5bbfjVtHlg3orI263glZuvTPc3dqRNGM+wop2lnl4jjOgSX0/vqfrbia0rFiq
	SlZy7fGLLyKzcL65E60TR40+BBVcXB9aH3vMnJ7Qchn+Kflpx/Fh0Ci4dx+zWSah+FbRV7YnRu/a+
	+h2Vjc38XCH2CGrGOI5TxPJ2s7IePid6aMfoqCF1rQwzEKdz4xDirC8I77vB6Ws/PGk3MUIZtEw2T
	eou/5Fhj+zury9AtwQoTHT/vCAbDsacIdT6EUbhZJnVDpeOsQaean6WLQc2tq+IeWvUFoqG1Ku0lT
	L0k/0AGp1K97G1fUIEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflQv-0003mz-4t; Mon, 01 Jun 2020 14:28:57 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflQD-0003NC-GS
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:28:15 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811euoutp01fc63ff13e863234135dd08421c7aa29f~UccySYzhc1116311163euoutp01D
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200601142811euoutp01fc63ff13e863234135dd08421c7aa29f~UccySYzhc1116311163euoutp01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591021691;
 bh=rwNNoUfHAlfOFwGSbUnF9y1UjfDAKssjoju9RRF8YRM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X9eEGfRPZcG2kCvQcz7lT69EaWrGY0YPQHYbpn58OrhQtM0CHyNzCkZFz2n/d3fX+
 giZ6SlLaUlzT5dvfPlYO32S+eimIjHHgSEkKxmhVRB6MX5tDk1sfcpYd5MNoLsDRB6
 P74Igb0ezk8RitetRC9W/2j7TnqBhj3Z0g97EvmU=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811eucas1p19d9d09310828c63300aced6648478161~Uccx_VV5D2462024620eucas1p1q;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id FD.EA.61286.B7015DE5; Mon,  1
 Jun 2020 15:28:11 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f~UccxZuO9D1329813298eucas1p1J;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200601142810eusmtrp2836859b3e71da49eeb63b847b58a20e2~UccxZFHZg1485714857eusmtrp2L;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-bd-5ed5107b5dee
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 66.52.08375.A7015DE5; Mon,  1
 Jun 2020 15:28:10 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601142810eusmtip278d346ce7de36b7c07a496fd7763cb63~UccxP_TsM2559325593eusmtip2g;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm: decompressor: define a new zImage tag
Date: Mon,  1 Jun 2020 16:27:52 +0200
Message-Id: <20200601142754.26139-4-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm29nOjsvp5xJ80zJYFiRlShEHNMsIOl3oAv4SUk95Usvp2Fxm
 Rl6CLMtck3XZkqwsTfM2TXMp6kitNMN0amWUZFSrRLxghrncjlL/nu99nud9nhc+ipC9E3lT
 8YnJnCqRTZCTEmFd+8yr9WnYGhk4et6Lrr5eKaJ1FS0C+k3mEwHddVFBv7GUINr0qV9E95pv
 krRF34To8qfvxfTwx0ERXTb3AtFjWruAnm2eEdI1Jj2xzY3p7e8hGGNGj5D5U/qVYApNGsZU
 eoFkhvobSWa0u1vM1BSlM9qxnyRzubYUMRMm3wNLIiQhMVxC/AlOtSE0WhL3w2ZHSoPHyTbb
 DVEGmpbmIBcK8Ca49PksmYMklAyXIMi0VQr4xySCMnuL0KGS4QkE38dSFh1v2xsX5sUIRgx7
 eMMXBK0TNchBkDgM8u49EzkITzwlALM+25lB4D4Ew8118xkUtRRvhYb7GodBiFdDzrXbIgeW
 4mCYrG5EfNpKyC6uJx3YBYdAS+e4gNd4wPMbI84W7tgfHmYNODExrz/7yEg4sgBfoaAqN39h
 0Q4YNk4QPF4Kto5aMY+Xg73hlrMP4HTI123mvZcQ1N38JeQ1wTDU/Zt0aAi8FirNG/hxGOgL
 jIi3usHgTw++ghvo6q4R/FgK58/JeLUfVOQ1Liz0hlxbCdIiueG/Ywz/HWD4l1WIiFLkxWnU
 ilhOHZTIpQSoWYVakxgbcCRJYULzX65zrmP8MZp6fdiCMIXkrtKqD32RMhF7Qp2qsCCgCLmn
 dPvLzkiZNIZNPcWpkqJUmgRObUE+lFDuJd1459shGY5lk7njHKfkVIusgHLxzkDh348p3atm
 f7gKlAP2+o/VV9ax1xU49PhpNkr7bm+fbiqD1Bec8WvLCo9ub9Ae01l9fHc1N3sVFReSivKj
 isCuVcvH7g6uSW29oAyz7kpBWcxOaWdOh/HiM9OAsuRgXMzRB01mc9CyEeuWoTQqwpAvAyze
 vHvFdODVwn0t+9fLheo4NsifUKnZvzmN6JFuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xe7pVAlfjDN7OMbLYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS/jzav/jAWzBCuOvprJ2sD4nbeLkZNDQsBE4taxPSxdjFwcQgJLGSUaN28G
 cjiAElISK+emQ9QIS/y51sUGUfOUUWLet73sIAk2AUeJ/qUnWEESIgJ/mSQOzjoNVsUscI1R
 YuOEk8wgk4QF7CV2LisFaWARUJXomr6QFcTmFbCW+LJxDyPEBnmJ9uXb2UBsTgEbiQOnPzGB
 2EJANe+ndTNB1AtKnJz5BOw4ZgF1ifXzhEDC/AJaEmuarrOA2MxAY5q3zmaewCg0C0nHLISO
 WUiqFjAyr2IUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiM6m3Hfm7ewXhpY/AhRgEORiUe3g33
 r8QJsSaWFVfmHmKU4GBWEuF1Ons6Tog3JbGyKrUoP76oNCe1+BCjKdCbE5mlRJPzgQknryTe
 0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDY9dV3XTBXQwLPl+/yPzh
 R8RJ5hbuYP3jnxoK41+tvn3JrFo5teaz4ZsgRdd17Et2fw34EZf67OK2BRUHK+zly3k2MyRo
 Mb8PXqhw2d7u1LmdfpV+d4PTbzUp6b5m+/NM5dbe8/uU1s96ZVS75GmksbtvVuqP6yZ/TwlE
 eC94sbf1/ImlEYc9RJRYijMSDbWYi4oTAVQLUIkAAwAA
X-CMS-MailID: 20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f
X-Msg-Generator: CA
X-RootMTR: 20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142810eucas1p1c42ff7c9b417f04bc506261726f08b4f@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_072813_679290_B5DDD2D6 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIERDU1ogdGFnIHdoaWNoIGhvbGRzIGR5bmFtaWMgbWVtb3J5IChzdGFjaywgYnNzLCBtYWxs
b2MgcG9vbCkKcmVxdWlyZW1lbnRzIG9mIHRoZSBkZWNvbXByZXNzb3IgY29kZS4KClNpZ25lZC1v
ZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJj
aC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgfCAgOSArKysrKysrKy0KIGFyY2gv
YXJtL2luY2x1ZGUvYXNtL2ltYWdlLmggICAgICAgICAgIHwgMTMgKysrKysrKysrKysrKwogMiBm
aWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMgYi9hcmNoL2FybS9ib290
L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUwppbmRleCAzMDhlOWNkNmE4OTcuLmRjZmRiMzIwOWM5
MCAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKKysr
IGIvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL3ZtbGludXgubGRzLlMKQEAgLTM5LDYgKzM5LDEx
IEBAIFNFQ1RJT05TCiAgICAgTE9ORyhBUk1fWklNQUdFX01BR0lDMykKICAgICBMT05HKFpJTUFH
RV9NQUdJQyhfX3BpZ2d5X3NpemVfYWRkciAtIF9zdGFydCkpCiAgICAgTE9ORyhaSU1BR0VfTUFH
SUMoX2tlcm5lbF9ic3Nfc2l6ZSkpCisgICAgTE9ORyhaSU1BR0VfTUFHSUMoNSkpCisgICAgTE9O
RyhBUk1fWklNQUdFX01BR0lDNCkKKyAgICBMT05HKFpJTUFHRV9NQUdJQyhfZW5kIC0gX19ic3Nf
c3RhcnQpKQorICAgIExPTkcoWklNQUdFX01BR0lDKF9zdGFja19lbmQgLSBfc3RhY2tfc3RhcnQp
KQorICAgIExPTkcoWklNQUdFX01BR0lDKF9tYWxsb2Nfc2l6ZSkpCiAgICAgTE9ORygwKQogICAg
IF90YWJsZV9lbmQgPSAuOwogICB9CkBAIC0xMDgsMTAgKzExMywxMiBAQCBTRUNUSU9OUwogICAu
ID0gQlNTX1NUQVJUOwogICBfX2Jzc19zdGFydCA9IC47CiAgIC5ic3MJCQk6IHsgKiguYnNzKSB9
CisgIC4gPSBBTElHTig4KTsJCS8qIHRoZSBzdGFjayBtdXN0IGJlIDY0LWJpdCBhbGlnbmVkIGFu
ZCBhZGpvaW4gYnNzICovCiAgIF9lbmQgPSAuOwogCi0gIC4gPSBBTElHTig4KTsJCS8qIHRoZSBz
dGFjayBtdXN0IGJlIDY0LWJpdCBhbGlnbmVkICovCisgIF9zdGFja19zdGFydCA9IC47CiAgIC5z
dGFjawkJOiB7ICooLnN0YWNrKSB9CisgIF9zdGFja19lbmQgPSAuOwogCiAgIFBST1ZJREUoX19w
ZWNvZmZfZGF0YV9zaXplID0gQUxJR04oNTEyKSAtIEFERFIoLmRhdGEpKTsKICAgUFJPVklERShf
X3BlY29mZl9lbmQgPSBBTElHTig1MTIpKTsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUv
YXNtL2ltYWdlLmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9pbWFnZS5oCmluZGV4IGQ1YzE4YTBm
NmEzNC4uNjI0NDM4NzQwZjIzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9pbWFn
ZS5oCisrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2ltYWdlLmgKQEAgLTE1LDYgKzE1LDcgQEAK
ICNkZWZpbmUgQVJNX1pJTUFHRV9NQUdJQzEgWklNQUdFX01BR0lDKDB4MDE2ZjI4MTgpCiAjZGVm
aW5lIEFSTV9aSU1BR0VfTUFHSUMyICgweDQ1NDU0NTQ1KQogI2RlZmluZSBBUk1fWklNQUdFX01B
R0lDMyBaSU1BR0VfTUFHSUMoMHg1YTUzNGM0YikKKyNkZWZpbmUgQVJNX1pJTUFHRV9NQUdJQzQg
WklNQUdFX01BR0lDKDB4NWE1MzQzNDQpCiAKICNpZm5kZWYgX19BU1NFTUJMWV9fCiAKQEAgLTQz
LDYgKzQ0LDE4IEBAIHN0cnVjdCBhcm1femltYWdlX3RhZyB7CiAJfSB1OwogfTsKIAorc3RydWN0
IGFybV96aW1hZ2VfdGFnX2RjIHsKKwlzdHJ1Y3QgdGFnX2hlYWRlciBoZHI7CisJdW5pb24gewor
I2RlZmluZSBaSU1BR0VfVEFHX0RFQ09NUF9TSVpFIEFSTV9aSU1BR0VfTUFHSUM0CisJCXN0cnVj
dCB6aW1hZ2VfZGVjb21wX3NpemUgeworCQkJX19sZTMyIGJzc19zaXplOworCQkJX19sZTMyIHN0
YWNrX3NpemU7CisJCQlfX2xlMzIgbWFsbG9jX3NpemU7CisJCX0gZGVjb21wX3NpemU7CisJfSB1
OworfTsKKwogI2VuZGlmIC8qIF9fQVNTRU1CTFlfXyAqLwogCiAjZW5kaWYgLyogX19BU01fSU1B
R0VfSCAqLwotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
