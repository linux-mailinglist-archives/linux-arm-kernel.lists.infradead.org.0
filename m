Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DE13E7CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2u93Cc2y5ey1xjMDOvh6KdwgsZveG4qcUdh7ThFNBY=; b=mYT7PKreEWm3eC
	gPkjZN7F6spGM41AG/JNVhZpvnGsVVKMSLLrbB8Lz3beJ/oq5IQD2kLE4qFQcnTEOeRHHSGguBQt1
	yTQxl+zlV2dhCgzOr+jkf09oBxwbK1zQVpzrAthgEuhehh5ObCCZeLVgaVsyDojJ5sa2pnAI7GPE2
	RtOa/23vTycChp1SEHepR62Js0JVVS1+Shq+sBjEwUbVqwSi/0AHmqGi/rVyoJ+9pmAOqKBTVDPBz
	mCPphZB15DdiBnFly0a2evbvwdaQcsnkDPClhR1fokfSZl+DkbPTv4HxpTa8MFPDmWPLpM0xC0Wwj
	GO1S/wbdE3yMgodecMLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8wa-0005Z2-V0; Thu, 16 Jan 2020 17:28:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8d3-0001Ix-49
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:08:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F15AC22464;
 Thu, 16 Jan 2020 17:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194499;
 bh=RYTJX7tjMAYi3e6sBx82WM3OZ5dIvSFuCjkiIXsioGo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gK5Z0M1LBr9/3wLb/01Boidggv5NZapEvXYAcGc1L2zB60FQjUt9an2SaxhGdqer6
 2ozTaGzJ6yvs52SbuupcuEGGmVY0heD3cqdEoG3w+kuSGTdb4LGUTI56tbeCdrMxhA
 gw0O43Znoab9EydzjosDO25MF/OZwTG+WXIre6Jk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 396/671] clk: sunxi-ng: sun50i-h6-r: Fix
 incorrect W1 clock gate register
Date: Thu, 16 Jan 2020 12:00:34 -0500
Message-Id: <20200116170509.12787-133-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090821_518405_5D0E2D5A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ondrej Jirman <megous@megous.com>, Sasha Levin <sashal@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpbIFVwc3RyZWFtIGNvbW1p
dCBmMTY3Njc1NDg2YzM3Yjg4NjIwZDM0NGZiYjEyZDA2ZTM0ZjExZDQ3IF0KClRoZSBjdXJyZW50
IGNvZGUgZGVmaW5lcyBXMSBjbG9jayBnYXRlIHRvIGJlIGF0IDB4MWNjLCBvdmVybGF5aW5nIGl0
CndpdGggdGhlIElSIGdhdGUuCgpDbG9jayBnYXRlIGZvciByLWFwYjEtdzEgaXMgYXQgMHgxZWMu
IFRoaXMgZml4ZXMgaXNzdWVzIHdpdGggSVIgcmVjZWl2ZXIKY2F1c2luZyBpbnRlcnJ1cHQgZmxv
b2RzIG9uIEg2IChiZWNhdXNlIGludGVycnVwdCBmbGFncyBjYW4ndCBiZSBjbGVhcmVkLApkdWUg
dG8gSVIgbW9kdWxlJ3MgYnVzIGJlaW5nIGRpc2FibGVkKS4KCkZpeGVzOiBiN2M3YjA1MDY1YWE3
N2FlICgiY2xrOiBzdW54aS1uZzogYWRkIHN1cHBvcnQgZm9yIEg2IFBSQ00gQ0NVIikKU2lnbmVk
LW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CkFja2VkLWJ5OiBDbMOp
bWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBM
ZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9jbGsvc3VueGktbmcvY2N1LXN1
bjUwaS1oNi1yLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2
LXIuYyBiL2RyaXZlcnMvY2xrL3N1bnhpLW5nL2NjdS1zdW41MGktaDYtci5jCmluZGV4IDI3NTU0
ZWFmNjkyOS4uOGQwNWQ0ZjFmOGExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9zdW54aS1uZy9j
Y3Utc3VuNTBpLWg2LXIuYworKysgYi9kcml2ZXJzL2Nsay9zdW54aS1uZy9jY3Utc3VuNTBpLWg2
LXIuYwpAQCAtMTA0LDcgKzEwNCw3IEBAIHN0YXRpYyBTVU5YSV9DQ1VfR0FURShyX2FwYjJfaTJj
X2NsaywJInItYXBiMi1pMmMiLAkici1hcGIyIiwKIHN0YXRpYyBTVU5YSV9DQ1VfR0FURShyX2Fw
YjFfaXJfY2xrLAkici1hcGIxLWlyIiwJInItYXBiMSIsCiAJCSAgICAgIDB4MWNjLCBCSVQoMCks
IDApOwogc3RhdGljIFNVTlhJX0NDVV9HQVRFKHJfYXBiMV93MV9jbGssCSJyLWFwYjEtdzEiLAki
ci1hcGIxIiwKLQkJICAgICAgMHgxY2MsIEJJVCgwKSwgMCk7CisJCSAgICAgIDB4MWVjLCBCSVQo
MCksIDApOwogCiAvKiBJbmZvcm1hdGlvbiBvZiBJUihSWCkgbW9kIGNsb2NrIGlzIGdhdGhlcmVk
IGZyb20gQlNQIHNvdXJjZSBjb2RlICovCiBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHJfbW9k
MF9kZWZhdWx0X3BhcmVudHNbXSA9IHsgIm9zYzMyayIsICJvc2MyNE0iIH07Ci0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
