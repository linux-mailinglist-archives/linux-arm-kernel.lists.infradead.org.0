Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6585E7E8A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjmTgz50Nu32JmOu4SCt14RjByzsqShWSKWVv6Qmilg=; b=fArmsKMi7gnjyF
	OAJWx64F7FTZwGLuFfU1/tyI1KKGvCcPiRPKhINO080JwS/1sHvsoRouuvMKMO6EvFTkHBgJBBljV
	KY4ax5p54w2YTm46eSqMD194CEcce4kNvyCFiIjByoWJWorlwcz4WyCUj4X01KUjsKyBI/MTPi80l
	MDUlqPzryXmZoRP/g75vc/JRVBj0+PIcZdMNZt82hBIX78QsgJbpVYKcva1RCQNfBHuc163UEmljF
	P1GblEN3FZBqNhs/p9gvL55mx2NzI8nilQBX060VeMti+rOFwwT6wk6X8/gEKpOsNjXzv9QsdAI1E
	pplBWwncdM/U06QCAb3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNCh-0003Jr-9P; Fri, 02 Aug 2019 02:21:59 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNB4-0001br-Hu; Fri, 02 Aug 2019 02:20:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so29013289pgc.1;
 Thu, 01 Aug 2019 19:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8SOviSW3O4erJ4o/T7vOdTDRu8uyyXM9kIDmKsHyj7c=;
 b=fX9VH11/xtmCZY5ktyfRXv+8oFT24qnzRAke9R5fEGSeD2IzOy84ZG8im/eaEUg8Lt
 YkXZtAgFC41AXSsr/ysnzaRAFRybM7sVVSGjTeMscCtwe6TgKQtIwxVTNVhX+CyOlaHj
 zyT65gbiAfpxTAt1YaJp886/lI6PgypiCjw7omXplGhR0qwXivcLAeNmtsNmtXQS2+4w
 xqKa+JcZGRrR5eWJB589WBbm/hXzKEauxkOa/UURNDAyCoi6UPYtZRE7atesr45WwiIq
 ErXdMxUJmMSia9/QMT7Nme9zP4x0BmIDxW3018QpZobBFVGv7P1VjjU6MaObsA2EybjP
 VU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8SOviSW3O4erJ4o/T7vOdTDRu8uyyXM9kIDmKsHyj7c=;
 b=A4yJcHEOtqRR/9H2pwJltNtJ5wlrmt59wPX92epWDbRZ6Tcq7WG+JvyslrsIJnYaJt
 BFBRTw5FA+mgBBtnPjVlMtE0zj2MaaJxFK4o2lxZYD0btsKj6eZzKgp1q1fx0mHTEMyj
 iMPYgHb0uOBjAUErLefUZXY7kfEC/+vUF2rBWq66GsG9ADoS3SIEFbn0PP30ELQ9c2lm
 Wd5uJ5T3mcj9fEbog5VgP8OsY4vRdVd/Sq9U5fwDkNGo/dZmxBW4UUNTenPH0tVFgNZI
 oPezJJf47ipHu62SUTVC87FQD5DNWwwFjlEwXDvSTCwp+Iw4zKWpsOZcyiA6k3HBE/eA
 OAtw==
X-Gm-Message-State: APjAAAWfNMONayHYlwGwVieSrgxOsV+o/TAy1LKykbAZAxpV/YdIZdi9
 WXworvxvdhf+pd14D2VIlfE=
X-Google-Smtp-Source: APXvYqy6SxWBaLdRR2vg6Lx/woJAETS/7eDG5dTzML6C7DLLIiEKJ1wWpgVv8K7hxMNjNoQ+Y+s8Dw==
X-Received: by 2002:a17:90a:8c92:: with SMTP id
 b18mr1836391pjo.97.1564712418017; 
 Thu, 01 Aug 2019 19:20:18 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:17 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 04/34] x86/kvm: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:35 -0700
