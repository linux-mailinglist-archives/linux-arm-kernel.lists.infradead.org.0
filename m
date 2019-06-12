Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588D441E4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GcmHvmrnLiPh6X51NFjbSKPGKw2eoopzDsT0AlMYXvE=; b=ieaz3jhvpN8lYU
	MXYQ7LIHRLsV99RfFqWtHCJ903pVVy6swZhlDL4KJ5FHExYSZwZpumA2//VWDflYUhAHCoNBYvxYM
	LCYuEkTYUuDiJaSXkbvoIYkI3e2QFe9LZpcpW53ol75kOw7d8yNvyh2uBbXGpBXLerHzmiJrfFr9C
	+DzVU3V4N9qK2rFeDdo/Ccgb6xZ/pxGtgfqGzXAjIJ9iiBKhXHj7NiC2SKSWEUHQz/vDA3MyzMCl3
	6o6G0YGtsqfsa0bii84EtQZ2wiaOUNlc2xrHucLVVgaUD9o9JQnrjB+f7jgRDZRVtnBlYzHbja18/
	iOpWF7palvDRaufsrV6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hay6J-0005i8-JL; Wed, 12 Jun 2019 07:55:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hay64-000587-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 07:55:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id 20so8484952pgr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 00:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t/zZQ82E/N4gFFsCTmRZdYbvd54D5nSgY4uOp2BfUg4=;
 b=JMuYTPILm5oCrO9h51xNSn+tS6CagMc0yZFGqpOBe60q4o0BGqiouryTqq5e1OMzHD
 rPPNZ6vtqqgXRNsjRVtnkphRfkUPh+ageRVwawW3Zb9/JzbfLx2+gbG/Q05yndF8bg80
 fdkSyEiFKeDP8Zg8eMMFLl4Xygesmch6UQi95PqTzgRYLLjzZCkfdxLcdEBzGvaufIuM
 mcjHpczgaPIKv5/CQL1z9f3shXhEdLul5A9x2m0C5DeWaO8pItHJXx2sKOUZ/3wzfyQz
 tO9WxRv1cwUSO9K7qfKf6uCA5ogtyUUpa4CaHtiviKvqDF28bKJZ/M9N7zW914ZOfNaF
 a9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t/zZQ82E/N4gFFsCTmRZdYbvd54D5nSgY4uOp2BfUg4=;
 b=beBl9KCam14D3AqigwOPMXlmyYs9P7Jhrvb6QcHa0sY9HeJD5c9ZmwQYYAq6HbUoOO
 t+2bTvnKfALAqIY4F6iG8KnSShJxxSpwvDEGEAblx+esyiIHad1xV8qm3UZlPO2fhxcn
 8UouhOBt+r6yO2V/hP5k24Vj8PI5OFp0P5u0XS1Z7Q9MwK46hY8ZJBh0rk7UDF3Yn1qo
 WkanjN/a1MOH2dE/D6HU82JPPBJpiJFiTS77r1TSOUiPYniPOAgGLQ5XMG1/xyKQQUO8
 /t2A2tV6ZtE6ef/5L2Bk7DLWGoOraAI/a9jlrTC0TjDKMnDkwUl+Nh2ma73vxMsDz607
 Po2w==
X-Gm-Message-State: APjAAAWc9vPwNMAbUcxVVkHRtJehmpoq9u1OZq1aW1TVH/0OiRVC6O+9
 8iTAgmjVwdZa+9loiMOaNWa3
X-Google-Smtp-Source: APXvYqyhsNDJVnEra02+JvmqkHRHXuSl223Vx4mOQwGbwFeFfO1wG9ZHDU3uBEIjt7IKjmaKTRH8Uw==
X-Received: by 2002:a17:90b:8d6:: with SMTP id
 ds22mr31537248pjb.143.1560326103017; 
 Wed, 12 Jun 2019 00:55:03 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:894:d456:15b5:9ca9:e3ec:c06a])
 by smtp.gmail.com with ESMTPSA id b15sm16846399pfi.141.2019.06.12.00.54.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 00:55:02 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mcoquelin.stm32@gmail.com,
	alexandre.torgue@st.com,
	robh+dt@kernel.org
