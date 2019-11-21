Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAC2105ACD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Avpg+mpsWjI4MnRxNlH1Q3WSh9WfkEtFVZq0bxAYpHE=; b=PKx2HnfFWdM+00
	oQfkQ8uaPlTiYNhP4fUNX5D/yLkdeqjROO1Ik+VYOzdamZ9hrBtwX6bX54SGVsbLMPeYyFfZRC95m
	4DCzo32kpU7EhgeXLfTZ+nFhIxhmgxAF43f5q4mZJlh6IgE9IMwGYIz0DTvTMojCTtP7m98RqMFi0
	8I5mqVe0RICXCKUZk7imWUAvuMF8jaift+GLcntdlEDYkhGiyUGvHgkWCwmX1ROUcxMXc/HBVQa3y
	WmOgXg4BP1R+gdVfam/iM7ewvrUkdFh+CsIs79naoaOHdq0WNiKCqY6xAvG9EammLFRAKca7yk+2X
	Moh9Gj4WP5L1yDPPqorQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsde-0003oP-Ki; Thu, 21 Nov 2019 20:01:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbn-0001FO-G8
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id s5so5982381wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x9TMHTvTHEI0MdeM6BG2NG5AiLP9dRdOdMlVTz+AH7c=;
 b=a+r84Eid4Y8fL00esj+hgbmpMIBj/5EY4jrhtjcwvQdR8QeidWW9uNe1vVGdX15W/m
 GbtMfniZGzLlGUDVV4x1+Yuz6YTNW/63dcCbA+2c5C7qTRfQVQUd48Ku3i/uJaPqpt0K
 1GKWzZkImpSpk/rVRIcwSDBR+AvOkAEyyCX76G3KLFhcbMKvmN+L5Xj3M7IXRl4L2i+c
 9cGCEmtbVPNcSn7zQvh2dZHeKr+QqeS+RlhVIRBuJhfuJNKOQBBsBpWzfjqT0jgg4OPM
 OKeq+d0QoXxUR8GaOQTaolYjku1EAq/5nCLw00pl/r5f5eHmHdHPNZMFAuD++kYjm6YN
 Olkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x9TMHTvTHEI0MdeM6BG2NG5AiLP9dRdOdMlVTz+AH7c=;
 b=uni2CjCPwZE49cJEp1JMTh7uH9Og7b8HBHdbEiVFbGpu0zLXpwdcrTDnPxXcJRMhEW
 u8vAbpJD6RE1uBbTeAR3En5989cAkJsGbQyzcg2/CahICKnB4Mjb20vlf3FhVikBTrI7
 zUhbxgJwsYLxTaErtI8dMRj7FacqwFQE08yE8UM3LNrHQbFlQnEX3DXZWRWM+WeoUuY5
 MM1aBium37dSzyJtJz9XG8O6BNgb6qftV0s7DIkAO6JJkb9LbNY54SfvsaEcb32orNDT
 NfIBScyiawSJea7pvEhSxSMhqjfNDbYHoKNhTAaPrRWDVluZq9ud/cZ6N/iImtTfBLM9
 wXBw==
X-Gm-Message-State: APjAAAU06EJp/TI3geMihl69jnjuKcj5nvEyBKee6oXkdmAby89FYQVd
 3VHue3v3liQsnupeT5b0/IY=
X-Google-Smtp-Source: APXvYqzdPYzPhB0QzXk/JHcPGUew6P1PoHo7/8DRZ0lLyE+wjlgKStea3Ce/GXZ3+54bfRop4kIX1w==
X-Received: by 2002:adf:f445:: with SMTP id f5mr13570931wrp.193.1574366356766; 
 Thu, 21 Nov 2019 11:59:16 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:15 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 6/6] pwm: sun4i: Add support for H6 PWM
Date: Thu, 21 Nov 2019 20:59:02 +0100
Message-Id: <20191121195902.6906-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115920_761323_BD24DD65 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKTm93IHRoYXQg
c3VuNGkgUFdNIGRyaXZlciBzdXBwb3J0cyBkZWFzc2VydGluZyByZXNldCBsaW5lIGFuZCBlbmFi
bGluZwpidXMgY2xvY2ssIHN1cHBvcnQgZm9yIEg2IFBXTSBjYW4gYmUgYWRkZWQuCgpOb3RlIHRo
YXQgd2hpbGUgSDYgUFdNIGhhcyB0d28gY2hhbm5lbHMsIG9ubHkgZmlyc3Qgb25lIGlzIHdpcmVk
IHRvCm91dHB1dCBwaW4uIFNlY29uZCBjaGFubmVsIGlzIHVzZWQgYXMgYSBjbG9jayBzb3VyY2Ug
dG8gY29tcGFuaW9uIEFDMjAwCmNoaXAgd2hpY2ggaXMgYnVuZGxlZCBpbnRvIHNhbWUgcGFja2Fn
ZS4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KQWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggMGZlOWM2ODBkNmQwLi44NGYzY2Nh
YjQ3ZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0zNjAsNiArMzYwLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3VuNGlfcHdtX2RhdGEgc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7CiAJLm5wd20gPSAxLAog
fTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSBzdW41MGlfaDZfcHdtX2Rh
dGEgPSB7CisJLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKKwkuaGFzX2RpcmVjdF9tb2Rf
Y2xrX291dHB1dCA9IHRydWUsCisJLm5wd20gPSAyLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLApAQCAtMzc2LDYgKzM4Miw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjRpX3B3bV9kdF9pZHNbXSA9IHsKIAl9LCB7CiAJ
CS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAogCQkuZGF0YSA9ICZzdW40
aV9wd21fc2luZ2xlX2J5cGFzcywKKwl9LCB7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIiwKKwkJLmRhdGEgPSAmc3VuNTBpX2g2X3B3bV9kYXRhLAogCX0sIHsKIAkJ
Lyogc2VudGluZWwgKi8KIAl9LAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
