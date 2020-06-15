Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED3B1F92B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vovKOIjZui/MZHHhgBJet3uetv7nBlCMystgGlFDZi0=; b=JE1w+fiPs0q0pd
	F1IVmeOCsu6dCvLVF8GTe5Jcj6PmArCMhRgGkNZj4LtiI6bacvAOmc3MisgiKtkK+df5Um7aINkwD
	+I2AjU0s56ZazuDRFxDCZQ1I39Tnp6oESZ4kEAS0e48OrpBwPDN8Yz9PNo4+imT4NhwT21ro0NtKF
	fj8T21WiMOzA4A2kqkcAGfO72IQfuZoW9Ulmjqgq1xfFWRzr34yhedFtC2Yc2k3OUYxe0oIlyDdrH
	i2YS/tvVctkjnbqr4uGaLf3Hx29F0jjFykEw+961mhZPLE2rE0L9NAVaTUJKF1tombft+0wlxNXY7
	gz2DwT90GgsKj4d8GCRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkl5V-0004ga-3G; Mon, 15 Jun 2020 09:07:29 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl0u-0007iN-La
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:02:50 +0000
Received: by mail-wm1-x330.google.com with SMTP id f185so13982541wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sul9vJFiyBV6DzJkPSxg+U7YDJ0hSsaO8TNndWGgTaU=;
 b=fwEo+CvAjK6dvRzrJaQwX3nBJrIXw6jfji3vKpMwpjImSNh/1xQbkGUQ998M537hqe
 oZHiRBCq14RF7yT+q5jDRvZSnNWzMa+jLR83t+KoCybLAWB54oCpMruph3oh1cTfDe9Z
 o4oAVhwJpHUrrJ0SUgoF8PfsOsSn1QCMpT13EyEr1EeLF/FtfelhHrDjfMZE/8xUOUD+
 5cJ2FffMDPu8vMr5NItLffknE7Rvr6UBh+dTX/mtOXzs6E5RwgGyXhii414XVpyZTndM
 vf/3mz+rssH16wNCj13S2HFecN2w7E2kpeNiKLzllmDifJSOZScRLaNqXH7Hc0acr1lt
 ynTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sul9vJFiyBV6DzJkPSxg+U7YDJ0hSsaO8TNndWGgTaU=;
 b=Cqy54UOr8P9IDnFcy0nrqnY17iLYE6W0uvRV+4dDCd5HHrsoJMp/sNomh3wWTJdpq2
 PEfYzgOZxOXPIouPW+Ca4r6Mtrw+ALXroKdXZm768zowwuVAaPziMq9NoJdUu6dXFAXF
 3lweuwqAQtc5urH4JejypC7C344c3PZAG5GEZgDIOKaKez8nHn1WGsDcYFMpQC3/nyGA
 6nhwR2lOrLHUjlRYxfqvNx7ERhZjVWh6H3ls72L4bmOyn48yx8R8dRcszoG/LpmZPEeV
 q67CNQpF2s2SCZ775v9inbupt2KzKm8RcWfI0pLGf6uTYsxsKq2apkS1kOc3oLE8Javu
 tTAg==
X-Gm-Message-State: AOAM531rGCF1U+W+3S4Wt69RJxyMbMJTO18hX4jvLBRIYUZ7Jqv4UHSG
 6k3FaE/qk8iR4YX8H7mDlr8=
X-Google-Smtp-Source: ABdhPJyw/S8iFkx2eI1viZD4C2iESlJld5Z8fOnV0NaoxTum7ZFKlP+Ll4U7JVOLpjAwpR0GPjAv7A==
X-Received: by 2002:a05:600c:2945:: with SMTP id
 n5mr12937217wmd.189.1592211763201; 
 Mon, 15 Jun 2020 02:02:43 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id o15sm24089516wrv.48.2020.06.15.02.02.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:02:42 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 7/8] mips: bmips: add BCM63268 clock definitions
