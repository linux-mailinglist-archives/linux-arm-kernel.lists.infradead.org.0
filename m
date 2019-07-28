Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F1878238
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwuIASUjyYAmoSt2lR21J25yKFsMyQlDWUeis6Y7aR0=; b=OxUwT3/j7nNhgO
	z4Wz3vRRAPtn26g+jFGobNjZMPKdXGHixOgV8lM/97J3gA/vAxog7L3Fh4Umo07S5u1FbCZS4EAmd
	8AzeEpxLjJ85+5kO6mbHiEIwGwuOtL55qLcpFYqfGDudE6as7V9xzGvOq5YzojcLz5YTIPdC2Sl6F
	GhWfxj1R7h5RJZki4Nu9V3nRCc9ctQzR+mobXn3oMxvAs4eH75RqpUDZJ4Y7g1/rXj0QN3K9oSuR0
	AlFSuTJ5gDf6pgZ38cOGXIhGdyGWSZCGdp83IOpG9KHf4yCpC9BO/o6wltCMsPZap9DcIP2s48XYR
	NAs0VUjEd5EvxttkZ0PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsCM-0002sk-L1; Sun, 28 Jul 2019 23:03:26 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsCB-0002sR-97
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:03:16 +0000
Received: by mail-wr1-f67.google.com with SMTP id 31so59806779wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vHmOVMZ+hgbl6glGrYbyUU8RJ/uLOzhuRxz4ckuaKpY=;
 b=Uhtg6YeiV47Q23fS+ACF4XQlT6TSMv6MhBalMWyxEVSDCTmnpKNLe6IXoxioI8FGib
 4LjT/0ojiPLIXROP3am6RN7zi8UBek24PSL/3En5pxrEThiP7tVVsehLSC68onrBgDtP
 18/xcrh3RTGy6NvnsaAPdxlzixHqI03qF3t/3kkLHYYz8XYu3LYhvfbFDC6HQh82CWuv
 1jOTesfbPpkg5Opakqv3u9AZWsIT74VmPOh9DgjpVuK96zTBO1VgthoYir/cSQH23MLt
 wSz+rQ4+JGutddT3elWljb57Ffv8Hov/+GGN5ukspc/hfyqo9gKdqjY4eOPcybMNamiy
 ySlw==
X-Gm-Message-State: APjAAAWYL08Y6VQdXor8qgp0QjGzXDY99s2yI66kCXAyrq3/EK9zjs4R
 TscGTxvcUP3in+Y0yQVhAe+9Ifsr0Uk=
X-Google-Smtp-Source: APXvYqxmxi7OfpyaSbmUwwwfjLMUedXKpYPEq+qCCzw11VozDSYV1iAQnIiLCMRLbrHIaznWEibpiQ==
X-Received: by 2002:a5d:4e08:: with SMTP id p8mr39699881wrt.20.1564354993194; 
 Sun, 28 Jul 2019 16:03:13 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id v65sm66144369wme.31.2019.07.28.16.03.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:03:12 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mark expected switch fall-through
Date: Mon, 29 Jul 2019 01:03:10 +0200
Message-Id: <20190728230310.5924-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_160315_323415_2B198223 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TW92ZSB0aGUgImZhbGx0aHJvdWdoIiBjb21tZW50IGp1c3QgYmVjYXVzZSB0aGUgY2FzZSBrZXl3
b3JkLApmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmc6CgpJbiBmaWxlIGluY2x1ZGVkIGZyb20g
Li9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L2xpc3QuaDo5LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L2tvYmplY3QuaDoxOSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9vZi5o
OjE3LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2lycWRvbWFpbi5oOjM1
LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2FjcGkuaDoxMywKICAgICAg
ICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQva2VybmVsL3NtcC5jOjk6CmFyY2gvYXJtNjQva2Vy
bmVsL3NtcC5jOiBJbiBmdW5jdGlvbiDigJhfX2NwdV91cOKAmToKLi9pbmNsdWRlL2xpbnV4L3By
aW50ay5oOjMwMjoyOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFst
V2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICBwcmludGsoS0VSTl9DUklUIHByX2ZtdChmbXQpLCAj
I19fVkFfQVJHU19fKQogIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+CmFyY2gvYXJtNjQva2VybmVsL3NtcC5jOjE1Njo0OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYcHJfY3JpdOKAmQogICAgcHJfY3JpdCgiQ1BVJXU6IG1heSBub3QgaGF2ZSBzaHV0
IGRvd24gY2xlYW5seVxuIiwgY3B1KTsKICAgIF5+fn5+fn4KYXJjaC9hcm02NC9rZXJuZWwvc21w
LmM6MTU3OjM6IG5vdGU6IGhlcmUKICAgY2FzZSBDUFVfU1RVQ0tfSU5fS0VSTkVMOgogICBefn5+
CgpTaWduZWQtb2ZmLWJ5OiBNYXR0ZW8gQ3JvY2UgPG1jcm9jZUByZWRoYXQuY29tPgotLS0KIGFy
Y2gvYXJtNjQva2VybmVsL3NtcC5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvc21wLmMg
Yi9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYwppbmRleCBlYTkwZDNiZDkyNTMuLjAxOGEzM2UwMWIw
ZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvc21wLmMKKysrIGIvYXJjaC9hcm02NC9r
ZXJuZWwvc21wLmMKQEAgLTE1Miw4ICsxNTIsOCBAQCBpbnQgX19jcHVfdXAodW5zaWduZWQgaW50
IGNwdSwgc3RydWN0IHRhc2tfc3RydWN0ICppZGxlKQogCQkJCXByX2NyaXQoIkNQVSV1OiBkaWVk
IGR1cmluZyBlYXJseSBib290XG4iLCBjcHUpOwogCQkJCWJyZWFrOwogCQkJfQotCQkJLyogRmFs
bCB0aHJvdWdoICovCiAJCQlwcl9jcml0KCJDUFUldTogbWF5IG5vdCBoYXZlIHNodXQgZG93biBj
bGVhbmx5XG4iLCBjcHUpOworCQkJLyogRmFsbCB0aHJvdWdoICovCiAJCWNhc2UgQ1BVX1NUVUNL
X0lOX0tFUk5FTDoKIAkJCXByX2NyaXQoIkNQVSV1OiBpcyBzdHVjayBpbiBrZXJuZWxcbiIsIGNw
dSk7CiAJCQlpZiAoc3RhdHVzICYgQ1BVX1NUVUNLX1JFQVNPTl81Ml9CSVRfVkEpCi0tIAoyLjIx
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
