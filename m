Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F1F1F591F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 18:33:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYiZsfly0JPO3wiRT4YgkQ4LjqKMwYoIV6Ld+nfwbuw=; b=CcHOlLocJ+/8A1
	v6JIa4h7a6Oe7XgaS2GFdOPUgV1UXdRobfaB486pL3iGZu1CAbVZLTiFqW3wqb+16n1+0jVjdXifT
	H7a4e0d9n6E3HX6jeSQUTlGDAHCD5DWq1iZ4z3gUD0Y+cqMzqfEuAesewa29R3FGNio9ihMbIZ1n0
	peCkqZDfZg+Wndrs4q/MI+sUaFN+XM/uNL7hTj5U641UV2TovPiLhGCAL5Q/jHWFPO6fgj6W0AjZq
	I/cH6cym2VWynh4ESUOdULaNL7MxGCB6U3o5sRUomRmm0IcHzae/PikZa/2dxw/o/z7FetAc/Kzex
	6UnqtuSg9rKFcZMiJMpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3f9-0000Gd-W0; Wed, 10 Jun 2020 16:33:15 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3ez-0000Fi-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 16:33:06 +0000
Received: by mail-wr1-x435.google.com with SMTP id l11so3027587wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 09:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rpDBv2piDn9Q2J9N0i4yiYrjSsor/HRxSClbwdprklk=;
 b=A3hfbvJ0Q7Jn4eZle67FwEdc1leGYOb7+BdYCoCHSOl/51k/clt4ipp2BpCuRSaJOY
 IntQmAlLDFuBi7LIqjtK/EZ7lOChoCk9Erp8HeTY+mgeJY/p5FH8whi/Ja+X+h9wSF+2
 l40McgBrBH+dHEAGJHZOcpQwNhSdHelxmC2KTXvX8/Oah4Sm2aXMfBV6e/QTd1OVxhM+
 Z44PTtiDGEWbnB5TLwiM76V2TyUvPNzN2K1qXrJWANbzQuWlF5cIeKTSw3gVG+sLnakS
 nMSZRVnPE42vI2DYHsZsJeat3ylQu/OHrzZ4dvKALwd6czAYv/DHSPaQx0q6MQQOa+LR
 gIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rpDBv2piDn9Q2J9N0i4yiYrjSsor/HRxSClbwdprklk=;
 b=kje7SyACyiEw5RHI7cBqa4nwbxUnHf/kqGwAFJmqifInwwmGbb626Ey3B+c5cjLAhu
 DtHX6+MtcHBvJRJVYaGB7m3lw4UGxcZJXsw6V8WMzwz1k6yLKlq3Dm7ddfAfrqf25uWA
 xiz2/bKd6urHeKIa5ZEt0qGRWf8cZQgspud94lfV0gAgu61p8gFXoHpFJw4iiBbWVNte
 uOIouXwqB70gO/AEfQI/WPuRO4WDi+U2kZrEVaC8UCXMKnV7RylbVrTu7SxmdU7gvgc+
 4yduqkM/GMautqQwlx5YHTIOX5QaBotuTZUQjiTWkMW+DWG8XLbsQt41ZMxhfRV7bRLy
 fRhg==
X-Gm-Message-State: AOAM533kRFZGCnRupIv4b6xj2vN5FMsxmR+iiunvws6OvPqNEl9jv6Fx
 f1AuTIoyMZEfZkvdcEd98q0=
X-Google-Smtp-Source: ABdhPJw986CQrWCSJAue58mSsilDl/bEgvJUv0KDGG7CDlhYCSLRXNUnEBFvAgfX9ezIlWDuASlMEQ==
X-Received: by 2002:adf:e588:: with SMTP id l8mr4944794wrm.255.1591806783485; 
 Wed, 10 Jun 2020 09:33:03 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id t7sm414430wrq.41.2020.06.10.09.33.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 09:33:02 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/6] bmips: add BCM63xx power domain controller
