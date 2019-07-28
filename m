Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B1078247
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OoveTOCeZZ73I3CioyJgOZMeC2iRUxixj2bjgr+Dv8o=; b=mj3ATfR7uXuf7k
	+tkOjrQdKN+NOLb356+7Qm7r2ODKTLHXvyP6L2qfXg21LT9BKoOgNyQ0dhjIRIshoy0oTaNCPZXBt
	DgToOiLQqDxpiCnK874UAhwFHc4owTx42/GPESdGDTiwvsuJDja0gmiaZn7NZFSlyclUQoOLX8j8B
	Sn/8exKN40Mw8xb0EdCrU/R0HyG4TGYJyySMqVPC0gRWbxXpITX//Myexgs7QUMcg0x/ngm0Y/i0Y
	pXwPwZWUS54X+TZVdLJUXijRdU6t5NiAzQS82DBllMBOW212fruXOGIUaOuwb+deylbw6tUv2Ysct
	I3yi1gzKCGJf7AYQQZ0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsKT-00063R-V5; Sun, 28 Jul 2019 23:11:49 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsKI-00062m-F5
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:11:39 +0000
Received: by mail-wm1-f67.google.com with SMTP id h19so41757426wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:11:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=42lghrV63bcshzCGKSHua5vo/hvXi8DHZoy6o0Cat9Y=;
 b=YWkZMQnmheNgJxsqq/fTv3zORc6SBI+BjokqmZWVh29SktIDWRlnFKT0DgBcxyeLqM
 8IS6wvCkSUdS1o5gUjt8NJyta01QPaPdV47FNZ3BBtgyfEv8a2OnKDhmAYFFW8EKlqXr
 6t0JSH2nssQLuypUOqCCUFC+4VUrxMHOG1+1+ZbiEkyz3ok6d6YevpQ33fEsC257fIsm
 9AdmHpqH8TOdPJqM6m2o0Mb3p7XLJcj6lNPDJ4578+/GtEVqCHeS3G8x4csIciMw0moo
 7NjWe90LXJMb2aK3xFB2Wlg9w9D7EqEwTIbXI1LvsyhUhGSrcbzIzDFNK+1YFvIgFEZ6
 LUIQ==
X-Gm-Message-State: APjAAAX41usAfVKt2GHMeR3aZW4Wmc564MzkBpADzMXVgpq89GuroU3b
 cNzi4vpSja6WxALjWDGDSD3v+hAnO+M=
X-Google-Smtp-Source: APXvYqxPo7htNk7ZRI5iDnM8YMA9X9gv9/VMPzCI4aNrd3OhZP9OppJEggWVfYxwOlqvknmBwBcY6A==
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr96083615wmg.152.1564355496144; 
 Sun, 28 Jul 2019 16:11:36 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id 4sm137778934wro.78.2019.07.28.16.11.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:11:35 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: module: mark expected switch fall-through
