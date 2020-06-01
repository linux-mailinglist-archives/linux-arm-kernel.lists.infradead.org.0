Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA081EA5C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 16:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mbZftSyzSCszjd44R9CmqQKvZM/AcjEzcOGAmCKcZA4=; b=or8FQQ0C8YFZRC
	hn0wIw4M7rxUW3Vg14SQuVz0XViCu/ZsI/lwMQ9D+VA7uUpXvCs8YGIcOT5QVbZYnJxmTM8DaHs8Y
	uObUyWd5Vb2rJEP1CoBpQpyoKUsN7wsmxHKOhR6Vf9MT534GeEHxJOim04DOOHxaS4dARJq5s9cU+
	btY6J65nvN/IpYvhmZ7Qp22S4l3MN8R9g3nY/mNICU40QwGsEBeElNHgKukqhKGQ/UafU4RpOPzBM
	p+4oHpjEG6OT6f+3+wmI3plu3yf8sZxvIPuCKjzdVL7iiV6yaG2PFJIeO5zEfxezDnEqKF1l3hVow
	WdrVSxBDauKgnqQeVyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jflQZ-0003VH-Q3; Mon, 01 Jun 2020 14:28:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jflQC-0003Mu-Gw
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 14:28:13 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200601142811euoutp0205bc52797551134f9227760f146e8bee~UccxjaqWZ2486424864euoutp02j
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jun 2020 14:28:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200601142811euoutp0205bc52797551134f9227760f146e8bee~UccxjaqWZ2486424864euoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591021691;
 bh=TcvRBVgibYuWvdnj8aP2i39hNoNN9xtEvOA0UIuLnMw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qyaGQUdke+Ls9OJ+3s8sFwH+lw+wAfO0CCXNDuxpcsYibSVTGJ8Dq5BdidR56YU43
 AKS0Udw1/lAF452Dj/BQkYQYrGudgBbecCAeD+A7gbQMYVGE11ee2HSejhNQignxvz
 Csz1jNvk5GsuLuO8WqWOzYwF6VMJKrkh7fksrba0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200601142810eucas1p2e42f5919d8046616d8e3dc2637fde2ed~UccxCsaUb0506105061eucas1p28;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0D.EA.61286.A7015DE5; Mon,  1
 Jun 2020 15:28:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200601142810eucas1p1767585cf172d26aedb551d7453aa7402~UccwvQZhL2462024620eucas1p1p;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200601142810eusmtrp1867c63cae3b0bc092ca73d4ff0bf8430~Uccwubcw43017330173eusmtrp1i;
 Mon,  1 Jun 2020 14:28:10 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-bc-5ed5107a92d4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 51.FB.07950.97015DE5; Mon,  1
 Jun 2020 15:28:10 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200601142809eusmtip107d07cf168a890f2adfbbed52e457391~UccwgUcus1630616306eusmtip1J;
 Mon,  1 Jun 2020 14:28:09 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Russell King <linux@armlinux.org.uk>, Masahiro Yamada
 <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Thomas
 Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>, Kees Cook
 <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, Ben Dooks
 <ben-linux@fluff.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] arm: decompressor: set malloc pool size for the
 decompressor
