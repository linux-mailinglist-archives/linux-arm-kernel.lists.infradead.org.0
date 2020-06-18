Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D51FDD0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnb5f2p5C1JidRaBMQGITpAs+YsZ9xbJrIg0iiOTsL8=; b=dxHpOw8S2rICeB
	OMxxMyF2N0CoQcYDTlGQZqNGw2HfhFJQCVlzyKUlAQBYV4SWOdaVbKMiQlpEIvYzAnWi4avrOQB64
	NlIc1wmSOKgncyWD+oFEbpwVSqq57Oi/vHX5/LCtwePAi2wj/k+8QKmc+yzES5e80ay9RFuC+Ryhb
	p9LtsZB/m2W0UPRhemCntnI8Z9Md7QIIo9uPf+TknLFyaBWVflUkY5sRIojrEhvZHvbpF+GvkH/Le
	5t9OhUTx1/FlvrLhZx0B09AMjieDhbgnAeCvhuaREe3coD8OKdX/NA8zyAuCgxWSviElVnrdi/9N3
	+47E7/kopPoYmswcio/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljI0-0007Lg-EY; Thu, 18 Jun 2020 01:24:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj6s-0002R7-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:12:56 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33F0221974;
 Thu, 18 Jun 2020 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442774;
 bh=s5tlMG5xYQEvcF25X+nwy3A9jSU1v8iqz8pZFmMrPIc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bdjCOut2ZjdBTpoS5bkod65IoM+ujhhLeI5X6KlQiR5Wcu7s6AvIKRTBIjpwRazgJ
 0p3NoTcUDigD6MZqTTgg1B3jPwi5XmJ2lM8IFry60EKg1YR8qVEx6w8pxdGRaES1yH
 nQq6Ln8VP1Uv/RjQ4y02AnXV3EOZpU+w6XQwsMoQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 221/388] PCI: aardvark: Train link immediately
 after enabling training
Date: Wed, 17 Jun 2020 21:05:18 -0400
Message-Id: <20200618010805.600873-221-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181254_942314_7F978A24 
X-CRM114-Status: GOOD (  10.98  )
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sasha Levin <sashal@kernel.org>,
 linux-pci@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KClsgVXBzdHJlYW0gY29tbWl0IDY5
