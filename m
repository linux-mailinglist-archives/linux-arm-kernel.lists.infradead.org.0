Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EB51FDF41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36mG3GlOWtN0yDMLRpXBRKCEOAEAAobWRQMlLFk/qgA=; b=B0Fc5LoNKO7bnl
	YmJlxUf1tiK2Xdh0F43JXupqxOwzmFMUtZAK+L3Zo+SCeHSr4QtAbeDd/V6cf4PZF3H9Pw97X0D5I
	E8tCHeQ/fSBsUho9M89AmVHuaBCGvncXcm9CR66+/hnd8zkcaRGMCujIa0GbmycvABg0qML5riEHB
	ez+c3hD4PdeYguw78PQXpP7SO4hazeyWMw52hthU8ECmzBFG/HwHzoB2a5Zi8FWb5uB9zhasqIVof
	hahjzxFv5oAc7LpdKOd7Iz0EZRdi01hmE1JCxmDiWr/HIgEIeJXUHSDcscNF3JP0U0TsJL+k3kceX
	VIUx6BRPn+xUhKBZLvww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljXf-0004vV-HM; Thu, 18 Jun 2020 01:40:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljBA-00086r-UW
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:17:22 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EE9721D7E;
 Thu, 18 Jun 2020 01:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443040;
 bh=f+TFBHjvg1aZ9AskKDipNue4l9sLDewX4dGhaH9jGPo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gAmS7WcNueaAWUxEeCEEQuLOx1iDVqai7VQeLzaDWN+v/OS9ZAI23GI09T1nEZ51F
 YJCfPDeCdnI+RDqvjuSkMjR1gHXEF/RR+sVW+DLWUmeasdVXcTpBHoHvGdRrGQVuIT
 HDrg0QWPzcVQwSsfqvnD22ALluzn+Kwe3RQlTd+E=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 036/266] arm64: dts: armada-3720-turris-mox:
 forbid SDR104 on SDIO for FCC purposes
Date: Wed, 17 Jun 2020 21:12:41 -0400
Message-Id: <20200618011631.604574-36-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181721_145723_A2C2F77D 
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
bWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCmluZGV4IDVmMzUwY2M3MWEyZi4uMDFmNjYwNTZkN2Q1
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVy
cmlzLW1veC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIw
LXR1cnJpcy1tb3guZHRzCkBAIC0xNzEsNiArMTcxLDggQEAgJnNkaGNpMSB7CiAJbWFydmVsbCxw
YWQtdHlwZSA9ICJzZCI7CiAJdnFtbWMtc3VwcGx5ID0gPCZ2c2Rpb19yZWc+OwogCW1tYy1wd3Jz
ZXEgPSA8JnNkaGNpMV9wd3JzZXE+OworCS8qIGZvcmJpZCBTRFIxMDQgZm9yIEZDQyBwdXJwb3Nl
cyAqLworCXNkaGNpLWNhcHMtbWFzayA9IDwweDIgMHgwPjsKIAlzdGF0dXMgPSAib2theSI7CiB9
OwogCi0tIAoyLjI1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
