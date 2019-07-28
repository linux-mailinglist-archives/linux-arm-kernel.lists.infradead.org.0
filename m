Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2BF7825D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9nRg9ktsYrwSqgf0fKRE72h16JxX0IffRrETCsQdbSw=; b=mtOLR1OKkYr0aV
	OE4y9iAYMW29qhcAK55BYx/ki1kZVFoecIr+5v2zSbM6tMGahXD/4Ey7/wmCPWDCUGeatw+zh1/dg
	iO3uHkf/2gicjAiX6eaFYhvAv0K/e9D0UUkDyI+b8Dt9Fm3WGYMJT5BrwPEQEDrsYoEsk0HGJVyG6
	BDi/aWA27H7IQFDMCXa7kiTAlmGdjDT8QUCAO8ffNwJ3wQIjrG2slAWPCV6VYFB8vi4CXmNwIuU+K
	njLk6qiRoZs49tOIvP9FVH35Lv0JMCPaYukSbK9jDgfeQWknlFRQQ6+NTrMBhS20bRzZGBGnEptQh
	pmAu8GuPEpoALvvLke8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsg5-0004xV-HO; Sun, 28 Jul 2019 23:34:09 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsft-0004xE-WB
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:33:59 +0000
Received: by mail-wr1-f67.google.com with SMTP id n9so59901844wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:33:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aaEeKTG5R6Qc1GdziDtQYqZnD5RGAhr5gRU7LI7kaRU=;
 b=RZ7I3sYSSzUzwlZzBR9Zq3tBIFHg+V9mgE0H3oQYUKVF/oDHvVZYORLqfHSNw0jvRz
 F8hbJrZBb8zUs8KbCQvzGXJsoqZ9xEIXrFeBSmZ1i4s0IVItbkXmu5AdOl6Sg4N9rF5W
 IkDkx1/bpVpUhNw1XFHc/W9wpyFjwN2FWlQNM99WS0W+I39WhKdM5GXe7FbgQP1zt4dU
 CjZMBM/SmTSCcClrff1sp/uTTnneXuUx7KVw0wR+2+nZJerPi0deXA1XXELJ8Sw4uPUs
 2druMUZvMtwjXCg7CoigMvX43++gdSoRcqkyFFsEO5RkLOPFg/5O5GxOcWRa2Fwe6hVt
 Xm/w==
X-Gm-Message-State: APjAAAUUtFk1aZXan6N/fdfpIV9b1dsnJO1EF5Jm52OGbta5fTLGUdG/
 hbSZln9xSD1tv5u0MkdpDLViBQ6H7U0=
X-Google-Smtp-Source: APXvYqw92NTMBLPsPb4QZTGuO9U/NuPamS1jjyCN0NB7ONLDo7yL5jkx3vA9VzVTsdLSGSGyi5CJjQ==
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr44021854wrk.229.1564356836523; 
 Sun, 28 Jul 2019 16:33:56 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id c1sm136666630wrh.1.2019.07.28.16.33.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:33:55 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: vgic-v3: mark expected switch fall-through
