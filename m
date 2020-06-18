Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D01FDB59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFAreHw7R3fm+x2NBsHTuHgF19CPqvqNWthSmHSuDe0=; b=t3clj67jyh0SMs
	I3yJ/FPDzqIqVvfaZtPEJraDYU2pPeRxc9CqMhE1INPb75ppIilYl82M2UnuSV8b1Btj/soQuhG2t
	/VVvLFgRJkDwQ+e3jS0rkgn1WNulJ231uyn7v4bbPChCz7tPT2/RgXbLSMdra9GIIJWeMgUv1lbki
	hKigcAXGdyQeKUnEMFECKg4QpkoAj3QFBQstJUaTSSS1pF9kr+Jz+ZmYjAq9+oP+ypiX/IKNTvzMM
	HI8PwW1TT948PoddqpQy+6K6QFUbluLKWiESAO+pjiWVh3ish/vrhhjoZ4/vmFlylXR312MKpI90C
	8CVthCijrdQ09wrtpVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlj6c-0001uJ-LN; Thu, 18 Jun 2020 01:12:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj3G-0005Ky-Na
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:09:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E5D721D7D;
 Thu, 18 Jun 2020 01:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442550;
 bh=sEhelHlSYwzp798DVVNLwasxQDBLxiPB58/bU1SM2PY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w8zQqtXBfnOdON2n0aU89fy1OBl7ZH7/1MOxWnIaHO2CR5KuX48OrEutTCYfiPwQL
 hElaTmPLo55v20UOZfQl6KuSnSl5jDFl8JmEZk1I7UJxzuk/iVxm3QagyOrA/g31XI
 Cw1zFsJwuQCgBivz0CquKRwF8p2FLOR9N7PchxkA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 048/388] arm64: dts: armada-3720-turris-mox:
 forbid SDR104 on SDIO for FCC purposes
Date: Wed, 17 Jun 2020 21:02:25 -0400
Message-Id: <20200618010805.600873-48-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_180910_812100_9C434D22 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+CgpbIFVwc3RyZWFtIGNvbW1p
dCA3YTJjMzZiMDM5ZDIzNDNjYzI5ZmVjNjEwMmRhODM5NDc3YjhkYzYwIF0KClVzZSBzZGhjaS1j
YXBzLW1hc2sgdG8gZm9yYmlkIFNEUjEwNCBtb2RlIG9uIHRoZSBTRElPIGNhcGFibGUgU0RIQ0kK
Y29udHJvbGxlci4gV2l0aG91dCB0aGlzIHRoZSBkZXZpY2UgY2Fubm90IHBhc3MgZWxlY3Ryb21h
Z25ldGljCmludGVyZmVyZW5jZSBjZXJ0aWZpY2F0aW9ucy4KCkZpeGVzOiA3MTA5ZDgxN2RiMmUg
KCJhcm02NDogZHRzOiBtYXJ2ZWxsOiBhZGQgRFRTIGZvciBUdXJyaXMgTW94IikKU2lnbmVkLW9m
Zi1ieTogTWFyZWsgQmVow7puIDxtYXJlay5iZWh1bkBuaWMuY3o+CkNjOiBHcmVnb3J5IENMRU1F
TlQgPGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogR3JlZ29yeSBD
TEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFNhc2hh
IExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZl
bGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5kdHMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Fy
bWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Fy
bWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCmluZGV4IGJiNDJkMWU2YTRlOS4uNDdmZWU2NmM3MGNi
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVy
cmlzLW1veC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIw
LXR1cnJpcy1tb3guZHRzCkBAIC0xNzksNiArMTc5LDggQEAgJnNkaGNpMSB7CiAJbWFydmVsbCxw
YWQtdHlwZSA9ICJzZCI7CiAJdnFtbWMtc3VwcGx5ID0gPCZ2c2Rpb19yZWc+OwogCW1tYy1wd3Jz
ZXEgPSA8JnNkaGNpMV9wd3JzZXE+OworCS8qIGZvcmJpZCBTRFIxMDQgZm9yIEZDQyBwdXJwb3Nl
cyAqLworCXNkaGNpLWNhcHMtbWFzayA9IDwweDIgMHgwPjsKIAlzdGF0dXMgPSAib2theSI7CiB9
OwogCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