Date: Mon, 29 Jul 2019 01:11:32 +0200
Message-Id: <20190728231132.6367-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_161138_526433_8EC0A21D 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gs
CmZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmFyY2gvYXJtNjQva2VybmVsL21vZHVsZS5j
OiBJbiBmdW5jdGlvbiDigJhhcHBseV9yZWxvY2F0ZV9hZGTigJk6CmFyY2gvYXJtNjQva2VybmVs
L21vZHVsZS5jOjMxNjoxOTogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3Vn
aCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgICBvdmVyZmxvd19jaGVjayA9IGZhbHNlOwog
ICAgfn5+fn5+fn5+fn5+fn5+Xn5+fn5+fgphcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUuYzozMTc6
Mzogbm90ZTogaGVyZQogICBjYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNfRzA6CiAgIF5+fn4KYXJj
aC9hcm02NC9rZXJuZWwvbW9kdWxlLmM6MzIyOjE5OiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgIG92ZXJmbG93X2No
ZWNrID0gZmFsc2U7CiAgICB+fn5+fn5+fn5+fn5+fn5efn5+fn5+CmFyY2gvYXJtNjQva2VybmVs
L21vZHVsZS5jOjMyMzozOiBub3RlOiBoZXJlCiAgIGNhc2UgUl9BQVJDSDY0X01PVldfVUFCU19H
MToKICAgXn5+fgphcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUuYzozMjg6MTk6IHdhcm5pbmc6IHRo
aXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQog
ICAgb3ZlcmZsb3dfY2hlY2sgPSBmYWxzZTsKICAgIH5+fn5+fn5+fn5+fn5+fl5+fn5+fn4KYXJj
aC9hcm02NC9rZXJuZWwvbW9kdWxlLmM6MzI5OjM6IG5vdGU6IGhlcmUKICAgY2FzZSBSX0FBUkNI
NjRfTU9WV19VQUJTX0cyOgogICBefn5+CmFyY2gvYXJtNjQva2VybmVsL21vZHVsZS5jOjM5NTox
OTogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1m
YWxsdGhyb3VnaD1dCiAgICBvdmVyZmxvd19jaGVjayA9IGZhbHNlOwogICAgfn5+fn5+fn5+fn5+
fn5+Xn5+fn5+fgphcmNoL2FybTY0L2tlcm5lbC9tb2R1bGUuYzozOTY6Mzogbm90ZTogaGVyZQog
ICBjYXNlIFJfQUFSQ0g2NF9BRFJfUFJFTF9QR19ISTIxOgogICBefn5+CgpTaWduZWQtb2ZmLWJ5
OiBNYXR0ZW8gQ3JvY2UgPG1jcm9jZUByZWRoYXQuY29tPgotLS0KIGFyY2gvYXJtNjQva2VybmVs
L21vZHVsZS5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvbW9kdWxlLmMgYi9hcmNoL2FybTY0L2tlcm5lbC9t
b2R1bGUuYwppbmRleCA0NmU2NDNlMzA3MDguLmZmZDc2YjI5MWFmMiAxMDA2NDQKLS0tIGEvYXJj
aC9hcm02NC9rZXJuZWwvbW9kdWxlLmMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvbW9kdWxlLmMK
QEAgLTMxNCwxOCArMzE0LDIxIEBAIGludCBhcHBseV9yZWxvY2F0ZV9hZGQoRWxmNjRfU2hkciAq
c2VjaGRycywKIAkJLyogTU9WVyBpbnN0cnVjdGlvbiByZWxvY2F0aW9ucy4gKi8KIAkJY2FzZSBS
X0FBUkNINjRfTU9WV19VQUJTX0cwX05DOgogCQkJb3ZlcmZsb3dfY2hlY2sgPSBmYWxzZTsKKwkJ
CS8qIGZhbGx0aHJvdWdoICovCiAJCWNhc2UgUl9BQVJDSDY0X01PVldfVUFCU19HMDoKIAkJCW92
ZiA9IHJlbG9jX2luc25fbW92dyhSRUxPQ19PUF9BQlMsIGxvYywgdmFsLCAwLAogCQkJCQkgICAg
ICBBQVJDSDY0X0lOU05fSU1NX01PVktaKTsKIAkJCWJyZWFrOwogCQljYXNlIFJfQUFSQ0g2NF9N
T1ZXX1VBQlNfRzFfTkM6CiAJCQlvdmVyZmxvd19jaGVjayA9IGZhbHNlOworCQkJLyogZmFsbHRo
cm91Z2ggKi8KIAkJY2FzZSBSX0FBUkNINjRfTU9WV19VQUJTX0cxOgogCQkJb3ZmID0gcmVsb2Nf
aW5zbl9tb3Z3KFJFTE9DX09QX0FCUywgbG9jLCB2YWwsIDE2LAogCQkJCQkgICAgICBBQVJDSDY0
X0lOU05fSU1NX01PVktaKTsKIAkJCWJyZWFrOwogCQljYXNlIFJfQUFSQ0g2NF9NT1ZXX1VBQlNf
RzJfTkM6CiAJCQlvdmVyZmxvd19jaGVjayA9IGZhbHNlOworCQkJLyogZmFsbHRocm91Z2ggKi8K
IAkJY2FzZSBSX0FBUkNINjRfTU9WV19VQUJTX0cyOgogCQkJb3ZmID0gcmVsb2NfaW5zbl9tb3Z3
KFJFTE9DX09QX0FCUywgbG9jLCB2YWwsIDMyLAogCQkJCQkgICAgICBBQVJDSDY0X0lOU05fSU1N
X01PVktaKTsKQEAgLTM5Myw2ICszOTYsNyBAQCBpbnQgYXBwbHlfcmVsb2NhdGVfYWRkKEVsZjY0
X1NoZHIgKnNlY2hkcnMsCiAJCQlicmVhazsKIAkJY2FzZSBSX0FBUkNINjRfQURSX1BSRUxfUEdf
SEkyMV9OQzoKIAkJCW92ZXJmbG93X2NoZWNrID0gZmFsc2U7CisJCQkvKiBmYWxsdGhyb3VnaCAq
LwogCQljYXNlIFJfQUFSQ0g2NF9BRFJfUFJFTF9QR19ISTIxOgogCQkJb3ZmID0gcmVsb2NfaW5z
bl9hZHJwKG1lLCBzZWNoZHJzLCBsb2MsIHZhbCk7CiAJCQlpZiAob3ZmICYmIG92ZiAhPSAtRVJB
TkdFKQotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
