Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C7E16EAF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 17:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSQe9e0X2Wy1cvvaIV7XG0++cH0reUziyKLnNkP9cOE=; b=NMrPFVGU3ir/T6
	l4+3GfoK8/YWwMIa+aeg8D0Jfh3faIza4cNBwGOhtx/J3exOjFSop1P37nBlnbKsXcy7mKCPmqUe6
	5bTRK8+//sY2uiC0tOj2lzv7ERKZa1Kba5k3dYf89cMGjZ+AsXranlLwbi9TNeTsZz1/vohuMq2xJ
	TwKEYsrrjuhFVmqXtJZWMtXqVIp/eb/p4vC/d5thR2GBqm7pPK8yQbgp4tGHQKf7aBdZY9hrZfGe/
	5tXyu5y5j9u8aqvuE+0TnlL0N/IW+DLgcG8f78+2wKUxBEDl4zGyNWuNVfqz5cAf4COYayLnGnuD4
	4EyRxpGEgyGAro54/Myg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cok-0005MU-1R; Tue, 25 Feb 2020 16:12:18 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6coZ-0005Ki-5d
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 16:12:08 +0000
Received: by mail-wm1-f66.google.com with SMTP id a6so3721040wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 08:12:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=g6DQBCL1J6m7CoP9ENl+OA6l5n10vKz1KQp1E0CCoWY=;
 b=KccamjS11Ng91xY99shTdXOv5PT22LizyTsuHE+xE78OCW9+IHMsvLF73U9Nif2MCK
 u6oPDJTpaFE+g4MO+d6K88AFrwEDMRwJn95P+oJ4VGrUjLkaLsbX88wAfuw67B5Ngfhn
 TrZCV/gn63JsNg+FRyssBGxeXlmriHpB9XBzlo4WIqToeE+bIdWRhG7C3hq6fpJZdM5p
 GGgWSlIhdhN0a/qWmel7xC39wsMpifiWaJYwI5kKPdXq2Bt7680bx5YCbydtxGPAZYal
 4Z1gUPh/u+jmD6/rz+eqB3PZkIoiOqW9yW8/45i8BT2HxPbYvgnFmwOD3DUrnnOgvNYm
 BhLg==
X-Gm-Message-State: APjAAAWSdMWtUZeWtn4yJXC+4hOp9vXYdZPD90yG20SDZMhHZejQCiei
 iNQfy1gmZiK6MAIdW08lXdTskuVHyjg=
X-Google-Smtp-Source: APXvYqz2GddcSqaJtZUCCRWuAVNSfLkFf7wKPo8DHL8CvjqQTROqeO/fxgFpdv9+VIUsyHizZWLqZQ==
X-Received: by 2002:a05:600c:1009:: with SMTP id
 c9mr30312wmc.162.1582647124463; 
 Tue, 25 Feb 2020 08:12:04 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
 by smtp.gmail.com with ESMTPSA id h10sm4757339wml.18.2020.02.25.08.12.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 08:12:03 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: crypto: fsl-sec4: add snvs clock to pwrkey
