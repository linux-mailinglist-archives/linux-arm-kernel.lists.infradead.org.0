Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF7383FB9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:36:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kG8DSYgjo4AiXn5z3kTXHBeVARZwPg4Wl+5QknVNYEQ=; b=PqRT/lJNfuP1LO
	nfQzefQoq5Q0oV6JawxM6i62SlbAnktO2RBmOTZ0SBmgj8WnqAHBuSMNjOFFYTOix9fMN1nZah/mY
	N4i6u3O0upa2URLAPTiCvH0KA3W9j9DLZMFIs4JWso7IbJImUDc55ojMBjB8x9tRkpDUuEmwEHoN6
	Na/H95EZ3DibEV69qnGWF6KoY4X8TtdwFiA/N87zFAr/m7As2wkeaokT1cdhO/5ptyotlKCVXuApL
	A+NvDRcr1sh2mYfiC1k+C7/kVAtsXtlvV0nCzSVaNVwPVF+3N7m6buBHf9ejrIIyF7duyFco5avlZ
	4NLtvhZsfA+5KIxaQ+wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAs9-0005d2-Gz; Wed, 07 Aug 2019 01:36:13 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvApu-0001tP-Ie; Wed, 07 Aug 2019 01:33:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so38560441plr.11;
 Tue, 06 Aug 2019 18:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o0zfkIFt+6JH2qCeaVwPptBUW8DYTI9b55PprZaXkM8=;
 b=JTummjFBnv/C+O19cpD5WnNljDRNFTGhD+ZhdI4mJ0KthoLkEPnz/XxGJof7+/5P4n
 NHHwYbiLQNiC7TcqgsQ/ovMZm7D6aJYiNSrmCXoGWlQrghDLY3t836yj0IsY0+4YC7xI
 eQkZg6NO1m+ejC4ev3+3CL0uIAy7xorACp1mEOdDq8740Rm+KlATM1Sc7ZQ3MeqeRt4O
 7cYGE39/ttj6uSJue/JhAE5of4ahDgxaps2hbC4CGOdXTBLt0I5b2m9zlW7Y/wUMcwRM
 CKumpnCTxX+R2m3tIGG+Kc4MncXcm2KfRB66iumh4vvbbc51XwcZQfEKOAaVsSQiCWNy
 JHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o0zfkIFt+6JH2qCeaVwPptBUW8DYTI9b55PprZaXkM8=;
 b=Yrt9t+NQehOIGKPFGgkJDJSa1S+FhvZWFTmS+6UaC8/P+sc8wp1aRzxsbWd1rpCj0k
 SPwgDWH34vJ99c2JhmjTThdIRQibYgMFOvSxTzTXlfZnNMyuxzcsQEreSl/+wEzfphh5
 To1F/OS4L+DCSdVibIABf9lFJEY/vEyew4Me+Ysoletxt5lzvjzowDF0y4YeLs7QS52c
 3eClK0R9TakuGsQVPqGZ3ncEgZ/9hCbOqcgQ2QMRTgG5S3EH7vz8SvQcZB4o5EW80l0R
 ks3/Ylb71gK4HS0UrW6uSSXW6k0YZatoxEHvmswDYTC8zf/sN4M6B8xz4XJ0X956lEyE
 LWmA==
X-Gm-Message-State: APjAAAWl+2OurQgxvlNI5QbI4QWMk8/AAFzx59FeyCYn2vktQxsBsO54
 Kdy8a+PE1ZIQ+c/VH6d8Q/E=
X-Google-Smtp-Source: APXvYqyrNSY9uu6qIRB6tCHKaxkbamRoI3EYz9mMxQODHddaqnRle1Efzwc3BX/1sry+PskKxKx5MA==
X-Received: by 2002:a17:902:4401:: with SMTP id
 k1mr5853733pld.193.1565141634169; 
 Tue, 06 Aug 2019 18:33:54 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:53 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 06/41] x86/kvm: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:05 -0700
