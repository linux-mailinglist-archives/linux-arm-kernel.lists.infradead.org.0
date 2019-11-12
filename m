Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913A9F9731
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 18:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G56mj6C+ejtSajCF4yOrEp03+Vi4wvA8TBiddAgxN8=; b=NpNCND1SoYRj51
	9MBX7tgpTFuHbpz1Vg9WiasoNZUjnC0kasqMR+j8flSybl1ahRuenzz4uIscZ1eTw47Veoo5VnQbB
	yuW+DR+nQIMyfbHXPJ/xjVbxqyYdju4X8DhFNVHY4uR5xEHRf6Y+4P8TktAFUP8EiVLhSj/xARqYt
	owO1Jcr+Ar6gbFi1RnrpNp5gzkHJ0NdDyW1nj1WUbmUj5lN7YfUGCezPUticg1ZiQs6Ti4s6/T+Ym
	+JX4Jcz0C6Pb3cEHyZd7kR3M1l4TgTDbwaEvmteC2TMwPklMVPIMl07Uz3QlRSDaqRkzrJpKghr8d
	txWFlnPJ2efkf5270MbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUa2n-00085w-Oy; Tue, 12 Nov 2019 17:33:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUa2Q-0007vc-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 17:33:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3CE078191;
 Tue, 12 Nov 2019 17:33:45 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/3] few more soc changes for omaps for v5.5
Date: Tue, 12 Nov 2019 09:33:02 -0800
Message-Id: <pull-1573579927-542764@atomide.com-2>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <pull-1573579927-542764@atomide.com>
References: <pull-1573579927-542764@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_093310_539973_8300EE21 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogIlRvbnkgTGluZGdyZW4iIDx0b255QGF0b21pZGUuY29tPgoKVGhlIGZvbGxvd2luZyBj
aGFuZ2VzIHNpbmNlIGNvbW1pdCBiYzc5NDc0NGNkYzU2ZjUzYjQ5NWRlYmJlMDU0OTQ2ZDFiNjIw
NDQxOgoKICBNZXJnZSBicmFuY2ggJ29tYXAtZm9yLXY1LjUvcG0nIGludG8gb21hcC1mb3ItdjUu
NS9zb2MgKDIwMTktMTAtMjMgMTA6NDI6MzkgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoKCiAgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L3RtbGluZC9saW51eC1vbWFwIHRhZ3Mvb21hcC1mb3ItdjUuNS9zb2MtbGF0ZS1z
aWduZWQKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAwYjQ5MTkwNGYwNTNlNDE2ODUx
NjJhZjVjNTQxMWI4NWIxOGM5N2E3OgoKICBBUk06IE9NQVAyKzogQWRkIG1pc3NpbmcgcHV0X2Rl
dmljZSgpIGNhbGwgaW4gb21hcGRzc19pbml0X29mKCkgKDIwMTktMTEtMTEgMTI6NTI6NTEgLTA4
MDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkZldyBsYXRlIFNvQyBjaGFuZ2VzIGZvciB2NS41IG1lcmdlIHdpbmRvdwoK
VGhlc2UgY2hhbmdlcyBqdXN0IGNsZWFuIHVwIGZldyB0eXBvcywgYW5kIHRoZXJlIGlzIG9uZSBu
b24tY3JpdGljYWwKY29ycmVjdGlvbiBvZiBtaXNzaW5nIHB1dF9kZXZpY2UoKSBhZnRlciBjYWxs
aW5nIG9mX3BsYXRmb3JtX3BvcHVsYXRlKCkKZm9yIGRpc3BsYXkgY29udHJvbGxlci4KCk5hdHVy
YWxseSBub25lIG9mIHRoaXMgaXMgdXJnZW50IGFuZCBjYW4gYmUgbWVyZ2VkIHdoZW4gc3VpdGFi
bGUuCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCkJlbiBEb29rcyAoQ29kZXRoaW5rKSAoMSk6CiAgICAgIE9NQVAyOiBmaXh1
cCBkb2MgY29tbWVudHMgaW4gb21hcF9kZXZpY2UKCkpvbmF0aGFuIE5ldXNjaMOkZmVyICgxKToK
ICAgICAgQVJNOiBPTUFQMTogYW1zLWRlbHRhIEZJUTogRml4IGEgdHlwbyAoIkluaXRpYWl6ZSIp
CgpNYXJrdXMgRWxmcmluZyAoMSk6CiAgICAgIEFSTTogT01BUDIrOiBBZGQgbWlzc2luZyBwdXRf
ZGV2aWNlKCkgY2FsbCBpbiBvbWFwZHNzX2luaXRfb2YoKQoKVG9ueSBMaW5kZ3JlbiAoMSk6CiAg
ICAgIE1lcmdlIGJyYW5jaCAnb21hcC1mb3ItdjUuNS9vbWFwMScgaW50byBvbWFwLWZvci12NS41
L3NvYwoKVXdlIEtsZWluZS1Lw7ZuaWcgKDEpOgogICAgICBBUk06IE9NQVAxOiBkcm9wIGR1cGxp
Y2F0ZWQgZGVwZW5kZW5jeSBvbiBBUkNIX09NQVAxCgogYXJjaC9hcm0vbWFjaC1vbWFwMS9LY29u
ZmlnICAgICAgICAgfCAzMyArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGFyY2gv
YXJtL21hY2gtb21hcDEvYW1zLWRlbHRhLWZpcS5jIHwgIDIgKy0KIGFyY2gvYXJtL21hY2gtb21h
cDIvZGlzcGxheS5jICAgICAgIHwgIDEgKwogYXJjaC9hcm0vbWFjaC1vbWFwMi9vbWFwX2Rldmlj
ZS5jICAgfCAxOSArKysrKysrLS0tLS0tLS0tLS0tCiA0IGZpbGVzIGNoYW5nZWQsIDIyIGluc2Vy
dGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
