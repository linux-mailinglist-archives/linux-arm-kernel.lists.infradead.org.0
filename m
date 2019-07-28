Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7443078283
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 01:53:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rbP6QDNiAcuABo6zqVH/4hWTRn4dROEMigaaP1aA/oc=; b=fCVTFSUn+OWCXv
	SHnIheSIqHNFciFlkhSWeDjRnI9Es0XaeXfsf0ks20EimYz2XtxmyEcscZ4+nuXqq1ZMCDg9i9o8B
	jt3/MDGssHirCtQ1/KzrjrmwP5CvnSL8NaDVjtFQJcdRC8P5asJAa424WlTjS0QkSdI7eALMRXmM0
	hkF/sYrLn0895O2KmBKjVaAv1onv6ncqKT2ItJeVDsJfweIwhlALHu7wMUP1FIPj1cIxVEbJZwwu6
	kGPnrWCV2eey5aVAFPjZYy/27kYXQ7ByhQdk+kc+R6TIRfLiCZFsKcDF8zqqEiOcX+9xlZyqgq9tM
	IpUtLh+pmESXvdWcxs4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrsyt-00056N-I7; Sun, 28 Jul 2019 23:53:35 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrsyi-000503-Q0
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 23:53:26 +0000
Received: by mail-wm1-f67.google.com with SMTP id w9so41784432wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 16:53:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tvo/EwR/TGSGrQyzo/cMXEKKXBvLMa9Iahv6vvH3r34=;
 b=EFMeY9XNsgDoZzh+4bLpv2ukCXXbwcyoBOvKO8jqHTaxwNh9i9al1b9Z7fDV18dtwq
 R577sMjWOXMVUfG+FUU/5n1RdHHuU3WoRlLdNCeojNmgEdyZj5U1J/0aq0Lr58xlx0In
 ZsqSCcNrP6x6750dfc6v2z/tUBJYQvXFUbR/I6OmjIZ9f2zY6GvC1Z0SV9IXFxyWkK/q
 1u3nidtPCHVbSAX0GqmGFhmCXwg4g3eLdO18HUibs6DeM9km4XLzIirBsHsmDNh/gL+U
 H16iJhbzAx4vaFv0URGyEkibEhbD6cDs7IX6IdKG0k/0nbXfyX/J3x1Qq3xsI08aZW0F
 3SaQ==
X-Gm-Message-State: APjAAAU6fN/aJDxHZFXiHRg8Cfqk5xl5ufq0oD5JfDIOHTjbFTzlZCcE
 eD3Kaw7RpPeET0WBIs0tKUwChjxgxqk4VA==
X-Google-Smtp-Source: APXvYqyrf0yR/xR9XDHVAOLqyW+RE3cSUi27Kfx+HycDIwlyHe4GqDgHnO+RWx5o6/Hn29vCCquabw==
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr69665580wmd.48.1564358003263; 
 Sun, 28 Jul 2019 16:53:23 -0700 (PDT)
Received: from mcroce-redhat.homenet.telecomitalia.it
 (host221-208-dynamic.27-79-r.retail.telecomitalia.it. [79.27.208.221])
 by smtp.gmail.com with ESMTPSA id h16sm63516938wrv.88.2019.07.28.16.53.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 16:53:22 -0700 (PDT)
From: Matteo Croce <mcroce@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm_pmu: mark expected switch fall-through
Date: Mon, 29 Jul 2019 01:53:20 +0200
Message-Id: <20190728235320.8600-1-mcroce@redhat.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_165324_848704_58F1170C 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWFyayBzd2l0Y2ggY2FzZXMgd2hlcmUgd2UgYXJlIGV4cGVjdGluZyB0byBmYWxsIHRocm91Z2gs
CmZpeGVzIHRoZSBmb2xsb3dpbmcgd2FybmluZzoKCmRyaXZlcnMvcGVyZi9hcm1fcG11LmM6IElu
IGZ1bmN0aW9uIOKAmGNwdV9wbV9wbXVfbm90aWZ54oCZOgpkcml2ZXJzL3BlcmYvYXJtX3BtdS5j
OjcyNjozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBtYXkgZmFsbCB0aHJvdWdoIFstV2ltcGxp
Y2l0LWZhbGx0aHJvdWdoPV0KICAgY3B1X3BtX3BtdV9zZXR1cChhcm1wbXUsIGNtZCk7CiAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvcGVyZi9hcm1fcG11LmM6NzI3OjI6
IG5vdGU6IGhlcmUKICBjYXNlIENQVV9QTV9FTlRFUl9GQUlMRUQ6CiAgXn5+fgoKU2lnbmVkLW9m
Zi1ieTogTWF0dGVvIENyb2NlIDxtY3JvY2VAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3BlcmYv
YXJtX3BtdS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jIGIvZHJpdmVycy9wZXJmL2FybV9wbXUuYwppbmRl
eCAyZDA2YjgwOTVhMTkuLjNlYjcxMTA2NmEyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9wZXJmL2Fy
bV9wbXUuYworKysgYi9kcml2ZXJzL3BlcmYvYXJtX3BtdS5jCkBAIC03MjQsNiArNzI0LDcgQEAg
c3RhdGljIGludCBjcHVfcG1fcG11X25vdGlmeShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKmIsIHVu
c2lnbmVkIGxvbmcgY21kLAogCQlicmVhazsKIAljYXNlIENQVV9QTV9FWElUOgogCQljcHVfcG1f
cG11X3NldHVwKGFybXBtdSwgY21kKTsKKwkJLyogZmFsbHRocm91Z2ggKi8KIAljYXNlIENQVV9Q
TV9FTlRFUl9GQUlMRUQ6CiAJCWFybXBtdS0+c3RhcnQoYXJtcG11KTsKIAkJYnJlYWs7Ci0tIAoy
LjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
