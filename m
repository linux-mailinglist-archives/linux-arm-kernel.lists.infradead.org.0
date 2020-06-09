Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5551F38B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:53:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ovkVs3TwXLcwqa8jC6mgYLtssvpUvEaydgDuDB4bmg=; b=WPj8F1vUVBIS+t
	2xRgt1OUhAefaJmzPLZyCgJ6lrHP0zc5ggEWEe7FkuYk3K8JWe3iPpEqZQ2sr3FJrsL05RTpJg5/R
	GG6GNQ6a+TGgme7gIeJSs3EFwoZvgoELyx4vOBTgzIgHpKXJWpHDWYYTRdPn0RtfC+GIeWrpCSYMT
	enJCElYHTjfFFhuYzZr49fipPOUq5sSEH0S23wo5UMMknuDsZnMFTSOUiSTftGfm26MHbWWD5dbFi
	k31UxcjlOShf84fCQPEbaQTWQEJJIeUTC0F206nXwebDERgoKDMAFTdeTHZBug9hnFc7ItooQw8nv
	gOgpQqE20tEFG+HcCf/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibsL-0006Hs-To; Tue, 09 Jun 2020 10:53:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibs9-0006Fy-Pe
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:52:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id l11so20773509wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 03:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aWQLYPhqDKfx5oH7hlkSk8K6QKJGKV4Umxbuf8XuqKE=;
 b=ETaulQJlvjWg8li+bf8I4pofjSMqWGlkLMgkMX5FNju/527xa21LUwKQu8Llko4xu8
 1POYDiY/fXGnQ6ArUbsP5OU9bFODfEW9vFnIymXfEOSlU39mbbW4G0d4d2JaBquvoeOA
 NMSCtsZGtaSELMlzpvnxMXTAv1wKQiWIheudPB6/GMk+7MVwyU0G1S3lz73vGu87DOUH
 DLS0+lymKa1C07kpMIcSCF4MulmCG2QgjNsTnNz6zcWRNxf3s4t746RbxM8n7Ye2OIjh
 FJaNxqzpv32T4Vj3XKqlxoOAFCnv0yDBNAO5L9LL1uRnlBwEfPjwNil+YW9yyu5A4VjQ
 SgvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=aWQLYPhqDKfx5oH7hlkSk8K6QKJGKV4Umxbuf8XuqKE=;
 b=tpH+MTnV0uyNn3+qs7G8HBfROQ+/7Tv4rhk81G0V/Y+30NuSwNNKjNW7NoTyxjxVLt
 eWYDOWlQ/paxq4X3f/fYtJI/lGzj7O3KaoO3oJ/y4WiKlz7gTC1jqO32kWhZONHdn7p1
 fBd0z2jfMfj6GvgoxXabwrRMeuIEdanbK53o/BlLqH1zVD0BhubM19uF2hz9VG3f2vOe
 zoMXXZ4XY80Cz25pE8wvU9yjcoZapwiH4qOdeu7UtNiprD9TEHAFAWgfhpK7tZ5VHwOy
 xBFJje//oIyI7xdNCxALyRaX8za/TMVP+LTEJ5EUtGpYnijijE4mbesqRPD7ulgFS3zo
 +N5w==
X-Gm-Message-State: AOAM533TQUwAKPOLulH0xeiJPSvHyh8KitLq3TuGF6FvpDF5YhoZNlUE
 Bu92FgEN4lKULv1pBIPcGYM=
X-Google-Smtp-Source: ABdhPJyqUX3Bx31cC0wuBVeFSjp63SpZIOZJhoutiFLUR3QrxeRzWtC4QVjzdYdNVFWTohvOnicSdQ==
X-Received: by 2002:adf:a491:: with SMTP id g17mr4002353wrb.132.1591699966641; 
 Tue, 09 Jun 2020 03:52:46 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id h5sm2949931wrw.85.2020.06.09.03.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 03:52:46 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] bmips: add BCM63xx power domain controller
Date: Tue,  9 Jun 2020 12:52:40 +0200
Message-Id: <20200609105244.4014823-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_035249_846987_603820FD 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgrDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgKDQpOgogIGR0
LWJpbmRpbmdzOiBzb2M6IGJyY206IGFkZCBCQ002M3h4IHBvd2VyIGRvbWFpbiBiaW5kaW5nCiAg
c29jOiBiY206IGFkZCBCQ002M3h4IHBvd2VyIGRvbWFpbiBkcml2ZXIKICBtaXBzOiBibWlwczog
ZHRzOiBhZGQgQkNNNjMyOCBwb3dlciBkb21haW4gc3VwcG9ydAogIG1pcHM6IGJtaXBzOiBkdHM6
IGFkZCBCQ002MzYyIHBvd2VyIGRvbWFpbiBzdXBwb3J0CgogLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWlwcy9icmNtL3NvYy50eHQgICAgIHwgIDE3ICsKIGFyY2gvbWlwcy9ib290L2R0cy9icmNt
L2JjbTYzMjguZHRzaSAgICAgICAgICB8ICAgNiArCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzYyLmR0c2kgICAgICAgICAgfCAgIDYgKwogZHJpdmVycy9zb2MvYmNtL0tjb25maWcgICAg
ICAgICAgICAgICAgICAgICAgIHwgICA4ICsKIGRyaXZlcnMvc29jL2JjbS9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgICAgICB8ICAgMSArCiBkcml2ZXJzL3NvYy9iY20vYmNtNjN4eC1wb3dlci5j
ICAgICAgICAgICAgICAgfCAzNzQgKysrKysrKysrKysrKysrKysrCiA2IGZpbGVzIGNoYW5nZWQs
IDQxMiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvYmNtL2Jj
bTYzeHgtcG93ZXIuYwoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
