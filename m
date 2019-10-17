Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F156EDA5BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 08:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zos/7ru64YMWU5rqSu0FXqthqcVoQHH9GW0iIFngQg=; b=UTK8k91TS5fcRq
	xSpqiDaxkB2Ta8mVfW8DlI4cDEGySKja8xHEXyorkBTDGiT2gIYM9CV142bM99TzmIduS4HL1VtVd
	xh/7IKl2LUuwEm+eNcmTaPP4kT6z3w4bKwRkbFZUjSLXYgOcFhi5eR4YF83kYv3xqWaTXMiuKW9ds
	Cf/sf1Jh1aGBiTC9uZmt89naiPllN8l0RESmF08SspZpmctAmWCyBMY+nWQAIq5ZcV5pKvxeGLHw6
	+vH9kkx6hspvKsx7P2HBQXKQbici15w72J70DQtg3haPcaAwQUpCOEwU0WF4PKQlG1T7k4myOOg4H
	6oPZSFKXglIwoGM7yxpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzWb-0006oB-Jf; Thu, 17 Oct 2019 06:44:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzWT-0006nh-R0
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 06:44:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so906287wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 23:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2NqQBX25YVDLNUmJ5qwwRNJKu5MUMZp6/p5wXw7x9Fk=;
 b=bUOLmcmWgwe5oaYDwztL6kX7PXhjSj+7QZRk+PFutXcsJ4FkPo2TsjMRYuuxeeznJZ
 0S3zVqKNaMvE2ivqJpJVqWOqhro+SpQrVcnL6X+75OLyfcdsy3yJCIRqTrHaADxb/2JM
 gYzUnTdOycuiV0X8iuxO02z4ao2J/1nL89JXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2NqQBX25YVDLNUmJ5qwwRNJKu5MUMZp6/p5wXw7x9Fk=;
 b=lmdPh8iWIGKxd7Pgi1azanFOWYrB0L7Gna+FiMz+HgK8TOUoMIaVq8IsE6GzlOHKHw
 QK7Xzo/Ghpp1h/G8mxLVvQGkHxrgcYngHdyFCCf08DHQ13L8FVZEoVfhXyWLauQMZV5e
 7+2xK4PcXES1ug7wN/jT4v23a0yz+BJ1eFl0jm60nSwQq9gyOspiiioyxxSENyTbgU7L
 lcxvc9OKC178WXGtGKPD9oinL7Z3ZM/iOhbeil0BVlJ8n0YZgsLqak4gQ5gvxFlUAwT/
 Zbu3wdz0PGgwu70Ew8LDD56sccRZynJTHSPpwlLwe/RFOVzXIcco0SzHOSTraohcW8cF
 I/HA==
X-Gm-Message-State: APjAAAVTLQUrnLsqYSkS8fZ9rS+HpyUpIgZhUZcI/kdqYlwheRst8X3K
 Xmbcwzlg//VIbHKOQtqxrk/66g==
X-Google-Smtp-Source: APXvYqz2kPDXlDVZbxM6aJgjeeWUQFslwpeRiXPDGJF58Hm1esq8NuQYOCFwwfVKkw374xKe+hUwqw==
X-Received: by 2002:a5d:4ace:: with SMTP id y14mr1505529wrs.131.1571294672094; 
 Wed, 16 Oct 2019 23:44:32 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id u1sm1122798wmc.38.2019.10.16.23.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 23:44:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Date: Thu, 17 Oct 2019 08:44:26 +0200
Message-Id: <20191017064426.30814-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_234433_931040_07C60BAE 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
dGVyQGZmd2xsLmNoPgotLQp2MjogQnJvd24gcGFwZXIgYmFnIGVkaXRpb24sIGl0IG5lZWRzIHRv
IGJlIGEgZnVuY3Rpb24gLi4uCi0tLQogZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jIHwgNyArKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zcGkvc3BpLXB4YTJ4eC5jIGIvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCmluZGV4IGJiNmEx
NGQxYWIwZi4uMDY4YzIxMDM3Njc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcHhhMnh4
LmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCkBAIC0xNjAyLDYgKzE2MDIsMTEgQEAg
c3RhdGljIGludCBweGEyeHhfc3BpX2Z3X3RyYW5zbGF0ZV9jcyhzdHJ1Y3Qgc3BpX2NvbnRyb2xs
ZXIgKmNvbnRyb2xsZXIsCiAJcmV0dXJuIGNzOwogfQogCitzdGF0aWMgc2l6ZV90IHB4YTJ4eF9z
cGlfbWF4X2RtYV90cmFuc2Zlcl9zaXplKHN0cnVjdCBzcGlfZGV2aWNlICpzcGkpCit7CisJcmV0
dXJuIE1BWF9ETUFfTEVOOworfQorCiBzdGF0aWMgaW50IHB4YTJ4eF9zcGlfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2OwpAQCAtMTcwNyw2ICsxNzEyLDggQEAgc3RhdGljIGludCBweGEyeHhfc3BpX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCX0gZWxzZSB7CiAJCQljb250cm9sbGVyLT5j
YW5fZG1hID0gcHhhMnh4X3NwaV9jYW5fZG1hOwogCQkJY29udHJvbGxlci0+bWF4X2RtYV9sZW4g
PSBNQVhfRE1BX0xFTjsKKwkJCWNvbnRyb2xsZXItPm1heF90cmFuc2Zlcl9zaXplID0KKwkJCQlw
eGEyeHhfc3BpX21heF9kbWFfdHJhbnNmZXJfc2l6ZTsKIAkJfQogCX0KIAotLSAKMi4yMy4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
