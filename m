Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D86F88E9C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 23:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sk4VlGoD6Vc+MPlNYVsgEDFdrhfJ8SJjR7v5JwITHY=; b=Fi2owzfmxhFnvA
	33AuIjQIvccyJu7ooIB1bEiYjYyDYse8URJQRJZ7FmzavAbZi9S345+a5XXhVAyhs0uKOMVzmpeVy
	qaYFw/TPcFQvdl6CdxU6Ur7SLmlJmPCwnY38k8vnUq6321Ves4+q7FMr1+iRcz6Eb9ok2bxuvoGDt
	BZJWaTP2SJDgfPzTIri04qfcXa830J3WuOxv16H8JFVUJsnUB4ZAicNgQDZ6k9PNRgBwXDFKjAPGe
	M4HdLGxu+ugqsy4rWOmXYfFfw+zLMAlEzM41USWklX5syvN16PWQxSuOoBfOW8At4W0KGxqqJw989
	ht62hZI9aFB+WdgdWrVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwZOS-0004AX-Bb; Sat, 10 Aug 2019 21:59:20 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwZNy-00049G-Ha
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 21:58:53 +0000
Received: by mail-wr1-f66.google.com with SMTP id r3so7623479wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 14:58:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K9HKM9K3HL43njYCcY6vOqInMtfbzDaB9eASkJJfruQ=;
 b=eq2HUht1c1fxvvW5WqkPG8i4lOpB3nu6uIviShViSf/pMSuYW49w9ra3K6QydAMNor
 r8oSHn+zEb2VbUZ7WD0dmIkLjZ4oJNFoV6t9+VB40y+HTnXoHr7G3e+nXQ48NV6Ug6wi
 guVhy8nRB03DXELSfq7pphOG8bvDaRDSPFd38Gk1p6/ULZ8eCPqVd2OAwlyMwGXsLdbk
 THiurE0tbJkT9WoLwoIQ5EL+4cs63vB+bGeZKC/mY/EhQm//mf73PpqbmO9VWnb49lZO
 RAOApxjQxViuOIJ+kO7c1cpfuuoO/asAxwUUfwjSGs4LIQRBYx6aiZ4BQThcsLjsfcnC
 AgWA==
X-Gm-Message-State: APjAAAVWFAEUFK+oApHZ1EIb6CObdhXd41CAdiH1Dws/W5IeGFMAN0gi
 iDfJ6Kj/cqDdDEgBAeGkb9U=
X-Google-Smtp-Source: APXvYqyV5953tlVYfSNQrY/Za/BWWnls8Tn6aDGoR3zfQywrFQ+MRg/Vdsac8DqIe7uRHHb5+a0h3A==
X-Received: by 2002:adf:fe85:: with SMTP id l5mr11610028wrr.5.1565474325005;
 Sat, 10 Aug 2019 14:58:45 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([79.97.20.138])
 by smtp.gmail.com with ESMTPSA id c15sm40631344wrb.80.2019.08.10.14.58.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 14:58:44 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: Philippe Schenker <philippe.schenker@toradex.com>
