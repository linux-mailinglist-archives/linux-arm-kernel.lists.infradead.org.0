Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF32F1B8235
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 00:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I71cXb72QbysIepvRRBjhzy5IFaSDtDMdpegqjhhQJQ=; b=TmoORMCVUmWNyQ
	lKf9ypWfOwphbhOrqKW85b5cg6cnoRQ3YBfwP7K0XgrbvYRZFJCWxtBYTZbePZnMVVYqTGIlkH2p5
	oJdX3pPgoH9b4QKEcZkaWbzsySqS9aji9E+Vs2kSwxYuGWlxm4V5AMGQ3ZBtIFfhbS8/HsKGXTxu5
	gcgMQ5DOlORWOLjVsJias3W7NAPvZFPp4zkCftuLmudgYRsjZTJg5Mdkzv9jt/x9qIkp7FkOqRzuL
	AAujXL39tNHAH3U7PTZx++1hdqyTPIBNNvle9oL67ZesELSHwIobTtYNj8GVtevx0hgNIz44Y30JF
	UumdDXHnkvKMsZGLDbhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS78V-0004Zx-KT; Fri, 24 Apr 2020 22:49:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS78M-0004Yx-AK
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 22:49:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id f13so13107745wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 15:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mkhQBX3TvcJY011PDTVaLNKRPhA/xmcmb2+YOURnSJw=;
 b=EF/meO6BFADUkfMCWiTZe/0MOJkM82sbTHt2d6d+ppI6bRxDdw2bTx9XSXVtATx6mQ
 cfdfjzL7g3fqvPMQHyWqTEI2FyPtp2XUaU2XI0iOLmyEn7H3Pmc0nfyNgOKx+K2XowkQ
 haHZyS17cGLW8WavwFOFZfIVkL/7v9PcMmMxQQIx7tJy0dJuujMhHgpYx2EPfLIh5+13
 SLtIdSyr4oPzTs4pMJyZQQrOfRzCKRtEGbfOVRyBMOceUAzKFBUQzZ/4+nhw8Z7dul4a
 Kb8hM0InW7DzQFTlblxexyg2TfyPc6JaspXL5SmxN4J4qTVlx+Bb0rbVTi/Mo9cn2wfU
 Mu6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mkhQBX3TvcJY011PDTVaLNKRPhA/xmcmb2+YOURnSJw=;
 b=ER+ZbMXA9H2N80MQaQw862d42Yi/qK4RzdphP/vgMhnpd7a9hDy+DNFGjT5Ied3fqE
 tVVqtOmAh5z09Ny0JVqg9HQcQATYoK3LzysR4jCEzUIE0sZHgLK4xTU3TvVnPOGl3UTf
 gRdcI4DsWGB6AqL6hitvj378kwvoMwD4vZR4UVVES5Z6iqx3VsKh5zKCkc6HMQCp7amb
 Ca+B8izipNbKz719eXqxnuKbrg/WSZNUFl0icjrAaONgaRqfytbEvm5j9oQOGeFW5hW3
 fGz1+8RA56IeluxcDzbaXyO5g7Em4w2MbLd/nilflTZB7ve2rtHubHyG+a4vGO9rF5Ef
 B7gw==
X-Gm-Message-State: AGi0PubiXc8Y28RmirIIG6i0Z1jYwksyKpCa0y/eLBcXEQ0uI2+JNwZS
 77+3e8E4qwJAclDt8GLK2UM=
X-Google-Smtp-Source: APiQypLqArLmUZ3vetzCbbybgBc+4QBTW5US7b/bpm7ExOjrSN7tfOAH2WPLDXQmMj9EhPWD0+zHKg==
X-Received: by 2002:adf:dd83:: with SMTP id x3mr13518966wrl.298.1587768560713; 
 Fri, 24 Apr 2020 15:49:20 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id 5sm4615195wmg.34.2020.04.24.15.49.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Apr 2020 15:49:20 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom devicetree fixes for 5.7 (part 2)
Date: Fri, 24 Apr 2020 15:49:15 -0700
Message-Id: <20200424224915.3541-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_154922_357635_513ADC43 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 =?UTF-8?q?Vincent=20Stehl=C3=A9?= <vincent.stehle@laposte.net>,
 bcm-kernel-feedback-list@broadcom.com, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA5MDQ0NGI5NTg0NjFhNWY4ZmMyOTll
Y2UwZmUxN2VhYjE1Y2JhMWUxOgoKICBBUk06IGR0czogYmNtMjgzeDogRGlzYWJsZSBkc2kwIG5v
ZGUgKDIwMjAtMDQtMTYgMTM6NTg6MDIgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQg
cmVwb3NpdG9yeSBhdDoKCiAgaHR0cHM6Ly9naXRodWIuY29tL0Jyb2FkY29tL3N0YmxpbnV4Lmdp
dCB0YWdzL2FybS1zb2MvZm9yLTUuNy9kZXZpY2V0cmVlLWZpeGVzLXBhcnQyCgpmb3IgeW91IHRv
IGZldGNoIGNoYW5nZXMgdXAgdG8gMmM5NzI3MzFhM2Q3NGEzMzY1MTlmYjE1OGZiZTg2M2NhYWQ1
YzQyMToKCiAgQVJNOiBkdHM6IGJjbTI4MzUtcnBpLXplcm8tdzogRml4IGxlZCBwb2xhcml0eSAo
MjAyMC0wNC0yNCAxMjo1MDozNyAtMDcwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KVGhpcyBwdWxsIHJlcXVlc3QgY29u
dGFpbnMgQnJvYWRjb20gQVJNLWJhc2VkIFNvQ3MgRGV2aWNlIFRyZWUgZml4ZXMgZm9yCjUuNywg
cGxlYXNlIHB1bGwgdGhlIGZvbGxvd2luZzoKCi0gVmluY2VudCBmaXhlcyB0aGUgcG9sYXJpdHkg
b2YgdGhlIEFDVCBMRUQgb24gdGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcKICBib2FyZAoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpWaW5jZW50IFN0ZWhsw6kgKDEpOgogICAgICBBUk06IGR0czogYmNtMjgzNS1ycGktemVyby13
OiBGaXggbGVkIHBvbGFyaXR5CgogYXJjaC9hcm0vYm9vdC9kdHMvYmNtMjgzNS1ycGktemVyby13
LmR0cyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
