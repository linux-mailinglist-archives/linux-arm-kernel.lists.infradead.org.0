Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1B71217A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7bGdCAY7k84Lwa4Y/6PEFGrtRp8BtpGnCgSbUehNIs=; b=n60/JTJj/SR//m
	2InPRGZvAQEIuiStNE1XMCdku/P3E2iK6Ifl8znhIXp+0UaVKdXkiO7kAhF6JHok8xK9gOtufNfS9
	de5DqL3WN2beVfNLyGMZd7uBe7emApWE2emlTKGblpxqrCk/7d1ZZLBpvlj1oAZx8+5mf3s4qLgBE
	W7uyCokCmiIQDCMGDO5npCzvBdClum/YwaXoYeqJNFi8SfJQ8C0CIY2hRk+7QxrTKFeXOm3Ukqw27
	U4Xt37JwlbcOSgJeoLY8Nx3//g+vIAxA0Qiad8F+OMbH/GO467NIxb72sz6P/DgxO3T4+ftsZ/aaJ
	r7szMQM+WPJPEP0Yn9Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFyy-0002fb-Ry; Thu, 02 May 2019 17:58:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFyS-0002B2-Tf; Thu, 02 May 2019 17:58:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id C098F282418
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Derek Basehore <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 2/6] dt-bindings: devfreq: rk3399_dmc: Add rockchip,
 pmu phandle.
Date: Thu,  2 May 2019 13:58:16 -0400
Message-Id: <20190502175820.25382-3-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502175820.25382-1-gael.portay@collabora.com>
References: <20190502175820.25382-1-gael.portay@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105825_129763_38F16D53 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNv
bT4KClRoZSBSb2NrY2hpcCBETUMgKER5bmFtaWMgTWVtb3J5IEludGVyZmFjZSkgbmVlZHMgdG8g
YWNjZXNzIHRvIHRoZSBQTVUKZ2VuZXJhbCByZWdpc3RlciBmaWxlcyB0byBrbm93IHRoZSBEUkFN
IHR5cGUsIHNvIGFkZCBhIHBoYW5kbGUgdG8gdGhlCnN5c2NvbiB0aGF0IG1hbmFnZXMgdGhlc2Ug
cmVnaXN0ZXJzLgoKU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMu
YmFsbGV0Ym9AY29sbGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5j
aG9pQHNhbXN1bmcuY29tPgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4K
U2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPgpB
Y2tlZC1ieTogTXl1bmdKb28gSGFtIDxteXVuZ2pvby5oYW1Ac2Ftc3VuZy5jb20+Ci0tLQoKQ2hh
bmdlcyBpbiB2NTogTm9uZQoKQ2hhbmdlcyBpbiB2NDoKLSBbUEFUQ0ggdjMgMi81XSBBZGQgQWNr
ZWQtYnk6IE15dW5nSm9vIEhhbSA8bXl1bmdqb28uaGFtQHNhbXN1bmcuY29tPi4KCkNoYW5nZXMg
aW4gdjM6Ci0gW1BBVENIIHYyIDIvNV0gQWRkIFNpZ25lZC1vZmYtYnk6IEdhw6tsIFBPUlRBWSA8
Z2FlbC5wb3J0YXlAY29sbGFib3JhLmNvbT4uCgpDaGFuZ2VzIGluIHYyOiBOb25lCgpDaGFuZ2Vz
IGluIHYxOgotIFtSRkMgMi8xMF0gQWRkIHJldmlld2VkIGFuZCBhY2tlZCB0YWdzIGZyb20gQ2hh
bndvbyBDaG9pIGFuZCBSb2IgSGVycmluZwoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0IHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kZXZmcmVxL3JrMzM5OV9kbWMudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2RldmZyZXEvcmszMzk5X2RtYy50eHQKaW5kZXggMGVjNjgxNDFmODVhLi45NTE3ODljMGNk
ZDYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kZXZmcmVx
L3JrMzM5OV9kbWMudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
ZXZmcmVxL3JrMzM5OV9kbWMudHh0CkBAIC0xMiw2ICsxMiw4IEBAIFJlcXVpcmVkIHByb3BlcnRp
ZXM6CiAJCQkgZm9yIGRldGFpbHMuCiAtIGNlbnRlci1zdXBwbHk6CSBETUMgc3VwcGx5IG5vZGUu
CiAtIHN0YXR1czoJCSBNYXJrcyB0aGUgbm9kZSBlbmFibGVkL2Rpc2FibGVkLgorLSByb2NrY2hp
cCxwbXU6CQkgUGhhbmRsZSB0byB0aGUgc3lzY29uIG1hbmFnaW5nIHRoZSAiUE1VIGdlbmVyYWwg
cmVnaXN0ZXIKKwkJCSBmaWxlcyIuCiAKIE9wdGlvbmFsIHByb3BlcnRpZXM6CiAtIGludGVycnVw
dHM6CQkgVGhlIENQVSBpbnRlcnJ1cHQgbnVtYmVyLiBUaGUgaW50ZXJydXB0IHNwZWNpZmllcgot
LSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
