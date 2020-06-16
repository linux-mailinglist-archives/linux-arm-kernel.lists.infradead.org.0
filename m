Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B7E1FBDD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 20:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hTSKrZ+3JZhZl9MrnCEV9kV9pVz1JaAPf+FmE3dOVc=; b=Un6llsHShH+mwU
	AkeiUdemzB0Pk5IMm7Gx1JCeYmYA80z5BxMpadRfJiT1jzXd3kv4bjjp1IEDBdGE1dat71j8T7k6C
	PBW6wzneFIPdLwkXwhM501prUQij/SaryOWk/p61koJpBSZbUV34m9u3ykqDnr4bOfe1SVSmpcu4q
	edmdzbfsH2kJGDIb7n61oVP5oj0m/fqjA8pvrTkFGXVgy4FPOyksEfqEt+byfG7LzMEdYOvCQeUZP
	A+D9qi1tTH0NjdUCYsaJ9Qy33rhbA6PrYBxFCchsZKT0V+F3N0qelIv0qCbvEJAON5hqdiW1wwz+X
	e0HscopDBBl12y6pp72g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlGAI-0005zu-97; Tue, 16 Jun 2020 18:18:30 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG9v-0005qW-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 18:18:09 +0000
Received: by mail-wr1-x434.google.com with SMTP id b6so2625693wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 11:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8b9w5Bl2hRduQlm5Ms5q2rrQhAAPM6If/ziLRYU2pNA=;
 b=gwb3A+Az/M8/mSOMrobEndzEbDF9O6nZjaLrtPnL9ccc1tEDKZ4zoR/xI915JKDohZ
 nREap0BDMicV5GOHBYJQlC1KOgibyM+7Jo0dGStow2l0leuYM8Xx/oOeEh2rXw6eDgpa
 JiatzvrM/nSq6+J/+nSISzW0MPTsk0UjIJOQiufJNWojjwGW8+sMdzguhjSGX12TV+hA
 UGt5b9CG88h6eTxy4mzTGCspeESYLxq+J5MpSdVEaBu/PP6sQRs3sncrvd3BVmYroBri
 d4egmK76kwdzXQmypBXv0fPjzY8LUSkY+1iBU23PIoCl3zKAs893GOEyCycaju4d5Sn0
 SNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8b9w5Bl2hRduQlm5Ms5q2rrQhAAPM6If/ziLRYU2pNA=;
 b=LT0XF7Hl3MGkpZOLfwoeTk2OPuYc21K/tiUFHjnakINsLFAeBIC+MoCv2Y/8dOe5be
 zg2rIddTKxotXmubDHGCKvHaj5J59KcZHM84FPLN8vKo/0xzfPc1KPQcDrrVHH9f1ebX
 6imFG+UHLizgzV8ZK86+KoiiUgR3sGftqs4TgrVZ8XcSs9dL0FyKE6v/T1K8Ehv89Ufl
 W+Hsuv/GJdBDZyxW4nOFbmy3+G4eNAtb9RiLIsJpsDrcfewQHECeMRBJKN+r1CvXcJwc
 QVOZ6CUIxLVyCo8/03RucnF7o3EM1MlzxIY516l8m7nh8Gk/WJsiYfp1PMu87QCbMfp6
 HsTQ==
X-Gm-Message-State: AOAM530e1esCRcZUlQRsITI4nqyL5hm9Rs9UJnR5RCPzWsW/AK4VmFJX
 OEhEPK2Ck7GDmjzIRs4djJ8=
X-Google-Smtp-Source: ABdhPJwbPkYjXMpg9rPLEmw8iujy82MzJeuXEayutCiKGTao6xvPSkg9H39yipRMGNeONYVpnZC5IA==
X-Received: by 2002:adf:f2c2:: with SMTP id d2mr4204754wrp.424.1592331486195; 
 Tue, 16 Jun 2020 11:18:06 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id u3sm28651091wrw.89.2020.06.16.11.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 11:18:05 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: simon@fire.lp0.eu, jonas.gorski@gmail.com, kishon@ti.com, vkoul@kernel.org,
 robh+dt@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 krzk@kernel.org, gregkh@linuxfoundation.org, alcooperx@gmail.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
