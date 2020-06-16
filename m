Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CFF1FA973
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1/uZZOc9heGIWQ94HCH4nHktuzdI/2RezJwk0YHquA=; b=KgotSnmlIRtVzZ
	tdu/ESRYeUjK+hfcs2MKHvMccqvjUKo75YHptrL8zEO/qUIKJivZB9pX/4Zkce8dLS8G7XUcmT3TE
	mitkmrZgnRJmeFkG24b7gq+8HZS68UwnO47Fb3Dr7XxSAQXgonLc8fxSJdIf0uMYOyLPJRlfh6m9S
	8Bs/aNsARStAITH8tIEHLcZwSNFiQ7PBGW0kXbeisVbi6R3qCUmHqMpvXXHZsrKzO7Euakve4jiwr
	uvhz3qxkjgg0HxmwsVUMppH6sINuLg1TS94IUAuCWRYvyjrxMWvKnJpaaL4Pnv5vaXTo9GoWHcDTT
	8VLg3ADS4UyaoZzkbsWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5d1-0000UB-8s; Tue, 16 Jun 2020 07:03:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5c7-0008DE-Rz
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:02:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so19539980wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pk+BVPAFs3HZDk7vo9cGngkaw64SHz8Pd/OXNI1lr+0=;
 b=C+HvmqxTo8kyxFjHP2roUq3Qhu/w2Sn9iKkXF5vp1PkF7GbmPNr5BmB8EkfpDDMxac
 kdmT6qSYiaWA3K/hNkrgidPcZ6LuiPC0DLbbmToRDyesIED5lrjotym1kkf2ziAPFiXy
 5+dJ0nxRD0KsYrzoLPRT9zLqPcuf5o+tsWQDYebZCEEqyxwxoKb6AE7lUI8BoaEkXf2+
 lTqUPGHBsmBpSfmbuay1zzlge1jeN5tZt+kEH+cMY8WhyGOVfLxOQs8XfRxP+1pBE7A4
 fTv9lg3hdkyU6Jemj9/exNbEWgE9T74u4CqWzTegS1SA0Zo1QwquJNGl0gz0DJV4DCD3
 Oq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pk+BVPAFs3HZDk7vo9cGngkaw64SHz8Pd/OXNI1lr+0=;
 b=YI0d88HXhoanXuzDf21dIg4DVZCow/qDQQsj2NrG7YLkpj51QMU478pfLeWnPbLybI
 Hew9lOi+h3aDl0OOyf8xqb681+Syq1TH4YNAN16tFjoRez3Ukk/iC6p4Da671KpSE1kq
 K/1LULxn8lrVW8aDTL3jakWIAjcVEHm0wGjqBqJ/q3sujCQnq9F9f0+zmwaY2ROCqRO1
 3Muo674bIA8yQ8c0p5l6bGeFnF8XoMM51HOk9bCLVAyDKh8Lrf7vrxcpmLQAbNLBgSe2
 n2PUVPT9IN8X8JwFHvzxf3WqLCDYM3pA6Add7ivQzUT7ExITM433Ax0W1Tm2HyKYPTlR
 qxow==
X-Gm-Message-State: AOAM530U1ow44sHYt/kdE3/P4FJpKIaImvXV6UwakHp69AfB1+nbbkO4
 DuPSRMbfFylY1xiGchRIxy8=
X-Google-Smtp-Source: ABdhPJxPpnpfojRlFQlz8MK0ih4ZorQrUXviNO2k8RuX8mrpkbqs+uk/jw5/vvKOelKtPiAuBDPhZQ==
X-Received: by 2002:a5d:68cb:: with SMTP id p11mr1354863wrw.379.1592290950376; 
 Tue, 16 Jun 2020 00:02:30 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id a81sm2792897wmd.25.2020.06.16.00.02.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:02:29 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/4] spi: bcm63xx-hsspi: add reset support
Date: Tue, 16 Jun 2020 09:02:22 +0200
Message-Id: <20200616070223.3401282-4-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616070223.3401282-1-noltari@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000231_915918_263458E6 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgSFNTUEkgY29udHJvbGxlciBhdCBlYXJseSBib290LiBI
b3dldmVyLCBibWlwcyBhcmNoCm5lZWRzIHRvIHBlcmZvcm0gYSByZXNldCB3aGVuIHByb2Jpbmcg
dGhlIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9s
dGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1
dHJvbml4LmRlPgotLS0KIHYzOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9l
eGNsdXNpdmUKIHYyOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUKCiBkcml2
ZXJzL3NwaS9zcGktYmNtNjN4eC1oc3NwaS5jIHwgMTcgKysrKysrKysrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zcGkvc3Bp
LWJjbTYzeHgtaHNzcGkuYyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMKaW5kZXgg
NmMyMzUzMDZjMGU0Li40NWUyYjA5NDJlNjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3BpL3NwaS1i
Y202M3h4LWhzc3BpLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgtaHNzcGkuYwpAQCAt
MjAsNiArMjAsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3NwaS9zcGkuaD4KICNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgvcmVzZXQu
aD4KIAogI2RlZmluZSBIU1NQSV9HTE9CQUxfQ1RSTF9SRUcJCQkweDAKICNkZWZpbmUgR0xPQkFM
X0NUUkxfQ1NfUE9MQVJJVFlfU0hJRlQJCTAKQEAgLTMzNCw2ICszMzUsNyBAQCBzdGF0aWMgaW50
IGJjbTYzeHhfaHNzcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlzdHJ1
Y3QgY2xrICpjbGssICpwbGxfY2xrID0gTlVMTDsKIAlpbnQgaXJxLCByZXQ7CiAJdTMyIHJlZywg
cmF0ZSwgbnVtX2NzID0gSFNTUElfU1BJX01BWF9DUzsKKwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAq
cmVzZXQ7CiAKIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwogCWlmIChpcnEgPCAw
KQpAQCAtMzQ4LDEwICszNTAsMjUgQEAgc3RhdGljIGludCBiY202M3h4X2hzc3BpX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihjbGspKQogCQlyZXR1cm4g
UFRSX0VSUihjbGspOwogCisJcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFs
X2V4Y2x1c2l2ZShkZXYsIE5VTEwpOworCWlmIChJU19FUlIocmVzZXQpKSB7CisJCXJldCA9IFBU
Ul9FUlIocmVzZXQpOworCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZfZXJyKGRl
diwKKwkJCQkiZmFpbGVkIHRvIGdldCByZXNldCBjb250cm9sbGVyOiAlZFxuIiwgcmV0KTsKKwkJ
cmV0dXJuIHJldDsKKwl9CisKIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoY2xrKTsKIAlpZiAo
cmV0KQogCQlyZXR1cm4gcmV0OwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChyZXNldCk7
CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBkZXZpY2U6ICVk
XG4iLCByZXQpOworCQlnb3RvIG91dF9kaXNhYmxlX2NsazsKKwl9CisKIAlyYXRlID0gY2xrX2dl
dF9yYXRlKGNsayk7CiAJaWYgKCFyYXRlKSB7CiAJCXBsbF9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2
LCAicGxsIik7Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
