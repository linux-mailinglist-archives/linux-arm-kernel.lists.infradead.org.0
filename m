Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CC27825A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tLMo8g2+xe0BaSu4d8N58ij/gPILFOiHgkRc3ujDe84=; b=Yij58mF54PgnNM
	w9elnSC3069zJLeStDRtfcuNVZbCbBt7piSPnJnj7qGwj3eyMul1CtbrCEn9SvM/5NGFcTUPEyAu8
	U5r8MQeqmr3XVQalBcIDwfNTjbNmjsR8vup7seY6SD5YHNiC/XXOeV8lzBLECR+dXIAcoZIs8vZK6
	AXtRG50q8+0AB8uE62eBUMeNAfAX1PpncXjf+ZzqFs6LB0WxG9P9YYk+U5QY1Tu7WYxDrG6uU4Q0n
	XOP3PQIH+IATEq1ouqZ/IXnxRteyGM9Nvj7PCizd1otLy/ChqdtXBhirWc63NS+JDAI28QoH0Ze4G
	YZDwStrBUJp626p5UGfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsZc-0003KK-6a; Sun, 28 Jul 2019 23:27:28 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsZP-0003Jz-Io
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:27:16 +0000
Received: by mail-wr1-f66.google.com with SMTP id g17so59788219wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:27:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CDFX7cmqBbGxd3S+PHtfPokRI/hCi8zxl2i1XDeVF5A=;
 b=boeXrTSkPOvLh46PhmvUifcDwBr5LC2HFiK4hihtKt0B0lu7Q9G8bE24VH5MLJCu2M
 kmVdqvuDOdoSgMnsxHAuGkCW+ZicnxXWd3d9NpVUlUkYLFQtak/PvFmhrEGvAb5ZOLiL
 O+sESOKdm11s0fsWTsEItUpqMjblj57/PrBUFb6QYnNR9clcWbri9pbbB1FQIln3RA87
 85LJ3dYsyt3WUc4GeYmv+MMVLD3Gq49CjNSq+rL92BMtyaho845Q/9snCsryEPpNK3Ze
 upUGdWL5McurVxhl1+aLdvdsa7jdN7jNS4/UxxV0Az7fV5j5pRf9FIEoSBYHtCernCtU
 e8OQ==
X-Gm-Message-State: APjAAAWzdjciGxHreZt1k2XT5rjyRrsbIaV7SKTd6NKgZkLAlTOQdHWN
 go/Ejc8GCMUs0ZczliDqiggvX59QvEA=
X-Google-Smtp-Source: APXvYqwbGg1c6DE/fHerM+Cvhn2kZX5UU+f9UqfzQyc2lvseyUAQVt6FWzZleWaiLpZ13cuB2B3vOg==
X-Received: by 2002:a5d:4a49:: with SMTP id v9mr113674213wrs.44.1564356434100; 
 Sun, 28 Jul 2019 16:27:14 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id t6sm65373267wmb.29.2019.07.28.16.27.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:27:13 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: hw_breakpoint: mark expected switch fall-through
Date: Mon, 29 Jul 2019 01:27:06 +0200
Message-Id: <20190728232706.7396-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_162715_631831_0D8B0943 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gs
CmZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCiAgQ0MgICAgICBhcmNoL2FybTY0L2tlcm5l
bC9od19icmVha3BvaW50Lm8KYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jOiBJbiBm
dW5jdGlvbiDigJhod19icmVha3BvaW50X2FyY2hfcGFyc2XigJk6CmFyY2gvYXJtNjQva2VybmVs
L2h3X2JyZWFrcG9pbnQuYzo1NDA6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwg
dGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgICBpZiAoaHctPmN0cmwubGVuID09
IEFSTV9CUkVBS1BPSU5UX0xFTl8xKQogICAgICAgXgphcmNoL2FybTY0L2tlcm5lbC9od19icmVh
a3BvaW50LmM6NTQyOjM6IG5vdGU6IGhlcmUKICAgY2FzZSAyOgogICBefn5+CmFyY2gvYXJtNjQv
a2VybmVsL2h3X2JyZWFrcG9pbnQuYzo1NDQ6Nzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgICBpZiAoaHctPmN0cmwu
bGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8yKQogICAgICAgXgphcmNoL2FybTY0L2tlcm5lbC9o
d19icmVha3BvaW50LmM6NTQ2OjM6IG5vdGU6IGhlcmUKICAgZGVmYXVsdDoKICAgXn5+fn5+fgoK
U2lnbmVkLW9mZi1ieTogTWF0dGVvIENyb2NlIDxtY3JvY2VAcmVkaGF0LmNvbT4KLS0tCiBhcmNo
L2FybTY0L2tlcm5lbC9od19icmVha3BvaW50LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2lu
dC5jIGIvYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jCmluZGV4IGRjZWI4NDUyMDk0
OC4uN2Q4NDY5ODViMTMzIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9od19icmVha3Bv
aW50LmMKKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvaHdfYnJlYWtwb2ludC5jCkBAIC01MzksMTAg
KzUzOSwxMiBAQCBpbnQgaHdfYnJlYWtwb2ludF9hcmNoX3BhcnNlKHN0cnVjdCBwZXJmX2V2ZW50
ICpicCwKIAkJCS8qIEFsbG93IHNpbmdsZSBieXRlIHdhdGNocG9pbnQuICovCiAJCQlpZiAoaHct
PmN0cmwubGVuID09IEFSTV9CUkVBS1BPSU5UX0xFTl8xKQogCQkJCWJyZWFrOworCQkJLyogZmFs
bHRocm91Z2ggKi8KIAkJY2FzZSAyOgogCQkJLyogQWxsb3cgaGFsZndvcmQgd2F0Y2hwb2ludHMg
YW5kIGJyZWFrcG9pbnRzLiAqLwogCQkJaWYgKGh3LT5jdHJsLmxlbiA9PSBBUk1fQlJFQUtQT0lO
VF9MRU5fMikKIAkJCQlicmVhazsKKwkJCS8qIGZhbGx0aHJvdWdoICovCiAJCWRlZmF1bHQ6CiAJ
CQlyZXR1cm4gLUVJTlZBTDsKIAkJfQotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
