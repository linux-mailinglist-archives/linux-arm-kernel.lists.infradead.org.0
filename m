Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FE87822A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 00:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ki626QeOeNqzFngVzvIBSib/xhJoWV9i4uT9FvAlGB4=; b=VayH2Wpus2Ol/6
	jY1lnAnojEiQY8+KfGzMVwylLKXAa3zAo2EJvnbY2NNUguO3z56OOmBKrUz21f6q/50JkN3xct3UW
	wFiyaTnBI+YN/roR97iO6hOwvqDnOoXm94fJ+5l4nJvC55iP0VY33urobCp6ZVDdgOnYaCe3ygg+n
	si7i7wSV6IqOcI/pdpa9tvzeWm2sU7gRhSknPE9Eqf7rELDdSiCRrOqJGpGPGKQPNCjTy1YIEzvi9
	E5YXVcgXGf8UxTE13MV/zDpeWorM7X2ZcVPOVy5nzf3Cet4C9YBbDnvdT0L6bL5A3PDhjG1zLHnve
	f9d2LXQu13VHvNS+obIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrs2l-0007uP-OO; Sun, 28 Jul 2019 22:53:31 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrs2a-0007th-RU
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 22:53:22 +0000
Received: by mail-wr1-f67.google.com with SMTP id g17so59747772wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 15:53:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ftGcDLnR4imQmQ+UkOat+KWbwwjELLyC+CYKk4KZ2MI=;
 b=bbFMzStlum9xNq8SpWD8ON2n0vdGLW2lMz+5Co7TKuMPvk1R17+njuW0vPoTx2GfKF
 xQE9rp7DqLgtQ1rufga93ja8afM+zQ1VgZs+j+FPdTcHSAjZJgEKv8Zuc6+TXr7Lmet+
 nQq/LC+BRVNK5DyCRu0GjEmWueTY8X4JX8PDX5iwKuRfdRa46f/cTDSVNd5QVP2ZSwJH
 osrFXZO53o5TXqu73mvYAV9U8tlCNBkm6/NLbK/cegN+Ef/JwX4FbOUZzAk9ZzWkurZI
 +czw57DU6Ore3yMqc2x2btk34O3e8xOgMiQYZ/Og5eRmGclg+FYKxbUjoq2OGeNVqNQG
 jALw==
X-Gm-Message-State: APjAAAW98KdTLB3AFGrohDa7IcwGWE+BCZ5SiVlKhm/Q5IFDiqQdZMkQ
 hMTRWafk8z6aOE50/KT0tEkkFQS9qUI=
X-Google-Smtp-Source: APXvYqzXz/uRYLBkINGQsD6hev7BbnvXZn0rdIH9tudJoRoTw/rjgcK0VY1Im/N583+KNY1tUym6uQ==
X-Received: by 2002:a5d:4212:: with SMTP id
 n18mr112558387wrq.261.1564354397866; 
 Sun, 28 Jul 2019 15:53:17 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id q193sm45278109wme.8.2019.07.28.15.53.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 15:53:17 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: mark expected switch fall-through
