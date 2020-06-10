Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 437501F5A00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5+KAKUL0AfCUi4ww+qb1K67pvRlI7A7n2Q4xTTG7y8=; b=qbWK6tySDtfRJo
	foygFaYakENOCAgjjPpqQngfuMo8Srb1RERRiXqpnEItGNwX6M/xhpkP+qyA1omhIjmk90KpWTBjE
	KPKwno2g9c8xRLIHe6zrd6cmGwYGZrOl3tee9r/1JXQcK58wOP4eFL2OvyNU/xJsJ0TjQp/hdDkeK
	Zmgvg3pkJmImsnaKzNgwxZK3RWR7a4YXJcBT93VzFfssulQH0p2jLPxcDKwrnnRwHU74DH9nzD3Ii
	/yw+9gO4rirMoeBRfajbZlo476o5H1Jw8MWWCHX9mk6tj9mfzKMVOWYjHFCL+P4uoodcvoFtWwnZ4
	LBjeI+WGf2YLSiSpEOxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4Ly-0006IW-BJ; Wed, 10 Jun 2020 17:17:30 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L5-0005er-MK
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:37 +0000
Received: by mail-wm1-x332.google.com with SMTP id k26so2537866wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iL6JkaFSUDsP2cIBAqcTq5ZWB5YvEmykfE8Vq8awAQw=;
 b=bcaxtTLa6yaXrQr2WGhIcl4gQ4/S25pS4Pf3MrwSx1+HgqR+dZygxVMix77dSFWnty
 w0mkbgZtq8IggE5+g4Ub3WuVA5nffbm/f2X24HModSll9RDFYB9IJmpGrtGYRKzQTZ0s
 bo0wy+4IhxSu3mj7zOQgaF3sygoe7cOJs3wfAlQRDHpal2FGEg7vpWhIfvQmw7J2XCnL
 qnEbjEGeafrxz+O++Q48VDZeTXz22dfHPeRYUq1p+kvLy4Koo2Cal247UJA23SsC+Di4
 q21HXcJv8lQqDEUFEJ2RdpmTXxFqkt5cYXNfd3uqnWF52kNTONWbQTHucMPDFa3qyBv6
 KVHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iL6JkaFSUDsP2cIBAqcTq5ZWB5YvEmykfE8Vq8awAQw=;
 b=CRkP4CVRO5DTpVDFQbEzWSHC6sezoacWJOV0Z7pM26J83xmiq1U6IjgukcPRIZl2LO
 K5GxM4O4+1qTgwGGo6yuFtp/4RQs5eKhsHLd4PVX93kyoUKhFZooPlRC3pXzF3CHoisK
 l+pOIOGSSkSLYB9jGVU2jNCfK9jtHMwGYAMdw72ejKR/sTy/brhMjVx6OJ+6eRdUu2p7
 fDhG+ZD1S/zhGRdKutH75DxJsGdNqYY62oOX5IvgVsH9G1am3F8l4+ETkU6IM0URUiWQ
 z3WZo5r11o7j+VNmfRuySnRArK5rLaDP7GurTrAmLadlqbDQL8hBr+CyvztqzX0j4yju
 wPIg==
X-Gm-Message-State: AOAM533eRxdegfvUBF9mfhRWg+LgCjhYEESKwL7EAVK8ZerkeaxjW549
 uZeMHYm0+OAaJeMAC2bnHYs=
X-Google-Smtp-Source: ABdhPJwxgdE+sQMmQXCuZ/GRpKGHoC8dqENeYrpej3wStTwKD+EQDcCzPpXybdP9IDNRejW39sOmMA==
X-Received: by 2002:a1c:6606:: with SMTP id a6mr3979323wmc.37.1591809392680;
 Wed, 10 Jun 2020 10:16:32 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:31 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/9] bmips: add BCM63xx power domain controller
