Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC89D9A86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JZmp6WGgPzD9h10mFDniprsp5hZI7tmhNz2mEesPe4U=; b=Q5dT4a88sXFHKM
	p3fc/l+ISZEEGTIHkAcClXUJ6QAFPDxKSY8roC94N31SlUi2ouUFZKNte6s5SWlcB/9/x/yHgCT5f
	8/TwIRp2VfqUmDQOx9uPANI5vDhJPBmGEAx1UN1ePZ2NZbl7XVLk4RNkLlvrAwH2/ZIi+tltYX2z5
	CO/mHIagDMR2iMHpWgfAaRKjCqlI7E+oDyNcYC09mv04R5UPWNds4DQZmK1hdBF11Iyj6iMCYbxwT
	ezWGP7VCO2MWbG5o2ZK1Amt+riF7pXeyg+kA8twe8KoxUaZoOi+bkDOzDrj9B19h/A7ezcUuJOWeT
	38F4ykQiweQBF4uMsdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpQS-0002R8-05; Wed, 16 Oct 2019 19:57:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpQJ-0002Q7-7z
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:57:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id p4so13572290wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 12:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NG+1N8pqfTQP+Jc9hKyg5BqhDrJd8BVaVZCbMzcwzpQ=;
 b=YOxOhnYlgzS2Tk4VK481ftR03oNVQw/9Gepa5WfUSzlqM+BqFzjdDM+kWHO2jePcGR
 1gDaEiYOejp+n93yW2HQFyRFRpAx7JDMeWoWz3Twfzv4Uhk8qXrU22BVHzR13vWuKqrK
 2u/LkjnBoN7Ec2egjOnU/zC9SUKH+fi5FsSCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NG+1N8pqfTQP+Jc9hKyg5BqhDrJd8BVaVZCbMzcwzpQ=;
 b=tarH/y9/3AWdoEwB9YAlPdIclxuvkYn8YYvI/O6md3RyFokIa5XRYk1DSCHCSCnDjW
 N/mipHDQJngs0EaZN6jzYoJw3C8JFeom8EWINGHTvHMNnRRqMDZ7q+0FgwaxKygUe21T
 D24YIPBZGvwrdnM0/WZUorNifjfgTXk1WKySDghtgqhRgLN97QEObXsS7d8Li7udaBJT
 Ndyxa6M8D79OiiuwKJV+vprsqLzi20Srm2jXAJUGT9ezr832sdTg5Jw9PZAb+OAQwvSv
 cvJSRUi49o3NYbN8ZvQxwD3FxVmMfhgWC28Nxc1sQFgYM7JKgVEmmSuiexpYWmS67oun
 u6Kw==
X-Gm-Message-State: APjAAAXmxDFI5uGodCpg4gt4YXHE+6ZGoS8JCJ9ypaN9QaYiXnaNoc9L
 2q2JIKYhxiCSNffu8DdizxdAhA==
X-Google-Smtp-Source: APXvYqzEDG6NFRpskcNp9TxpoXWvKld+9QHPgfTTWr0lWHp9luHTpO7e8V8TrlMGUFE74OMWti9u+w==
X-Received: by 2002:adf:f90f:: with SMTP id b15mr4197296wrr.76.1571255848864; 
 Wed, 16 Oct 2019 12:57:28 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id t13sm52362928wra.70.2019.10.16.12.57.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 12:57:28 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Date: Wed, 16 Oct 2019 21:57:21 +0200
