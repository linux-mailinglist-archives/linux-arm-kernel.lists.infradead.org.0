Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAC2841BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+K8fU2ICYUa+jO85bQEt4g6bFA7VtLHrbtgtqK5wv44=; b=eGhbDVM2tLoNFb
	93bIeTklZYL7HnOjNDlirwsk/KF0+hY77jvSHrpD9//YNpIwFE2QCNDq+Qoxe8GShmaIVZoSWVH97
	aJC+edSY2euEQxVLu/oNHHFWd0YP07YZJnBoGFUkG9Ey0u04pk44IzrUlpMEvT1fSZOPLU3YAaxG6
	DzUs6XTsuyVQXuazRTLqBFp/yRj0CO7mEqFFCP4him+DA3g845kNE4pMls3Gsll9Wl4Efk9uQHVeg
	MaSUUvJUTcX51lYuajKEORcE9kR9tt84ST7Z5RfeOjjqkqHyBamZIDAzHmFU/z7FfSeRDmpANdC+q
	LRB/c9O4gwyiGyt0/x2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB0O-0007px-1i; Wed, 07 Aug 2019 01:44:44 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAql-00035e-D3; Wed, 07 Aug 2019 01:34:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id o13so42524860pgp.12;
 Tue, 06 Aug 2019 18:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H0Etnn7JHR8H7TocLV05oLauZ77NAi3PGTTr9FTaKTw=;
 b=eS3YB7ZT4YXwuCcgQbB/xbD+n10dBypw+iZZVQIUwi66vhDfcSIp39QkGkG7an7OJl
 OiukENJvNGRlLtpSvoOFB7XysgcSlBHri3dSlfLLl2JoybffI8wnImTZeHQEdnORxVLa
 EBXGZhIf+YSKbjfkupoovScD765pOoXW+wmQ3q47Y78G67P4azJFj7Z03p0IlFla0TF0
 WGS9epzDu3lNP0Hir82G8T/Dsucq+VMZQ717BtULEmOp/zZ+HeTgTfaZfag+K5X0r5bl
 +CKlJZyT3xTot1t0x6sX+RloIZlzVtbmPtAqvydRbxbh9+Ay6+ppy+Ss6WRVBPk23UrF
 ZgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H0Etnn7JHR8H7TocLV05oLauZ77NAi3PGTTr9FTaKTw=;
 b=P58+dDG2WYcAxOjvG/GtCQnIJlgVmb3Lo9xqBzLi4WOzkOqk8e9ztp2ac2GKrL7m06
 /CE3iAokitQ7RTHqmKdHfKrtyaFt8DMNVamFMpNgzcFOhXLL31kpYaGZQ/e2fvB7uM3M
 2YTrPguYPU+GHFPftvwNr81Q1uVsjzIVzjF4onTYWIaBXpw+3q/7SjyTqcrdzjp/GqIQ
 ynZiNKEd/H0rFjRHK03ky2bhiOE6OZrQwpIUpUIv2jRjkbXVKv2hvrB2jF5rSk7XmS+m
 ytvkJc3WIp9jpwDMuIqVZaLT4GcZv1WQOeO6fEkgEfaWztVbT5TvAlwp7VxFV+8dq2p6
 BxNg==
X-Gm-Message-State: APjAAAWYnTQfU2/k39J9M2Is6Jil5wrMygbr36Y342tW85oHSa2t+U4f
 g7dw7KBRjPrDbVTCmAaauVM=
X-Google-Smtp-Source: APXvYqzWWP/A0o9J09jCJjajCJWgGO/EPyZUANiBcpDufZXSuOwgzfu98JYNHWmK3CJ1oF9MD+qnUg==
X-Received: by 2002:aa7:8201:: with SMTP id k1mr6559788pfi.97.1565141687010;
 Tue, 06 Aug 2019 18:34:47 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:46 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 39/41] mm/mlock.c: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:38 -0700
