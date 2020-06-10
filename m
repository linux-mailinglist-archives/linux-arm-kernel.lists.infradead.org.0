Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BA71F5A0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oo3VLamV5HHz8FeYwDiPrOpeIuXlmQrtl6Pru3SuYlo=; b=l3QJ6dMELRMCS6
	TBxSjppwTc2LV1CO1Jl55kFIvyosdhpQ9B3A8TYU8Fqp6px21rUPqRpn/xG9ZNDYT+NqaDo8PGTNv
	5YI1M4tcNfvsqMEjoZtN7btxHwVxIUFviDiPS4cmPON5JFItuQKt5rKewFM0UPwlxwAMSP/WliD91
	oBA2uC5l6GCmUxQz3oqw6PxJTVyrdFwSaVJkXT7F0RKM9X3tKWgGgvXEYP1YZR8JRdI4se5ox0+CO
	ZxMBOmAR35Ueg5lv5qjU1KhweiYjkPaIb+tMItn+HjLJQDU5qb5G43rdm9WDLPUaVe/EzSkbbhn/E
	xmQzTSPtCnCTlS+qX1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4OD-000056-4G; Wed, 10 Jun 2020 17:19:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4LC-0005nE-Ct
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:46 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so3169101wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ufahVb650w9qsCrH1Cbf/slHCvCwJwLo7tVzV2USitA=;
 b=l+nK1UHjzB69FNVE+oP3RRR5YWelnjeKlAXrIBKOzhCz5TUvwa3LtqFS8o2zuiufw/
 0mYvXmy7lYL8YCoqmDMZA3OberG5ISZzusL1aIVgz2y3qX493weN/bds88e7DcsuQ56c
 Effdw3cpOAzU/PApjE2DyMlSmIcUaWlZRccwok3cX9xuclJQmo99xJngBphqBL+YZHOi
 EikWk2YO4hKeu3SFbfYWz69HCqd8eIhKRCZfnZIohmBapa+h7ZD6Vjw1O5xIHxIFgtpH
 lwgQ1ESCpkn+6wgtwr/S1kw/IaC5HOEpzzzMFmInSSUz92YGPRXQrRWfJbX1pgT4ucKQ
 lNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ufahVb650w9qsCrH1Cbf/slHCvCwJwLo7tVzV2USitA=;
 b=VzTuTtcIqL/I7TqgWaK8iy2IIOe03LRt1t/aZUzkkHAiNpwdOl09YtP4e/bKiW2kC8
 Ao2TD7vEI8FgEhSaxyEITjDjxO3V6ceXdj2HNaBR7Y8lcMRumiCedzYDmJGFZxOCdRG2
 I16sMfqnqeTd7kqmcd+biBmMM0PQAhc8QwtzmbKcI6gDmyNpCm8ZdcvKX3WByJB4rzIv
 lx0ZngYouxP61xIcSpguNnp/2DZB5IlZIp6fluzW3Kez7X6IFKoToaepXCpuzAMcqpbW
 4dIqjxcgwo1A/ZX5tWM416qvoYRmPPIi6370Puhsuy6TKZ2yBrO+TmOfTwdHgU8eJYgn
 lFAg==
X-Gm-Message-State: AOAM532SHHWLfqgF88rG9UsVz+bzyCmGSMGk/QfGYrkRovNWTvb2Rnnu
 iZkJkkPx2BUxY1SaP6tiVrGLyWtUVjU=
X-Google-Smtp-Source: ABdhPJwEtna7aixJMCKiZdjMiIc1fb6fCfZ/dWM+7OhcJR8NgfA97VJUrOJm8XvzFU8v2Gb2X30fwA==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr4802365wrq.310.1591809399858; 
 Wed, 10 Jun 2020 10:16:39 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:39 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 7/9] mips: bmips: dts: add BCM6328 power domain support
Date: Wed, 10 Jun 2020 19:16:28 +0200
Message-Id: <20200610171630.465579-8-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101642_505279_CBDAE97B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2MzogU2Vw
YXJhdGUgZHQtYmluZGluZ3MgZGVmaW5pdGlvbnMgZnJvbSBwb3dlciBkb21haW4gLmR0c2kgc3Vw
cG9ydC4KIHYyOiBBZGQgZHQtYmluZGluZ3MgaGVhZGVyIGZpbGVzLgoKIGFyY2gvbWlwcy9ib290
L2R0cy9icmNtL2JjbTYzMjguZHRzaSB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyOC5k
dHNpIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyOC5kdHNpCmluZGV4IGFmODYwZDA2
ZGVmNi4uMWY5ZWRkNzEwMzkyIDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzI4LmR0c2kKKysrIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyOC5kdHNpCkBA
IC0xMTAsNiArMTEwLDEyIEBAIGxlZHMwOiBsZWQtY29udHJvbGxlckAxMDAwMDgwMCB7CiAJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXBlcmlwaF9wd3I6IHBvd2VyLWNvbnRyb2xs
ZXJAMTAwMDE4NDggeworCQkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjgtcG93ZXItY29udHJv
bGxlciI7CisJCQlyZWcgPSA8MHgxMDAwMTg0OCAweDQ+OworCQkJI3Bvd2VyLWRvbWFpbi1jZWxs
cyA9IDwxPjsKKwkJfTsKKwogCQllaGNpOiB1c2JAMTAwMDI1MDAgewogCQkJY29tcGF0aWJsZSA9
ICJicmNtLGJjbTYzMjgtZWhjaSIsICJnZW5lcmljLWVoY2kiOwogCQkJcmVnID0gPDB4MTAwMDI1
MDAgMHgxMDA+OwotLSAKMi4yNi4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
