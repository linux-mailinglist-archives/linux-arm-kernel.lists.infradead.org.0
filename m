Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E4313E178
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rAVXYc3tkkZRp3BDS3E2AlaQIxinwlcgOm+bM3PWng=; b=M75lhoJyuKX05O
	67r90bNkpUhJgpJ+cQjNYrWzXmvUBMd57xlautvVvW/WD9FpEdFotsWJcB/I0tWBVhksiEe/FedlK
	nz6SlVo6B69iiU2G3n+I8BE83IU/t8meaYgUbgSvTPx+PoyEMf09s3+xEa+A90wmzZDz58f5tLEcm
	I7FIl7MPNpbwqrsbtIkosMEmn7IEJfwHJDXng6Wg0obuQfSLxq5PHSPAaRiS4/MLHPPoCGfoRaAG1
	StEVsn3Haa6/bjwyDlLd5zfnObTZFA8qmDL6tJa4ipJfGx8R3lhQi/JaVwhZ2uMOYMmvUfPm5+Z0p
	Qutkn4BREE5Gx4wgMqiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8L9-000420-7c; Thu, 16 Jan 2020 16:49:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Im-00028e-V3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:47:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 24CA32073A;
 Thu, 16 Jan 2020 16:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193244;
 bh=TxwKOVFcE2pzmB8eSzLGTN684D6ahhL2WTGB0irJpMc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PzMZa/1uCMHSCpC8q61Q87mU/WI8XW++I8IRZK8R6OG6M/fjAnHH1DtNvJ7RhNO77
 YUZCPYnFwehTxKJeHrLefpglJ9eVT9fn98CPCzcXf7p1qRaMX+YqCU314Eli8w3H/z
 /HNCLxLp8g8mIAeLtTBjpSYVdTPSFJ253T+i254I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 053/205] pwm: sun4i: Fix incorrect calculation of
 duty_cycle/period
Date: Thu, 16 Jan 2020 11:40:28 -0500
Message-Id: <20200116164300.6705-53-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084725_107020_EE7B0ADD 
X-CRM114-Status: GOOD (  10.80  )
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
 linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpbIFVwc3RyZWFtIGNvbW1p
dCA1MGNjN2UzZTRmMjZlM2JmNWVkNzRhOGQwNjExOTVjNGQyMTYxYjhiIF0KClNpbmNlIDUuNC1y
YzEsIHB3bV9hcHBseV9zdGF0ZSBjYWxscyAtPmdldF9zdGF0ZSBhZnRlciAtPmFwcGx5CmlmIGF2
YWlsYWJsZSwgYW5kIHRoaXMgcmV2ZWFsZWQgYW4gaXNzdWUgd2l0aCBpbnRlZ2VyIHByZWNpc2lv
bgp3aGVuIGNhbGN1bGF0aW5nIGR1dHlfY3ljbGUgYW5kIHBlcmlvZCBmb3IgdGhlIGN1cnJlbnRs
eSBzZXQKc3RhdGUgaW4gLT5nZXRfc3RhdGUgY2FsbGJhY2suCgpUaGlzIGlzc3VlIG1hbmlmZXN0
ZWQgaW4gYnJva2VuIGJhY2tsaWdodCBvbiBzZXZlcmFsIEFsbHdpbm5lcgpiYXNlZCBkZXZpY2Vz
LgoKUHJldmlvdXNseSB0aGlzIHdvcmtlZCwgYmVjYXVzZSAtPmFwcGx5IHVwZGF0ZWQgdGhlIHBh
c3NlZCBzdGF0ZQpkaXJlY3RseS4KCkZpeGVzOiBkZWI5YzQ2MmY0ZTUzICgicHdtOiBzdW40aTog
RG9uJ3QgdXBkYXRlIHRoZSBzdGF0ZSBmb3IgdGhlIGNhbGxlciBvZiBwd21fYXBwbHlfc3RhdGUi
KQpTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KQWNrZWQt
Ynk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+ClNp
Z25lZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+ClNp
Z25lZC1vZmYtYnk6IFNhc2hhIExldmluIDxzYXNoYWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJz
L3B3bS9wd20tc3VuNGkuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDZmNTg0MGExYTgyZC4uMDUyNzM3MjVhOWZm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJzL3B3bS9w
d20tc3VuNGkuYwpAQCAtMTM3LDEwICsxMzcsMTAgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dl
dF9zdGF0ZShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsCiAKIAl2YWwgPSBzdW40aV9wd21fcmVhZGwo
c3VuNGlfcHdtLCBQV01fQ0hfUFJEKHB3bS0+aHdwd20pKTsKIAotCXRtcCA9IHByZXNjYWxlciAq
IE5TRUNfUEVSX1NFQyAqIFBXTV9SRUdfRFRZKHZhbCk7CisJdG1wID0gKHU2NClwcmVzY2FsZXIg
KiBOU0VDX1BFUl9TRUMgKiBQV01fUkVHX0RUWSh2YWwpOwogCXN0YXRlLT5kdXR5X2N5Y2xlID0g
RElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgY2xrX3JhdGUpOwogCi0JdG1wID0gcHJlc2NhbGVy
ICogTlNFQ19QRVJfU0VDICogUFdNX1JFR19QUkQodmFsKTsKKwl0bXAgPSAodTY0KXByZXNjYWxl
ciAqIE5TRUNfUEVSX1NFQyAqIFBXTV9SRUdfUFJEKHZhbCk7CiAJc3RhdGUtPnBlcmlvZCA9IERJ
Vl9ST1VORF9DTE9TRVNUX1VMTCh0bXAsIGNsa19yYXRlKTsKIH0KIAotLSAKMi4yMC4xCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
