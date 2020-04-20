Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872561B0C2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUHARx37KYTGWsVx4iMC2KMX+9kkfkBTl+Oy17bGvyA=; b=tiWnnztLtPaFmc
	J2TUjNbarUKaH8ncak3I4wzX3ST6Rit4F7+yA5kxQGrEx/yzDKz2otcs72M9ejblzQtWnOiYw00xv
	20nbv5bxHkdNhfU3azyBiSFrtdxWdGaVnm1LLOI1rYjPdiUf/qk+93g5fz94xU7hW0nv33M+kpvzY
	tLLOPQoaZrf8hpgpeKEk5PuVCvvBe9XaUxRWm4yufs8YVWB8zdpGP2/Y99eubeuyLak9PimFxjuRy
	E5LwgTQyMYm/vwvuZDgHd6CpeIyl0T/Tu4riHt1UdsWns2JDvyUU0CNmwA/66sISCo3xuYpFY0guk
	DKH5md/s/ifNKhkZOEyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW3l-0004Qy-IO; Mon, 20 Apr 2020 13:02:01 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2I-0003G1-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:32 +0000
Received: by mail-wm1-x341.google.com with SMTP id t63so9900504wmt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Nc3cDv/S8K5EI2hOuNsI3mldCjUl3ocR/NEfaOULj3M=;
 b=dEsZrwa+RR+0rXsoAGncG62h4KbXSQv1Sgb4ZeaEEjFzMROx4U1ZsmJ+pLXwLsEwbO
 dit3H1OAWx+4QQ5U39GadtM70ZtjCiaMiyMZZVu12oFCZn9X1TfqnwLfb3RRAsZSS+sm
 v9munaG1U0+BrtDRsF13U558DJl0gi+DK0yh9wH/X8j9sBRSzWCcsyS5aMSBGzUkxdX3
 m0JF7X3lABCBHsQEF+BsX6Y8438MVnj4NZXFfBjpFlW3nE4sDuAR7tPUMDbpIQWSmJBO
 d4J8qYh8Wuro09lTKyYLgxutS8GkMWU57UjOBZrdssN5BsVhKDglyKGJBBGJRNVh/se1
 oaYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Nc3cDv/S8K5EI2hOuNsI3mldCjUl3ocR/NEfaOULj3M=;
 b=TnoOdrpNKb3rhiKmy+ypbkyMlaWPcsBwh42sshZ5RTNvyAstP58tPTvHKCo/y0Y5oo
 UaxQKlJThUKqwNcLu4Z1gVB4ZwIZRO9YCJlIV2WBHUxWUg/oeKDZAXoiQ0s+v8Ajv7jr
 BebNF6n+lHoDWbce1eq5crmqEq3PgsWyyS8BAbL94cYggwbdon9hmeogEWFASVj7p5+x
 mC9zGuQhbxbyauWMFL6laENtAu3YeBl+7/BWc15HHCyIft27FkedfdIpXqr5kpEXbXnk
 QjhPmSNaTUD8N+5//HPFGwoMd5gKew6Sl++XNNiDMAw3YjETCuXcj+Dln4ggfFm+P/g9
 6Lcg==
X-Gm-Message-State: AGi0PuZpODxjtuqk+gRUuG1Jzt1Bqdrb7bcyBe45PPArC3nLTxDGLwnS
 65uu1h2faNuBF8KOCwVTlMk=
X-Google-Smtp-Source: APiQypJP9iaMkM/tJP4hscr1M2RlYqjecZSBlhqM1r96gmEU6ZDy6uMs/es6XV4J4OzQBtcxpMvvYA==
X-Received: by 2002:a1c:f20c:: with SMTP id s12mr18890360wmc.83.1587387628929; 
 Mon, 20 Apr 2020 06:00:28 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:28 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 4/9] arm64: configs: Enable sun50i cpufreq nvmem
Date: Mon, 20 Apr 2020 15:00:16 +0200
Message-Id: <20200420130021.3841-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060030_304311_98B1DD4B 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IG5lZWRzIHRoaXMgZHJpdmVyIHRvIGJlIGFibGUgdG8gZ2V0CnRoZSBjb3Jy
ZWN0IHNwZWVkX2JpbiByZXF1aXJlZCBmb3IgRFZGUy4KCkVuYWJsZSB0aGlzIG9wdGlvbiBpbiBh
cm02NCBkZWZjb25maWcuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvY29u
Zmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmluZGV4IGY5ZWVm
YjU5NDBjYS4uMzdlNTEyYzEzNWJhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTg0LDYgKzg0LDcg
QEAgQ09ORklHX0NQVV9GUkVRX0dPVl9DT05TRVJWQVRJVkU9bQogQ09ORklHX0NQVV9GUkVRX0dP
Vl9TQ0hFRFVUSUw9eQogQ09ORklHX0NQVUZSRVFfRFQ9eQogQ09ORklHX0FDUElfQ1BQQ19DUFVG
UkVRPW0KK0NPTkZJR19BUk1fQUxMV0lOTkVSX1NVTjUwSV9DUFVGUkVRX05WTUVNPW0KIENPTkZJ
R19BUk1fQVJNQURBXzM3WFhfQ1BVRlJFUT15CiBDT05GSUdfQVJNX1NDUElfQ1BVRlJFUT15CiBD
T05GSUdfQVJNX0lNWF9DUFVGUkVRX0RUPW0KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
