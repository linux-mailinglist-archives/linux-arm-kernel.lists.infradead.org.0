Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E878A11C99A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 10:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ss34Nb0DjX9WHSvTdtASFit+TeqG4ZalXpU8RorM9Ic=; b=DptT+RUE8joaCZ
	nlaDMPxNM6it18LUUcqx7NDpZXGEUEP+2DdfJk+Kq6se8568v6/9dwwzO2h+dBrGEeLdkX+VWrgZi
	dM/9xUC1hL31YclxvAkJqCbDBeYuZqe9GgfDddhfOW7D10MCypkDecWEZCbFeJTTeytC8IHg3KDo4
	rO/f/642Z3sh3kUhvdcH33oQa/jvt95bDivFjKAjxfO55JoiYS/hNHSF3gq4up686zd55fZWkf5AF
	gejWi6Ol3etjEEIkCWUVZjBJM4qyH+JhaDHQFUt+a0Bu8Imkhxqdr+LZRHoRnubC6cCHi8v2E7OGn
	F2cxbgO+u+29ndU3MQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKy9-0002Ai-GZ; Thu, 12 Dec 2019 09:41:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKxt-00028e-EO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 09:40:59 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B37B24654;
 Thu, 12 Dec 2019 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576143655;
 bh=Rr7kCvNdPW3e2IBJnliH3eTMWWlqAlnaKNJfjBbxn3s=;
 h=From:To:Cc:Subject:Date:From;
 b=o/9lLUezdKlavsdvjIBXsTOvuw3E3zZTN9Ja5z0/TirEBSPaaZMc7xjY3+/teFHW3
 b0rQZzbv9qi+ZQsTvG7h3kcnTKxxC32C6lWbH5GKWBCQjcCsO/GB0vRo4HIWv22ja6
 CDlloQV5Yk05Dhr03Isp4flcMUL6DpXqTroiKHPM=
From: Will Deacon <will@kernel.org>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH] KVM: arm64: Ensure 'params' is initialised when looking up
 sys register
Date: Thu, 12 Dec 2019 09:40:49 +0000
Message-Id: <20191212094049.12437-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_014057_518161_7FCCAD5A 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: suzuki.poulose@arm.com, Will Deacon <will@kernel.org>,
 stable@vger.kernel.org, Vijaya Kumar K <Vijaya.Kumar@cavium.com>,
 james.morse@arm.com, Marc Zyngier <maz@kernel.org>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q29tbWl0IDRiOTI3Yjk0ZDVkZiAoIktWTTogYXJtL2FybTY0OiB2Z2ljOiBJbnRyb2R1Y2UgZmlu
