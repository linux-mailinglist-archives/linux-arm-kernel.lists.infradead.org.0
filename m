Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B9D76488
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ysllWeF/2tpoxfkTmnJmiQSi1j/YVhECt2I2eNmUOs4=; b=rbh6ysY9asNThL
	yG9+kQ4pzSebgvtIiuKB4QTc2/32eCQKKomxChCUQOIwUn6R8W5whv6ltX+DCWvMRrgfvLWofxEw9
	eO0zlQhj8hkO7jFsRRGi4hrB55RkpmLS452ySZm1DqmFYzUnsj6f0RHoPXR70LnzJpjSe8F4auG1l
	cy07yuZkzhZHy7KBaLpZlgOasM4jfWcAGzOa2ismByEWUFMni18ah0uUQnr4kmTgyaZjyakywv5k7
	CKT1tPTLtmJKHlA7V/7LpDdC2M72jdSWTsk1Pg2KWPFO8J98BV+H+18IFUv+QS/b0LL5rAinywj/w
	68ZBIF40nTxd5l0oUAAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyR1-0005I2-JS; Fri, 26 Jul 2019 11:30:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyOY-0002LR-K1
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:28:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id s19so36845060lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yms7A0Dj/ss/bfob7fvSwoSoaN3YOnXapMDkDt2JkGk=;
 b=dI3W3+aYZkRhr2cVhzUptcUM2pwVVATteZ4VZ3NtR71AqBqGIYfrf8yrxzStuM+3nE
 tya5Wiu6pzLKkBX88Pc9jxDP11Kp2Nb7gJvFfjHY3wHbyJTa9MjgkhXMMSLglyktzkm3
 rtfP0GDsu4nDfg7oDxj6j5NfrKRKG9nFa1yKVgkG+vm4TleEGCA4h4MB8cJEZeWnFrVx
 66ajVkJqxzTBxoq8QcMEGK7KzPudl9gdTSkKZ9JTKZKCDGv4Ao7DdYIPa5uPBiKKxwIV
 QUSwtaEwhzZ9sq1FGfEOxB2hVT7HFBdpqVMA8nbZVRahng8T1uE6i7OUfifFilHWGBbe
 be7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yms7A0Dj/ss/bfob7fvSwoSoaN3YOnXapMDkDt2JkGk=;
 b=b4gX84W/A2Ldn51aJhKedf0QlW4Ma56f0EfBErh9gjO5Oy9zDQLvWOmq+lpTWDUVrM
 SQJoHNHzWc1ZVjtgqoQ0mHpMZs5gDbwXB+Wurjm9+GbWthhSMw9XUX/Ii9KGk3dJAVlY
 NbXnwEImP2kcLCI9AdQrMwB2nA2nbG6grGimLTZDfHIrqA/1UWXfQwWNa6M4k+j92dmW
 bp7sdqt3aMmnkNdIxIhH1pHFX0gCdweTUBRgK4lvobezi6O55h9//qSNqc4hk7bHfq6+
 pZZn0qoUt7yb2hYPuLHJYHmprqpsoQ5qHaN13HzXZWa09QX10CPM7ubZrdb3UhZlsCgI
 Wkfw==
X-Gm-Message-State: APjAAAUDJBwzTiiOFj8367AB10qsfxRm+bHG4FgbnZCP9K94GpCX0oRb
 cfZtdK5BZPf3YjnwnqKfQ95IeA==
X-Google-Smtp-Source: APXvYqx05CPqPaf24TqfXHUET5OwIsXvhc0hYDuun6wEBRgaKaaGpBp1xs/Z6Ozl1ehbTYYA+0UBew==
X-Received: by 2002:a19:be03:: with SMTP id o3mr43992429lff.88.1564140496719; 
 Fri, 26 Jul 2019 04:28:16 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id b27sm10020400ljb.11.2019.07.26.04.28.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 04:28:16 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
Date: Fri, 26 Jul 2019 13:28:12 +0200
Message-Id: <20190726112812.19665-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_042818_848122_9913D4B7 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, linux-gpio@vger.kernel.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBmYWxsLXRocm91Z2ggd2FybmluZ3Mgd2FzIGVuYWJsZWQgYnkgZGVmYXVsdCB0aGUgZm9s
bG93aW5nIHdhcm5pbmcKd2FzIHN0YXJ0aW5nIHRvIHNob3cgdXA6CgouLi9kcml2ZXJzL3BpbmN0
cmwvcGluY3RybC1yb2NrY2hpcC5jOiBJbiBmdW5jdGlvbiDigJhyb2NrY2hpcF9ncGlvX3NldF9j
b25maWfigJk6Ci4uL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmM6Mjc4MzozOiB3
YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbAogdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxs
dGhyb3VnaD1dCiAgIHJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKGdjLCBvZmZzZXQsIHRydWUp
OwogICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouLi9kcml2
ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jOjI3OTU6Mjogbm90ZTogaGVyZQogIGRlZmF1
bHQ6CiAgXn5+fn5+fgoKUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBh
Ym91dCBmYWxsLXRocm91Z2guIEFkZAoncmV0dXJuIC1FTk9UU1VQUDsnIHRvIG1hdGNoIHRoZSBj
b21tZW50LgoKRml4ZXM6IGQ5MzUxMmVmMGYwZSAoIk1ha2VmaWxlOiBHbG9iYWxseSBlbmFibGUg
ZmFsbC10aHJvdWdoIHdhcm5pbmciKQpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRl
cnMucm94ZWxsQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2No
aXAuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXJvY2tjaGlwLmMKaW5kZXggNjJhNjIyMTU5MDA2Li5kYzBiYmYxOThjYmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9waW5j
dHJsL3BpbmN0cmwtcm9ja2NoaXAuYwpAQCAtMjc5Miw2ICsyNzkyLDcgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9ncGlvX3NldF9jb25maWcoc3RydWN0IGdwaW9fY2hpcCAqZ2MsIHVuc2lnbmVkIGlu
dCBvZmZzZXQsCiAJCSAqIHN0aWxsIHJldHVybiAtRU5PVFNVUFAgYXMgYmVmb3JlLCB0byBtYWtl
IHN1cmUgdGhlIGNhbGxlcgogCQkgKiBvZiBncGlvZF9zZXRfZGVib3VuY2Ugd29uJ3QgY2hhbmdl
IGl0cyBiZWhhdmlvdXIuCiAJCSAqLworCQlyZXR1cm4gLUVOT1RTVVBQOwogCWRlZmF1bHQ6CiAJ
CXJldHVybiAtRU5PVFNVUFA7CiAJfQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
