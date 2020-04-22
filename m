Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAB51B4A35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:20:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/+NwRDAIANktQ2AbV6UF+4Mf28Q/D4d6IgOKljQjjM=; b=kX5ChD4zROPgLk
	bxGGkSRLBV6YLs5mXV47HaSkqY7qz6W0hPX/4ClStwOgpOMgzrgZZVE6L1Cl44sENyUq0Z83C0lJl
	t5on42ISxPi5U36hHicGG8szaStjfHLwyTJ6lgsXgDBeVjpxH+oaFaWwKW2CMSqgbtohkjCoAUjad
	kFCc6VX2KE6PNqyJEDkUicsfOraJbgKoUFLkm7Oc7iDz3qT/P8/yk8pRtDPNFXMOwNnvq459qHUg3
	761urGa35y4X3HCZtFSHZSlVQnQICbad8zSvgfx3Pc5A7SbMAQpCUHDNE2+6HQDw2y/fQO3IAO0zq
	4X71CLCPLs69/RAd47dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRI6P-00055f-Dj; Wed, 22 Apr 2020 16:19:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRI5q-0004rz-Is
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:19:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F1262082E;
 Wed, 22 Apr 2020 16:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587572362;
 bh=5ARctdcnAgCfEyXFXi7xAyJcfvsKxIhqhVhZ9mavtZk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FYpiKsa5hAQ79WxRxdp0mSq6MxHafrj7k/7Ca/lH66jgxLbKjOzXshqHpmELn7XF/
 AywMuatkH4CdQLDHwUmyj3KG467EJBYNcTIz7eYe1R747Ba9uBvi5/wqCVdU4Rq5us
 6SKkV9a5AbvOY6JaG01Z5YTHUAwQE5kcVME8ediU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRI5n-005Ynp-WB; Wed, 22 Apr 2020 17:19:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 1/6] KVM: arm: vgic: Fix limit condition when writing to
 GICD_I[CS]ACTIVER
Date: Wed, 22 Apr 2020 17:18:39 +0100
Message-Id: <20200422161844.3848063-2-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422161844.3848063-1-maz@kernel.org>
References: <20200422161844.3848063-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, yuzenghui@huawei.com,
 eric.auger@redhat.com, Andre.Przywara@arm.com, julien@xen.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 stable@vger.kernel.org, andre.przywara@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_091922_672606_426F45EC 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 =?UTF-8?q?Andr=C3=A9=20Przywara?= <andre.przywara@arm.com>,
 stable@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBkZWNpZGluZyB3aGV0aGVyIGEgZ3Vlc3QgaGFzIHRvIGJlIHN0b3BwZWQgd2UgY2hlY2sg
d2hldGhlciB0aGlzCmlzIGEgcHJpdmF0ZSBpbnRlcnJ1cHQgb3Igbm90LiBVbmZvcnR1bmF0ZWx5
LCB0aGVyZSdzIGFuIG9mZi1ieS1vbmUgYnVnCmhlcmUsIGFuZCB3ZSBmYWlsIHRvIHJlY29nbml6
ZSBhIHdob2xlIHJhbmdlIG9mIGludGVycnVwdHMgYXMgYmVpbmcKZ2xvYmFsIChHSUN2MiBTUElz
IDMyLTYzKS4KCkZpeCB0aGUgY29uZGl0aW9uIGZyb20gPiB0byBiZSA+PS4KCkNjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCkZpeGVzOiBhYmQ3MjI5NjI2YjkzICgiS1ZNOiBhcm0vYXJtNjQ6IFNp
bXBsaWZ5IGFjdGl2ZV9jaGFuZ2VfcHJlcGFyZSBhbmQgcGx1ZyByYWNlIikKUmVwb3J0ZWQtYnk6
IEFuZHLDqSBQcnp5d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KLS0tCiB2aXJ0L2t2bS9hcm0vdmdpYy92Z2lj
LW1taW8uYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS92aXJ0L2t2bS9hcm0vdmdpYy92Z2ljLW1taW8uYyBiL3Zp
cnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby5jCmluZGV4IDIxOTkzMDI1OTdmYWYuLmQwODVlMDQ3
OTUzZmEgMTAwNjQ0Ci0tLSBhL3ZpcnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby5jCisrKyBiL3Zp
cnQva3ZtL2FybS92Z2ljL3ZnaWMtbW1pby5jCkBAIC00NDQsNyArNDQ0LDcgQEAgc3RhdGljIHZv
aWQgdmdpY19tbWlvX2NoYW5nZV9hY3RpdmUoc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCBzdHJ1Y3Qg
dmdpY19pcnEgKmlycSwKIHN0YXRpYyB2b2lkIHZnaWNfY2hhbmdlX2FjdGl2ZV9wcmVwYXJlKHN0
cnVjdCBrdm1fdmNwdSAqdmNwdSwgdTMyIGludGlkKQogewogCWlmICh2Y3B1LT5rdm0tPmFyY2gu
dmdpYy52Z2ljX21vZGVsID09IEtWTV9ERVZfVFlQRV9BUk1fVkdJQ19WMyB8fAotCSAgICBpbnRp
ZCA+IFZHSUNfTlJfUFJJVkFURV9JUlFTKQorCSAgICBpbnRpZCA+PSBWR0lDX05SX1BSSVZBVEVf
SVJRUykKIAkJa3ZtX2FybV9oYWx0X2d1ZXN0KHZjcHUtPmt2bSk7CiB9CiAKQEAgLTQ1Miw3ICs0
NTIsNyBAQCBzdGF0aWMgdm9pZCB2Z2ljX2NoYW5nZV9hY3RpdmVfcHJlcGFyZShzdHJ1Y3Qga3Zt
X3ZjcHUgKnZjcHUsIHUzMiBpbnRpZCkKIHN0YXRpYyB2b2lkIHZnaWNfY2hhbmdlX2FjdGl2ZV9m
aW5pc2goc3RydWN0IGt2bV92Y3B1ICp2Y3B1LCB1MzIgaW50aWQpCiB7CiAJaWYgKHZjcHUtPmt2
bS0+YXJjaC52Z2ljLnZnaWNfbW9kZWwgPT0gS1ZNX0RFVl9UWVBFX0FSTV9WR0lDX1YzIHx8Ci0J
ICAgIGludGlkID4gVkdJQ19OUl9QUklWQVRFX0lSUVMpCisJICAgIGludGlkID49IFZHSUNfTlJf
UFJJVkFURV9JUlFTKQogCQlrdm1fYXJtX3Jlc3VtZV9ndWVzdCh2Y3B1LT5rdm0pOwogfQogCi0t
IAoyLjI2LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