Date: Mon, 15 Jun 2020 11:02:30 +0200
Message-Id: <20200615090231.2932696-8-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090231.2932696-1-noltari@gmail.com>
References: <20200615090231.2932696-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020244_735276_CD907C11 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QWRkIGhlYWRlciB3aXRoIEJDTTYzMjY4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCmRldmljZSB0cmVlIGZpbGVzLgoKU2lnbmVkLW9mZi1ieTogw4Fs
dmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiBpbmNsdWRlL2R0
LWJpbmRpbmdzL2Nsb2NrL2JjbTYzMjY4LWNsb2NrLmggfCAzMCArKysrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0
IGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjMyNjgtY2xvY2suaAoKZGlmZiAtLWdpdCBh
L2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svYmNtNjMyNjgtY2xvY2suaCBiL2luY2x1ZGUvZHQt
YmluZGluZ3MvY2xvY2svYmNtNjMyNjgtY2xvY2suaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLmRhMjNlNjkxZDM1OQotLS0gL2Rldi9udWxsCisrKyBiL2luY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svYmNtNjMyNjgtY2xvY2suaApAQCAtMCwwICsxLDMwIEBACisvKiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJ
TkdTX0NMT0NLX0JDTTYzMjY4X0gKKyNkZWZpbmUgX19EVF9CSU5ESU5HU19DTE9DS19CQ002MzI2
OF9ICisKKyNkZWZpbmUgQkNNNjMyNjhfQ0xLX0RJU19HTEVTUwkwCisjZGVmaW5lIEJDTTYzMjY4
X0NMS19WRFNMX1FQUk9DCTEKKyNkZWZpbmUgQkNNNjMyNjhfQ0xLX1ZEU0xfQUZFCTIKKyNkZWZp
bmUgQkNNNjMyNjhfQ0xLX1ZEU0wJMworI2RlZmluZSBCQ002MzI2OF9DTEtfTUlQUwk0CisjZGVm
aW5lIEJDTTYzMjY4X0NMS19XTEFOX09DUAk1CisjZGVmaW5lIEJDTTYzMjY4X0NMS19ERUNUCTYK
KyNkZWZpbmUgQkNNNjMyNjhfQ0xLX0ZBUDAJNworI2RlZmluZSBCQ002MzI2OF9DTEtfRkFQMQk4
CisjZGVmaW5lIEJDTTYzMjY4X0NMS19TQVIJOQorI2RlZmluZSBCQ002MzI2OF9DTEtfUk9CT1NX
CTEwCisjZGVmaW5lIEJDTTYzMjY4X0NMS19QQ00JMTEKKyNkZWZpbmUgQkNNNjMyNjhfQ0xLX1VT
QkQJMTIKKyNkZWZpbmUgQkNNNjMyNjhfQ0xLX1VTQkgJMTMKKyNkZWZpbmUgQkNNNjMyNjhfQ0xL
X0lQU0VDCTE0CisjZGVmaW5lIEJDTTYzMjY4X0NMS19TUEkJMTUKKyNkZWZpbmUgQkNNNjMyNjhf
Q0xLX0hTU1BJCTE2CisjZGVmaW5lIEJDTTYzMjY4X0NMS19QQ0lFCTE3CisjZGVmaW5lIEJDTTYz
MjY4X0NMS19QSFlNSVBTCTE4CisjZGVmaW5lIEJDTTYzMjY4X0NMS19HTUFDCTE5CisjZGVmaW5l
IEJDTTYzMjY4X0NMS19OQU5ECTIwCisjZGVmaW5lIEJDTTYzMjY4X0NMS19UQlVTCTI3CisjZGVm
aW5lIEJDTTYzMjY4X0NMS19ST0JPU1cyNTAJMzEKKworI2VuZGlmIC8qIF9fRFRfQklORElOR1Nf
Q0xPQ0tfQkNNNjMyNjhfSCAqLwotLSAKMi4yNy4wCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
