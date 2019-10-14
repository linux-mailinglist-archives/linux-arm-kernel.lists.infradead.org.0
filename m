Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080DFD6AC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 22:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HRZuQLWXpA9BJssQL/mPwFU4Ka0ttmLHGXmLeqnMmo=; b=qm/nKpnn18bTjM
	ja+opXQZnhQ2Z+7pymyVaK+6dt8lQ9vJ+ki/XAtNw4UaCWL9zGgNyVh0MuhkmXW2ak4qKf3X0fB7+
	arP4K5xu2FcSS83yyCQerRyowqjF2UVEuCCp6Gw41X+EOd4w/M6F4qT1YAK+BEXFQzTOkUIQijV8Q
	0x4vBgeo9rYqHlmuqQ+EOdXY6WvVvIVSy6oZqiPTT8swyT0iSIwyybAS1PbO27QT2Ipqxe4ioqYl5
	VP3PzCvL58Vz5CzkRoKqBPI9Pu0bTLxzJRmk5yxva41matXvGwdjsuDSJiuk1dlNvrdXBjHlQU3M7
	EFLi9xWk3QrBAjZkf8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK6tw-0006as-MG; Mon, 14 Oct 2019 20:25:08 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK6tk-0006aQ-P3
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 20:24:58 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id E5B6D5C1173;
 Mon, 14 Oct 2019 22:24:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1571084693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ifyjUFLJ9uzTTzrkMj72r74yQo5VoUndfopoOcl3f6Y=;
 b=ayl3bydti//Ft78EF77JKVgVud3aqxfZUVRuMvkxxAa1IFoCp3dkRn5NwJLsQZZPle7h6C
 5Vt2j+sm4oPWLuS2/XFt4lLAG1myi+QvLayxT8TgtM5RRNelA1XOmaMc7tHIfQT/1WYTlt
 4YpAItIPKcBliTO2mLv6ikb7eM8fheY=
MIME-Version: 1.0
Date: Mon, 14 Oct 2019 22:24:51 +0200
From: Stefan Agner <stefan@agner.ch>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v4 02/14] drm/mxsfb: Read bus flags from bridge if present
In-Reply-To: <1567078215-31601-3-git-send-email-robert.chiras@nxp.com>
References: <1567078215-31601-1-git-send-email-robert.chiras@nxp.com>
 <1567078215-31601-3-git-send-email-robert.chiras@nxp.com>
Message-ID: <b5da1f015a4dd87a612e1a9e57fdca7a@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_132456_962103_4C947D7A 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOC0yOSAxMzozMCwgUm9iZXJ0IENoaXJhcyB3cm90ZToKPiBGcm9tOiBHdWlkbyBH
w7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+IAo+IFRoZSBicmlkZ2UgbWlnaHQgaGF2ZSBzcGVj
aWFsIHJlcXVpcm1lbnRlcyBvbiB0aGUgaW5wdXQgYnVzLiBUaGlzCj4gaXMgZS5nLiB1c2VkIGJ5
IHRoZSBpbXgtbndsIGJyaWRnZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBHdWlkbyBHw7xudGhlciA8
YWd4QHNpZ3hjcHUub3JnPgo+IFJldmlld2VkLWJ5OiBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25l
ci5jaD4KCkFwcGxpZWQgdG8gdGhlIGRybS1taXNjLW5leHQgYnJhbmNoLgoKSSBkZWNpZGVkIHRv
IGFwcGx5IHRob3NlIHR3byBzaW5jZSB0aGV5IGFyZSBpbmRlcGVuZGVudCBmcm9tIHRoZSByZXN0
LgpZb3UgY2FuIGRyb3AgdGhlbSBpbiB0aGUgbmV4dCBzcGluIG9mIHRoZSByZXN0LgoKLS0KU3Rl
ZmFuCgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYyB8IDUgKysr
Ky0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCj4gYi9kcml2
ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCj4gaW5kZXggZGUwOWI5My4uYjY5YWNlOCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfY3J0Yy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYwo+IEBAIC0yMDksNyArMjA5LDcgQEAg
c3RhdGljIHZvaWQgbXhzZmJfY3J0Y19tb2RlX3NldF9ub2ZiKHN0cnVjdAo+IG14c2ZiX2RybV9w
cml2YXRlICpteHNmYikKPiAgewo+ICAJc3RydWN0IGRybV9kZXZpY2UgKmRybSA9IG14c2ZiLT5w
aXBlLmNydGMuZGV2Owo+ICAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm0gPSAmbXhzZmItPnBp
cGUuY3J0Yy5zdGF0ZS0+YWRqdXN0ZWRfbW9kZTsKPiAtCWNvbnN0IHUzMiBidXNfZmxhZ3MgPSBt
eHNmYi0+Y29ubmVjdG9yLT5kaXNwbGF5X2luZm8uYnVzX2ZsYWdzOwo+ICsJdTMyIGJ1c19mbGFn
cyA9IG14c2ZiLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5mby5idXNfZmxhZ3M7Cj4gIAl1MzIgdmRj
dHJsMCwgdnN5bmNfcHVsc2VfbGVuLCBoc3luY19wdWxzZV9sZW47Cj4gIAlpbnQgZXJyOwo+ICAK
PiBAQCAtMjMzLDYgKzIzMyw5IEBAIHN0YXRpYyB2b2lkIG14c2ZiX2NydGNfbW9kZV9zZXRfbm9m
YihzdHJ1Y3QKPiBteHNmYl9kcm1fcHJpdmF0ZSAqbXhzZmIpCj4gIAo+ICAJY2xrX3NldF9yYXRl
KG14c2ZiLT5jbGssIG0tPmNydGNfY2xvY2sgKiAxMDAwKTsKPiAgCj4gKwlpZiAobXhzZmItPmJy
aWRnZSAmJiBteHNmYi0+YnJpZGdlLT50aW1pbmdzKQo+ICsJCWJ1c19mbGFncyA9IG14c2ZiLT5i
cmlkZ2UtPnRpbWluZ3MtPmlucHV0X2J1c19mbGFnczsKPiArCj4gIAlEUk1fREVWX0RFQlVHX0RS
SVZFUihkcm0tPmRldiwgIlBpeGVsIGNsb2NrOiAlZGtIeiAoYWN0dWFsOiAlZGtIeilcbiIsCj4g
IAkJCSAgICAgbS0+Y3J0Y19jbG9jaywKPiAgCQkJICAgICAoaW50KShjbGtfZ2V0X3JhdGUobXhz
ZmItPmNsaykgLyAxMDAwKSk7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