Date: Wed, 10 Jun 2020 19:16:21 +0200
Message-Id: <20200610171630.465579-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610163301.461160-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101635_773060_25195F62 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
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
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgp2MzogSW50cm9kdWNlIGNoYW5nZXMgc3VnZ2VzdGVkIGJ5
IEZsb3JpYW46CiAgLSBVc2UgZHQtYmluZGluZ3MgZGVmaW5pdGlvbnMgaW4gcG93ZXIgZG9tYWlu
IGRyaXZlci4KICAtIFNlcGFyYXRlIGR0LWJpbmRpbmdzIGRlZmluaXRpb25zIGZyb20gcG93ZXIg
ZG9tYWluIC5kdHNpIHN1cHBvcnQuCnYyOiBJbnRyb2R1Y2UgY2hhbmdlcyBzdWdnZXN0ZWQgYnkg
RmxvcmlhbjoKICAtIEFkZCBzZXBhcmF0ZSBZQU1MIGZpbGUgZm9yIGR0LWJpbmRpbmdzLgogIC0g
QWRkIGJjbTYzeHggZm9sZGVyIGluIGRyaXZlcnMvc29jL2JjbS4KICAtIFVwZGF0ZSBNQUlOVEFJ
TkVSUy4KICAtIEFkZCBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZXMuCiAgLSBBbHNvIGFkZCBCQ002
MzI2OCBzdXBwb3J0LgoKw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzICg5KToKICBkdC1iaW5kaW5n
czogc29jOiBicmNtOiBhZGQgQkNNNjN4eCBwb3dlciBkb21haW4gYmluZGluZwogIG1pcHM6IGJt
aXBzOiBkdHM6IGFkZCBCQ002MzI4IHBvd2VyIGRvbWFpbiBkZWZpbml0aW9ucwogIG1pcHM6IGJt
aXBzOiBkdHM6IGFkZCBCQ002MzYyIHBvd2VyIGRvbWFpbiBkZWZpbml0aW9ucwogIG1pcHM6IGJt
aXBzOiBkdHM6IGFkZCBCQ002MzI2OCBwb3dlciBkb21haW4gZGVmaW5pdGlvbnMKICBtaXBzOiBi
bWlwczogYWRkIEJDTTYzMTggcG93ZXIgZG9tYWluIGRlZmluaXRpb25zCiAgc29jOiBiY206IGFk
ZCBCQ002M3h4IHBvd2VyIGRvbWFpbiBkcml2ZXIKICBtaXBzOiBibWlwczogZHRzOiBhZGQgQkNN
NjMyOCBwb3dlciBkb21haW4gc3VwcG9ydAogIG1pcHM6IGJtaXBzOiBkdHM6IGFkZCBCQ002MzYy
IHBvd2VyIGRvbWFpbiBzdXBwb3J0CiAgbWlwczogYm1pcHM6IGR0czogYWRkIEJDTTYzMjY4IHBv
d2VyIGRvbWFpbiBzdXBwb3J0CgogLi4uL2JpbmRpbmdzL3NvYy9iY20vYnJjbSxiY202M3h4LXBv
d2VyLnlhbWwgIHwgIDQ0ICsrCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgIDEgKwogYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyNjguZHRzaSAg
ICAgICAgIHwgICA2ICsKIGFyY2gvbWlwcy9ib290L2R0cy9icmNtL2JjbTYzMjguZHRzaSAgICAg
ICAgICB8ICAgNiArCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzYyLmR0c2kgICAgICAg
ICAgfCAgIDYgKwogZHJpdmVycy9zb2MvYmNtL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAg
IHwgIDEwICsKIGRyaXZlcnMvc29jL2JjbS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICB8
ICAgMSArCiBkcml2ZXJzL3NvYy9iY20vYmNtNjN4eC9LY29uZmlnICAgICAgICAgICAgICAgfCAg
MTIgKwogZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAy
ICsKIGRyaXZlcnMvc29jL2JjbS9iY202M3h4L2JjbTYzeHgtcG93ZXIuYyAgICAgICB8IDM3OCAr
KysrKysrKysrKysrKysrKysKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzMTgtcG0uaCAg
ICAgICAgICB8ICAxNyArCiBpbmNsdWRlL2R0LWJpbmRpbmdzL3NvYy9iY202MzI2OC1wbS5oICAg
ICAgICAgfCAgMjEgKwogaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2MvYmNtNjMyOC1wbS5oICAgICAg
ICAgIHwgIDE3ICsKIGluY2x1ZGUvZHQtYmluZGluZ3Mvc29jL2JjbTYzNjItcG0uaCAgICAgICAg
ICB8ICAyMSArCiAxNCBmaWxlcyBjaGFuZ2VkLCA1NDIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvYmNtL2JyY20s
YmNtNjN4eC1wb3dlci55YW1sCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvYmNtL2Jj
bTYzeHgvS2NvbmZpZwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc29jL2JjbS9iY202M3h4
L01ha2VmaWxlCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvYmNtL2JjbTYzeHgvYmNt
NjN4eC1wb3dlci5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2Mv
YmNtNjMxOC1wbS5oCiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2Mv
YmNtNjMyNjgtcG0uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29j
L2JjbTYzMjgtcG0uaAogY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3Mvc29j
L2JjbTYzNjItcG0uaAoKLS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
