Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7234B1F568C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xr4MOcROPES4duehUuxzDwERMFhWyPyqtaFCF1hewbE=; b=O8r/wMxsXKQwAC
	CZipKkkyvydEoo5NOhEGpEKcvdGJzGE2xf2JODBnB4fcY3d071PjY0xvN1RxrxZIyf17M22CYPiAE
	ltY/E5ZuevSBsQewnhiyqU5s4UD6DR7JgAvI55drDkci7i7oy+zoWcfMpLfANXnsAjADo1tQ7/zSC
	xPSonUxnmjqM3CdiGcj98kjW7AvxVe9SIKJxcHMQbIRCm/FzLQbwFu4j8zHPiVWvIISYxejUEAb+U
	mhpZI3XSvR7KJFuttPih4Oy1xOW4Tx/XQph6T9IIFTuF3Xc0MK+R87S/1nt27HBja81Yh7MCs7Jyl
	d365lLxIbjbRpBhLGuOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Py-0002Jz-D1; Wed, 10 Jun 2020 14:09:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Pd-0001yM-RT
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:09:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id u13so1970688wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 07:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pMPJ8f8LChSPkdPooyh4RsFj9EOeSp3oUeZluBwwX8c=;
 b=T/cyVJ4Z2J50EBzY3piRR2JqYaGO+5YMzh5JukaRwmj9/vmde+DoUG7gkz7Jw6e89d
 hEp6lCrhFrTbgWGfgLYuPG3Pu61wYIKuYKX+8MkHnZeEx1ieZtuTamv0jO3V+Ctj+sg8
 ubstY9R7nS4O10MPmgmJGXWHCph6Mvtk2+Ab3ybVCG0BH5s6gNIE7SbJBa87qIq00gH+
 QZaP/lZNYc+HT1UnCKE04k69sU6xBUFsQ+h/4h9856nFZEv48GoT+0ywtCbUtJTkTkoB
 MYttsTl88DQ5kthn05LG1cb0rRu7lnHXfWxtIMm1AIu6ZLmrn8mdWt3jLcx6WqtSv+pu
 mTqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pMPJ8f8LChSPkdPooyh4RsFj9EOeSp3oUeZluBwwX8c=;
 b=gs2Gry2r5ecezrz60ealZfD+kdOMd2++zbW7HH8IDJcaLe6RmtsZtI7qmjdE+bUxeY
 DCWvF7Q5rTRtXmua81sx14V9wEX6hAqrP6WDEZ9HQnygB4Rw+CffeeJRR6F2+xm9DLvB
 KjCMmHsvyWjqHFcbiv0WjeL0Ewr6+JM1fl1H5lxa+MPU/7h013xIveGOysnCsRYGF7Ei
 SLJCvdJoBkme+EuVQraSUlB9bIpRo5OG3i0HiDd5jx7lU+Hx5bCwN+ziizm54Gd8+vv+
 ZZiXPyC7eQ+iEdVI9jC0Mt2Rsj0XH1q+lEfEUbdpn0CZfTwMAXWoqkoZ5ZeDjcQKPUha
 Q2PQ==
X-Gm-Message-State: AOAM532PD6dBWK4tbjZhJAn90SQmqFL9eOCGQAHlDDmsPdnuM9YD64Zp
 p7B/bJkA2uN3kLgFglmtLMM=
X-Google-Smtp-Source: ABdhPJwMPKaGnz6FcYNR7C26Og4qDAnCm7k4AKe7Nx63tf1BbhLfiMQ+osnTYL4ccoQwwbt71W+pLg==
X-Received: by 2002:a1c:5683:: with SMTP id k125mr3574271wmb.55.1591798143407; 
 Wed, 10 Jun 2020 07:09:03 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id r5sm8565883wrq.0.2020.06.10.07.09.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 07:09:02 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 julia.lawall@lip6.fr, f4bug@amsat.org, jonas.gorski@gmail.com,
 lkp@intel.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: clock: bcm63xx: add 6318 gated clock
 bindings
Date: Wed, 10 Jun 2020 16:08:57 +0200
Message-Id: <20200610140858.207329-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610140858.207329-1-noltari@gmail.com>
References: <20200609113049.4035426-1-noltari@gmail.com>
 <20200610140858.207329-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_070905_884895_0F81C4DA 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

QWRkIEJDTTYzMTggdG8gdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIGdhdGVkIGNs
b2NrIGNvbnRyb2xsZXJzIGZvdW5kCm9uIEJDTTYzeHggU29Dcy4KClNpZ25lZC1vZmYtYnk6IMOB
bHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBG
bG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2Mjogbm8gY2hhbmdl
cy4KCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svYnJjbSxiY202M3h4
LWNsb2Nrcy50eHQgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2JyY20sYmNt
NjN4eC1jbG9ja3MudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2Nr
L2JyY20sYmNtNjN4eC1jbG9ja3MudHh0CmluZGV4IDMwNDE2NTdlMmY5Ni4uM2U3Y2E1NTMwNzc1
IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svYnJj
bSxiY202M3h4LWNsb2Nrcy50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nsb2NrL2JyY20sYmNtNjN4eC1jbG9ja3MudHh0CkBAIC0zLDYgKzMsOCBAQCBHYXRlZCBD
bG9jayBDb250cm9sbGVyIEJpbmRpbmdzIGZvciBNSVBTIGJhc2VkIEJDTTYzWFggU29DcwogUmVx
dWlyZWQgcHJvcGVydGllczoKIC0gY29tcGF0aWJsZTogbXVzdCBiZSBvbmUgb2Y6CiAJICJicmNt
LGJjbTMzNjgtY2xvY2tzIgorCSAiYnJjbSxiY202MzE4LWNsb2NrcyIKKwkgImJyY20sYmNtNjMx
OC11YnVzLWNsb2NrcyIKIAkgImJyY20sYmNtNjMyOC1jbG9ja3MiCiAJICJicmNtLGJjbTYzNTgt
Y2xvY2tzIgogCSAiYnJjbSxiY202MzYyLWNsb2NrcyIKLS0gCjIuMjYuMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