NjQ0OTQ1ODJmNTZhMzg4MmMyYzUzYjBlZGJmZTk5ZWIzMmIyZTEgXQoKQWRkaW5nIGV2ZW4gMTAw
bXMgKFBDSV9QTV9EM0NPTERfV0FJVCkgZGVsYXkgYmV0d2VlbiBlbmFibGluZyBsaW5rCnRyYWlu
aW5nIGFuZCBzdGFydGluZyBsaW5rIHRyYWluaW5nIGNhdXNlcyBkZXRlY3Rpb24gaXNzdWVzIHdp
dGggc29tZQpidWdneSBjYXJkcyAoc3VjaCBhcyBDb21wZXggV0xFOTAwVlgpLgoKTW92ZSB0aGUg
Y29kZSB3aGljaCBlbmFibGVzIGxpbmsgdHJhaW5pbmcgaW1tZWRpYXRlbHkgYmVmb3JlIHRoZSBv
bmUKd2hpY2ggc3RhcnRzIGxpbmsgdHJhbmluZy4KClRoaXMgZml4ZXMgZGV0ZWN0aW9uIGlzc3Vl
cyBvZiBDb21wZXggV0xFOTAwVlggY2FyZCBvbiBUdXJyaXMgTU9YIGFmdGVyCmNvbGQgYm9vdC4K
Ckxpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA0MzAwODA2MjUuMjYwNzAtMi1w
YWxpQGtlcm5lbC5vcmcKRml4ZXM6IGY0YzdkMDUzZDdmNyAoIlBDSTogYWFyZHZhcms6IFdhaXQg
Zm9yIGVuZHBvaW50IHRvIGJlIHJlYWR5Li4uIikKVGVzdGVkLWJ5OiBUb21hc3ogTWFjaWVqIE5v
d2FrIDx0bW41MDVAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBr
ZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBMb3JlbnpvIFBpZXJhbGlzaSA8bG9yZW56by5waWVy
YWxpc2lAYXJtLmNvbT4KQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkFj
a2VkLWJ5OiBUaG9tYXMgUGV0YXp6b25pIDx0aG9tYXMucGV0YXp6b25pQGJvb3RsaW4uY29tPgpT
aWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYyB8IDE1ICsrKysrKysrKy0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jIGIvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2ktYWFyZHZhcmsuYwppbmRleCAzYTZkMDdkYzBhMzguLjc0YjkwOTQwYTlkNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYworKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCkBAIC0zMDAsMTEgKzMwMCw2IEBA
IHN0YXRpYyB2b2lkIGFkdmtfcGNpZV9zZXR1cF9odyhzdHJ1Y3QgYWR2a19wY2llICpwY2llKQog
CXJlZyB8PSBMQU5FX0NPVU5UXzE7CiAJYWR2a193cml0ZWwocGNpZSwgcmVnLCBQQ0lFX0NPUkVf
Q1RSTDBfUkVHKTsKIAotCS8qIEVuYWJsZSBsaW5rIHRyYWluaW5nICovCi0JcmVnID0gYWR2a19y
ZWFkbChwY2llLCBQQ0lFX0NPUkVfQ1RSTDBfUkVHKTsKLQlyZWcgfD0gTElOS19UUkFJTklOR19F
TjsKLQlhZHZrX3dyaXRlbChwY2llLCByZWcsIFBDSUVfQ09SRV9DVFJMMF9SRUcpOwotCiAJLyog
RW5hYmxlIE1TSSAqLwogCXJlZyA9IGFkdmtfcmVhZGwocGNpZSwgUENJRV9DT1JFX0NUUkwyX1JF
Ryk7CiAJcmVnIHw9IFBDSUVfQ09SRV9DVFJMMl9NU0lfRU5BQkxFOwpAQCAtMzQ2LDcgKzM0MSwx
NSBAQCBzdGF0aWMgdm9pZCBhZHZrX3BjaWVfc2V0dXBfaHcoc3RydWN0IGFkdmtfcGNpZSAqcGNp
ZSkKIAkgKi8KIAltc2xlZXAoUENJX1BNX0QzQ09MRF9XQUlUKTsKIAotCS8qIFN0YXJ0IGxpbmsg
dHJhaW5pbmcgKi8KKwkvKiBFbmFibGUgbGluayB0cmFpbmluZyAqLworCXJlZyA9IGFkdmtfcmVh
ZGwocGNpZSwgUENJRV9DT1JFX0NUUkwwX1JFRyk7CisJcmVnIHw9IExJTktfVFJBSU5JTkdfRU47
CisJYWR2a193cml0ZWwocGNpZSwgcmVnLCBQQ0lFX0NPUkVfQ1RSTDBfUkVHKTsKKworCS8qCisJ
ICogU3RhcnQgbGluayB0cmFpbmluZyBpbW1lZGlhdGVseSBhZnRlciBlbmFibGluZyBpdC4KKwkg
KiBUaGlzIHNvbHZlcyBwcm9ibGVtcyBmb3Igc29tZSBidWdneSBjYXJkcy4KKwkgKi8KIAlyZWcg
PSBhZHZrX3JlYWRsKHBjaWUsIFBDSUVfQ09SRV9MSU5LX0NUUkxfU1RBVF9SRUcpOwogCXJlZyB8
PSBQQ0lFX0NPUkVfTElOS19UUkFJTklORzsKIAlhZHZrX3dyaXRlbChwY2llLCByZWcsIFBDSUVf
Q09SRV9MSU5LX0NUUkxfU1RBVF9SRUcpOwotLSAKMi4yNS4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
