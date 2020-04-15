Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE7A1A9CB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyyAWuOAW6z1bNXDI3xaN39qN6EXP32QetfCNXsJiak=; b=NCltFLM0wPg+CS
	uT5kf92nkgP1PmHCSvo6Ebb/nAeUARyFduksIBUk0mxYK0aFlok+1boXFdyVqoQMChsZxTwmlE3xO
	lX7X1XTGjZOD2UxsZSVu+MgKh7w2TVmTykQKkY4XSgVpySuhRiZV8iuYTEZY6wLchuq1pEM7oySyP
	l1ydlK/AwyxuvBfESBL476kPK5J/PO9tE9VfeHuRk7hkxgDGCreWG5GJtM04vf5tkmttzHp5V3gJe
	r8p/Dpj6xvRFRA+Cm7tH3XDj7ODfY2uYQjpJgxsFa/IyJc3S4yXTEYEz/HOXlWHxWfidXGE8sEbki
	CCVYyWqzMlafxOgpJrqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgNj-0003Df-1h; Wed, 15 Apr 2020 11:39:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgKw-0000j1-WB; Wed, 15 Apr 2020 11:36:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 677F52076D;
 Wed, 15 Apr 2020 11:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950570;
 bh=0ZUxPgFWWCpFhZxGLYIIM9I5IILi6OM4r9BWUSVirQQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m4ZDcCJiubMf1wJ6pWK+Ggl1qaCYH6psCekzmTaQB/QWVAigVmVQkI+QXgXxPnvZB
 wYqHopaVGkvI3sz8NNQARRm9kcQ6zcXWc1w2RLPmW42D+po5gFlVOAbwf7C+GbwLXp
 /p9pRUZ3SAMxW4+cIgDkjB06rtpOMwEa98Fd5cn0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 072/129] net: dsa: mt7530: fix null pointer
 dereferencing in port5 setup
Date: Wed, 15 Apr 2020 07:33:47 -0400
Message-Id: <20200415113445.11881-72-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043611_109024_347BDAD8 
X-CRM114-Status: GOOD (  10.95  )
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
cml2ZXJzL25ldC9kc2EvbXQ3NTMwLmMKaW5kZXggN2NiZDFiZDRjNWE2Mi4uOWIwZGUyODUyYzY5
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvZHNhL210NzUzMC5jCisrKyBiL2RyaXZlcnMvbmV0
L2RzYS9tdDc1MzAuYwpAQCAtMTM1Niw2ICsxMzU2LDkgQEAgbXQ3NTMwX3NldHVwKHN0cnVjdCBk
c2Ffc3dpdGNoICpkcykKIAkJCQljb250aW51ZTsKIAogCQkJcGh5X25vZGUgPSBvZl9wYXJzZV9w
aGFuZGxlKG1hY19ucCwgInBoeS1oYW5kbGUiLCAwKTsKKwkJCWlmICghcGh5X25vZGUpCisJCQkJ
Y29udGludWU7CisKIAkJCWlmIChwaHlfbm9kZS0+cGFyZW50ID09IHByaXYtPmRldi0+b2Zfbm9k
ZS0+cGFyZW50KSB7CiAJCQkJcmV0ID0gb2ZfZ2V0X3BoeV9tb2RlKG1hY19ucCwgJmludGVyZmFj
ZSk7CiAJCQkJaWYgKHJldCAmJiByZXQgIT0gLUVOT0RFVikKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
