Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA2A1C5AB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VURuUHpGll7kGdKgqnCo53a+DtQMoS+0wWitFu+v5gQ=; b=X8fXFTVbLBWlpu
	UYGDlaKLcC+QrAEZInh/ouZHj5tKy7QvvSU2vNkXfQCSR1yYlBZsADRk8imyO8dZHREaAYa5H89N8
	U4sZjTdXsI/e8B2URMbTJSGz/JtY2fQmLxOeQrp3Phzh7SFzMrmtkr1MTbZtlzOlN0pPlv8uuCLE4
	EO4zzkCKxWnaYZzyJcumr7/F3EAJB5mCk8n3GriXd4X5F90A5iDDcNky2BN70Rsm7XdpuZWluipzX
	Nb5QLlWr80qjs3Svkuym2cbEW4O/Im1t4xwPm//sE9BzC8C3Cps1zgJ2DU9+5RZq4/6tcvW5+XwPI
	a88z6SCQnLDvJ1YgRV2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzE7-00042c-P5; Tue, 05 May 2020 15:11:19 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzAg-0006rG-5Y
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:07:47 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:bd97:8453:3b10:1832])
 by baptiste.telenet-ops.be with bizsmtp
 id b37T2200X3VwRR30137Td9; Tue, 05 May 2020 17:07:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-00027w-KX; Tue, 05 May 2020 17:07:27 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jVzAN-0000QS-JV; Tue, 05 May 2020 17:07:27 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: soc@kernel.org
Subject: [PATCH v2 02/15] ARM: actions: Drop unneeded select of COMMON_CLK
Date: Tue,  5 May 2020 17:07:09 +0200
Message-Id: <20200505150722.1575-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505150722.1575-1-geert+renesas@glider.be>
References: <20200505150722.1575-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080746_439849_0B6FD5CD 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3VwcG9ydCBmb3IgQWN0aW9ucyBTZW1pIFNvQ3MgZGVwZW5kcyBvbiBBUkNIX01VTFRJX1Y3LCBh
bmQgdGh1cyBvbgpBUkNIX01VTFRJUExBVEZPUk0uCkFzIHRoZSBsYXR0ZXIgc2VsZWN0cyBDT01N
T05fQ0xLLCB0aGVyZSBpcyBubyBuZWVkIGZvciBBUkNIX0FDVElPTlMgdG8Kc2VsZWN0IENPTU1P
Tl9DTEsuCgpTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNA
Z2xpZGVyLmJlPgpDYzogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgpDYzogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KQWNr
ZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+ClJldmlld2VkLWJ5OiBBbmRyZWFz
IEbDpHJiZXIgPGFmYWVyYmVyQHN1c2UuZGU+Ci0tLQp2MjoKICAtIEFkZCBBY2tlZC1ieSwgUmV2
aWV3ZWQtYnkuCi0tLQogYXJjaC9hcm0vbWFjaC1hY3Rpb25zL0tjb25maWcgfCAxIC0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1hY3Rp
b25zL0tjb25maWcgYi9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwppbmRleCBiNWUwYWM5
NjVlYzBkZDEwLi4wMGZiNGJhYmNjZGQ5OTFiIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWFj
dGlvbnMvS2NvbmZpZworKysgYi9hcmNoL2FybS9tYWNoLWFjdGlvbnMvS2NvbmZpZwpAQCAtNyw3
ICs3LDYgQEAgbWVudWNvbmZpZyBBUkNIX0FDVElPTlMKIAlzZWxlY3QgQVJNX0dMT0JBTF9USU1F
UgogCXNlbGVjdCBDQUNIRV9MMlgwCiAJc2VsZWN0IENMS1NSQ19BUk1fR0xPQkFMX1RJTUVSX1ND
SEVEX0NMT0NLCi0Jc2VsZWN0IENPTU1PTl9DTEsKIAlzZWxlY3QgR0VORVJJQ19JUlFfQ0hJUAog
CXNlbGVjdCBIQVZFX0FSTV9TQ1UgaWYgU01QCiAJc2VsZWN0IEhBVkVfQVJNX1RXRCBpZiBTTVAK
LS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
