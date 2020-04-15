Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644061A9DD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKzKE84NHAfBFUSFgrXMeCRHB2mBQoh1mnAwVguNL6g=; b=q0ESdxZ4V8MIEX
	SZJfPOFvsuT3oOh9pfU58VW7Xt+61jV7e9cRwnQqvQVSSovO+sueQy7Twu+RfMngwU1qs6xfpHevJ
	s4P3guVI3oOqxahT26SZyi0lu0T6gcJ73yA8YeVEIDXiy4URwxDm6VX4jZRom0keUgjdzXVxdAnIn
	vmch3L1AXXE2+RnxlAxgwmsQJNoDjbGACTu5BmcFWjF2erW81MTB/YN6bO30TTaKU9UBT7eovzMyg
	eliR5kfHwt93hkyANHIUiQWQIwI9H/+LHbtpKvKoaL8na4dQWAaWzDMR9o7vPhapXo5rNYXRlToSg
	HHzruslUfPGR0ITdxYZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgYc-0008Q7-1a; Wed, 15 Apr 2020 11:50:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgU2-0004J3-HH; Wed, 15 Apr 2020 11:45:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89DDE20768;
 Wed, 15 Apr 2020 11:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586951133;
 bh=ZdQpdMXAuKXWa7gWPIpjYwpVyeQdiVktFAnHfPKPAMU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GcATTDqVReMMCGAKNSShEXVojRmSdAHa/S4R+atCH0YTNtLwjndPj+/FSu+IXVvkx
 LN/xS3e5jlU5kBIgyXAVyg6YDG7mBkqabMDlN0IuO5Ar9XU6Wp8jYsAoO52BGgwaOW
 UbfvPWozIQi8X9X9vsmDfiLl5NnDEy600sMlgUOA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 44/84] net: dsa: mt7530: fix null pointer
 dereferencing in port5 setup
Date: Wed, 15 Apr 2020 07:44:01 -0400
Message-Id: <20200415114442.14166-44-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415114442.14166-1-sashal@kernel.org>
References: <20200415114442.14166-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_044534_637842_5CF1DA70 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, Chuanhong Guo <gch981213@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2h1YW5ob25nIEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4KClsgVXBzdHJlYW0gY29t
bWl0IDA0NTI4MDBmNmRiNGVkMGE0MmZmYjE1ODY3YzBhY2ZkNjg4MjlmNmEgXQoKVGhlIDJuZCBn
bWFjIG9mIG1lZGlhdGVrIHNvYyBldGhlcm5ldCBtYXkgbm90IGJlIGNvbm5lY3RlZCB0byBhIFBI
WQphbmQgYSBwaHktaGFuZGxlIGlzbid0IGFsd2F5cyBhdmFpbGFibGUuClVuZm9ydHVuYXRlbHks
IG10NzUzMCBkc2EgZHJpdmVyIGFzc3VtZXMgdGhhdCB0aGUgMm5kIGdtYWMgaXMgYWx3YXlzCmNv
bm5lY3RlZCB0byBzd2l0Y2ggcG9ydCA1IGFuZCBzZXR1cCBtdDc1MzAgYWNjb3JkaW5nIHRvIHBo
eSBhZGRyZXNzCm9mIDJuZCBnbWFjIG5vZGUsIGNhdXNpbmcgbnVsbCBwb2ludGVyIGRlcmVmZXJl
bmNpbmcgd2hlbiBwaHktaGFuZGxlCmlzbid0IGRlZmluZWQgaW4gZHRzLgpUaGlzIGNvbW1pdCBm
aXggdGhpcyBzZXR1cCBjb2RlIGJ5IGNoZWNraW5nIHJldHVybiB2YWx1ZSBvZgpvZl9wYXJzZV9w
aGFuZGxlIGJlZm9yZSB1c2luZyBpdC4KCkZpeGVzOiAzOGY3OTBhODA1NjAgKCJuZXQ6IGRzYTog
bXQ3NTMwOiBBZGQgc3VwcG9ydCBmb3IgcG9ydCA1IikKU2lnbmVkLW9mZi1ieTogQ2h1YW5ob25n
IEd1byA8Z2NoOTgxMjEzQGdtYWlsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpdmllbiBEaWRlbG90IDx2
aXZpZW4uZGlkZWxvdEBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxm
LmZhaW5lbGxpQGdtYWlsLmNvbT4KVGVzdGVkLWJ5OiBSZW7DqSB2YW4gRG9yc3QgPG9wZW5zb3Vy
Y2VAdmRvcnN0LmNvbT4KU2lnbmVkLW9mZi1ieTogRGF2aWQgUy4gTWlsbGVyIDxkYXZlbUBkYXZl
bWxvZnQubmV0PgpTaWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+
Ci0tLQogZHJpdmVycy9uZXQvZHNhL210NzUzMC5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMgYi9k
cml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKaW5kZXggZTBlOTMyZjBhZWQxZS4uODA3MWMzZmEzZmI3
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCisrKyBiL2RyaXZlcnMvbmV0
L2RzYS9tdDc1MzAuYwpAQCAtMTM1Myw2ICsxMzUzLDkgQEAgbXQ3NTMwX3NldHVwKHN0cnVjdCBk
c2Ffc3dpdGNoICpkcykKIAkJCQljb250aW51ZTsKIAogCQkJcGh5X25vZGUgPSBvZl9wYXJzZV9w
aGFuZGxlKG1hY19ucCwgInBoeS1oYW5kbGUiLCAwKTsKKwkJCWlmICghcGh5X25vZGUpCisJCQkJ
Y29udGludWU7CisKIAkJCWlmIChwaHlfbm9kZS0+cGFyZW50ID09IHByaXYtPmRldi0+b2Zfbm9k
ZS0+cGFyZW50KSB7CiAJCQkJaW50ZXJmYWNlID0gb2ZfZ2V0X3BoeV9tb2RlKG1hY19ucCk7CiAJ
CQkJaWQgPSBvZl9tZGlvX3BhcnNlX2FkZHIoZHMtPmRldiwgcGh5X25vZGUpOwotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