Message-Id: <20190802022005.5117-5-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192018_804973_E974D90A 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, Joerg Roedel <joro@8bytes.org>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Ingo Molnar <mingo@redhat.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKS4KClRoaXMgaXMgcGFydCBhIHRyZWUtd2lkZSBjb252ZXJzaW9uLCBhcyBkZXNjcmli
ZWQgaW4gY29tbWl0IGZjMWQ4ZTdjY2EyZAooIm1tOiBpbnRyb2R1Y2UgcHV0X3VzZXJfcGFnZSoo
KSwgcGxhY2Vob2xkZXIgdmVyc2lvbnMiKS4KCkNjOiBKb2VyZyBSb2VkZWwgPGpvcm9AOGJ5dGVz
Lm9yZz4KQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+CkNjOiAiUmFkaW0g
S3LEjW3DocWZIiA8cmtyY21hckByZWRoYXQuY29tPgpDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4
QGxpbnV0cm9uaXguZGU+CkNjOiBJbmdvIE1vbG5hciA8bWluZ29AcmVkaGF0LmNvbT4KQ2M6ICJI
LiBQZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNjOiB4ODZAa2VybmVsLm9yZwpDYzoga3Zt
QHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52
aWRpYS5jb20+Ci0tLQogYXJjaC94ODYva3ZtL3N2bS5jICB8IDQgKystLQogdmlydC9rdm0va3Zt
X21haW4uYyB8IDQgKystLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYva3ZtL3N2bS5jIGIvYXJjaC94ODYva3Zt
L3N2bS5jCmluZGV4IDdlYWZjNjkwNzg2MS4uZmY5M2M5MjNlZDM2IDEwMDY0NAotLS0gYS9hcmNo
L3g4Ni9rdm0vc3ZtLmMKKysrIGIvYXJjaC94ODYva3ZtL3N2bS5jCkBAIC0xODI3LDcgKzE4Mjcs
NyBAQCBzdGF0aWMgc3RydWN0IHBhZ2UgKipzZXZfcGluX21lbW9yeShzdHJ1Y3Qga3ZtICprdm0s
IHVuc2lnbmVkIGxvbmcgdWFkZHIsCiAKIGVycjoKIAlpZiAobnBpbm5lZCA+IDApCi0JCXJlbGVh
c2VfcGFnZXMocGFnZXMsIG5waW5uZWQpOworCQlwdXRfdXNlcl9wYWdlcyhwYWdlcywgbnBpbm5l
ZCk7CiAKIAlrdmZyZWUocGFnZXMpOwogCXJldHVybiBOVUxMOwpAQCAtMTgzOCw3ICsxODM4LDcg
QEAgc3RhdGljIHZvaWQgc2V2X3VucGluX21lbW9yeShzdHJ1Y3Qga3ZtICprdm0sIHN0cnVjdCBw
YWdlICoqcGFnZXMsCiB7CiAJc3RydWN0IGt2bV9zZXZfaW5mbyAqc2V2ID0gJnRvX2t2bV9zdm0o
a3ZtKS0+c2V2X2luZm87CiAKLQlyZWxlYXNlX3BhZ2VzKHBhZ2VzLCBucGFnZXMpOworCXB1dF91
c2VyX3BhZ2VzKHBhZ2VzLCBucGFnZXMpOwogCWt2ZnJlZShwYWdlcyk7CiAJc2V2LT5wYWdlc19s
b2NrZWQgLT0gbnBhZ2VzOwogfQpkaWZmIC0tZ2l0IGEvdmlydC9rdm0va3ZtX21haW4uYyBiL3Zp
cnQva3ZtL2t2bV9tYWluLmMKaW5kZXggODg3ZjNiMGMyYjYwLi40YjZhNTk2ZWE4ZTkgMTAwNjQ0
Ci0tLSBhL3ZpcnQva3ZtL2t2bV9tYWluLmMKKysrIGIvdmlydC9rdm0va3ZtX21haW4uYwpAQCAt
MTQ5OSw3ICsxNDk5LDcgQEAgc3RhdGljIGludCBodmFfdG9fcGZuX3Nsb3codW5zaWduZWQgbG9u
ZyBhZGRyLCBib29sICphc3luYywgYm9vbCB3cml0ZV9mYXVsdCwKIAogCQlpZiAoX19nZXRfdXNl
cl9wYWdlc19mYXN0KGFkZHIsIDEsIDEsICZ3cGFnZSkgPT0gMSkgewogCQkJKndyaXRhYmxlID0g
dHJ1ZTsKLQkJCXB1dF9wYWdlKHBhZ2UpOworCQkJcHV0X3VzZXJfcGFnZShwYWdlKTsKIAkJCXBh
Z2UgPSB3cGFnZTsKIAkJfQogCX0KQEAgLTE4MzEsNyArMTgzMSw3IEBAIEVYUE9SVF9TWU1CT0xf
R1BMKGt2bV9yZWxlYXNlX3BhZ2VfY2xlYW4pOwogdm9pZCBrdm1fcmVsZWFzZV9wZm5fY2xlYW4o
a3ZtX3Bmbl90IHBmbikKIHsKIAlpZiAoIWlzX2Vycm9yX25vc2xvdF9wZm4ocGZuKSAmJiAha3Zt
X2lzX3Jlc2VydmVkX3BmbihwZm4pKQotCQlwdXRfcGFnZShwZm5fdG9fcGFnZShwZm4pKTsKKwkJ
cHV0X3VzZXJfcGFnZShwZm5fdG9fcGFnZShwZm4pKTsKIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGt2
bV9yZWxlYXNlX3Bmbl9jbGVhbik7CiAKLS0gCjIuMjIuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
