Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077F412F41
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2iBk+71DkkKBHRhuRL8FJpZLpreDu4u6EeBdzxVTVM=; b=OgwLzHA6Dzet3d
	k96eS0uJaiNVKuTMizrZ0yh0HiZyuk0zFH/ynUTo8B4XQz+CJjlQyTbnMvXrGFWGajTM2K0skJbjx
	/wvb0dO+n/f37KHJq3z8No27UQeVCVzi3/13aDtkyZvYV0xs6DgI5TEOyInEPxPsEUwuBSCdrY/kU
	Bzmt+owNwhEZRXlsVFKatLoTQ1c8BGP7EgnDP93U78aTgatNKT7NohnnL0ApcZan19dJT6lVQrCag
	mW2quaP83Koe+e5EPEWt8DLUaWJrolRRBi7LKnlMtTRlVCF5VTljIv7L2D5aB/5cOfr29MztqPswF
	PwFXMhhcp3HR0+SSdIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYIz-00031V-L3; Fri, 03 May 2019 13:32:49 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHR-0000pd-N1
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jSZHozRwuuGO7I9/qKMNs8tnyxDrZkIVv3V5vpypzYk=; b=THC9ZPeIueE7OkekIofumouyBd
 P0gzoKOOl8rfiDkJ+x4b3tgb9vuokKiOQuWxjZB+wWr52YoxeLwq6knnwk592H2fJRsZpm6+bN73V
 DhnqmmCKg+hTKTYimoj2vVbWh4pqDOY+LCvQpUzDZpwgMseXkgcPOyqu5cKzqK5aDJSeGlSzQ2fi9
 MiGlfwNJmvVAAXYJZun//hZqkm8c2PWWQikJPEag52KbfH917D8noS/p7y4UFuAlY4Z+wRP5iai5I
 +x1F+zLzXT4XlgJeEPoUTZXr/XV7uij/N0Km98dXto2EEszW5rV6EtLxWZSj84GzUVpz8djswGyQ8
 ekkwPJ+Q==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZF-0005fm-0U
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1CE40165C;
 Fri,  3 May 2019 05:45:32 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA1073F220;
 Fri,  3 May 2019 05:45:28 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 14/56] KVM: Allow 2048-bit register access via ioctl interface
Date: Fri,  3 May 2019 13:43:45 +0100
Message-Id: <20190503124427.190206-15-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084533_157248_7FA4F2B4 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5jb20+CgpUaGUgQXJtIFNWRSBhcmNo
aXRlY3R1cmUgZGVmaW5lcyByZWdpc3RlcnMgdGhhdCBhcmUgdXAgdG8gMjA0OCBiaXRzCmluIHNp
emUgKHdpdGggc29tZSBwb3NzaWJpbGl0eSBvZiBmdXJ0aGVyIGZ1dHVyZSBleHBhbnNpb24pLgoK
SW4gb3JkZXIgdG8gYXZvaWQgdGhlIG5lZWQgZm9yIGFuIGV4Y2Vzc2l2ZWx5IGxhcmdlIG51bWJl
ciBvZgppb2N0bHMgd2hlbiBzYXZpbmcgYW5kIHJlc3RvcmluZyBhIHZjcHUncyByZWdpc3RlcnMs
IHRoaXMgcGF0Y2gKYWRkcyBhICNkZWZpbmUgdG8gbWFrZSBzdXBwb3J0IGZvciBpbmRpdmlkdWFs
IDIwNDgtYml0IHJlZ2lzdGVycwp0aHJvdWdoIHRoZSBLVk1fe0dFVCxTRVR9X09ORV9SRUcgaW9j
dGwgaW50ZXJmYWNlIG9mZmljaWFsLiAgVGhpcwp3aWxsIGFsbG93IGVhY2ggU1ZFIHJlZ2lzdGVy
IHRvIGJlIGFjY2Vzc2VkIGluIGEgc2luZ2xlIGNhbGwuCgpUaGVyZSBhcmUgc3VmZmljaWVudCBz
cGFyZSBiaXRzIGluIHRoZSByZWdpc3RlciBpZCBzaXplIGZpZWxkIGZvcgp0aGlzIGNoYW5nZSwg
c28gdGhlcmUgaXMgbm8gQUJJIGltcGFjdCwgcHJvdmlkaW5nIHRoYXQKS1ZNX0dFVF9SRUdfTElT
VCBkb2VzIG5vdCBlbnVtZXJhdGUgYW55IDIwNDgtYml0IHJlZ2lzdGVyIHVubGVzcwp1c2Vyc3Bh
Y2UgZXhwbGljaXRseSBvcHRzIGluIHRvIHRoZSByZWxldmFudCBhcmNoaXRlY3R1cmUtc3BlY2lm
aWMKZmVhdHVyZXMuCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJt
LmNvbT4KUmV2aWV3ZWQtYnk6IEFsZXggQmVubsOpZSA8YWxleC5iZW5uZWVAbGluYXJvLm9yZz4K
VGVzdGVkLWJ5OiB6aGFuZy5sZWkgPHpoYW5nLmxlaUBqcC5mdWppdHN1LmNvbT4KU2lnbmVkLW9m
Zi1ieTogTWFyYyBaeW5naWVyIDxtYXJjLnp5bmdpZXJAYXJtLmNvbT4KLS0tCiBpbmNsdWRlL3Vh
cGkvbGludXgva3ZtLmggfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9rdm0uaCBiL2luY2x1ZGUvdWFwaS9saW51eC9r
dm0uaAppbmRleCA2ZDRlYTRiNmM5MjIuLmRjNzdhNWEzNjQ4ZCAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS91YXBpL2xpbnV4L2t2bS5oCisrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9rdm0uaApAQCAtMTE0
NSw2ICsxMTQ1LDcgQEAgc3RydWN0IGt2bV9kaXJ0eV90bGIgewogI2RlZmluZSBLVk1fUkVHX1NJ
WkVfVTI1NgkweDAwNTAwMDAwMDAwMDAwMDBVTEwKICNkZWZpbmUgS1ZNX1JFR19TSVpFX1U1MTIJ
MHgwMDYwMDAwMDAwMDAwMDAwVUxMCiAjZGVmaW5lIEtWTV9SRUdfU0laRV9VMTAyNAkweDAwNzAw
MDAwMDAwMDAwMDBVTEwKKyNkZWZpbmUgS1ZNX1JFR19TSVpFX1UyMDQ4CTB4MDA4MDAwMDAwMDAw
MDAwMFVMTAogCiBzdHJ1Y3Qga3ZtX3JlZ19saXN0IHsKIAlfX3U2NCBuOyAvKiBudW1iZXIgb2Yg
cmVncyAqLwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