Date: Mon,  1 Jun 2020 16:27:50 +0200
Message-Id: <20200601142754.26139-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTURzHObt31ztt67oif75lFTFLTSq5oEZG0f3T6L+g2cyLWW7a5kwt
 dCWozcwX9lAJKSNbljp1lRrKsKyW8/0YKmYF9kAZ85GaWs5r5H/f7/d8fuec7+GQmHiE70HG
 KZNYlVIeLyGccePbxa6ANGpAtr9jcgddd7eGTxc9b+PR1mvNPPpjroK2mqoQbfgyyKf7msoJ
 2lTyGtHP2sec6IlPw3z66eoHRNsK/vDo5dZFnK43lGBHREzfYA/GlGl7cGZF/w1jKgwaxqC/
 QTCjgy0EM22xODH1lRlMgW2KYG416BEzY/CJdDntHBbDxscls6qgw2edzw9oK/HEVWHKU2su
 rkUNLjpEkkAdhILGdB1yJsVUFYL2rlcYZ2YR2CpGEGdmENh/lWD/JsasAi5/jMAyuMLXIcGa
 mUQwZ4h0aIKKgPxH7/gOaDs1x4OmkmzCYTCqH8FEq5HnoLZRp+B+3kvCoXFqN7xq/LieC6lQ
 qNf+Rg4NlC9kP36xzgioMGgz2zcYV3h/7yvu0Fspf6i+PrSusTU+s7FsvQNQeSRk9tiduI2O
 Qa9tmeD0NvjR0bCRe4G5+CbOVcuA4qIQbvYmAmP5As4xoTBqWSIcDEZJoaYpiIsjYKpigseN
 imB4ypW7ggiKjHc2HksIOVlijt4Fz/NbNjb0gLwfVagASUo3lSndVKD0/1kVCNMjN1ajVsSy
 6mAlezlQLVeoNcrYwHMJCgNa+3Lm1Q77SzTXG21CFIkkW4S14/0yMV+erE5VmBCQmGS78Gin
 WSYWxshT01hVQpRKE8+qTciTxCVuwgMPvp8RU7HyJPYiyyayqn+rPFLgoUVPvKTNfeE+pVEX
 c+vYwuGkEzZdrXK4s3k22nPee+e0/86lGf2Q+4uczBap/o9V5t19xe9n9ed4Nr2rfShcmxI4
 3nF7Yc+ytLdTJJtuq1QI3aPCHr6ZWdonSjDu1dlUl1x9hyyuhZpu0i/0eOHWkParsydDB7Lm
 XdysAYeqYy5MSnD1eXmwP6ZSy/8C64uyDG4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLIsWRmVeSWpSXmKPExsVy+t/xu7pVAlfjDDYeZbLYOGM9q8WkdQeY
 LG427mayONOda3Hz0ApGi02Pr7FaXN41h83i0NS9jBZrj9xlt3j44Aarxep/pxgtPkz4z2Tx
 Z/9PFovNm6YyO/B5XL52kdljdsNFFo+/q14weyzYVOqxaVUnm8eda3vYPN6dO8fusXlJvceE
 D2/ZPPq2rGL0+LxJLoA7Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
 JTUnsyy1SN8uQS/jasMSloJ/vBWrb3azNDBu4e5i5OCQEDCRuHuTs4uRi0NIYCmjRPfLP6wQ
 cSmJlXPTuxg5gUxhiT/Xutggap4ySkzrv8MEkmATcJToX3qCFSQhIvCXSeLgrNNgVcwC1xgl
 Nk44yQxSJSwQKLHr4npGEJtFQFVi59YzYN28AtYSmxt+M0KskJdoX76dDcTmFLCROHD6E1iN
 EFDN+2ndUPWCEidnPmEBuY5ZQF1i/TwhkDC/gJbEmqbrLCA2M9CY5q2zmScwCs1C0jELoWMW
 kqoFjMyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAqN627GfW3Ywdr0LPsQowMGoxMO74f6V
 OCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYjQFenMis5Rocj4w4eSVxBua
 GppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamA81vy4xZLJqHre9K8L+9NZ
 3KaolIhkNNuprS6fmfVTWzVsHt8bA/21+1ZbPtpn+1SsYyt3/485rOn/uwx8C4SW9z1hPnHi
 YW+QysI8payW2yVTezU91Y/LssouF3jH0tWa/erxKn35zAarzSpXvWoLXJVMYq8ebz9zo1Cj
 xvDeOWvNv322q5VYijMSDbWYi4oTAXE42OUAAwAA
X-CMS-MailID: 20200601142810eucas1p1767585cf172d26aedb551d7453aa7402
X-Msg-Generator: CA
X-RootMTR: 20200601142810eucas1p1767585cf172d26aedb551d7453aa7402
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200601142810eucas1p1767585cf172d26aedb551d7453aa7402
References: <20200601142754.26139-1-l.stelmach@samsung.com>
 <CGME20200601142810eucas1p1767585cf172d26aedb551d7453aa7402@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_072812_693266_F489108A 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
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

