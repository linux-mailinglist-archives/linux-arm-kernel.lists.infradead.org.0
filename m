Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C483ED175
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 02:39:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FezUxeE+aIP2Rgi9f/YGM5b//F0tdE5am+btJdHrTQk=; b=gK2j9AvuIz253q
	ZAagcNuk0RT3Wj3Z6ks2smZRvj+fpnUeHtr3GmqfLK1l4nPhmNHymzbA4yDSTBxv2oxFN1l5U+Liq
	DqYSd8CQE6ialIV+7739pDDOtf1AlRy5Bi7AltskQR+CxQF8MJ0fcLlh9/pVkr2syEyp7XkoHI6ol
	o5UzwA6SrWZpB6ilV5KJra17lXLHYrXQdhrInifpaYmKZORqw9HuDvSuyl5swQe+Y3ogqbKey0yCq
	Eb9Zml3etj1TOtF7m+hjw2UAh1+3ZPN809z6zrAp+F0FN9i/pT3zVxhCNb2g13itOHMrvfufCm+oe
	isyG0adCAgobLs4+Eesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iR4rQ-000761-5w; Sun, 03 Nov 2019 01:39:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iR4pB-0004wc-VK; Sun, 03 Nov 2019 01:37:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B597CB30C;
 Sun,  3 Nov 2019 01:36:56 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: linux-realtek-soc@lists.infradead.org
Subject: [RFC 10/11] soc: realtek: chip: Detect RTD1294
Date: Sun,  3 Nov 2019 02:36:44 +0100
Message-Id: <20191103013645.9856-11-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191103013645.9856-1-afaerber@suse.de>
References: <20191103013645.9856-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_183702_191107_94B8BCC2 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGV0ZWN0aW9uIGxvZ2ljIGZyb20gZG93bnN0cmVhbSBpbmNsdWRlL3NvYy9yZWFsdGVrL3J0ZDEy
OXhfY3B1LmguCgpTaWduZWQtb2ZmLWJ5OiBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVyQHN1c2Uu
ZGU+Ci0tLQogZHJpdmVycy9zb2MvcmVhbHRlay9jaGlwLmMgfCA4ICsrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvcmVhbHRl
ay9jaGlwLmMgYi9kcml2ZXJzL3NvYy9yZWFsdGVrL2NoaXAuYwppbmRleCBmNGIyNmZiMDQ4Yzcu
LmUxMzMzOWE0Y2EyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlwLmMKKysr
IGIvZHJpdmVycy9zb2MvcmVhbHRlay9jaGlwLmMKQEAgLTU0LDYgKzU0LDE0IEBAIHN0YXRpYyBj
b25zdCBjaGFyICpydGQxMjk1X25hbWUoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBzdHJ1Y3Qg
cnRkX3NvYyAqcykKIHsKIAl2b2lkIF9faW9tZW0gKmJhc2U7CiAKKwliYXNlID0gb2ZfaW9tYXAo
ZGV2LT5vZl9ub2RlLCAyKTsKKwlpZiAoYmFzZSkgeworCQl1MzIgZWZ1c2UgPSByZWFkbF9yZWxh
eGVkKGJhc2UpOworCQlpb3VubWFwKGJhc2UpOworCQlpZiAoKGVmdXNlICYgMHgzKSA9PSAweDEp
CisJCQlyZXR1cm4gIlJURDEyOTQiOworCX0KKwogCWJhc2UgPSBvZl9pb21hcChkZXYtPm9mX25v
ZGUsIDEpOwogCWlmIChiYXNlKSB7CiAJCXUzMiBjaGlwaW5mbzEgPSByZWFkbF9yZWxheGVkKGJh
c2UpOwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
