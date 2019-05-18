Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B620223D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 17:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7OmY/hRwym0vs/l4NT89TbhGGp8G3XugWUFFl3vSjSI=; b=Zg4aJU8DUuz0qt
	egLS6tphcyAxvmtKaVsvwcwLXeiCzbiteiiUjBlw6+Tsx67IQIboRoQvUujsTWV9ezaPBUfcQYjkf
	kL5xR42FACi6iSwdl6uB/RQW7P0/vfSknOsD09RRScIumkdcycqOidGb2hXSXF+8Pk6GzA791w/XS
	FfOaXhML+sRviymbRnfo///Nv/2OOgb19npZTufZ5kRXJpHfLj8lhQeKAziG+1gx+66zuUJ4l3T4I
	S9r46kujw7DcMujzc7cxvtfb5/rHexlKLD2IkUznVGX0bIcIEbejv2uHiBFsUwddiaUHRtm2Jc0B4
	VMjw0SBxjX7d4rYAVAXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS1Bz-0002T1-D8; Sat, 18 May 2019 15:24:11 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS1Br-0002S7-JZ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 May 2019 15:24:04 +0000
Received: by mail-wr1-x432.google.com with SMTP id g12so9722021wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 May 2019 08:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f2Vajn+WWPZ6MItypnKB1zIVfCo1eg6EMXVoRfUSJVM=;
 b=P1f/xHK9z2ASDeMG8Rzksn0vI1MGfuEQXGKk3710zKCYHxOYESPUf73r6VwYnjzbTk
 1o/TSTXo0NtMUmJWcyuX2eeOErUp6aomh0v/X2+X3RA+ZdgU9QpQV7oahfjAvufOu29V
 DuPSygnxL0KH+04sJpqmsWEAQZV2oXT/xd4hkQYDHR8RYg4NsUBhsu6sHf2goI6srsdC
 2IlabTPuksycgJ6cMvFRhtkkS5ioRs4ayZKquE+zUmgKuCcTGnVv3I6x/jTMrjMUkJYo
 jz/6/5TRH9AUE9AiTw8w0OsvIaoxzUasblbdmTCz6e6Ugn74YoZC7+dDK3lxwbdPjhVn
 +NyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f2Vajn+WWPZ6MItypnKB1zIVfCo1eg6EMXVoRfUSJVM=;
 b=ltKCvNZBIeJ6O1BKMZC4UYWp7CM/lb7gI8o6ydRAG9lbKIXdbCfE0OWo+D8eojFQ2r
 ZDssTxjtbx288vhdYKm3tGU8+wVAkFg48L1nlgruNPW8mn6EuqGsqpg3wPHjpQT3YI+H
 0ngFOUGGWpeG5uXz10AlYkHPrn94Ruz0NMc7bu8IZiLWFXU/SXjn5ioyJJ+5U9JNgAcD
 dg1HsL7Q2699yUJ1PiASFM14zvO9OJKD4c/NeKCky/WuygLOCj2464ZcsyTHtgNnggl3
 U97cnE9827AP6ntB0ppDgUI9bsAYzG+JGUhT40RFbtGTrt2DQ4QyugIhUixVkHWXn3OM
 ICIA==
X-Gm-Message-State: APjAAAUUKHipSObYe7kSD1l+eicxzJh33ZCd/SdCjuAeY3FbEHoH+K4K
 D+BAVZPmDgsWJjqXOWe4r7M=
X-Google-Smtp-Source: APXvYqzsDebP4qfKcCv/S2MxLOaouK3ST+Az6tGNP9Vg56BOffbfysrpOufFkiafcP3Gw5Nk90jQBA==
X-Received: by 2002:a5d:468b:: with SMTP id u11mr1787944wrq.276.1558193041864; 
 Sat, 18 May 2019 08:24:01 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id j190sm12934836wmb.19.2019.05.18.08.24.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 May 2019 08:24:01 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 0/4] Allwinner H6 watchdog support
Date: Sat, 18 May 2019 17:23:51 +0200
Message-Id: <20190518152355.11134-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_082403_647108_7051FB8D 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbGx3aW5uZXIgSDYgU29DIGhhcyB0d28gd2F0Y2hkb2dzLgoKQXMgd2UgYXJlIG5vdCBz
dXJlIHRoYXQgYm90aCBBNjQgYW5kIEg2IGFyZSBzdHJpY2x5IGlkZW50aWNhbCwgSSBoYXZlCmlu
dHJvZHVjZWQgdGhlIEg2IGJpbmRpbmdzLgoKQWZ0ZXIgaW52ZXN0aWdhdGlvbiBpdCBzZWVtcyB0
aGF0IG9uIHNvbWUgYm9hcmRzIHRoZSBmaXJzdCB3YXRjaGRvZyBkb2Vzbid0Cm1ha2UgaXQgcHJv
cGVybHkgcmVib290LiBQbGVhc2Ugc2VlIGRldGFpbHMgaW4gdGhlIGNvbW1pdCBsb2cuCgpJIHRo
aW5rIGl0J3MgcHJvcGVyIHRvIGFkZCBpdCB3aXRoIGEgY29tbWVudCBhbnl3YXkuCgpUaGUgcl93
YXRjaGRvZyBpcyBzdGlsbCBhdmFpbGFibGUgYW5kIHVzYWJsZSBvbiBhbGwgdGhlIEg2IGJvYXJk
cy4KCk1heWJlIGl0IHdvdWxkIGJlIHByb3BlciB0byBpbnRyb2R1Y2UgYSAiYWxsd2lubmVyLHN1
bjUwaS1oNi1yLXdkdCIgYmluZGluZ3M/CgpUaGFua3MsCkNsw6ltZW50CgpDaGFuZ2VzIHNpbmNl
IHYyOgogLSBSZWludHJvZHVjZSBINiBiaW5kaW5ncwogLSBBZGQgd2F0Y2hkb2cgTWFpbnRhaW50
ZXJzIC8gTUwKIC0gQWRkIE1hcnRpbiBBeW90dGUgdGVzdCByZXN1bHRzCgpDaGFuZ2VzIHNpbmNl
IHYxOgogLSBVc2UgQTY0IGNvbXBhdGlibGUgaW5zdGVhZCBvZiBINgogLSBSZW1vdmUgZHQtYmlu
ZGluZ3MgcGF0Y2gKIC0gQ2hhbmdlIHdhdGNoZG9nIHN0YXR1cyB0byBkaXNhYmxlZAogLSBBZGQg
cl93YXRjaGRvZyBub2RlIHBhdGNoCiAtIEFkZCBlbmFibGUgc3VueGkgd2F0Y2hkb2cgcGF0Y2gK
CkNsw6ltZW50IFDDqXJvbiAoNCk6CiAgZHQtYmluZGluZ3M6IHdhdGNoZG9nOiBhZGQgQWxsd2lu
bmVyIEg2IHdhdGNoZG9nCiAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogYWRkIHdhdGNoZG9n
IG5vZGUKICBhcm02NDogZHRzOiBhbGx3aW5uZXI6IGg2OiBhZGQgcl93YXRjaG9nIG5vZGUKICBh
cm02NDogZGVmY29uZmlnOiBlbmFibGUgc3VueGkgd2F0Y2hkb2cKCiAuLi4vZGV2aWNldHJlZS9i
aW5kaW5ncy93YXRjaGRvZy9zdW54aS13ZHQudHh0IHwgMTAgKysrKysrLS0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgICB8IDE4ICsrKysrKysrKysrKysr
KysrKwogYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyAgICAgICAgICAgICAgICAgICB8ICAx
ICsKIDMgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCi0t
IAoyLjE3LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
