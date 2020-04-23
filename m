Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7FE1B5FAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spSKCDxcrXs4X5P1mrAmA+OXlyGdTHs86E9K/IkuLfE=; b=bAMkC6lUuMwQUi
	9RjLcZYfHv+ARp6ykqdZLZuMv0ctt/Uxva/LxLjWjW7hCyXHrmcSWJjCw31xQ0RyfdkS80527jRwV
	2dLSAdM9EITPXJ8gWWzoFNCVepMBBXJe/6Fk5BhJV8lFOocqVWhTq2tKnR4ctfGF2Nodzb/2QN5+X
	HbhVeH3GxZiZ+EI5QAcDdW1VaNKVLEXCkFx47r7HLzcwuUuFHtDBYTqDP+4RbSQO+s8WwSKUfXVxE
	99fs+a7ebdY7eG9fkN5Pcr3aAm5hGLZte2D0rLKLg3SbG4SsgOwkOa0OWlUBp3c3o3j61TqeR5hm4
	niQhiHgvp2by2NAklLJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdyQ-0006YF-DM; Thu, 23 Apr 2020 15:41:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdxo-0006J0-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 15:40:33 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B07E2076C;
 Thu, 23 Apr 2020 15:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587656432;
 bh=4DuwlILzO9hzvyysFjgJ3379wFv4s1rSPnAK2bFpaTs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wgO3AfdBxQ5L9TwoxHZk2oTCEXGNO3QjqONrDkRWAfcWa8L76plT1O2ZPWegtrg7+
 i8C3AzprII/rdO3bjLm1LgCwHm+bLBiI1Dr9+Rq87/xMdk4og41x2UUipxc459DCl0
 o6gy5G51pXzJL8MvLgDqeB8GlA+FRcCjBpf8IxkE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRdxm-005oPM-Mj; Thu, 23 Apr 2020 16:40:30 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 1/8] KVM: arm: vgic: Fix limit condition when writing to
 GICD_I[CS]ACTIVER
Date: Thu, 23 Apr 2020 16:40:02 +0100
Message-Id: <20200423154009.4113562-2-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423154009.4113562-1-maz@kernel.org>
References: <20200423154009.4113562-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 andre.przywara@arm.com, christoffer.dall@arm.com, julien@xen.org,
 yuzenghui@huawei.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 stable@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084032_827061_9815016D 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 =?UTF-8?q?Andr=C3=A9=20Przywara?= <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, stable@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
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
IAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