Date: Wed, 10 Jun 2020 18:32:55 +0200
Message-Id: <20200610163301.461160-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609105244.4014823-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_093305_601721_4AF33038 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgp2MjogSW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5
IEZsb3JpYW46CiAgLSBBZGQgc2VwYXJhdGUgWUFNTCBmaWxlIGZvciBkdC1iaW5kaW5ncy4KICAt
IEFkZCBiY202M3h4IGZvbGRlciBpbiBkcml2ZXJzL3NvYy9iY20uCiAgLSBVcGRhdGUgTUFJTlRB
SU5FUlMuCiAgLSBBZGQgZHQtYmluZGluZ3MgaGVhZGVyIGZpbGVzLgogIC0gQWxzbyBhZGQgQkNN
NjMyNjggc3VwcG9ydC4KCsOBbHZhcm8gRmVybsOhbmRleiBSb2phcyAoNik6CiAgZHQtYmluZGlu
Z3M6IHNvYzogYnJjbTogYWRkIEJDTTYzeHggcG93ZXIgZG9tYWluIGJpbmRpbmcKICBzb2M6IGJj
bTogYWRkIEJDTTYzeHggcG93ZXIgZG9tYWluIGRyaXZlcgogIG1pcHM6IGJtaXBzOiBkdHM6IGFk
ZCBCQ002MzI4IHBvd2VyIGRvbWFpbiBzdXBwb3J0CiAgbWlwczogYm1pcHM6IGR0czogYWRkIEJD
TTYzNjIgcG93ZXIgZG9tYWluIHN1cHBvcnQKICBtaXBzOiBibWlwczogZHRzOiBhZGQgQkNNNjMy
NjggcG93ZXIgZG9tYWluIHN1cHBvcnQKICBtaXBzOiBibWlwczogYWRkIEJDTTYzMTggcG93ZXIg
ZG9tYWluIGRlZmluaXRpb25zCgogLi4uL2JpbmRpbmdzL3NvYy9iY20vYnJjbSxiY202M3h4LXBv
d2VyLnlhbWwgIHwgIDQ0ICsrKwogTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAxICsKIGFyY2gvbWlwcy9ib290L2R0cy9icmNtL2JjbTYzMjY4LmR0c2kg
ICAgICAgICB8ICAgNiArCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0c2kgICAg
ICAgICAgfCAgIDYgKwogYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpICAgICAg
ICAgIHwgICA2ICsKIGRyaXZlcnMvc29jL2JjbS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxMCArCiBkcml2ZXJzL3NvYy9iY20vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAg
fCAgIDEgKwogZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgvS2NvbmZpZyAgICAgICAgICAgICAgIHwg
IDEyICsKIGRyaXZlcnMvc29jL2JjbS9iY202M3h4L01ha2VmaWxlICAgICAgICAgICAgICB8ICAg
MiArCiBkcml2ZXJzL3NvYy9iY20vYmNtNjN4eC9iY202M3h4LXBvd2VyLmMgICAgICAgfCAzNzQg
KysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzE4LXBtLmgg
ICAgICAgICAgfCAgMTcgKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyNjgtcG0uaCAg
ICAgICAgIHwgIDIxICsKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMjgtcG0uaCAgICAg
ICAgICB8ICAxNyArCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzYyLXBtLmggICAgICAg
ICAgfCAgMjEgKwogMTQgZmlsZXMgY2hhbmdlZCwgNTM4IGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2JjbS9icmNt
LGJjbTYzeHgtcG93ZXIueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL2JjbS9i
Y202M3h4L0tjb25maWcKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9iY20vYmNtNjN4
eC9NYWtlZmlsZQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL2JjbS9iY202M3h4L2Jj
bTYzeHgtcG93ZXIuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29j
L2JjbTYzMTgtcG0uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29j
L2JjbTYzMjY4LXBtLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Nv
Yy9iY202MzI4LXBtLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3Nv
Yy9iY202MzYyLXBtLmgKCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