Message-Id: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_125731_345088_4D00E380 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW4gRE1BIG1vZGUgd2UgaGF2ZSBhIG1heGltdW0gdHJhbnNmZXIgc2l6ZSwgcGFzdCB0aGF0IHRo
ZSBkcml2ZXIKZmFsbHMgYmFjayB0byBQSU8gKHNlZSB0aGUgY2hlY2sgYXQgdGhlIHRvcCBvZiBw
eGEyeHhfc3BpX3RyYW5zZmVyX29uZSkuCkZhbGxpbmcgYmFjayB0byBQSU8gZm9yIGJpZyB0cmFu
c2ZlcnMgZGVmZWF0cyB0aGUgcG9pbnQgb2YgYSBkbWEgZW5naW5lLApoZW5jZSBzZXQgdGhlIG1h
eCB0cmFuc2ZlciBzaXplIHRvIGluZm9ybSBzcGkgY2xpZW50cyB0aGF0IHRoZXkgbmVlZAp0byBk
byBzb21ldGhpbmcgc21hcnRlci4KClRoaXMgd2FzIHVuY292ZXJlZCBieSB0aGUgZHJtX21pcGlf
ZGJpIHNwaSBwYW5lbCBjb2RlLCB3aGljaCBkb2VzCmxhcmdlIHNwaSB0cmFuc2ZlcnMsIGJ1dCBz
dG9wcGVkIHNwbGl0dGluZyB0aGVtIGFmdGVyOgoKY29tbWl0IGUxNDMzNjRiNGMxNzc0ZjY4ZTky
M2E1YTBiYjBmY2EyOGFjMjU4ODgKQXV0aG9yOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9u
bmVzLm9yZz4KRGF0ZTogICBGcmkgSnVsIDE5IDE3OjU5OjEwIDIwMTkgKzAyMDAKCiAgICBkcm0v
dGlueWRybTogUmVtb3ZlIHRpbnlkcm1fc3BpX21heF90cmFuc2Zlcl9zaXplKCkKCkFmdGVyIHRo
aXMgY29tbWl0IHRoZSBjb2RlIHJlbGllZCBvbiB0aGUgc3BpIGNvcmUgdG8gc3BsaXQgdHJhbnNm
ZXJzCmludG8gbWF4IGRtYS1hYmxlIGJsb2Nrcywgd2hpY2ggYWxzbyBwYXBlcmVkIG92ZXIgdGhl
IFBJTyBmYWxsYmFjayBpc3N1ZS4KCkZpeCB0aGlzIGJ5IHNldHRpbmcgdGhlIG92ZXJhbGwgbWF4
IHRyYW5zZmVyIHNpemUgdG8gdGhlIERNQSBsaW1pdCwKYnV0IG9ubHkgd2hlbiB0aGUgY29udHJv
bGxlciBydW5zIGluIERNQSBtb2RlLgoKRml4ZXM6IGUxNDMzNjRiNGMxNyAoImRybS90aW55ZHJt
OiBSZW1vdmUgdGlueWRybV9zcGlfbWF4X3RyYW5zZmVyX3NpemUoKSIpCkNjOiBTYW0gUmF2bmJv
cmcgPHNhbUByYXZuYm9yZy5vcmc+CkNjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9ubmVz
Lm9yZz4KQ2M6IEFuZHkgU2hldmNoZW5rbyA8YW5kcml5LnNoZXZjaGVua29AaW50ZWwuY29tPgpS
ZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtv
QGludGVsLmNvbT4KQ2M6IERhbmllbCBNYWNrIDxkYW5pZWxAem9ucXVlLm9yZz4KQ2M6IEhhb2pp
YW4gWmh1YW5nIDxoYW9qaWFuLnpodWFuZ0BnbWFpbC5jb20+CkNjOiBSb2JlcnQgSmFyem1payA8
cm9iZXJ0LmphcnptaWtAZnJlZS5mcj4KQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9y
Zz4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtc3Bp
QHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvc3BpL3NwaS1weGEyeHguYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3BpLXB4
YTJ4eC5jIGIvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCmluZGV4IGJiNmExNGQxYWIwZi4uZjc3
MjAxOTE1MDMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcHhhMnh4LmMKKysrIGIvZHJp
dmVycy9zcGkvc3BpLXB4YTJ4eC5jCkBAIC0xNzA3LDYgKzE3MDcsNyBAQCBzdGF0aWMgaW50IHB4
YTJ4eF9zcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJfSBlbHNlIHsK
IAkJCWNvbnRyb2xsZXItPmNhbl9kbWEgPSBweGEyeHhfc3BpX2Nhbl9kbWE7CiAJCQljb250cm9s
bGVyLT5tYXhfZG1hX2xlbiA9IE1BWF9ETUFfTEVOOworCQkJY29udHJvbGxlci0+bWF4X3RyYW5z
ZmVyX3NpemUgPSBNQVhfRE1BX0xFTjsKIAkJfQogCX0KIAotLSAKMi4yMy4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