Message-Id: <20190807013340.9706-40-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183447_549489_F30D05A9 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Daniel Black <daniel@linux.ibm.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogRGFuIFdp
bGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+CkNjOiBEYW5pZWwgQmxhY2sgPGRhbmll
bEBsaW51eC5pYm0uY29tPgpDYzogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KQ2M6IErDqXLDtG1l
IEdsaXNzZSA8amdsaXNzZUByZWRoYXQuY29tPgpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGlu
ZnJhZGVhZC5vcmc+CkNjOiBNaWtlIEtyYXZldHogPG1pa2Uua3JhdmV0ekBvcmFjbGUuY29tPgpT
aWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRpYS5jb20+Ci0tLQogbW0v
bWxvY2suYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL21tL21sb2NrLmMgYi9tbS9tbG9jay5jCmluZGV4IGE5
MDA5OWRhNGZiNC4uYjk4MGU2MjcwZThhIDEwMDY0NAotLS0gYS9tbS9tbG9jay5jCisrKyBiL21t
L21sb2NrLmMKQEAgLTM0NSw3ICszNDUsNyBAQCBzdGF0aWMgdm9pZCBfX211bmxvY2tfcGFnZXZl
YyhzdHJ1Y3QgcGFnZXZlYyAqcHZlYywgc3RydWN0IHpvbmUgKnpvbmUpCiAJCQkJZ2V0X3BhZ2Uo
cGFnZSk7IC8qIGZvciBwdXRiYWNrX2xydV9wYWdlKCkgKi8KIAkJCQlfX211bmxvY2tfaXNvbGF0
ZWRfcGFnZShwYWdlKTsKIAkJCQl1bmxvY2tfcGFnZShwYWdlKTsKLQkJCQlwdXRfcGFnZShwYWdl
KTsgLyogZnJvbSBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KKwkJCQlwdXRfdXNlcl9wYWdlKHBhZ2Up
OyAvKiBmcm9tIGZvbGxvd19wYWdlX21hc2soKSAqLwogCQkJfQogCQl9CiAJfQpAQCAtNDY3LDcg
KzQ2Nyw3IEBAIHZvaWQgbXVubG9ja192bWFfcGFnZXNfcmFuZ2Uoc3RydWN0IHZtX2FyZWFfc3Ry
dWN0ICp2bWEsCiAJCWlmIChwYWdlICYmICFJU19FUlIocGFnZSkpIHsKIAkJCWlmIChQYWdlVHJh
bnNUYWlsKHBhZ2UpKSB7CiAJCQkJVk1fQlVHX09OX1BBR0UoUGFnZU1sb2NrZWQocGFnZSksIHBh
Z2UpOwotCQkJCXB1dF9wYWdlKHBhZ2UpOyAvKiBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KKwkJCQlw
dXRfdXNlcl9wYWdlKHBhZ2UpOyAvKiBmb2xsb3dfcGFnZV9tYXNrKCkgKi8KIAkJCX0gZWxzZSBp
ZiAoUGFnZVRyYW5zSHVnZShwYWdlKSkgewogCQkJCWxvY2tfcGFnZShwYWdlKTsKIAkJCQkvKgpA
QCAtNDc4LDcgKzQ3OCw3IEBAIHZvaWQgbXVubG9ja192bWFfcGFnZXNfcmFuZ2Uoc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEsCiAJCQkJICovCiAJCQkJcGFnZV9tYXNrID0gbXVubG9ja192bWFf
cGFnZShwYWdlKTsKIAkJCQl1bmxvY2tfcGFnZShwYWdlKTsKLQkJCQlwdXRfcGFnZShwYWdlKTsg
LyogZm9sbG93X3BhZ2VfbWFzaygpICovCisJCQkJcHV0X3VzZXJfcGFnZShwYWdlKTsgLyogZm9s
bG93X3BhZ2VfbWFzaygpICovCiAJCQl9IGVsc2UgewogCQkJCS8qCiAJCQkJICogTm9uLWh1Z2Ug
cGFnZXMgYXJlIGhhbmRsZWQgaW4gYmF0Y2hlcyB2aWEKLS0gCjIuMjIuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