Date: Mon, 29 Jul 2019 01:33:47 +0200
Message-Id: <20190728233347.7856-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_163358_039387_C7CB22AB 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gs
CmZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmFyY2gvYXJtNjQva3ZtL2h5cC8uLi8uLi8u
Li8uLi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYzogSW4gZnVuY3Rpb24g4oCYX192Z2lj
X3YzX3NhdmVfYXByc+KAmToKYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4uL3ZpcnQva3Zt
L2FybS9oeXAvdmdpYy12My1zci5jOjM1MToyNDogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGNwdV9pZi0+dmdpY19h
cDByWzJdID0gX192Z2ljX3YzX3JlYWRfYXAwcm4oMik7CiAgIH5+fn5+fn5+fn5+fn5+fn5+fn5+
fl5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4u
L3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM1MjoyOiBub3RlOiBoZXJlCiAgY2FzZSA2
OgogIF5+fn4KYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4uL3ZpcnQva3ZtL2FybS9oeXAv
dmdpYy12My1zci5jOjM1MzoyNDogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhy
b3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGNwdV9pZi0+dmdpY19hcDByWzFdID0g
X192Z2ljX3YzX3JlYWRfYXAwcm4oMSk7CiAgIH5+fn5+fn5+fn5+fn5+fn5+fn5+fl5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4uL3ZpcnQva3Zt
L2FybS9oeXAvdmdpYy12My1zci5jOjM1NDoyOiBub3RlOiBoZXJlCiAgZGVmYXVsdDoKICBefn5+
fn5+CmFyY2gvYXJtNjQva3ZtL2h5cC8uLi8uLi8uLi8uLi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMt
djMtc3IuYzozNjE6MjQ6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2gg
Wy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBjcHVfaWYtPnZnaWNfYXAxclsyXSA9IF9fdmdp
Y192M19yZWFkX2FwMXJuKDIpOwogICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5efn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CmFyY2gvYXJtNjQva3ZtL2h5cC8uLi8uLi8uLi8uLi92aXJ0L2t2bS9hcm0v
aHlwL3ZnaWMtdjMtc3IuYzozNjI6Mjogbm90ZTogaGVyZQogIGNhc2UgNjoKICBefn5+CmFyY2gv
YXJtNjQva3ZtL2h5cC8uLi8uLi8uLi8uLi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYzoz
NjM6MjQ6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGlj
aXQtZmFsbHRocm91Z2g9XQogICBjcHVfaWYtPnZnaWNfYXAxclsxXSA9IF9fdmdpY192M19yZWFk
X2FwMXJuKDEpOwogICB+fn5+fn5+fn5+fn5+fn5+fn5+fn5efn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+CmFyY2gvYXJtNjQva3ZtL2h5cC8uLi8uLi8uLi8uLi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMt
djMtc3IuYzozNjQ6Mjogbm90ZTogaGVyZQogIGRlZmF1bHQ6CiAgXn5+fn5+fgphcmNoL2FybTY0
L2t2bS9oeXAvLi4vLi4vLi4vLi4vdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmM6IEluIGZ1
bmN0aW9uIOKAmF9fdmdpY192M19yZXN0b3JlX2FwcnPigJk6CmFyY2gvYXJtNjQva3ZtL2h5cC8u
Li8uLi8uLi8uLi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYzozODQ6Mzogd2FybmluZzog
dGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1d
CiAgIF9fdmdpY192M193cml0ZV9hcDBybihjcHVfaWYtPnZnaWNfYXAwclsyXSwgMik7CiAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KYXJjaC9hcm02NC9r
dm0vaHlwLy4uLy4uLy4uLy4uL3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM4NToyOiBu
b3RlOiBoZXJlCiAgY2FzZSA2OgogIF5+fn4KYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4u
L3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM4NjozOiB3YXJuaW5nOiB0aGlzIHN0YXRl
bWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgX192Z2lj
X3YzX3dyaXRlX2FwMHJuKGNwdV9pZi0+dmdpY19hcDByWzFdLCAxKTsKICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgphcmNoL2FybTY0L2t2bS9oeXAvLi4v
Li4vLi4vLi4vdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmM6Mzg3OjI6IG5vdGU6IGhlcmUK
ICBkZWZhdWx0OgogIF5+fn5+fn4KYXJjaC9hcm02NC9rdm0vaHlwLy4uLy4uLy4uLy4uL3ZpcnQv
a3ZtL2FybS9oeXAvdmdpYy12My1zci5jOjM5NDozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbCB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICAgX192Z2ljX3YzX3dy
aXRlX2FwMXJuKGNwdV9pZi0+dmdpY19hcDFyWzJdLCAyKTsKICAgXn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgphcmNoL2FybTY0L2t2bS9oeXAvLi4vLi4vLi4v
Li4vdmlydC9rdm0vYXJtL2h5cC92Z2ljLXYzLXNyLmM6Mzk1OjI6IG5vdGU6IGhlcmUKICBjYXNl
IDY6CiAgXn5+fgphcmNoL2FybTY0L2t2bS9oeXAvLi4vLi4vLi4vLi4vdmlydC9rdm0vYXJtL2h5
cC92Z2ljLXYzLXNyLmM6Mzk2OjM6IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRo
cm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICBfX3ZnaWNfdjNfd3JpdGVfYXAxcm4o
Y3B1X2lmLT52Z2ljX2FwMXJbMV0sIDEpOwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+CmFyY2gvYXJtNjQva3ZtL2h5cC8uLi8uLi8uLi8uLi92aXJ0L2t2
bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYzozOTc6Mjogbm90ZTogaGVyZQogIGRlZmF1bHQ6CiAgXn5+
fn5+fgoKU2lnbmVkLW9mZi1ieTogTWF0dGVvIENyb2NlIDxtY3JvY2VAcmVkaGF0LmNvbT4KLS0t
CiB2aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMt
djMtc3IuYyBiL3ZpcnQva3ZtL2FybS9oeXAvdmdpYy12My1zci5jCmluZGV4IDI1NGM1ZjE5MGEz
ZC4uNjIyZmI0ZDE4YzVjIDEwMDY0NAotLS0gYS92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3Iu
YworKysgYi92aXJ0L2t2bS9hcm0vaHlwL3ZnaWMtdjMtc3IuYwpAQCAtMzQ5LDggKzM0OSwxMCBA
QCB2b2lkIF9faHlwX3RleHQgX192Z2ljX3YzX3NhdmVfYXBycyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZj
cHUpCiAJY2FzZSA3OgogCQljcHVfaWYtPnZnaWNfYXAwclszXSA9IF9fdmdpY192M19yZWFkX2Fw
MHJuKDMpOwogCQljcHVfaWYtPnZnaWNfYXAwclsyXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDIp
OworCQkvKiBmYWxsdGhyb3VnaCAqLwogCWNhc2UgNjoKIAkJY3B1X2lmLT52Z2ljX2FwMHJbMV0g
PSBfX3ZnaWNfdjNfcmVhZF9hcDBybigxKTsKKwkJLyogZmFsbHRocm91Z2ggKi8KIAlkZWZhdWx0
OgogCQljcHVfaWYtPnZnaWNfYXAwclswXSA9IF9fdmdpY192M19yZWFkX2FwMHJuKDApOwogCX0K
QEAgLTM1OSw4ICszNjEsMTAgQEAgdm9pZCBfX2h5cF90ZXh0IF9fdmdpY192M19zYXZlX2FwcnMo
c3RydWN0IGt2bV92Y3B1ICp2Y3B1KQogCWNhc2UgNzoKIAkJY3B1X2lmLT52Z2ljX2FwMXJbM10g
PSBfX3ZnaWNfdjNfcmVhZF9hcDFybigzKTsKIAkJY3B1X2lmLT52Z2ljX2FwMXJbMl0gPSBfX3Zn
aWNfdjNfcmVhZF9hcDFybigyKTsKKwkJLyogZmFsbHRocm91Z2ggKi8KIAljYXNlIDY6CiAJCWNw
dV9pZi0+dmdpY19hcDFyWzFdID0gX192Z2ljX3YzX3JlYWRfYXAxcm4oMSk7CisJCS8qIGZhbGx0
aHJvdWdoICovCiAJZGVmYXVsdDoKIAkJY3B1X2lmLT52Z2ljX2FwMXJbMF0gPSBfX3ZnaWNfdjNf
cmVhZF9hcDFybigwKTsKIAl9CkBAIC0zODIsOCArMzg2LDEwIEBAIHZvaWQgX19oeXBfdGV4dCBf
X3ZnaWNfdjNfcmVzdG9yZV9hcHJzKHN0cnVjdCBrdm1fdmNwdSAqdmNwdSkKIAljYXNlIDc6CiAJ
CV9fdmdpY192M193cml0ZV9hcDBybihjcHVfaWYtPnZnaWNfYXAwclszXSwgMyk7CiAJCV9fdmdp
Y192M193cml0ZV9hcDBybihjcHVfaWYtPnZnaWNfYXAwclsyXSwgMik7CisJCS8qIGZhbGx0aHJv
dWdoICovCiAJY2FzZSA2OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAwcm4oY3B1X2lmLT52Z2ljX2Fw
MHJbMV0sIDEpOworCQkvKiBmYWxsdGhyb3VnaCAqLwogCWRlZmF1bHQ6CiAJCV9fdmdpY192M193
cml0ZV9hcDBybihjcHVfaWYtPnZnaWNfYXAwclswXSwgMCk7CiAJfQpAQCAtMzkyLDggKzM5OCwx
MCBAQCB2b2lkIF9faHlwX3RleHQgX192Z2ljX3YzX3Jlc3RvcmVfYXBycyhzdHJ1Y3Qga3ZtX3Zj
cHUgKnZjcHUpCiAJY2FzZSA3OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1X2lmLT52Z2lj
X2FwMXJbM10sIDMpOwogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1X2lmLT52Z2ljX2FwMXJb
Ml0sIDIpOworCQkvKiBmYWxsdGhyb3VnaCAqLwogCWNhc2UgNjoKIAkJX192Z2ljX3YzX3dyaXRl
X2FwMXJuKGNwdV9pZi0+dmdpY19hcDFyWzFdLCAxKTsKKwkJLyogZmFsbHRocm91Z2ggKi8KIAlk
ZWZhdWx0OgogCQlfX3ZnaWNfdjNfd3JpdGVfYXAxcm4oY3B1X2lmLT52Z2ljX2FwMXJbMF0sIDAp
OwogCX0KLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
