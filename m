Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DAA1FDCE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoY6byEy/vZhnZnqPZySZ2umfbgcWBmkXGW7g/2erLg=; b=eJE6sy8RISsWVp
	cFgPYAEm5WwsnjBZhBmw8R+o5OUktNzCUvPvNX0OtOLAJ2XlQekWPMxI1fBs/slbUGCOJVvK9gVr1
	BA1Dz2wsPnXsKGeyfZHgzjObUYWeUoa0FR2lP+oEeA9/zPWn0LHDFDK58cLffJ2n9/EcpGY6DNnuk
	FTOHES7b6OER26ShdPpqxLzwKbKotbJKrztZE5VXxokNUN8mwH4yF8MvfcQx9u8sH7ty0t29qvWxg
	zA5coN5x9sGoyaCPayas4b1GclynTWb1cuRVJ56f0E/IqTZvi3o+JYPHxiQX2dC7MqWqBu20AT9Cg
	h/WDJUfD655x39Sjvdsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljHh-00074V-Od; Thu, 18 Jun 2020 01:24:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj6j-0002I9-H3
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:12:47 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 271E920CC7;
 Thu, 18 Jun 2020 01:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442765;
 bh=EErdMN8eKgwLm5pu88Mv/t1aZoo7WuwsMT7n55tqxVQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xy4urPlQc8UKHFK1qjMOG2lDva6peclOHmdk/WUmUthSemOV9NhIzUb3yaLLekvTP
 QbnBmmBRHvvVIWU+CAijPWFqdxio8JZcCCX4h+BUMg9NemYzeyNTzJdtFxNsDAio+y
 g8dYfGzXdywEI7kLhhhfWJzakeT+3rG5b8KSToBE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 214/388] arm64: dts: marvell: armada-37xx: Set
 pcie_reset_pin to gpio function
Date: Wed, 17 Jun 2020 21:05:11 -0400
Message-Id: <20200618010805.600873-214-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181245_631815_0C8E0A50 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>, Sasha Levin <sashal@kernel.org>,
 devicetree@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+CgpbIFVwc3RyZWFtIGNvbW1p