Date: Tue, 16 Jun 2020 20:18:01 +0200
Message-Id: <20200616181802.3498745-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616181802.3498745-1-noltari@gmail.com>
References: <20200616181802.3498745-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111807_742171_DD8FF49A 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
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

RG9jdW1lbnQgQkNNNjN4eCBVU0JIIFBIWSBiaW5kaW5ncy4KClNpZ25lZC1vZmYtYnk6IMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQogdjI6IHBoeS1jZWxs
cyBjaGFuZ2VkIHRvIDEuCgogLi4uL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHku
eWFtbCAgIHwgNzIgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDcyIGluc2Vy
dGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVz
YmgtcGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi45ZWYy
YzFmOGFhMDAKLS0tIC9kZXYvbnVsbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCkBAIC0wLDAgKzEsNzIgQEAKKyMg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wIE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1M
IDEuMgorLS0tCiskaWQ6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYnJjbSxi
Y202M3h4LXVzYmgtcGh5LnlhbWwjIgorJHNjaGVtYTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9t
ZXRhLXNjaGVtYXMvY29yZS55YW1sIyIKKwordGl0bGU6IEJDTTYzeHggVVNCSCBQSFkKKworbWFp
bnRhaW5lcnM6CisgIC0gw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNv
bT4KKworcHJvcGVydGllczoKKyAgY29tcGF0aWJsZToKKyAgICBlbnVtOgorICAgICAgLSBicmNt
LGJjbTYzMTgtdXNiaC1waHkKKyAgICAgIC0gYnJjbSxiY202MzI4LXVzYmgtcGh5CisgICAgICAt
IGJyY20sYmNtNjM1OC11c2JoLXBoeQorICAgICAgLSBicmNtLGJjbTYzNjItdXNiaC1waHkKKyAg
ICAgIC0gYnJjbSxiY202MzY4LXVzYmgtcGh5CisgICAgICAtIGJyY20sYmNtNjMyNjgtdXNiaC1w
aHkKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICBjbG9ja3M6CisgICAgbWF4SXRlbXM6
IDIKKworICBjbG9jay1uYW1lczoKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHVzYmgKKyAg
ICAgIC0gY29uc3Q6IHVzYl9yZWYKKworICByZXNldHM6CisgICAgbWF4SXRlbXM6IDEKKworICAi
I3BoeS1jZWxscyI6CisgICAgY29uc3Q6IDEKKworcmVxdWlyZWQ6CisgIC0gY29tcGF0aWJsZQor
ICAtIHJlZworICAtIGNsb2NrcworICAtIGNsb2NrLW5hbWVzCisgIC0gcmVzZXRzCisgIC0gIiNw
aHktY2VsbHMiCisKK2lmOgorICBwcm9wZXJ0aWVzOgorICAgIGNvbXBhdGlibGU6CisgICAgICBl
bnVtOgorICAgICAgICAtIGJyY20sYmNtNjMxOC11c2JoLXBoeQorICAgICAgICAtIGJyY20sYmNt
NjMyOC11c2JoLXBoeQorICAgICAgICAtIGJyY20sYmNtNjM2Mi11c2JoLXBoeQorICAgICAgICAt
IGJyY20sYmNtNjMyNjgtdXNiaC1waHkKKwordGhlbjoKKyAgcHJvcGVydGllczoKKyAgICBwb3dl
ci1kb21haW5zOgorICAgICAgbWF4SXRlbXM6IDEKKyAgcmVxdWlyZWQ6CisgICAgLSBwb3dlci1k
b21haW5zCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICB1c2JoOiB1c2ItcGh5QDEwMDAxNzAwIHsK
KyAgICAgIGNvbXBhdGlibGUgPSAiYnJjbSxiY202MzY4LXVzYmgtcGh5IjsKKyAgICAgIHJlZyA9
IDwweDEwMDAxNzAwIDB4Mzg+OworICAgICAgY2xvY2tzID0gPCZwZXJpcGhfY2xrIEJDTTYzNjhf
Q0xLX1VTQkg+OworICAgICAgY2xvY2stbmFtZXMgPSAidXNiaCI7CisgICAgICByZXNldHMgPSA8
JnBlcmlwaF9yc3QgQkNNNjM2OF9SU1RfVVNCSD47CisgICAgICAjcGh5LWNlbGxzID0gPDE+Owor
ICAgIH07Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
