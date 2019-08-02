Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 130B17E8A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DNaIG5wO0vOxC+yST7tm4VWBN3Uv0cExE+m7lV6aH0=; b=FYRfdZrlGtli+h
	T1r2tishA7r2YfjkB8cY5ofKf6DJYOAibD2lay+LKd46fv249TK1ABzFp6Q/jMMJn/cVLIeZ4ifam
	hZ2DB7d6eHiNs6C1fuo5qzqroLJA6lDw5annLobJ/uF0siHo62/I0BykPC5+nc+v//BLyuXMz6yDq
	7R9hQcKI1NyJEcYIR/IZoUeLkyByc9OH5aP3wo2FiQv9cq8aGRqfUPWemrzZKdTMI0PvicrkQyF03
	f4fbVS0lKxquwBVb7i88prMii6ZwSSIxrq1HMzn/yLk3pWFqDcALt2PMFGsXXmdOACKCIMeRH0r04
	6F9BKrYzCvwS475WVb5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNCy-0003eC-4m; Fri, 02 Aug 2019 02:22:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNB7-0001dz-7T; Fri, 02 Aug 2019 02:20:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id b3so33038258plr.4;
 Thu, 01 Aug 2019 19:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pwlX9Z4uen7Ts0pUwmBLgDhtihaB/D0UZN8JDoMe4ZA=;
 b=cXVKp+Dgxhj784uTGfvPyG1yYJG0TluF022pFhUyHpRdik351Pihe9of7XZeuP0Vwt
 h/i6WlGcIKVNKfHSeDSEUHKJX3j3X/NshFFci/lhMH4/SgEjIokRiJ+YouFN6I+GBm4y
 zUjQOfq6557LaDfB1SW3dyyvMia7x+7GSnkQpaKA5dSoAhqdxSb/NVVqK5YIHjTvA0IX
 6H4EsdOomJX2kg/hRhJVVxm3sX/zmn87r9Fum/tKlkDFYTmAnDUVoJ7rlCgUuzHH8DwS
 QuPnhojZwqXr2XSW6HhlWm7VIgfEjZi50Ea1bZ4R+3m+Y3fnnezSFaVuWGen2JpYqC8g
 nI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pwlX9Z4uen7Ts0pUwmBLgDhtihaB/D0UZN8JDoMe4ZA=;
 b=Qbvax/HJKzvfUNuV6yTKoifSZRPEmhhfP4dhyENHnMBaLVs4Lu/8h1bSjzHZP8F51X
 gjRHyH8RK9dJZ7Et7X6m3A68WetYok+ReKiTKCjeUnhe8ZW/dv43BvJS40esRTft269N
 qRQelTFb0zOKWVLQjEtZ2JUxhvd/LEdT+4n+wnCA/j2sikcmpB2Khu8h9bNQUviROXmO
 8lc5WGWLdM1bM07w8BjnppWALN4CeMMTwsJrJcmdQbrKFMolHikn2C8bijKAj7x06kUX
 RVRDJq9dOvB9kka0YbnL+azXdgxe5UvyVRTDCnlJR1eQ37p5a311azVtflztog0zfL3H
 igeg==
X-Gm-Message-State: APjAAAVf98h6gZXSuNayqQsp/LE4IaoQQJc2gCINN63UjpQZ6k4/zeBr
 GziCM9h0vAsFoPPXtmVGPRc=
X-Google-Smtp-Source: APXvYqzjw3eL+xmFFeLCY8pAtt0uU+dboybjV0Tj2XnMiuSE8KPva7u+GlTOi6iXLJ1oNBX2ZlUCDA==
X-Received: by 2002:a17:902:a413:: with SMTP id
 p19mr129958448plq.134.1564712419691; 
 Thu, 01 Aug 2019 19:20:19 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:19 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 05/34] drm/etnaviv: convert release_pages() to put_user_pages()
Date: Thu,  1 Aug 2019 19:19:36 -0700
Message-Id: <20190802022005.5117-6-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192021_471696_D56919BF 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 Borislav Petkov <bp@alien8.de>, linux-rpi-kernel@lists.infradead.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Paolo Bonzini <pbonzini@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogSm9lcmcg
Um9lZGVsIDxqb3JvQDhieXRlcy5vcmc+CkNjOiBQYW9sbyBCb256aW5pIDxwYm9uemluaUByZWRo
YXQuY29tPgpDYzogIlJhZGltIEtyxI1tw6HFmSIgPHJrcmNtYXJAcmVkaGF0LmNvbT4KQ2M6IFRo
b21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgpDYzogSW5nbyBNb2xuYXIgPG1pbmdv
QHJlZGhhdC5jb20+CkNjOiBCb3Jpc2xhdiBQZXRrb3YgPGJwQGFsaWVuOC5kZT4KQ2M6ICJILiBQ
ZXRlciBBbnZpbiIgPGhwYUB6eXRvci5jb20+CkNjOiB4ODZAa2VybmVsLm9yZwpDYzoga3ZtQHZn
ZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBKb2huIEh1YmJhcmQgPGpodWJiYXJkQG52aWRp
YS5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYyB8IDQgKyst
LQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwppbmRleCBlODc3OGViYjcyZTYuLmEwMTQ0YTVl
ZTMyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCkBAIC02ODYsNyArNjg2
LDcgQEAgc3RhdGljIGludCBldG5hdml2X2dlbV91c2VycHRyX2dldF9wYWdlcyhzdHJ1Y3QgZXRu
YXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iaikKIAkJcmV0ID0gZ2V0X3VzZXJfcGFnZXNfZmFz
dChwdHIsIG51bV9wYWdlcywKIAkJCQkJICAhdXNlcnB0ci0+cm8gPyBGT0xMX1dSSVRFIDogMCwg
cGFnZXMpOwogCQlpZiAocmV0IDwgMCkgewotCQkJcmVsZWFzZV9wYWdlcyhwdmVjLCBwaW5uZWQp
OworCQkJcHV0X3VzZXJfcGFnZXMocHZlYywgcGlubmVkKTsKIAkJCWt2ZnJlZShwdmVjKTsKIAkJ
CXJldHVybiByZXQ7CiAJCX0KQEAgLTcxMCw3ICs3MTAsNyBAQCBzdGF0aWMgdm9pZCBldG5hdml2
X2dlbV91c2VycHRyX3JlbGVhc2Uoc3RydWN0IGV0bmF2aXZfZ2VtX29iamVjdCAqZXRuYXZpdl9v
YmopCiAJaWYgKGV0bmF2aXZfb2JqLT5wYWdlcykgewogCQlpbnQgbnBhZ2VzID0gZXRuYXZpdl9v
YmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCi0JCXJlbGVhc2VfcGFnZXMoZXRuYXZpdl9v
YmotPnBhZ2VzLCBucGFnZXMpOworCQlwdXRfdXNlcl9wYWdlcyhldG5hdml2X29iai0+cGFnZXMs
IG5wYWdlcyk7CiAJCWt2ZnJlZShldG5hdml2X29iai0+cGFnZXMpOwogCX0KIH0KLS0gCjIuMjIu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
