Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF348416F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZCYWj+fDSVAimCpUFiqUjv517JWdq697PxRjA9GUks=; b=OBZG0LiBDUnKGh
	lmQGdIuiKLmOqvbAKUHh+X68zcehrxVqsjZQuqalHQkAf9Yoylk1EoBTe/Xv0HMhATTDOCfrrFfSB
	zetC4eMHd5SB6c59ZffTUihHFw1lfc/nYlQMvha+fe9dnbiA4OVwYn5+LFfIkKJ7pG+sJ/U7J53Y9
	kISeGPrqwX1zHlmxhkhWNiIwFz0ap8w3QeFg5z1ZQVtVLV8feiBh4g49sJf/7DLqVTCktfJEBiXdN
	MwInY+zP/gwulZrPF/bZl6J72kmruexsCer6IoHn8vRuOwg4lHva0fSuMbwy+1g16qHdCRRP2g3FM
	rzMtWnM3PNRsYh4Czlgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAyA-0005EI-56; Wed, 07 Aug 2019 01:42:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqV-0002jm-Sz; Wed, 07 Aug 2019 01:34:34 +0000
Received: by mail-pf1-x444.google.com with SMTP id r1so42490725pfq.12;
 Tue, 06 Aug 2019 18:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GAYBkmVoEF3i3+udFKn42Z4HyLG0jAAiACtL32v96bk=;
 b=SyrfptYHZmeMKLLq8uTuDSlh448/TZCFpG6Zn4FeLZy9cTZZGFbCJ1UNBJPoCIn+aW
 ygsAzBiAVH0kcipZ4ihTHldNmhfD0znPMjSBKoUKvh0NP49BRvqIlmsIg6DT8KHAwPBe
 4kKUVEJdNXvGigLmpKs15CkjDKUzxh1vmFZZWbslFSuyKlpacG3oD1RXF7xFsxcwBIbL
 0fmLLMJWYpY6/OBVXor4D0pE1ZvktHc8OSEdcNEszsvYRmiqmzBZ8eGFZOKusFOHPIrj
 /e89tRQCCSxcnEZ4JUtQARmnCroQo1zfhGtcxjcGVNa5FV+aQSWzJVN76YDHje0qrdo9
 NXRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GAYBkmVoEF3i3+udFKn42Z4HyLG0jAAiACtL32v96bk=;
 b=n56s+VxDZn/e7b46dsa7Ah1LXhYp3pWWbZVMCz01iAjtx3Ubhf1bVrzVQRjWJB+hec
 pxZiLv9TUq7TlnF2fAb0xHIkeRGqfY3MtFtfJqtuei7WqeReFzjSzv3j2rDKv7m5gX2i
 bjtXW+n81NIDiJxBCW0B181fjRVbq3qx6vgmYo3JA3MfC9SpogpgKsPAmNi1QEDgtt56
 Tb1lViLTRst0NRzEfatkU1mBa1FZcHOLOnm6khgyaO49GldSXLYs4gfdEivF/HODVUD+
 kruZ6dSabAd9bPJq6BL9E0widzpFL3RnRRN+MoHCUA4wjiP5Spxtpr34cD1GaUIYLH9I
 zcRA==
X-Gm-Message-State: APjAAAU+TBx3rC8EY1P3glz6bVw7wyQWMXVgEdtMOqpEzqdYecSCVl0g
 G53QaHYLK6INdZMHJo4uCms=
X-Google-Smtp-Source: APXvYqwmirpRx7sRgblxTdJDdZc3lNLPB7sz+os8JHE4peLsZYES+zILuE4KL76TUaGsLoa8NjKqJA==
X-Received: by 2002:a62:ae02:: with SMTP id q2mr6578356pff.1.1565141671450;
 Tue, 06 Aug 2019 18:34:31 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:30 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 29/41] mm/memory.c: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:28 -0700
Message-Id: <20190807013340.9706-30-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183432_128290_D37F8352 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-fbdev@vger.kernel.org, Michal Hocko <mhocko@suse.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Matthew Wilcox <willy@infradead.org>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Huang Ying <ying.huang@intel.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Rik van Riel <riel@surriel.com>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Will Deacon <will.deacon@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Souptick Joarder <jrdr.linux@gmail.com>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSm9obiBIdWJiYXJkIDxqaHViYmFyZEBudmlkaWEuY29tPgoKRm9yIHBhZ2VzIHRoYXQg
d2VyZSByZXRhaW5lZCB2aWEgZ2V0X3VzZXJfcGFnZXMqKCksIHJlbGVhc2UgdGhvc2UgcGFnZXMK
dmlhIHRoZSBuZXcgcHV0X3VzZXJfcGFnZSooKSByb3V0aW5lcywgaW5zdGVhZCBvZiB2aWEgcHV0
X3BhZ2UoKSBvcgpyZWxlYXNlX3BhZ2VzKCkuCgpUaGlzIGlzIHBhcnQgYSB0cmVlLXdpZGUgY29u
dmVyc2lvbiwgYXMgZGVzY3JpYmVkIGluIGNvbW1pdCBmYzFkOGU3Y2NhMmQKKCJtbTogaW50cm9k
dWNlIHB1dF91c2VyX3BhZ2UqKCksIHBsYWNlaG9sZGVyIHZlcnNpb25zIikuCgpDYzogQW5lZXNo
IEt1bWFyIEsuViA8YW5lZXNoLmt1bWFyQGxpbnV4LmlibS5jb20+CkNjOiBIdWFuZyBZaW5nIDx5
aW5nLmh1YW5nQGludGVsLmNvbT4KQ2M6IErDqXLDtG1lIEdsaXNzZSA8amdsaXNzZUByZWRoYXQu
Y29tPgpDYzogTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+CkNjOiBNaWNoYWwg
SG9ja28gPG1ob2Nrb0BzdXNlLmNvbT4KQ2M6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFk
ZWFkLm9yZz4KQ2M6IFJpayB2YW4gUmllbCA8cmllbEBzdXJyaWVsLmNvbT4KQ2M6IFNvdXB0aWNr
IEpvYXJkZXIgPGpyZHIubGludXhAZ21haWwuY29tPgpDYzogV2lsbCBEZWFjb24gPHdpbGwuZGVh
Y29uQGFybS5jb20+ClNpZ25lZC1vZmYtYnk6IEpvaG4gSHViYmFyZCA8amh1YmJhcmRAbnZpZGlh
LmNvbT4KLS0tCiBtbS9tZW1vcnkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21tL21lbW9yeS5jIGIvbW0vbWVtb3J5
LmMKaW5kZXggZTJiYjUxYjYyNDJlLi44ODcwOTY4NDk2ZWEgMTAwNjQ0Ci0tLSBhL21tL21lbW9y
eS5jCisrKyBiL21tL21lbW9yeS5jCkBAIC00MzM3LDcgKzQzMzcsNyBAQCBpbnQgX19hY2Nlc3Nf
cmVtb3RlX3ZtKHN0cnVjdCB0YXNrX3N0cnVjdCAqdHNrLCBzdHJ1Y3QgbW1fc3RydWN0ICptbSwK
IAkJCQkJCSAgICBidWYsIG1hZGRyICsgb2Zmc2V0LCBieXRlcyk7CiAJCQl9CiAJCQlrdW5tYXAo
cGFnZSk7Ci0JCQlwdXRfcGFnZShwYWdlKTsKKwkJCXB1dF91c2VyX3BhZ2UocGFnZSk7CiAJCX0K
IAkJbGVuIC09IGJ5dGVzOwogCQlidWYgKz0gYnl0ZXM7Ci0tIAoyLjIyLjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