TW92ZSB0aGUgZGVmaW5pdGlvbiBvZiBtYWxsb2MgcG9vbCBzaXplIG9mIHRoZSBkZWNvbXByZXNz
b3IgdG8KYSBzaW5nbGUgcGxhY2UuIFRoaXMgdmFsdWUgd2lsbCBiZSBleHBvc2VkIGxhdGVyIGZv
ciBrZXhlY19maWxlIGxvYWRlci4KClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwu
c3RlbG1hY2hAc2Ftc3VuZy5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2Vm
aWxlIHwgMiArKwogYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2hlYWQuUyAgIHwgNiArKysrLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jvb3Qv
Y29tcHJlc3NlZC9NYWtlZmlsZQppbmRleCA5YzExZTc0OTAyOTIuLmIzNTk0Y2QxNTg4YyAxMDA2
NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlCisrKyBiL2FyY2gvYXJt
L2Jvb3QvY29tcHJlc3NlZC9NYWtlZmlsZQpAQCAtMTI1LDYgKzEyNSw4IEBAIEtCU1NfU1ogPSAk
KHNoZWxsIGVjaG8gJCQoKCQkKCQoTk0pICQob2JqKS8uLi8uLi8uLi8uLi92bWxpbnV4IHwgXAog
CQlzZWQgLW4gLWUgJ3MvXlwoW14gXSpcKSBbQUJdIF9fYnNzX3N0YXJ0JCQvLTB4XDEvcCcgXAog
CQkgICAgICAgLWUgJ3MvXlwoW14gXSpcKSBbQUJdIF9fYnNzX3N0b3AkJC8rMHhcMS9wJykgKSkg
KQogTERGTEFHU192bWxpbnV4ID0gLS1kZWZzeW0gX2tlcm5lbF9ic3Nfc2l6ZT0kKEtCU1NfU1op
CisjIG1hbGxvYyBwb29sIHNpemUKK0xERkxBR1Nfdm1saW51eCArPSAtLWRlZnN5bSBfbWFsbG9j
X3NpemU9MHgxMDAwMAogIyBTdXBwbHkgWlJFTEFERFIgdG8gdGhlIGRlY29tcHJlc3NvciB2aWEg
YSBsaW5rZXIgc3ltYm9sLgogaWZuZXEgKCQoQ09ORklHX0FVVE9fWlJFTEFERFIpLHkpCiBMREZM
QUdTX3ZtbGludXggKz0gLS1kZWZzeW0genJlbGFkZHI9JChaUkVMQUREUikKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9oZWFkLlMgYi9hcmNoL2FybS9ib290L2NvbXByZXNz
ZWQvaGVhZC5TCmluZGV4IGU4ZTFjODY2ZTQxMy4uZGNjMWFmYTYwZmI5IDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TCisrKyBiL2FyY2gvYXJtL2Jvb3QvY29tcHJl
c3NlZC9oZWFkLlMKQEAgLTMwOSw3ICszMDksOCBAQCByZXN0YXJ0OglhZHIJcjAsIExDMAogI2lm
bmRlZiBDT05GSUdfWkJPT1RfUk9NCiAJCS8qIG1hbGxvYyBzcGFjZSBpcyBhYm92ZSB0aGUgcmVs
b2NhdGVkIHN0YWNrICg2NGsgbWF4KSAqLwogCQlhZGQJc3AsIHNwLCByMAotCQlhZGQJcjEwLCBz
cCwgIzB4MTAwMDAKKwkJbGRyCXIxMCwgPV9tYWxsb2Nfc2l6ZQorCQlhZGQJcjEwLCByMTAsIHNw
CiAjZWxzZQogCQkvKgogCQkgKiBXaXRoIFpCT09UX1JPTSB0aGUgYnNzL3N0YWNrIGlzIG5vbiBy
ZWxvY2F0YWJsZSwKQEAgLTYyMyw3ICs2MjQsOCBAQCBub3RfcmVsb2NhdGVkOgltb3YJcjAsICMw
CiAgKi8KIAkJbW92CXIwLCByNAogCQltb3YJcjEsIHNwCQkJQCBtYWxsb2Mgc3BhY2UgYWJvdmUg
c3RhY2sKLQkJYWRkCXIyLCBzcCwgIzB4MTAwMDAJQCA2NGsgbWF4CisJCWxkcglyMiwgPV9tYWxs
b2Nfc2l6ZQlAIDY0ayBtYXgKKwkJYWRkCXIyLCByMiwgc3AKIAkJbW92CXIzLCByNwogCQlibAlk
ZWNvbXByZXNzX2tlcm5lbAogCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