Date: Tue, 25 Feb 2020 16:11:56 +0000
Message-Id: <20200225161201.1975-1-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_081207_210320_2771EE9F 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andre.draszik[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Robin Gong <yibin.gong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gaS5NWDcgYW5kIGkuTVg4TSwgdGhlIFNOVlMgcmVxdWlyZXMgYSBjbG9jay4gVGhpcyBpcyBz
aW1pbGFyIHRvIHRoZQpjbG9jayBib3VuZCB0byB0aGUgU05WUyBSVEMgbm9kZSwgYnV0IGlmIHRo
ZSBTTlZTIFJUQyBkcml2ZXIgaXNuJ3QKZW5hYmxlZCwgdGhlbiBTTlZTIGRvZXNuJ3Qgd29yaywg
YW5kIGFzIHN1Y2ggdGhlIHB3cmtleSBkcml2ZXIgZG9lc24ndAp3b3JrIChpLmUuIGhhbmdzIHRo
ZSBrZXJuZWwsIGFzIHRoZSBjbG9jayBpc24ndCBlbmFibGVkKS4KCkFsc28gc2VlIGNvbW1pdCBl
YzJhODQ0ZWY3YzEKKCJBUk06IGR0czogaW14N3M6IGFkZCBzbnZzIHJ0YyBjbG9jayIpCmZvciBh
IHNpbWlsYXIgZml4LgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQu
bmV0PgpBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KQ2M6ICJIb3JpYSBH
ZWFudMSDIiA8aG9yaWEuZ2VhbnRhQG54cC5jb20+CkNjOiBBeW1lbiBTZ2hhaWVyIDxheW1lbi5z
Z2hhaWVyQG54cC5jb20+CkNjOiBIZXJiZXJ0IFh1IDxoZXJiZXJ0QGdvbmRvci5hcGFuYS5vcmcu
YXU+CkNjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IFJvYiBI
ZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+CkNjOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFu
ZEBhcm0uY29tPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogU2FzY2hh
IEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgpDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRl
YW0gPGtlcm5lbEBwZW5ndXRyb25peC5kZT4KQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdt
YWlsLmNvbT4KQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhAbnhwLmNvbT4KQ2M6IERtaXRy
eSBUb3Jva2hvdiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4KQ2M6IEFuc29uIEh1YW5nIDxB
bnNvbi5IdWFuZ0BueHAuY29tPgpDYzogUm9iaW4gR29uZyA8eWliaW4uZ29uZ0BueHAuY29tPgpD
YzogbGludXgtY3J5cHRvQHZnZXIua2VybmVsLm9yZwpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5l
bC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgt
aW5wdXRAdmdlci5rZXJuZWwub3JnCgotLS0KdjI6Ciogc3BsaXQgZG9jdW1lbnRhdGlvbiBhbmQg
aS5NWDcgZHRzIHVwZGF0ZSBpbnRvIHR3byBwYXRjaGVzCiogcmVtb3ZlIHN0cmF5IFJUQyByZWZl
cmVuY2VzIGZyb20gZG9jdW1lbnRhdGlvbiAoY29weS9wYXN0ZSBlcnJvcikKLS0tCiAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLXNlYzQudHh0ICAgICB8IDE3ICsrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLXNlYzQudHh0IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9mc2wtc2VjNC50eHQKaW5kZXgg
MmZlMjQ1Y2E4MTZhLi5hNzM3MjJjNThmYWIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLXNlYzQudHh0CisrKyBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vZnNsLXNlYzQudHh0CkBAIC00NDksNiArNDQ5LDE5
IEBAIFN5c3RlbSBPTi9PRkYga2V5IGRyaXZlcgogICAgICAgVmFsdWUgdHlwZTogPHBoYW5kbGU+
CiAgICAgICBEZWZpbml0aW9uOiB0aGlzIGlzIHBoYW5kbGUgdG8gdGhlIHJlZ2lzdGVyIG1hcCBu
b2RlLgogCisgICAtIGNsb2NrcworICAgICAgVXNhZ2U6IG9wdGlvbmFsLCByZXF1aXJlZCBpZiBT
TlZTIExQIHJlcXVpcmVzIGV4cGxpY2l0CisgICAgICAgICAgZW5hYmxlbWVudCBvZiBjbG9ja3MK
KyAgICAgIFZhbHVlIHR5cGU6IDxwcm9wX2VuY29kZWQtYXJyYXk+CisgICAgICBEZWZpbml0aW9u
OiAgYSBjbG9jayBzcGVjaWZpZXIgZGVzY3JpYmluZyB0aGUgY2xvY2sgcmVxdWlyZWQgZm9yCisg
ICAgICAgICAgZW5hYmxpbmcgYW5kIGRpc2FibGluZyBTTlZTIExQLgorCisgICAtIGNsb2NrLW5h
bWVzCisgICAgICBVc2FnZTogb3B0aW9uYWwsIHJlcXVpcmVkIGlmIFNOVlMgTFAgcmVxdWlyZXMg
ZXhwbGljaXQKKyAgICAgICAgICBlbmFibGVtZW50IG9mIGNsb2NrcworICAgICAgVmFsdWUgdHlw
ZTogPHN0cmluZz4KKyAgICAgIERlZmluaXRpb246IGNsb2NrIG5hbWUgc3RyaW5nIHNob3VsZCBi
ZSAic252cy1wd3JrZXkiLgorCiBFWEFNUExFOgogCXNudnMtcHdya2V5QDAyMGNjMDAwIHsKIAkJ
Y29tcGF0aWJsZSA9ICJmc2wsc2VjLXY0LjAtcHdya2V5IjsKQEAgLTQ1Niw2ICs0NjksOCBAQCBF
WEFNUExFOgogCQlpbnRlcnJ1cHRzID0gPDAgNCAweDQ+CiAJICAgICAgICBsaW51eCxrZXljb2Rl
ID0gPDExNj47IC8qIEtFWV9QT1dFUiAqLwogCQl3YWtldXAtc291cmNlOworCQljbG9ja3MgPSA8
JmNsa3MgSU1YN0RfU05WU19DTEs+OworCQljbG9jay1uYW1lcyA9ICJzbnZzLXB3cmtleSI7CiAJ
fTsKIAogPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09CkBAIC01NDcsNiArNTYyLDggQEAgRlVMTCBFWEFNUExFCiAJCQlp
bnRlcnJ1cHRzID0gPDAgNCAweDQ+OwogCQkJbGludXgsa2V5Y29kZSA9IDwxMTY+OyAvKiBLRVlf
UE9XRVIgKi8KIAkJCXdha2V1cC1zb3VyY2U7CisJCQljbG9ja3MgPSA8JmNsa3MgSU1YN0RfU05W
U19DTEs+OworCQkJY2xvY2stbmFtZXMgPSAic252cy1wd3JrZXkiOwogCQl9OwogCX07CiAKLS0g
CjIuMjMuMC5yYzEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