Message-Id: <20190807013340.9706-7-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183354_812418_D773C458 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "H . Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
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
Lm9yZz4KQ2M6IFBhb2xvIEJvbnppbmkgPHBib256aW5pQHJlZGhhdC5jb20+CkNjOiBSYWRpbSBL
csSNbcOhxZkgPHJrcmNtYXJAcmVkaGF0LmNvbT4KQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBs
aW51dHJvbml4LmRlPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdvQHJlZGhhdC5jb20+CkNjOiBILiBQ
ZXRlciBBbnZpbiA8aHBhQHp5dG9yLmNvbT4KQ2M6IHg4NkBrZXJuZWwub3JnCkNjOiBrdm1Admdl
ci5rZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlh
LmNvbT4KLS0tCiBhcmNoL3g4Ni9rdm0vc3ZtLmMgIHwgNCArKy0tCiB2aXJ0L2t2bS9rdm1fbWFp
bi5jIHwgNCArKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9rdm0vc3ZtLmMgYi9hcmNoL3g4Ni9rdm0vc3Zt
LmMKaW5kZXggN2VhZmM2OTA3ODYxLi5mZjkzYzkyM2VkMzYgMTAwNjQ0Ci0tLSBhL2FyY2gveDg2
L2t2bS9zdm0uYworKysgYi9hcmNoL3g4Ni9rdm0vc3ZtLmMKQEAgLTE4MjcsNyArMTgyNyw3IEBA
IHN0YXRpYyBzdHJ1Y3QgcGFnZSAqKnNldl9waW5fbWVtb3J5KHN0cnVjdCBrdm0gKmt2bSwgdW5z
aWduZWQgbG9uZyB1YWRkciwKIAogZXJyOgogCWlmIChucGlubmVkID4gMCkKLQkJcmVsZWFzZV9w
YWdlcyhwYWdlcywgbnBpbm5lZCk7CisJCXB1dF91c2VyX3BhZ2VzKHBhZ2VzLCBucGlubmVkKTsK
IAogCWt2ZnJlZShwYWdlcyk7CiAJcmV0dXJuIE5VTEw7CkBAIC0xODM4LDcgKzE4MzgsNyBAQCBz
dGF0aWMgdm9pZCBzZXZfdW5waW5fbWVtb3J5KHN0cnVjdCBrdm0gKmt2bSwgc3RydWN0IHBhZ2Ug
KipwYWdlcywKIHsKIAlzdHJ1Y3Qga3ZtX3Nldl9pbmZvICpzZXYgPSAmdG9fa3ZtX3N2bShrdm0p
LT5zZXZfaW5mbzsKIAotCXJlbGVhc2VfcGFnZXMocGFnZXMsIG5wYWdlcyk7CisJcHV0X3VzZXJf
cGFnZXMocGFnZXMsIG5wYWdlcyk7CiAJa3ZmcmVlKHBhZ2VzKTsKIAlzZXYtPnBhZ2VzX2xvY2tl
ZCAtPSBucGFnZXM7CiB9CmRpZmYgLS1naXQgYS92aXJ0L2t2bS9rdm1fbWFpbi5jIGIvdmlydC9r
dm0va3ZtX21haW4uYwppbmRleCA4ODdmM2IwYzJiNjAuLjRiNmE1OTZlYThlOSAxMDA2NDQKLS0t
IGEvdmlydC9rdm0va3ZtX21haW4uYworKysgYi92aXJ0L2t2bS9rdm1fbWFpbi5jCkBAIC0xNDk5
LDcgKzE0OTksNyBAQCBzdGF0aWMgaW50IGh2YV90b19wZm5fc2xvdyh1bnNpZ25lZCBsb25nIGFk
ZHIsIGJvb2wgKmFzeW5jLCBib29sIHdyaXRlX2ZhdWx0LAogCiAJCWlmIChfX2dldF91c2VyX3Bh
Z2VzX2Zhc3QoYWRkciwgMSwgMSwgJndwYWdlKSA9PSAxKSB7CiAJCQkqd3JpdGFibGUgPSB0cnVl
OwotCQkJcHV0X3BhZ2UocGFnZSk7CisJCQlwdXRfdXNlcl9wYWdlKHBhZ2UpOwogCQkJcGFnZSA9
IHdwYWdlOwogCQl9CiAJfQpAQCAtMTgzMSw3ICsxODMxLDcgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
a3ZtX3JlbGVhc2VfcGFnZV9jbGVhbik7CiB2b2lkIGt2bV9yZWxlYXNlX3Bmbl9jbGVhbihrdm1f
cGZuX3QgcGZuKQogewogCWlmICghaXNfZXJyb3Jfbm9zbG90X3BmbihwZm4pICYmICFrdm1faXNf
cmVzZXJ2ZWRfcGZuKHBmbikpCi0JCXB1dF9wYWdlKHBmbl90b19wYWdlKHBmbikpOworCQlwdXRf
dXNlcl9wYWdlKHBmbl90b19wYWdlKHBmbikpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoa3ZtX3Jl
bGVhc2VfcGZuX2NsZWFuKTsKIAotLSAKMi4yMi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