ZF9yZWdfYnlfaWQoKSIpCmludHJvZHVjZWQgJ2ZpbmRfcmVnX2J5X2lkKCknLCB3aGljaCBsb29r
cyB1cCBhIHN5c3RlbSByZWdpc3RlciBvbmx5IGlmCnRoZSAnaWQnIGluZGV4IHBhcmFtZXRlciBp
ZGVudGlmaWVzIGEgdmFsaWQgc3lzdGVtIHJlZ2lzdGVyLiBBcyBwYXJ0IG9mCnRoZSBwYXRjaCwg
ZXhpc3RpbmcgY2FsbGVycyBvZiAnZmluZF9yZWcoKScgd2VyZSBwb3J0ZWQgb3ZlciB0byB0aGUg
bmV3CmludGVyZmFjZSwgYnV0IHRoaXMgYnJlYWtzICdpbmRleF90b19zeXNfcmVnX2Rlc2MoKScg
aW4gdGhlIGNhc2UgdGhhdCB0aGUKaW5pdGlhbCBsb29rdXAgaW4gdGhlIHZDUFUgdGFyZ2V0IHRh
YmxlIGZhaWxzIGJlY2F1c2Ugd2Ugd2lsbCB0aGVuIGNhbGwKaW50byAnZmluZF9yZWcoKScgZm9y
IHRoZSBzeXN0ZW0gcmVnaXN0ZXIgdGFibGUgd2l0aCBhbiB1bmluaXRpYWxpc2VkCidwYXJhbScg
YXMgdGhlIGtleSB0byB0aGUgbG9va3VwLgoKR0NDIDEwIGlzIGJyaWdodCBlbm91Z2ggdG8gc3Bv
dCB0aGlzIChhbW9uZ3N0IGEgdG9ubmUgb2YgZmFsc2UgcG9zaXRpdmVzLApidXQgaGV5ISk6Cgog
IHwgYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYzogSW4gZnVuY3Rpb24g4oCYaW5kZXhfdG9fc3lz
X3JlZ19kZXNjLnBhcnQuMC5pc3Jh4oCZOgogIHwgYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYzo5
ODM6MzM6IHdhcm5pbmc6IOKAmHBhcmFtcy5PcDLigJkgbWF5IGJlIHVzZWQgdW5pbml0aWFsaXpl
ZCBpbiB0aGlzIGZ1bmN0aW9uIFstV21heWJlLXVuaW5pdGlhbGl6ZWRdCiAgfCAgIDk4MyB8ICAg
KHUzMikoeCktPkNSbiwgKHUzMikoeCktPkNSbSwgKHUzMikoeCktPk9wMik7CiAgfCBbLi4uXQoK
UmV2ZXJ0IHRoZSBodW5rIG9mIDRiOTI3Yjk0ZDVkZiB3aGljaCBicmVha3MgJ2luZGV4X3RvX3N5
c19yZWdfZGVzYygpJyBzbwp0aGF0IHRoZSBvbGQgYmVoYXZpb3VyIG9mIGNoZWNraW5nIHRoZSBp
bmRleCB1cGZyb250IGlzIHJlc3RvcmVkLgoKQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPgpD
YzogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KQ2M6IFZpamF5YSBLdW1hciBLIDxWaWph
eWEuS3VtYXJAY2F2aXVtLmNvbT4KRml4ZXM6IDRiOTI3Yjk0ZDVkZiAoIktWTTogYXJtL2FybTY0
OiB2Z2ljOiBJbnRyb2R1Y2UgZmluZF9yZWdfYnlfaWQoKSIpClNpZ25lZC1vZmYtYnk6IFdpbGwg
RGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Ci0tLQogYXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYyB8
IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5jIGIvYXJjaC9hcm02NC9rdm0v
c3lzX3JlZ3MuYwppbmRleCA0NjgyMmFmYzU3ZTAuLjAxYTUxNWUwMTcxZSAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9rdm0vc3lzX3JlZ3MuYworKysgYi9hcmNoL2FybTY0L2t2bS9zeXNfcmVncy5j
CkBAIC0yMzYwLDggKzIzNjAsMTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzeXNfcmVnX2Rlc2Mg
KmluZGV4X3RvX3N5c19yZWdfZGVzYyhzdHJ1Y3Qga3ZtX3ZjcHUgKnZjcHUsCiAJaWYgKChpZCAm
IEtWTV9SRUdfQVJNX0NPUFJPQ19NQVNLKSAhPSBLVk1fUkVHX0FSTTY0X1NZU1JFRykKIAkJcmV0
dXJuIE5VTEw7CiAKKwlpZiAoIWluZGV4X3RvX3BhcmFtcyhpZCwgJnBhcmFtcykpCisJCXJldHVy
biBOVUxMOworCiAJdGFibGUgPSBnZXRfdGFyZ2V0X3RhYmxlKHZjcHUtPmFyY2gudGFyZ2V0LCB0
cnVlLCAmbnVtKTsKLQlyID0gZmluZF9yZWdfYnlfaWQoaWQsICZwYXJhbXMsIHRhYmxlLCBudW0p
OworCXIgPSBmaW5kX3JlZygmcGFyYW1zLCB0YWJsZSwgbnVtKTsKIAlpZiAoIXIpCiAJCXIgPSBm
aW5kX3JlZygmcGFyYW1zLCBzeXNfcmVnX2Rlc2NzLCBBUlJBWV9TSVpFKHN5c19yZWdfZGVzY3Mp
KTsKIAotLSAKMi4yNC4xLjczNS5nMDNmNGU3MjgxNy1nb29nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
