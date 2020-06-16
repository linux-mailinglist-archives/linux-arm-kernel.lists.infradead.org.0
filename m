Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 620891FBE5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9FUZZtCTk5hEptGSykeXLvazDvj1UkrCmEIDyorRgWA=; b=UmlicRmFPy4w58
	kRmwnXKJV6YWtSD6/c8Pf91v1bvBh3WUd/JhCzyqYfissZCylJSpd+4hjA4weQsLvBvmBF4C5BL4v
	gSctmhFzkMcIWT8N1Ph/V1OyYho1upcL6sUm0kZ1iu/lvcEGLYXxZqzDbmVRMngOBotBIVkke6Lx7
	auT/7mnv85fm3H9ZZsipBV7JlGQR77l99Ops91WV3jrqJsMBayTFXQc817dOoJboPdW8TYIU9+qX7
	VDI5aB3Z8Q3RLBafgoYP+pqLh+O9MnIf7m0INiCWLGNW4+8XEXoSIfDTcgd0fpWARBg/H6X+VxmjP
	GMq/hGt/kPVboRyUvllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGap-00089N-Vk; Tue, 16 Jun 2020 18:45:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlGag-00088q-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:45:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id h5so21883381wrc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FjxCYQYl9EMftF7v9IlEHBGvOY++fyDl8EmryaQNdvY=;
 b=riDMOp/DDEoYdyHybE++8SKdmytMqyA+4bXpnTYugw1SmZOxtpQQIz9p8wITF3uAU4
 /HDw8AtDzN5p6lVJJgA//Tj1o4Yls4NsjivbDU1XUIO85ZihAsaVcnoDcv06izr58HzL
 rEHCI1ZRbeDARdPPTSHN3i/hCdFdg3vcrYdPG7Jfrda40FPvhCOPBZdwAM5uHU3fHyNc
 DymsRwu6xXF6D6YQlNtq+RIB5LAXOL2fy1fy+hhioKyzAdoldxMjDO/ZI25HfSq2vxx6
 yjjRId0cSJ7hrbIYz5zHVGt2PHOxKg2gNR1CfeuMbzOwOP9olmdpc6/5tHI5n/9KlMgz
 K1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FjxCYQYl9EMftF7v9IlEHBGvOY++fyDl8EmryaQNdvY=;
 b=EhXphZp1hFMddUT8Su1bVMgtWhtqt0LDULCDn0ze7J1g+T5LUruJwxRyXCdGM6kNcj
 mRB36zBkiV4eJisubNAnUW/hmsV3am1n4KEcHpjJsZ/8S5OPcYDGoL8zs/uFbuJvKox3
 X02vWhiPR/b0+aAKcF1XRAB+4SwPzY+sL+0hGBwW7lD0r9pbgdRAvfTl7pNLem8Fsjva
 zJpHpfsT+Hxjnj07Nz22ukrz2Le1t5yaFhXWY1JHwIQTop33AHg13kLTtHK3p0GxsNNS
 boeCPiLFbwXE392TCHG5QnxC1tNZSePH4Pfln8UrZCOhbX4NcXB2Dbz3qFPa+e0JUVti
 7Kng==
X-Gm-Message-State: AOAM533C6wI0BBPqrfIZvd05IbVhbDERm3qTrJsKTMdSALUio4hyTqhU
 sglJMzunqESy5XYUjnxxMT8=
X-Google-Smtp-Source: ABdhPJyikGcJQsO8D/dTakls4yexXP9cUZt5JVzF8fbB5xzwpnEqpL5O8C3urwUr/MCjuWXWFXrz/w==
X-Received: by 2002:adf:ff83:: with SMTP id j3mr4479019wrr.264.1592333144741; 
 Tue, 16 Jun 2020 11:45:44 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id q11sm30528707wrv.67.2020.06.16.11.45.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:45:44 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
Date: Tue, 16 Jun 2020 20:45:40 +0200
Message-Id: <20200616184542.3504965-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_114546_144783_04612DBE 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

QWRkIEJDTTYzeHggVVNCSCBQSFkgZHJpdmVyIGZvciBCTUlQUy4KCnYzOiBpbnRyb2R1Y2UgY2hh
bmdlcyBzdWdnZXN0ZWQgYnkgRmxvcmlhbjoKIC0gQWRkIHN1cHBvcnQgZm9yIGRldmljZSBtb2Rl
Lgp2MjogaW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5IEZsb3JpYW46CiAtIHBoeS1jZWxs
cyBjaGFuZ2VkIHRvIDEuCiAtIERyb3AgT0YgZGVwZW5kZW5jeSAodXNlIGRldmljZV9nZXRfbWF0
Y2hfZGF0YSkuCiAtIERyb3AgX19pbml0Y29uc3QgZnJvbSB2YXJpYW50IHRhYmxlcy4KIC0gVXNl
IGRldm1fY2xrX2dldF9vcHRpb25hbC4KCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyAoMik6CiAg
ZHQtYmluZGluZ3M6IHBoeTogYWRkIGJjbTYzeHgtdXNiaCBiaW5kaW5ncwogIHBoeTogYmNtNjN4
eC11c2JoOiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlcgoKIC4uLi9iaW5kaW5ncy9waHkvYnJjbSxi
Y202M3h4LXVzYmgtcGh5LnlhbWwgICB8ICA3MiArKysKIGRyaXZlcnMvcGh5L2Jyb2FkY29tL0tj
b25maWcgICAgICAgICAgICAgICAgICB8ICAgOSArCiBkcml2ZXJzL3BoeS9icm9hZGNvbS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJj
bTYzeHgtdXNiaC5jICAgICAgIHwgNDU2ICsrKysrKysrKysrKysrKysrKwogNCBmaWxlcyBjaGFu
Z2VkLCA1MzggaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMKCi0t
IAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