Subject: [PATCH v4 0/4] Add Avenger96 board support
Date: Wed, 12 Jun 2019 13:24:47 +0530
Message-Id: <20190612075451.8643-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_005504_540039_FEEBFB7E 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sCgpUaGlzIHBhdGNoc2V0IGFkZHMgQXZlbmdlcjk2IGJvYXJkIHN1cHBvcnQuIFRoaXMg
Ym9hcmQgaXMgb25lIG9mIHRoZQpDb25zdW1lciBFZGl0aW9uIGJvYXJkcyBvZiB0aGUgOTZCb2Fy
ZHMgZmFtaWx5IGZyb20gQXJyb3cgRWxlY3Ryb25pY3MKZmVhdHVyaW5nIFNUTTMyTVAxNTdBIE1Q
VSBhbmQgaGFzIHRoZSBmb2xsb3dpbmcgZmVhdHVyZXM6CgpTb0M6IFNUTTMyTVAxNTdBQUMKUE1J
QzogU1RQTUlDMUEKUkFNOiAxMDI0IE1ieXRlIEAgNTMzTUh6ClN0b3JhZ2U6IGVNTUMgdjQuNTE6
IDggR2J5dGUKICAgICAgICAgbWljcm9TRCBTb2NrZXQ6IFVIUy0xIHYzLjAxCkV0aGVybmV0IFBv
cnQ6IDEwLzEwMC8xMDAwIE1iaXQvcywgSUVFRSA4MDIuMyBDb21wbGlhbnQKV2lyZWxlc3M6IFdp
RmkgNSBHSHogJiAyLjRHSHogSUVFRSA4MDIuMTFhL2IvZy9uL2FjCiAgICAgICAgICBCbHVldG9v
dGjCrnY0LjIgKEJSL0VEUi9CTEUpClVTQjogMnggVHlwZSBBIChVU0IgMi4wKSBIb3N0IGFuZCAx
eCBNaWNybyBCIChVU0IgMi4wKSBPVEcKRGlzcGxheTogSERNSTogV1hHQSAoMTM2Nng3NjgpQCA2
MCBmcHMsIEhETUkgMS40CkxFRDogNHggVXNlciBMRUQsIDF4IFdpRmkgTEVELCAxeCBCVCBMRUQK
Ck1vcmUgaW5mb3JtYXRpb24gYWJvdXQgdGhpcyBib2FyZCBjYW4gYmUgZm91bmQgaW4gOTZCb2Fy
ZHMgd2Vic2l0ZToKaHR0cHM6Ly93d3cuOTZib2FyZHMub3JnL3Byb2R1Y3QvYXZlbmdlcjk2LwoK
VGhhbmtzLApNYW5pCgpDaGFuZ2VzIGluIHY0CgoqIERlbGV0ZWQgdGhlIG9sZCBzdG0zMi50eHQg
YmluZGluZwoqIEFkZGVkIFJvYidzIFJldmlld2VkLWJ5IHRhZwoKQ2hhbmdlcyBpbiB2MzoKCiog
Q29udmVydGVkIFNUTTMyIHBsYXRmb3JtIGJpbmRpbmdzIHRvIERUIHNjaGVtYQoKQ2hhbmdlcyBp
biB2MjoKCkFzIHBlciBBbGV4J3MgcmV2aWV3OgoKKiBGaXhlZCBJMkMyIHBpbmN0cmwgbm9kZQoq
IFNvcnRlZCB0aGUgYXZlbmdlcjk2IGR0YiBpbiBhbHBoYWJldGljYWwgb3JkZXIKKiBBZGRlZCBk
ZXZpY2UtdHlwZSBwcm9wZXJ0eSB0byBtZW1vcnkgbm9kZQoKTWFuaXZhbm5hbiBTYWRoYXNpdmFt
ICg0KToKICBBUk06IGR0czogc3RtMzJtcDE1NzogQWRkIG1pc3NpbmcgcGluY3RybCBkZWZpbml0
aW9ucwogIGR0LWJpbmRpbmdzOiBhcm06IHN0bTMyOiBDb252ZXJ0IFNUTTMyIFNvQyBiaW5kaW5n
cyB0byBEVCBzY2hlbWEKICBkdC1iaW5kaW5nczogYXJtOiBzdG0zMjogRG9jdW1lbnQgQXZlbmdl
cjk2IGRldmljZXRyZWUgYmluZGluZwogIEFSTTogZHRzOiBBZGQgQXZlbmdlcjk2IGRldmljZXRy
ZWUgc3VwcG9ydCBiYXNlZCBvbiBTVE0zMk1QMTU3QQoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2FybS9zdG0zMi9zdG0zMi50eHQgICB8ICAxMCAtCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vc3RtMzIvc3RtMzIueWFtbCAgfCAgMzEgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxl
ICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3
LXBpbmN0cmwuZHRzaSAgICAgfCAgNzUgKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvc3RtMzJtcDE1
N2EtYXZlbmdlcjk2LmR0cyAgIHwgMzIxICsrKysrKysrKysrKysrKysrKwogNSBmaWxlcyBjaGFu
Z2VkLCA0MjggaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2
NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdG0zMi9zdG0zMi50eHQK
IGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3N0bTMyL3N0bTMyLnlhbWwKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9z
dG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzCgotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
