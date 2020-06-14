Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC1841F8AF3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 23:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEaA6JBdYSVBcpUdWg0vBrx2wVQqb48uIPf/x+hTv1A=; b=b+h3c0LmH4qyH+
	0FHLUuX9NBYFRYJG2SxTlHWTxa5KZx9Gzhg0Sc5GM2n/E2jpI2nmeoiSdDBiP1lE40fBCFXPO7SGZ
	Gdn+GFXQXSEMP3Pxwx9BSWAgMVb2YOTtCK7xVdcW8Pfjcv3p6uKFqap+fgYEdufbjZtsuqaJircAU
	cgfbCmUwi06UfDJAhpOZpgcXM5dAf3y6txswuLF2bu8oYC9+N525KAdnyhZD7DIUxlVPrdkJHaXh3
	FaNBLfQZB5sIIBJk2pm5MzbWoyE41F0ctnkv4k5ZQf2B51PT+P52hRicaLW5LulQDlNDdVFKxoHSj
	ZptjAJeqvpLRhcaz8clw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkaUk-0005DR-6J; Sun, 14 Jun 2020 21:48:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkaUa-0005Cj-Jj
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 21:48:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id c3so15067021wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 14:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version:in-reply-to
 :references:content-transfer-encoding;
 bh=4ll9gTuODUcXr9og5Q/LYBsrUScj9jVDgcQv5m7nbJo=;
 b=DmJj8SwVD5uqc+UUxRlfxuFaDInpyxLCjNdqfcW165X4ug0IM54TosjxgUKZFvvdo/
 esDIawd2eCh0xhyOW1MPEpoF9C2ZVaXrtn1drJLxxIr6I3gZ+L3NzuJySFFDgDJJNhzK
 ShCjIAVYhHATULAVKlA6oR6ODZ5Vh70z7ffE5kB0LYs5q4yuxWS5MQeQ2dsoVI4sfFcr
 4zDX0MVPFet2xl2IlFcNzbmo+O8AxZwwizwi+RK/QAIlKEth3EfojEKRfG07tJtIXu+K
 Vo+Y8ARoSKQ1S0DM+7pYmDfLsG5ps6O7JXc02GxnNrt4dEUb8d9iclnIkizfoKiuPkF7
 mn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :in-reply-to:references:content-transfer-encoding;
 bh=4ll9gTuODUcXr9og5Q/LYBsrUScj9jVDgcQv5m7nbJo=;
 b=e4hRt7S73iGuL6pyvsiWsFRjnRGznquLlE7spUPD9Q17CqIGOddxOL2aHgU5XX8eZA
 fwhGyr9lFBcOmbdrrofKc/oPWFCf3ANz3HL3r9zGCQW3fM94DybSrB4gPJUsZ/cfEkqU
 pJ8Vl8WBFgTZkcyudbAntdKvJSIMyexARjw0o3Yl4Gr05wLemn0pkj0LzYbEBx0F9dzA
 nUrb3erFSTuMHFaUeOrQM1nSM7MW4CmYZjuLJ6HWP0N9v7H/kdsw8QL5ssUmZmXIL4YI
 b+kgRon8w/9u322wo1nSIPmXtiCcMXXKkql552swJQMYedbortLd9dDaXo8Ob2R8IZaB
 UBFQ==
X-Gm-Message-State: AOAM530zkRtTSv7wgaJYjVp5LjCsU+5CjoiBlNkKY/Q2xuFXOMU57Tid
 yic3HmPge816DIapAoiibIQ=
X-Google-Smtp-Source: ABdhPJzU1SD8JhC/ognD7wZXeGPkdP6oOq0br353b4io8XeY127h11sdWBtOFr9I6YAjX3Yl2PD81g==
X-Received: by 2002:adf:ce02:: with SMTP id p2mr27444569wrn.152.1592171317733; 
 Sun, 14 Jun 2020 14:48:37 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z16sm21560948wrm.70.2020.06.14.14.48.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 14:48:36 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add missing memory "device_type" for
 Luxul XWC-2000
Date: Sun, 14 Jun 2020 14:48:33 -0700
Message-Id: <20200614214833.1261-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
In-Reply-To: <20200608163341.1743-1-zajec5@gmail.com>
References: <20200608163341.1743-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_144840_644697_B5F968CD 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
 Hauke Mehrtens <hauke@hauke-m.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAgOCBKdW4gMjAyMCAxODozMzo0MSArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIDx6YWpl
YzVAZ21haWwuY29tPiB3cm90ZToKPiBGcm9tOiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVj
a2kucGw+Cj4gCj4gVGhpcyBwcm9wZXJ0eSBpcyBuZWVkZWQgc2luY2UgY29tbWl0IGFiZTYwYTNh
N2FmYiAoIkFSTTogZHRzOiBLaWxsIG9mZgo+IHNrZWxldG9uezY0fS5kdHNpIikuIFdpdGhvdXQg
aXQgYm9vdGluZyBzaWxlbnRseSBoYW5ncyBhdDoKPiBbICAgIDAuMDAwMDAwXSBNZW1vcnkgcG9s
aWN5OiBEYXRhIGNhY2hlIHdyaXRlYWxsb2MKPiAKPiBGaXhlczogOTg0ODI5ZTJkMzliICgiQVJN
OiBkdHM6IEJDTTUzMDFYOiBBZGQgRFQgZm9yIEx1eHVsIFhXQy0yMDAwIikKPiBTaWduZWQtb2Zm
LWJ5OiBSYWZhxYIgTWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+Cj4gLS0tCgpBcHBsaWVkIHRv
IGRldmljZXRyZWUvZml4ZXMsIHRoYW5rcyEKLS0KRmxvcmlhbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
