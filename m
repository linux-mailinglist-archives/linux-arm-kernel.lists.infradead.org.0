Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3238D1FDB55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXBSVZ92zUTZvDt4Ad2aCNZXxg1R9XWiEciev6V/mBw=; b=gdlBgiVxUi87SW
	VShPucIi3XTk4KxhyScczX3lcc+FZOb8HSu2/1TGSv+qO5uk+hJWog03fWGdizRTIuhloxR5hGSPr
	fSRxrhKTNQhw8sbff1HuWEjg2IDSi94HYUuyWuVPB766H/p/pGG22VVom0XSeq3sPNWkF4OVgv++m
	NzMaPTzBJ+jEXn/cTIidP0Ihla5o121q7N24nb4VbqGSXAAytsoYKl/uKtgKHILzPTiE9G56ECLao
	xT/bpW118c4B0kMTrIuzwWd7S8US6DTYhqE/3P/VEabZsNJb22/LdwL0w0vODfy5oUnChr4yZGksC
	9SkOAqZ9k2FCjYLgYO9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlj6H-0001eR-1J; Thu, 18 Jun 2020 01:12:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj3H-0005MA-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:09:13 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A04A82193E;
 Thu, 18 Jun 2020 01:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442551;
 bh=X4xB1K/pK6AIDnqxWt4QrweV8512VBFuawqM9U17/ag=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hSrJdBsCQbsSoesdi//jRKg3+ZAwXI1eZ6ZxdyecIgVGiAxrhALNh3Q1++pbr3oy3
 0e3ASt7LC/2S4cFnkP0njzk4zP9Y3w/FZ1aPx0LMVDhpcxwU2qZucdE7V+FAf/tnWX
 MwzCrdLItYjles4ftwqWztO+ewQjTOOco+DI+3a8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 049/388] arm64: dts: armada-3720-turris-mox: fix
 SFP binding
Date: Wed, 17 Jun 2020 21:02:26 -0400
Message-Id: <20200618010805.600873-49-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_180911_890843_D96875A3 
X-CRM114-Status: GOOD (  10.93  )
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
dCBjMjY3MWFjYmJiZDgyMmVmMDc3Y2MxNjg5OTFlMGE3ZGJlMjE3MmM5IF0KClRoZSBzZnAgY29t
cGF0aWJsZSBzaG91bGQgYmUgJ3NmZixzZnAnLCBub3QgJ3NmZixzZnArJy4gV2UgdXNlZCBwYXRj
aGVkCmtlcm5lbCB3aGVyZSB0aGUgbGF0dGVyIHdhcyB3b3JraW5nLgoKRml4ZXM6IDcxMDlkODE3
ZGIyZSAoImFybTY0OiBkdHM6IG1hcnZlbGw6IGFkZCBEVFMgZm9yIFR1cnJpcyBNb3giKQpTaWdu
ZWQtb2ZmLWJ5OiBNYXJlayBCZWjDum4gPG1hcmVrLmJlaHVuQG5pYy5jej4KQ2M6IEdyZWdvcnkg
Q0xFTUVOVCA8Z3JlZ29yeS5jbGVtZW50QGJvb3RsaW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBHcmVn
b3J5IENMRU1FTlQgPGdyZWdvcnkuY2xlbWVudEBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTog
U2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwppbmRleCA0N2ZlZTY2
YzcwY2IuLjBlMDQ5MWNhMjkzMCAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cwpAQCAtOTUsNyArOTUsNyBAQCBzZGhj
aTFfcHdyc2VxOiBzZGhjaTEtcHdyc2VxIHsKIAl9OwogCiAJc2ZwOiBzZnAgewotCQljb21wYXRp
YmxlID0gInNmZixzZnArIjsKKwkJY29tcGF0aWJsZSA9ICJzZmYsc2ZwIjsKIAkJaTJjLWJ1cyA9
IDwmaTJjMD47CiAJCWxvcy1ncGlvID0gPCZtb3h0ZXRfc2ZwIDAgR1BJT19BQ1RJVkVfSElHSD47
CiAJCXR4LWZhdWx0LWdwaW8gPSA8Jm1veHRldF9zZnAgMSBHUElPX0FDVElWRV9ISUdIPjsKLS0g
CjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