Date: Mon, 29 Jul 2019 00:53:11 +0200
Message-Id: <20190728225311.5414-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_155320_897304_DC31FAB8 
X-CRM114-Status: UNSURE (   7.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gs
CmZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2Fy
Y2gvYXJtNjQvaW5jbHVkZS9hc20va3ZtX2VtdWxhdGUuaDoxOSwKICAgICAgICAgICAgICAgICBm
cm9tIGFyY2gvYXJtNjQva3ZtL3JlZ21hcC5jOjEzOgphcmNoL2FybTY0L2t2bS9yZWdtYXAuYzog
SW4gZnVuY3Rpb24g4oCYdmNwdV93cml0ZV9zcHNyMzLigJk6Ci4vYXJjaC9hcm02NC9pbmNsdWRl
L2FzbS9rdm1faHlwLmg6MzE6Mzogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwgdGhy
b3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgIGFzbSB2b2xhdGlsZShBTFRFUk5BVElW
RShfX21zcl9zKHIjI252aCwgIiV4MCIpLCBcCiAgIF5+fgouL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20va3ZtX2h5cC5oOjQ2OjMxOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYd3JpdGVf
c3lzcmVnX2VseOKAmQogI2RlZmluZSB3cml0ZV9zeXNyZWdfZWwxKHYscikgd3JpdGVfc3lzcmVn
X2VseCh2LCByLCBfRUwxLCBfRUwxMikKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+
fn5+fn5+fn5+fn5+fn4KYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTgwOjM6IG5vdGU6IGluIGV4
cGFuc2lvbiBvZiBtYWNybyDigJh3cml0ZV9zeXNyZWdfZWwx4oCZCiAgIHdyaXRlX3N5c3JlZ19l
bDEodiwgU1lTX1NQU1IpOwogICBefn5+fn5+fn5+fn5+fn5+CmFyY2gvYXJtNjQva3ZtL3JlZ21h
cC5jOjE4MToyOiBub3RlOiBoZXJlCiAgY2FzZSBLVk1fU1BTUl9BQlQ6CiAgXn5+fgpJbiBmaWxl
IGluY2x1ZGVkIGZyb20gLi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdXR5cGUuaDoxMzIsCiAg
ICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY2FjaGUuaDo4LAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2NhY2hlLmg6NiwKICAgICAgICAg
ICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9wcmludGsuaDo5LAogICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjE1LAogICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjE4LAogICAgICAgICAgICAgICAgIGZyb20gLi9h
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2J1Zy5oOjI2LAogICAgICAgICAgICAgICAgIGZyb20gLi9p
bmNsdWRlL2xpbnV4L2J1Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGlu
dXgvbW1kZWJ1Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvbW0u
aDo5LAogICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTE6Ci4v
YXJjaC9hcm02NC9pbmNsdWRlL2FzbS9zeXNyZWcuaDo4Mzc6Mjogd2FybmluZzogdGhpcyBzdGF0
ZW1lbnQgbWF5IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCiAgYXNtIHZv
bGF0aWxlKCJtc3IgIiBfX3N0cmluZ2lmeShyKSAiLCAleDAiICBcCiAgXn5+CmFyY2gvYXJtNjQv
a3ZtL3JlZ21hcC5jOjE4MjozOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYd3JpdGVf
c3lzcmVn4oCZCiAgIHdyaXRlX3N5c3JlZyh2LCBzcHNyX2FidCk7CiAgIF5+fn5+fn5+fn5+fgph
cmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxODM6Mjogbm90ZTogaGVyZQogIGNhc2UgS1ZNX1NQU1Jf
VU5EOgogIF5+fn4KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2Fz
bS9jcHV0eXBlLmg6MTMyLAogICAgICAgICAgICAgICAgIGZyb20gLi9hcmNoL2FybTY0L2luY2x1
ZGUvYXNtL2NhY2hlLmg6OCwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9j
YWNoZS5oOjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvcHJpbnRrLmg6
OSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9rZXJuZWwuaDoxNSwKICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9hc20tZ2VuZXJpYy9idWcuaDoxOCwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9idWcuaDoyNiwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9idWcuaDo1LAogICAgICAgICAgICAgICAg
IGZyb20gLi9pbmNsdWRlL2xpbnV4L21tZGVidWcuaDo1LAogICAgICAgICAgICAgICAgIGZyb20g
Li9pbmNsdWRlL2xpbnV4L21tLmg6OSwKICAgICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQv
a3ZtL3JlZ21hcC5jOjExOgouL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3lzcmVnLmg6ODM3OjI6
IHdhcm5pbmc6IHRoaXMgc3RhdGVtZW50IG1heSBmYWxsIHRocm91Z2ggWy1XaW1wbGljaXQtZmFs
bHRocm91Z2g9XQogIGFzbSB2b2xhdGlsZSgibXNyICIgX19zdHJpbmdpZnkocikgIiwgJXgwIiAg
XAogIF5+fgphcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxODQ6Mzogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvIOKAmHdyaXRlX3N5c3JlZ+KAmQogICB3cml0ZV9zeXNyZWcodiwgc3Bzcl91bmQp
OwogICBefn5+fn5+fn5+fn4KYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTg1OjI6IG5vdGU6IGhl
cmUKICBjYXNlIEtWTV9TUFNSX0lSUToKICBefn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuL2Fy
Y2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1dHlwZS5oOjEzMiwKICAgICAgICAgICAgICAgICBmcm9t
IC4vYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jYWNoZS5oOjgsCiAgICAgICAgICAgICAgICAgZnJv
bSAuL2luY2x1ZGUvbGludXgvY2FjaGUuaDo2LAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNs
dWRlL2xpbnV4L3ByaW50ay5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGlu
dXgva2VybmVsLmg6MTUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvYXNtLWdlbmVy
aWMvYnVnLmg6MTgsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gvYXJtNjQvaW5jbHVkZS9h
c20vYnVnLmg6MjYsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6
NSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tbWRlYnVnLmg6NSwKICAg
ICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tbS5oOjksCiAgICAgICAgICAgICAg
ICAgZnJvbSBhcmNoL2FybTY0L2t2bS9yZWdtYXAuYzoxMToKLi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL3N5c3JlZy5oOjgzNzoyOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJv
dWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KICBhc20gdm9sYXRpbGUoIm1zciAiIF9fc3Ry
aW5naWZ5KHIpICIsICV4MCIgIFwKICBefn4KYXJjaC9hcm02NC9rdm0vcmVnbWFwLmM6MTg2OjM6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJh3cml0ZV9zeXNyZWfigJkKICAgd3JpdGVf
c3lzcmVnKHYsIHNwc3JfaXJxKTsKICAgXn5+fn5+fn5+fn5+CmFyY2gvYXJtNjQva3ZtL3JlZ21h
cC5jOjE4NzoyOiBub3RlOiBoZXJlCiAgY2FzZSBLVk1fU1BTUl9GSVE6CiAgXn5+fgoKU2lnbmVk
LW9mZi1ieTogTWF0dGVvIENyb2NlIDxtY3JvY2VAcmVkaGF0LmNvbT4KLS0tCiBhcmNoL2FybTY0
L2t2bS9yZWdtYXAuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva3ZtL3JlZ21hcC5jIGIvYXJjaC9hcm02NC9rdm0vcmVn
bWFwLmMKaW5kZXggMGQ2MGU0ZjBhZjY2Li5iMzc2YjJmZGJmNTEgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQva3ZtL3JlZ21hcC5jCisrKyBiL2FyY2gvYXJtNjQva3ZtL3JlZ21hcC5jCkBAIC0xNzgs
MTIgKzE3OCwxNiBAQCB2b2lkIHZjcHVfd3JpdGVfc3BzcjMyKHN0cnVjdCBrdm1fdmNwdSAqdmNw
dSwgdW5zaWduZWQgbG9uZyB2KQogCXN3aXRjaCAoc3Bzcl9pZHgpIHsKIAljYXNlIEtWTV9TUFNS
X1NWQzoKIAkJd3JpdGVfc3lzcmVnX2VsMSh2LCBTWVNfU1BTUik7CisJCS8qIGZhbGx0aHJvdWdo
ICovCiAJY2FzZSBLVk1fU1BTUl9BQlQ6CiAJCXdyaXRlX3N5c3JlZyh2LCBzcHNyX2FidCk7CisJ
CS8qIGZhbGx0aHJvdWdoICovCiAJY2FzZSBLVk1fU1BTUl9VTkQ6CiAJCXdyaXRlX3N5c3JlZyh2
LCBzcHNyX3VuZCk7CisJCS8qIGZhbGx0aHJvdWdoICovCiAJY2FzZSBLVk1fU1BTUl9JUlE6CiAJ
CXdyaXRlX3N5c3JlZyh2LCBzcHNyX2lycSk7CisJCS8qIGZhbGx0aHJvdWdoICovCiAJY2FzZSBL
Vk1fU1BTUl9GSVE6CiAJCXdyaXRlX3N5c3JlZyh2LCBzcHNyX2ZpcSk7CiAJfQotLSAKMi4yMS4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
