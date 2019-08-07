Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E7883FC9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeofmdZeBqH45WDa2cyxHiDLI3VQ82mehF0jn7k0jU8=; b=l2I2unf5+MUICC
	cR2n05jZAENHZOh12aXO7MCMWJjz4O1+Ly5Wkhti6xx4GTleBIpjCktnq9mJggmn5sffckBbg9Qet
	Gg77Q70uJCsKVXWApio0zB8Yy77HOJe9OMGghU/FSBMEiYQnqG093YKWSYTd5ARyb+sjofhjMlRtF
	/efzEQRcut3/ADqp0TJkkUyzj1j3c/7A+zjsiJiEHMAcLNNy891GGhwkPB7yioIA5BkXON8g5FD6f
	1QindXwpKngJZp7vZjAqmfBcIhexCK+XUTbwUx6zQ3Z1gxD+wojMorTAauXltuozGnnt49Ya/6G66
	v+TE4m1pKrsJqAR0RqBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAsN-0005ve-Vj; Wed, 07 Aug 2019 01:36:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvApw-0001vW-DL; Wed, 07 Aug 2019 01:33:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so42482779pff.9;
 Tue, 06 Aug 2019 18:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VkIZ9MNYeaRKdR8dFo+dHbwqWBHsgbjux0NTtbbQ8Os=;
 b=WodjfRMNXRpfn8eDFiq237p2GDsP83iVPB5OCq8NqovKXXtmSfGMO2YcZK3qaRiOMq
 V+1Wp3U4Ouo1tRWYwqfWu9duqPs4fCXrKz87Da9i0IezRC3CosqffIajL738UQ/eBy1Q
 8bGkemq1iEa5/xtBXuYNtAC1RV+0n9U9hgutinWmqUfG/v6xBvqP7GCtby2XRnRchtz/
 0cYIJLRbrEXn7xRE/60/clx008LELTPxuZr9t/SYNy+7x5xLG72AD6O6vZ88uF2XgMPR
 ACpc5Lz6LUvFr+xpSFpVcKN4ZMG15RxRazNc9G/jbrPxZR9s341vQyb0SHXjN70nitnK
 1NJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VkIZ9MNYeaRKdR8dFo+dHbwqWBHsgbjux0NTtbbQ8Os=;
 b=GFFDEon7NK8zyrJtzwEoPR+LOwv3MWfsDe+Y2Pn1Y9OB8jcT5tXxjEEaaTt0ZtpplA
 8fnDBLjlyFq2RmWNgCQOGUxwznz31kk2JTVUeJT7vbG6KPEdE2XD2sH3PETQizx1a3DK
 eYYsgP3okeqxMuCjpU7b95pvgg+tR2xr4HO/6Yk0mJfukC30Y/l6XAhnK+ju5GngxrS5
 8LtbWxAvKDP3mR2N3276kPvWhLZRpmwSnesG4Yo3gFRUf7CnId1g5QdT5mLckH3vTWGp
 zvapQatJGHAklUbDfnk9DuH/031Hj3UbnfBoUITbQCDY+5D1tuD3viQD1TWCNL2xHNmJ
 IGuQ==
X-Gm-Message-State: APjAAAX/ND5JCvIs3QjX45a5imW7rTCLDJFFVWBb5G5PWsW1fhzsrTj2
 lGlh8wo+8LbwzDEFjIb6/DA=
X-Google-Smtp-Source: APXvYqzbAGNeyGcbWdWkzYvFP0KeX9sV24V25gxtoPIbubmiIgKmQ4weQ/h5itUQb1wb0VhoIYmEzw==
X-Received: by 2002:a17:90a:5884:: with SMTP id
 j4mr6207412pji.142.1565141635740; 
 Tue, 06 Aug 2019 18:33:55 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:55 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 07/41] drm/etnaviv: convert release_pages() to
 put_user_pages()
Date: Tue,  6 Aug 2019 18:33:06 -0700
Message-Id: <20190807013340.9706-8-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183356_755545_031BB277 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
YXQuY29tPgpDYzogUmFkaW0gS3LEjW3DocWZIDxya3JjbWFyQHJlZGhhdC5jb20+CkNjOiBUaG9t
YXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KQ2M6IEluZ28gTW9sbmFyIDxtaW5nb0By
ZWRoYXQuY29tPgpDYzogQm9yaXNsYXYgUGV0a292IDxicEBhbGllbjguZGU+CkNjOiBILiBQZXRl
ciBBbnZpbiA8aHBhQHp5dG9yLmNvbT4KQ2M6IHg4NkBrZXJuZWwub3JnCkNjOiBrdm1Admdlci5r
ZXJuZWwub3JnClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlhLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jIHwgNCArKy0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCmluZGV4IGU4Nzc4ZWJiNzJlNi4uYTAxNDRhNWVlMzI1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9ldG5hdml2L2V0bmF2aXZfZ2VtLmMKQEAgLTY4Niw3ICs2ODYsNyBA
QCBzdGF0aWMgaW50IGV0bmF2aXZfZ2VtX3VzZXJwdHJfZ2V0X3BhZ2VzKHN0cnVjdCBldG5hdml2
X2dlbV9vYmplY3QgKmV0bmF2aXZfb2JqKQogCQlyZXQgPSBnZXRfdXNlcl9wYWdlc19mYXN0KHB0
ciwgbnVtX3BhZ2VzLAogCQkJCQkgICF1c2VycHRyLT5ybyA/IEZPTExfV1JJVEUgOiAwLCBwYWdl
cyk7CiAJCWlmIChyZXQgPCAwKSB7Ci0JCQlyZWxlYXNlX3BhZ2VzKHB2ZWMsIHBpbm5lZCk7CisJ
CQlwdXRfdXNlcl9wYWdlcyhwdmVjLCBwaW5uZWQpOwogCQkJa3ZmcmVlKHB2ZWMpOwogCQkJcmV0
dXJuIHJldDsKIAkJfQpAQCAtNzEwLDcgKzcxMCw3IEBAIHN0YXRpYyB2b2lkIGV0bmF2aXZfZ2Vt
X3VzZXJwdHJfcmVsZWFzZShzdHJ1Y3QgZXRuYXZpdl9nZW1fb2JqZWN0ICpldG5hdml2X29iaikK
IAlpZiAoZXRuYXZpdl9vYmotPnBhZ2VzKSB7CiAJCWludCBucGFnZXMgPSBldG5hdml2X29iai0+
YmFzZS5zaXplID4+IFBBR0VfU0hJRlQ7CiAKLQkJcmVsZWFzZV9wYWdlcyhldG5hdml2X29iai0+
cGFnZXMsIG5wYWdlcyk7CisJCXB1dF91c2VyX3BhZ2VzKGV0bmF2aXZfb2JqLT5wYWdlcywgbnBh
Z2VzKTsKIAkJa3ZmcmVlKGV0bmF2aXZfb2JqLT5wYWdlcyk7CiAJfQogfQotLSAKMi4yMi4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