dCA3MTU4NzgwMTY5ODRiMjYxN2Y2YzFmMTc3YzUwMDM5ZTEyZTdiZDViIF0KCldlIGZvdW5kIG91
dCB0aGF0IHdlIGFyZSB1bmFibGUgdG8gY29udHJvbCB0aGUgUEVSU1QjIHNpZ25hbCB2aWEgdGhl
CmRlZmF1bHQgcGluIGRlZGljYXRlZCB0byBiZSBQRVJTVCMgcGluIChHUElPMlszXSBwaW4pIG9u
IEEzNzAwIFNPQyB3aGVuCnRoaXMgcGluIGlzIGluIEVQX1BDSUUxX1Jlc2V0biBtb2RlLiBUaGVy
ZSBpcyBhIHJlZ2lzdGVyIGluIHRoZSBQQ0llCnJlZ2lzdGVyIHNwYWNlIGNhbGxlZCBQRVJTVE5f
R1BJT19FTiAoRDAwODgwMDRbM10pLCBidXQgY2hhbmdpbmcgdGhlCnZhbHVlIG9mIHRoaXMgcmVn
aXN0ZXIgZG9lcyBub3QgY2hhbmdlIHRoZSBwaW4gb3V0cHV0IHdoZW4gbWVhc3VyaW5nCndpdGgg
dm9sdG1ldGVyLgoKV2UgZG8gbm90IGtub3cgaWYgdGhpcyBpcyBhIGJ1ZyBpbiB0aGUgU09DLCBv
ciBpZiBpdCB3b3JrcyBvbmx5IHdoZW4KUENJZSBjb250cm9sbGVyIGlzIGluIGEgY2VydGFpbiBz
dGF0ZS4KCkNvbW1pdCBmNGM3ZDA1M2Q3ZjcgKCJQQ0k6IGFhcmR2YXJrOiBXYWl0IGZvciBlbmRw
b2ludCB0byBiZSByZWFkeQpiZWZvcmUgdHJhaW5pbmcgbGluayIpIHNheXMgdGhhdCB3aGVuIHRo
aXMgcGluIGNoYW5nZXMgcGluY3RybCBtb2RlCmZyb20gRVBfUENJRTFfUmVzZXRuIHRvIEdQSU8s
IHRoZSBQRVJTVCMgc2lnbmFsIGlzIGFzc2VydGVkIGZvciBhIGJyaWVmCm1vbWVudC4KClNvIGN1
cnJlbnRseSB0aGUgc2l0dWF0aW9uIGlzIHRoYXQgb24gQTM3MDAgYm9hcmRzIHRoZSBQRVJTVCMg
c2lnbmFsIGlzCmFzc2VydGVkIGluIFUtQm9vdCAoYmVjYXVzZSB0aGUgY29kZSBpbiBVLUJvb3Qg
aXNzdWVzIHJlc2V0IHZpYSB0aGlzIHBpbgp2aWEgR1BJTyBtb2RlKSwgYW5kIHRoZW4gaW4gTGlu
dXggYnkgdGhlIG9ic2N1cmUgYW5kIHVuZG9jdW1lbnRlZAptZWNoYW5pc20gZGVzY3JpYmVkIGJ5
IHRoZSBhYm92ZSBtZW50aW9uZWQgY29tbWl0LgoKV2Ugd2FudCB0byBpc3N1ZSBQRVJTVCMgc2ln
bmFsIGluIGEga25vd24gd2F5LCB0aGVyZWZvcmUgdGhpcyBwYXRjaApjaGFuZ2VzIHRoZSBwY2ll
X3Jlc2V0X3BpbiBmdW5jdGlvbiBmcm9tICJwY2llIiB0byAiZ3BpbyIgYW5kIGFkZHMgdGhlCnJl
c2V0LWdwaW9zIHByb3BlcnR5IHRvIHRoZSBQQ0llIG5vZGUgaW4gZGV2aWNlIHRyZWUgZmlsZXMg
b2YKRXNwcmVzc29CaW4gYW5kIEFybWFkYSAzNzIwIERldiBCb2FyZCAoVHVycmlzIE1veCBkZXZp
Y2UgdHJlZSBhbHJlYWR5CmhhcyB0aGlzIHByb3BlcnR5IGFuZCB1RFBVIGRvZXMgbm90IGhhdmUg
YSBQQ0llIHBvcnQpLgoKU2lnbmVkLW9mZi1ieTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBu
aWMuY3o+CkNjOiBSZW1pIFBvbW1hcmVsIDxyZXBrQHRyaXBsZWZhdS5sdD4KVGVzdGVkLWJ5OiBU
b21hc3ogTWFjaWVqIE5vd2FrIDx0bW41MDVAZ21haWwuY29tPgpBY2tlZC1ieTogVGhvbWFzIFBl
dGF6em9uaSA8dGhvbWFzLnBldGF6em9uaUBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogR3Jl
Z29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6
IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvYXJtYWRhLTM3MjAtZGIuZHRzICAgICAgICAgICB8IDMgKysrCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaSB8IDEgKwogYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzICAgfCA0
IC0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpICAgICAg
ICAgICAgIHwgMiArLQogNCBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0z
NzIwLWRiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1kYi5k
dHMKaW5kZXggZjJjYzAwNTk0ZDY0Li4zZTU3ODlmMzcyMDYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1kYi5kdHMKKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWRiLmR0cwpAQCAtMTI4LDYgKzEyOCw5IEBAIHBo
eTE6IGV0aGVybmV0LXBoeUAxIHsKIAogLyogQ09OMTUoVjIuMCkvQ09OMTcoVjEuNCkgOiBQQ0ll
IC8gQ09OMTUoVjIuMCkvQ09OMTIoVjEuNCkgOm1pbmktUENJZSAqLwogJnBjaWUwIHsKKwlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOworCXBpbmN0cmwtMCA9IDwmcGNpZV9yZXNldF9waW5zICZw
Y2llX2Nsa3JlcV9waW5zPjsKKwlyZXNldC1ncGlvcyA9IDwmZ3Bpb3NiIDMgR1BJT19BQ1RJVkVf
TE9XPjsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaSBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHNpCmluZGV4IDQyZTk5
MmY5YzhhNS4uYzkyYWQ2NjRjYjBlIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaQpAQCAtNDcsNiArNDcsNyBA
QCAmcGNpZTAgewogCXBoeXMgPSA8JmNvbXBoeTEgMD47CiAJcGluY3RybC1uYW1lcyA9ICJkZWZh
dWx0IjsKIAlwaW5jdHJsLTAgPSA8JnBjaWVfcmVzZXRfcGlucyAmcGNpZV9jbGtyZXFfcGlucz47
CisJcmVzZXQtZ3Bpb3MgPSA8JmdwaW9zYiAzIEdQSU9fQUNUSVZFX0xPVz47CiB9OwogCiAvKiBK
NiAqLwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIw
LXR1cnJpcy1tb3guZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIw
LXR1cnJpcy1tb3guZHRzCmluZGV4IDBlMDQ5MWNhMjkzMC4uMTQ1MmM4MjFmOGMwIDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5k
dHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1t
b3guZHRzCkBAIC0xMjgsMTAgKzEyOCw2IEBAIHJ0Y0A2ZiB7CiAJfTsKIH07CiAKLSZwY2llX3Jl
c2V0X3BpbnMgewotCWZ1bmN0aW9uID0gImdwaW8iOwotfTsKLQogJnBjaWUwIHsKIAlwaW5jdHJs
LW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmcGNpZV9yZXNldF9waW5zICZwY2ll
X2Nsa3JlcV9waW5zPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtMzd4eC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4
LmR0c2kKaW5kZXggMDAwYzEzNWUzOWI3Li43OTA5YzE0NmVhYmYgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpCisrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpCkBAIC0zMTcsNyArMzE3LDcgQEAgc2Rp
b19waW5zOiBzZGlvLXBpbnMgewogCiAJCQkJcGNpZV9yZXNldF9waW5zOiBwY2llLXJlc2V0LXBp
bnMgewogCQkJCQlncm91cHMgPSAicGNpZTEiOwotCQkJCQlmdW5jdGlvbiA9ICJwY2llIjsKKwkJ
CQkJZnVuY3Rpb24gPSAiZ3BpbyI7CiAJCQkJfTsKIAogCQkJCXBjaWVfY2xrcmVxX3BpbnM6IHBj
aWUtY2xrcmVxLXBpbnMgewotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
