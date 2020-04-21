Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737421B32A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 00:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gvy0OhfSCda0HLzn/dFCEKbU+SDq34mKFU3dB7eaUVI=; b=AOYQ7ewpI+Ewsr
	h1u1fEc8mHSemer1MFXpHJhD3KTFIsaOrnbv9uSXnZf4hUJ63e3OgC1VoUdV+3ifBUmKw1HjpL73P
	LIW4xgsnuYbtg3P8M2xWXzFFXUJJUUWfX7+stU61vIBvWp6TjbwgMj5PU27LRAIZzhXdW7WwysHd+
	LOlSkE47E307XzypLqawLKA350W2aKyBPsfLkMaPj4UmKYmCAhR0hgVSmz+To6WFJR42YDi6DWlQh
	HwPJLs16zgiEBxQxr5keSSWFbiiY/bHr8oEdDv3/bZcW+S10rHqwcILwQoUsfxJe6yE5SyX8/6Y96
	sZXo1oAVpyTXw64dG0ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR1MO-0006JL-Rd; Tue, 21 Apr 2020 22:27:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR1ME-0006IA-Um; Tue, 21 Apr 2020 22:27:13 +0000
Received: by mail-wr1-x441.google.com with SMTP id j2so91377wrs.9;
 Tue, 21 Apr 2020 15:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version:in-reply-to
 :references:content-transfer-encoding;
 bh=TVHvWeq74wndjoMOlZnvOcA7z3YSJVxkE1z/OPyNNNg=;
 b=SuRzLB2b3j0l7SA9g52vOcXLZU+DY7AkvLXrug4oJEGaGU1eVMU7XMlpbZJnjRwoFZ
 oLAiA7SesWSt0lHEDS+ngZtVVaqd78XJ1z3XD30jGYTmfN09E/lo1aZeBayRR27HnCeV
 Yk9JwTLNo7gLSeJWvSUlFbQ939rkU2X2WUK1gAnMdi1NKGJGkQlRNJAI472n7t5D8xRw
 KjuR9p7P3MpOeEWlt/wycmqdIoeURTDfQ9vYTDRDvQ0i5UP9QevhXbBwOWXh3WZfcrME
 i64oOjB9o6Lv9LPK2jEIjopE8X/aoK1Jia+cn5mdGDduBcvJxwfSD6pIDE1qKoqJOv1+
 N14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :in-reply-to:references:content-transfer-encoding;
 bh=TVHvWeq74wndjoMOlZnvOcA7z3YSJVxkE1z/OPyNNNg=;
 b=tRJ6hd/oLl5boLz9aXRvWi1Ekgl0D9+v4I/MHiVHE8GB9nVUNq2GGOZDcjRSrr8nWn
 4lx0UDXMdwZ8TNKkZIUPnbrtG3I2Pp+zRrSjehxjRyR/Q8NSlwdwdb8GlOPE4ioo2xLP
 Ji7401AbA/vTNF34cdmid3Dgx1vIBRhyqUTCbaXUon7YD9YYlO0AzHLS4F5CT6vBu6pL
 I2kuDp6k+7bo46mO/GBetyq8ILr/8S+b/GFyNpvP5Uv2eXj8JQ5xL7PLHTbVcaT1s6+u
 o+/qq906A0dvp3JmfG27EB1BWZ7CcGzAGjpF7YgFqE6KZZm0nOU5mLsS4Gy53cL9kMOk
 Iozg==
X-Gm-Message-State: AGi0PuYWMZv+DMImAE8tzyXzYUDmegVLtPdlUnowlix9PJfc6BqpH0D+
 47n3dulc9HEXCro5lGcE8Mo=
X-Google-Smtp-Source: APiQypK4MIoigVzoyOo4KYgWiKq1iD/gZe+idCUURktqF91CKWsp2Lfkii0PRbW23By2Odd7MNOi0Q==
X-Received: by 2002:adf:e4c5:: with SMTP id v5mr27816174wrm.143.1587508028830; 
 Tue, 21 Apr 2020 15:27:08 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n6sm5846206wrs.81.2020.04.21.15.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 15:27:08 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Vincent =?iso-8859-1?q?Stehl=E9?= <vincent.stehle@laposte.net>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: bcm2835-rpi-zero-w: Fix led polarity
Date: Tue, 21 Apr 2020 15:27:04 -0700
Message-Id: <20200421222704.17546-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
In-Reply-To: <20200418123522.6390-1-vincent.stehle@laposte.net>
References: <20200418123522.6390-1-vincent.stehle@laposte.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_152711_013372_731DB002 
X-CRM114-Status: GOOD (  11.92  )
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
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Scott Branden <sbranden@broadcom.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCAxOCBBcHIgMjAyMCAxNDozNToyMiArMDIwMCwgVmluY2VudCBTdGVobMOpIDx2aW5j
ZW50LnN0ZWhsZUBsYXBvc3RlLm5ldD4gd3JvdGU6Cj4gVGhlIHN0YXR1cyAiQUNUIiBsZWQgb24g
dGhlIFJhc3BiZXJyeSBQaSBaZXJvIFcgaXMgb24gd2hlbiBHUElPIDQ3IGlzIGxvdy4KPiAKPiBU
aGlzIGhhcyBiZWVuIHZlcmlmaWVkIG9uIGEgYm9hcmQgYW5kIHNvbWV3aGF0IGNvbmZpcm1lZCBi
eSBib3RoIHRoZSBHUElPCj4gbmFtZSAoIlNUQVRVU19MRURfTiIpIGFuZCB0aGUgcmVkdWNlZCBz
Y2hlbWF0aWNzIFsxXS4KPiAKPiBbMV06IGh0dHBzOi8vd3d3LnJhc3BiZXJyeXBpLm9yZy9kb2N1
bWVudGF0aW9uL2hhcmR3YXJlL3Jhc3BiZXJyeXBpL3NjaGVtYXRpY3MvcnBpX1NDSF9aZXJvV18x
cDFfcmVkdWNlZC5wZGYKPiAKPiBGaXhlczogMmM3YzA0MGM3M2U5ICgiQVJNOiBkdHM6IGJjbTI4
MzU6IEFkZCBSYXNwYmVycnkgUGkgWmVybyBXIikKPiBTaWduZWQtb2ZmLWJ5OiBWaW5jZW50IFN0
ZWhsw6kgPHZpbmNlbnQuc3RlaGxlQGxhcG9zdGUubmV0Pgo+IENjOiBTdGVmYW4gV2FocmVuIDxz
dGVmYW4ud2FocmVuQGkyc2UuY29tPgo+IENjOiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxp
QGdtYWlsLmNvbT4KPiAtLS0KCkFwcGxpZWQgdG8gZGV2aWNldHJlZS9maXhlcywgdGhhbmtzIQot
LQpGbG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
