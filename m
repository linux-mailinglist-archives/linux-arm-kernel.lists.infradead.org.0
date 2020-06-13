Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BC61F81E5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VtLuk+vAKu5m8NrfYE6ilgw0bS+Z9MLOyokxXLpHmlA=; b=A7qVhGMhGptFGQ
	/k8hC4VCO9arnqu5UWPpp7QdKL7dXZQovYSWVRu0tFY0EnRt60/zVQK6H9sbTDg1WXtO9J8NJFO8D
	T4QSmZk5PrOabzQumfLSXt9OPjqre+dFILUTwMHbZemg94eqQtGpht7Ylk9Lnk/MliSsFFann4K/3
	0RwBjUh3Alw6YPQLPVn8Y1G3TWq9eRe5Stqwu2PBCUGV9gIPjn4Zvpa4ZEyH6lzi9ay6tPxXgSUa4
	tYhpHaPK6wFw42drfsIHjYJ9Rv+lKtASR47txoWNmKd3Hcz66CsTUkeXAZ76DhTDaZ3tiN7WGo+op
	6UziSNdS2guhuPyqdS0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1RA-00068x-JZ; Sat, 13 Jun 2020 08:22:48 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QA-0005bj-Su
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:48 +0000
Received: by mail-wr1-x431.google.com with SMTP id r7so12173176wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1E2Ih5H7xJKGoxw3JHd4DtWaa/tIBR+qMw0Gq6OYSe4=;
 b=L6qJwDrnWn0ihRuKWVZpvfxkUnj9w+K8r6r4ikLAtSfUHokX3r1x645HtLs3Xglomu
 BOD37kPT7T/QN5A1LLV7mXPjnN8xXAnYEDF0D3qYDRCVzSDSqeODq7ALfEpFEgNLabPa
 Kq38sCWQ64zudFbRxszzZh0gDtdIFi0qX84TrtxauqOb4RwMTnpTh6ruZ2f37C69XUIw
 /f7NYaMvIRObQb7IVgZrqEe7rICcsnbx6zl9UWLh1XGitCLYnlF0MxjcZdiVJdm6wHJA
 ZMJJHGSNCy2TpbAfjD8ft2VEaNlTariNZ172us5UVWxTl4LUT8WsSVOE6dXfs1agyk9x
 OQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1E2Ih5H7xJKGoxw3JHd4DtWaa/tIBR+qMw0Gq6OYSe4=;
 b=tzdIEhKCGvmy5bHXWeVy6su2+NnBf9jYugE0SM8OktmlIL+GZDpFQWYI+hjWWQXYPB
 5YuJGunggKbbMVL/nO9t41Z+RDfF4LUm0eegO8Xt5dn6deiTnaZJqza/jEfwUdvGdt/s
 Uxr58NJfQENhFQQUHXS5aOJ0hpVPJEOsKzQSZtD20Vp1Ew5D9peTi7qzE47+eYgDP3uj
 ruBfAZnNJ5w3Yv0apemYLcNNW3+6F21TDjMJoq14RLSP38OSkfbt0OzlKRYPDYybTh3G
 NZFPWYP662Ne/S6d7IjZ7JHFOFbebv8s8YIRjsFbxJWTKFxYjyWF/ffE1nbFzez6d/QJ
 W7mw==
X-Gm-Message-State: AOAM532IA1Aj7hai2jk4qNFiQ97iKN4DJRGcRRQfcPAKMI+kK0AmH3C+
 xVpU2boZI4BToccjwXP0JqQ=
X-Google-Smtp-Source: ABdhPJw1hjDRx32smBdpBxZq6dqT18RaiGPaijgAgtyFVgaMLRqjVXS/AGYQtyGbbQ2rzfHmb3702Q==
X-Received: by 2002:adf:fdcd:: with SMTP id i13mr17893979wrs.190.1592036504596; 
 Sat, 13 Jun 2020 01:21:44 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:44 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/9] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
Date: Sat, 13 Jun 2020 10:21:32 +0200
Message-Id: <20200613082140.2009461-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012146_928071_F4F5EAED 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXog
Um9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8
Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tLQogdjQ6IGNoYW5nZSBsaWNlbnNlIGFuZCBtb3ZlIHRv
IGJpbmRpbmdzL3Bvd2VyLgogdjM6IGZpeCByZWcgbWF4SXRlbXMgYW5kIHF1b3RlICNwb3dlci1k
b21haW4tY2VsbHMuCiB2MjogQWRkIHNlcGFyYXRlIFlBTUwgZmlsZS4KCiAuLi4vYmluZGluZ3Mv
cG93ZXIvYnJjbSxiY202M3h4LXBvd2VyLnlhbWwgICAgfCA0NCArKysrKysrKysrKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9icmNtLGJjbTYzeHgtcG93ZXIu
eWFtbAoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dl
ci9icmNtLGJjbTYzeHgtcG93ZXIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wb3dlci9icmNtLGJjbTYzeHgtcG93ZXIueWFtbApuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAwMDAwMDAuLjYzYjE1YWM2ZGRlNAotLS0gL2Rldi9udWxsCisrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9icmNtLGJjbTYzeHgtcG93ZXIueWFt
bApAQCAtMCwwICsxLDQ0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1v
bmx5IE9SIEJTRC0yLUNsYXVzZSkKKyVZQU1MIDEuMgorLS0tCiskaWQ6ICJodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy9wb3dlci9icmNtLGJjbTYzeHgtcG93ZXIueWFtbCMiCiskc2NoZW1h
OiAiaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjIgorCit0aXRs
ZTogQkNNNjN4eCBwb3dlciBkb21haW4gZHJpdmVyCisKK21haW50YWluZXJzOgorICAtIMOBbHZh
cm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CisKK2Rlc2NyaXB0aW9uOiB8
CisgIEJDTTYzMTgsIEJDTTYzMjgsIEJDTTYzNjIgYW5kIEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBv
d2VyIGRvbWFpbiBjb250cm9sbGVyCisgIHRvIGVuYWJsZS9kaXNhYmxlIGNlcnRhaW4gY29tcG9u
ZW50cyBpbiBvcmRlciB0byBzYXZlIHBvd2VyLgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxl
OgorICAgIGl0ZW1zOgorICAgICAgLSBlbnVtOgorICAgICAgICAgIC0gYnJjbSxiY202MzE4LXBv
d2VyLWNvbnRyb2xsZXIKKyAgICAgICAgICAtIGJyY20sYmNtNjMyOC1wb3dlci1jb250cm9sbGVy
CisgICAgICAgICAgLSBicmNtLGJjbTYzNjItcG93ZXItY29udHJvbGxlcgorICAgICAgICAgIC0g
YnJjbSxiY202MzI2OC1wb3dlci1jb250cm9sbGVyCisKKyAgcmVnOgorICAgIG1heEl0ZW1zOiAx
CisKKyAgIiNwb3dlci1kb21haW4tY2VsbHMiOgorICAgIGNvbnN0OiAxCisKK3JlcXVpcmVkOgor
ICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSAiI3Bvd2VyLWRvbWFpbi1jZWxscyIKKworYWRk
aXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBwZXJpcGhf
cHdyOiBwb3dlci1jb250cm9sbGVyQDEwMDAxODQ4IHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJi
cmNtLGJjbTYzMjgtcG93ZXItY29udHJvbGxlciI7CisgICAgICAgIHJlZyA9IDwweDEwMDAxODQ4
IDB4ND47CisgICAgICAgICNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47CisgICAgfTsKLS0gCjIu
MjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
