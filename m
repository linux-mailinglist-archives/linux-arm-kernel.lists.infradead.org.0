Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4962F1FAB58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3kUEY0TUE8ys9cHPFh7fjTrSE9DNXwkr/IiP2AE8kg=; b=lbIZWIXwxzaU0M
	/1KM1nNSrTAQ6MKxGHDVyzvwVbWRwBZEewzzGe9grxsEcRoWz/icsAinaurozcgVyPpSO+pXyevMY
	pU865OZQ8iKuHJA4pQdMIu7cOqwtt6ryHbSNkKg+blp5lb6PYBk9oCi8UR0nQ4FU7sTBZgNyZb6pk
	Vr7czxWW9zkwLY+L7zMXFv5c4PpaeycZX5w8Q1L3ndOqi83Qyu75VrmuatNDP55WmydbM/pMZvbuT
	3RqXMsaoW/qdVckQtLpbTLzSs+vgu1JMqbQeZwVOb0K3PZ8hXB0+JYmlzi/gypci6jSo579kbkKk4
	r65bw0FWPm5cJ1fxXnrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl732-000178-U8; Tue, 16 Jun 2020 08:34:24 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl72q-00016B-Cj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:34:13 +0000
Received: by mail-wr1-x42f.google.com with SMTP id x14so19824120wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i0zKxkidxBoqL2sZN9RpjSHDtjGRezB4oDkxwd9tphA=;
 b=segt4oTI79JJbhAr8FHGJ02nd8XIH2jNl1ctQmmqmbCY57xbMHYYeJ1VTyx2thu/yb
 D1BKMQe2TPhlKf+qsBIhffhIzHzeKNo4fT3eZWvSMbZQ7ILv9O6zpXOE6r6pkf5X48OA
 WUED4BC9PCK5TgLeCoB9u/6h0oagmFUxPEBi0xVxS4FC2NSKoJya5QSs3mnmQLERe0Yl
 k6jLAuhORZSUIIFf62tfpSH44MlzoYBN1pYrpu77lPjSEbk1ioFlMbLtAoA9RrKLlHQZ
 LDcZTosAr/WApdySQGzkhA86ZXKdTRAEEI8OvXX4xHvbsXKrnUHnjvkm8ao8uev6LBst
 NDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i0zKxkidxBoqL2sZN9RpjSHDtjGRezB4oDkxwd9tphA=;
 b=mebLPIfO796g+NQeceH/wMUiCBHcMtodQGf2z0lthKMMsKnAoGWFC4qGs06TUiOasC
 syha7E9G4DasDvMJV6+2oq5xgGDetuKaKz9j0LhliCmzPNy+bjI8ehnT0Ep1ZdADgudR
 3xEnTpUdwwSF2pNrAPjZrBF+BVjskVmZ1wIHJgVHVU2RVVz84+0u8KtKdcPo2ZgiEean
 sBvIITg9vL0kHWraudAtT5LUZh4Ka+cnsTdIIxHW6qTW/qIqb3pipBUiw65xq6lCKz2k
 VvJSNMPGLMA26mF6f53vUOapbnjSXPOWa3koWwj59Xr5Ww+eC+ZNp7y2QAp1NaJ42YWT
 842Q==
X-Gm-Message-State: AOAM531T/0XG5aI45fesyxXP5e7sax2YUcLe1Xt9L2QyYOg54SOXSTiR
 9MUMaO5w9mCkrJIymaTRU7M=
X-Google-Smtp-Source: ABdhPJxma8oeQOxUjCipeLcrjPMgDEuXEOpadeijHFyc8cHTTOv27MxqDi0+luB6twXRql/BToxDkg==
X-Received: by 2002:a5d:4745:: with SMTP id o5mr1735468wrs.87.1592296450429;
 Tue, 16 Jun 2020 01:34:10 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id s18sm34318981wra.85.2020.06.16.01.34.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 01:34:09 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] phy: bcm63xx-usbh: Add BCM63xx USBH driver
Date: Tue, 16 Jun 2020 10:34:06 +0200
Message-Id: <20200616083408.3426435-1-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_013412_452445_F5F448DD 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
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

QWRkIEJDTTYzeHggVVNCSCBQSFkgZHJpdmVyIGZvciBCTUlQUy4KCsOBbHZhcm8gRmVybsOhbmRl
eiBSb2phcyAoMik6CiAgZHQtYmluZGluZ3M6IHBoeTogYWRkIGJjbTYzeHgtdXNiaCBiaW5kaW5n
cwogIHBoeTogYmNtNjN4eC11c2JoOiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlcgoKIC4uLi9iaW5k
aW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwgICB8ICA3MiArKysKIGRyaXZlcnMv
cGh5L2Jyb2FkY29tL0tjb25maWcgICAgICAgICAgICAgICAgICB8ICAxMCArCiBkcml2ZXJzL3Bo
eS9icm9hZGNvbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9waHkv
YnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jICAgICAgIHwgNDYzICsrKysrKysrKysrKysrKysr
KwogNCBmaWxlcyBjaGFuZ2VkLCA1NDYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgt
cGh5LnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNt
NjN4eC11c2JoLmMKCi0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
