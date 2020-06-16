Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9292C1FBDCF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aKdQQ+PKJjSzCsr3oIF+teEKc/uSvhepYbM3H+ghmwY=; b=MxganZ/N1SdS/m
	7BiwghUzLiQkOz3EtKO9rQjJ+hU22hbW3jaLpYoFx+QTHEdNV69GvJUoscODI5Kog8ag/E/H+4SAj
	3qGkwzE8RcoVr6TbF7OKWkWj9LhxEFkbS7CKmILUQgi7JBxPL/KHqdFheugeLs9pjZZxmmdMw3llE
	EloQk6O2UpZdI8XsxEHrZx0qI6lHgCwaNKIxEQcoiQwr8R9dGCD78XdKgFWnGtuMTl0glEkHRdgMp
	Vlce48jt9JqzPGMNSCHOE32Hha6Q3EHiO3pCVqyzfK9pHm2UFlpbQhfOTGiQBVAR00bcuRgQCtPQh
	5FSWDps8+5jnjySgfTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGA2-0005rm-Rv; Tue, 16 Jun 2020 18:18:14 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG9u-0005pq-Nn
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:18:07 +0000
Received: by mail-wm1-x330.google.com with SMTP id y20so4089747wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8LmTayBVPTW7ENh+5gUw2mLnloWnahd4HWesLcexzGo=;
 b=Wmwst1uDZnj0G6rQmKnFIjglBbaV6IRWpaOCshlQeIyVPGyNS+85y9fL1KeHsx1hkq
 fu15VLouNuSqAe7iT9xuFobBH1oDZ4mEcyBXIndvBEGLJWMl1MRBGqLfR0pDPSAYnpxw
 cx5MYkkemqqLDTt2YahSQBJ5rxHFXsYndFSm+Qb8a9xJWN7n1h1fMIiRU45znDWdvmew
 7qqP2yt9GGQWQkF3yTa5HS51mWUswxTPo15K6XR/PEzvKc6Fop+D5FlMe0Y2dcMAgO4V
 fkmTGDSkKv4+zfFKtNthqFRMMA0MCft8n1qWWiDjwdwzxfaej0hinRHd12GkahbadXDy
 QIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8LmTayBVPTW7ENh+5gUw2mLnloWnahd4HWesLcexzGo=;
 b=CJUcrr2Zl/lG8qQWhELbCLSJ6S5/yPwD0tQUwOttOVRKx28fTssBamrs7A+jQbczBk
 fRbFYCwL6qkGMknuZpzV7vyDK+w8+hvMdc4R5Tua+aLoU9kht7rWlQPzmnAgLiVVw09g
 6f0WyfMZLmKOJ5I/u6ifUWXGjh08q0gx4UkOWgcVLfATPrB9kzQfat6sYoRkG5YZbdP1
 EkpZlbrsoV1/fBEAjreDYjyvmsVFeP1CZaUoCKSkQhJcYm2fmWHSmd1OZVGqD0R+THdz
 o1jRu5J6YoJrmnmrasyGf1DtLV+095pxbgdkVXXOzLArBkRJHlVJCvT/tQ+anl3tXeaU
 /9rQ==
X-Gm-Message-State: AOAM532nOrSjvcCDVEn9OV+aPqRJpPdLX0dzhddwvkvTxUfvo4cOyMJd
 VZBNty+EAvKc8zIs426RO6k=
X-Google-Smtp-Source: ABdhPJxfsQl4YYQbvO8WxxGctX/5GUoJol6KmDxSRoCYT5kgEI/5RSxDBWDb7Yt4qlMFh96CYZMyNA==
X-Received: by 2002:a05:600c:2042:: with SMTP id
 p2mr4690151wmg.85.1592331485223; 
 Tue, 16 Jun 2020 11:18:05 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id u3sm28651091wrw.89.2020.06.16.11.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:18:04 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
Date: Tue, 16 Jun 2020 20:18:00 +0200
Message-Id: <20200616181802.3498745-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111806_775790_B5154124 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QWRkIEJDTTYzeHggVVNCSCBQSFkgZHJpdmVyIGZvciBCTUlQUy4KCnYyOiBpbnRyb2R1Y2UgY2hh
bmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKIC0gcGh5LWNlbGxzIGNoYW5nZWQgdG8gMS4KIC0g
RHJvcCBPRiBkZXBlbmRlbmN5ICh1c2UgZGV2aWNlX2dldF9tYXRjaF9kYXRhKS4KIC0gRHJvcCBf
X2luaXRjb25zdCBmcm9tIHZhcmlhbnQgdGFibGVzLgogLSBVc2UgZGV2bV9jbGtfZ2V0X29wdGlv
bmFsLgoKw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzICgyKToKICBkdC1iaW5kaW5nczogcGh5OiBh
ZGQgYmNtNjN4eC11c2JoIGJpbmRpbmdzCiAgcGh5OiBiY202M3h4LXVzYmg6IEFkZCBCQ002M3h4
IFVTQkggZHJpdmVyCgogLi4uL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFt
bCAgIHwgIDcyICsrKwogZHJpdmVycy9waHkvYnJvYWRjb20vS2NvbmZpZyAgICAgICAgICAgICAg
ICAgIHwgICA5ICsKIGRyaXZlcnMvcGh5L2Jyb2FkY29tL01ha2VmaWxlICAgICAgICAgICAgICAg
ICB8ICAgMSArCiBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMgICAgICAg
fCA0MzMgKysrKysrKysrKysrKysrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDUxNSBpbnNlcnRpb25z
KCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvcGh5L2Jyb2FkY29tL3BoeS1iY202M3h4LXVzYmguYwoKLS0gCjIuMjcuMAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