Subject: Re: [PATCH] ARM: dts: imx7d: sbc-iot-imx7: add recovery for i2c3/4
Date: Sat, 10 Aug 2019 22:58:17 +0100
Message-Id: <20190810215817.5118-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807082556.5013-6-philippe.schenker@toradex.com>
References: <20190807082556.5013-6-philippe.schenker@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_145850_584107_73BB21DA 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andre.draszik[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNyBBdWcgMjAxOSAwODoyNjoxNSArMDAwMCwgUGhpbGlwcGUgU2NoZW5rZXIgd3Jv
dGU6Cj4gRnJvbTogT2xla3NhbmRyIFN1dm9yb3YgPG9sZWtzYW5kci5zdXZvcm92QHRvcmFkZXgu
Y29tPgo+Cj4gLSBhZGQgcmVjb3ZlcnkgbW9kZSBmb3IgYXBwbGljYWJsZSBpMmMgYnVzZXMgZm9y
Cj4gICBDb2xpYnJpIGlNWDcgbW9kdWxlLgo+Cj4gU2lnbmVkLW9mZi1ieTogT2xla3NhbmRyIFN1
dm9yb3YgPG9sZWtzYW5kci5zdXZvcm92QHRvcmFkZXguY29tPgo+IFNpZ25lZC1vZmYtYnk6IFBo
aWxpcHBlIFNjaGVua2VyIDxwaGlsaXBwZS5zY2hlbmtlckB0b3JhZGV4LmNvbT4KPiAtLS0KPgo+
IENoYW5nZXMgaW4gdjM6IE5vbmUKPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4KPiAgYXJjaC9hcm0v
Ym9vdC9kdHMvaW14Ny1jb2xpYnJpLmR0c2kgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKy0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDctY29saWJyaS5kdHNpIGIvYXJjaC9h
cm0vYm9vdC9kdHMvaW14Ny1jb2xpYnJpLmR0c2kKPiBpbmRleCBhOGQ5OTJmM2U4OTcuLjI0ODA2
MjNjOTJmZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9pbXg3LWNvbGlicmkuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2lteDctY29saWJyaS5kdHNpCj4gQEAgLTE0MCw4
ICsxNDAsMTIgQEAKPgo+ICAmaTJjMSB7Cj4gIAljbG9jay1mcmVxdWVuY3kgPSA8MTAwMDAwPjsK
PiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiLCAiZ3BpbyI7Cj4gIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjMSAmcGluY3RybF9pMmMx
X2ludD47Cj4gKwlwaW5jdHJsLTEgPSA8JnBpbmN0cmxfaTJjMV9yZWNvdmVyeSAmcGluY3RybF9p
MmMxX2ludD47Cj4gKwlzY2wtZ3Bpb3MgPSA8JmdwaW8xIDQgR1BJT19BQ1RJVkVfSElHSD47Cgpz
Y2wtZ3Bpb3Mgc2hvdWxkIGJlIChHUElPX0FDVElWRV9ISUdIIHwgR1BJT19PUEVOX0RSQUlOKSBz
aW5jZQpjb21taXQgZDJkMGFkMmFlYzRhICgiaTJjOiBpbXg6IHVzZSBvcGVuIGRyYWluIGZvciBy
ZWNvdmVyeSBHUElPIikKCk90aGVyd2lzZSB5b3UnbGwgZ2V0IGEgYm9vdC10aW1lIHdhcm5pbmc6
CiAgIGVuZm9yY2VkIG9wZW4gZHJhaW4gcGxlYXNlIGZsYWcgaXQgcHJvcGVybHkgaW4gRFQvQUNQ
SSBEU0RUL2JvYXJkIGZpbGUKCj4gKwlzZGEtZ3Bpb3MgPSA8JmdwaW8xIDUgR1BJT19BQ1RJVkVf
SElHSD47Cj4gKwo+ICAJc3RhdHVzID0gIm9rYXkiOwo+Cj4gIAljb2RlYzogc2d0bDUwMDBAYSB7
Cj4gQEAgLTI0Miw4ICsyNDYsMTEgQEAKPgo+ICAmaTJjNCB7Cj4gIAljbG9jay1mcmVxdWVuY3kg
PSA8MTAwMDAwPjsKPiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiLCAiZ3BpbyI7Cj4gIAlwaW5jdHJsLTAgPSA8JnBpbmN0cmxfaTJjND47
Cj4gKwlwaW5jdHJsLTEgPSA8JnBpbmN0cmxfaTJjNF9yZWNvdmVyeT47Cj4gKwlzY2wtZ3Bpb3Mg
PSA8JmdwaW83IDggR1BJT19BQ1RJVkVfSElHSD47CgphbmQgaGVyZSwgdG9vLgoKQ2hlZXJzLApB
bmRyw6kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
