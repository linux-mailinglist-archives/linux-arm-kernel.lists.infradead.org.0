Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F1F34D87
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9w5sqCiSjtHkkNwK5TMofaW4TLXqARuCL5/OStMTqM=; b=s2bna7AG1d3SG+
	kQC9VDEagGmfYriR5afEFzd0BJ12+4SY95XqovVTAA/AsnK77owkXau7YSFSw1jEEMA9E+d07O7pO
	ww+ZfQAV+D+zVKKe8AO0iek2zErgI5s6JSYEyG531bADlRasgfgpLsDhjP4WDSpY84AoYEid3aq15
	63O92rUf35NCsRmy94jevhjYHMAbh5EbxJGrRUihhsquZV81CBbkaRkFAoj0czqTghSpwJntwzKzp
	7mJE9o5O1GZv6ZZV40ElunADboAPbzjI/pOoW9KT7oc3lGO0lNxjuU1ielJ2OWAMm3pyK8HQJx2fI
	uYsdfIntYka2rS8wVE3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCMx-0001Dk-Fx; Tue, 04 Jun 2019 16:33:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKL-0006ZE-Ja
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id c2so16527201wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=Kedeat9Q1DoBS2uCjqTmSzeahTsS+pO8gnneywg90JhjrJLeQ7O6xfmqwM5DmgW/MI
 RWjVZqpB79tnBwnrfcplpN8QBUJDHsnYmW6Wes/VKr6kdbur8gzABlwudagkRk6VRYAB
 dlhAvJMvOHQYVgbF6ED9hxP2cRqKzZDFrPBiFgYD8MbFF6lnNRTpqbtnvGYUVTTMfaDP
 Cm550MzkV5tr91BdIW3smbnjxHcrnFoTZ9S9W9R8kFn2o0G8XQl8U2oDQKEnKGMUMLiH
 QgzmS0V+LcLF8LJ7hvZCvaLeO6GP4uwUEtEe/4oWJ/HNDbQ/rKWeoB5QADX6lxrUR8to
 OF0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=jUKPCf6cqVTHfr7mpDEEQTktmfs3ESs476vhYuVrVr1WQdlqUdOUS4Nlu6YBDb5IWn
 IMYiTaT00LdaNngvtt/AJcmUO2P6QMvmTY4CwzgYoURb/M3s9Ybc7xDMQSEsaAn5I5AA
 i7B3AHcNuNxLor/Vppv3pcx3S+JGvv7bK3hLQZ4dIX9DnwALXvEaDSd8Tpj/h6/nwMPv
 adOkhmz+auH30W8DK1oN6xlQ+kbns0jLfUzSyRayKGX7O1vH2JLwEHRCaKjJyvWaoeyu
 Q3QnDkmGw+vVzquuz+fukeWgrdZJldrhx8bNo5APBfW6QzLS98WiensYJXxpu+A2GLD7
 /uog==
X-Gm-Message-State: APjAAAX6GRx0OHQEkCbcDyUDAVcpFXWSL926Laux9lrMPetocWBUVJxQ
 mVdSmRCfiu0ri7P01e7yn04=
X-Google-Smtp-Source: APXvYqwi4oFrO7C1qnIPUTgo/kzDBOoSBBpNkHtnhvHg7KuAsyuewuuG+vnaOzim/mUn8o+LyWKDog==
X-Received: by 2002:adf:e590:: with SMTP id l16mr7127528wrm.257.1559665819998; 
 Tue, 04 Jun 2019 09:30:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 12/13] arm64: dts: allwinner: h6: Enable IR on H6 boards
Date: Tue,  4 Jun 2019 18:29:58 +0200
Message-Id: <20190604162959.29199-13-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093022_272064_9CD5C38C 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEsIE9yYW5nZVBpIEg2IGJvYXJkcyBhbmQgUGluZSBINjQgaGF2ZSBhbiBJUiBy
ZWNlaXZlci4KCkVuYWJsZSBpdCBpbiB0aGVpciBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyB8IDQgKysrKwogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgICB8IDQg
KysrKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0
cyAgICB8IDQgKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3Mx
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMKaW5kZXggMGRjMzNjOTBkZDYwLi42ODBkYzI5Y2IwODkgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpA
QCAtMjMyLDYgKzIzMiwxMCBAQAogCX07CiB9OwogCismcl9pciB7CisJc3RhdHVzID0gIm9rYXki
OworfTsKKwogJnJfcGlvIHsKIAkvKgogCSAqIFBMMCBhbmQgUEwxIGFyZSB1c2VkIGZvciBQTUlD
IEkyQwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
b3JhbmdlcGkuZHRzaQppbmRleCA2MmUyNzk0OGEzZmEuLmVjOWI2YTU3OGUzZiAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0
c2kKQEAgLTE4OSw2ICsxODksMTAgQEAKIAl9OwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZ1YXJ0MCB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5j
dHJsLTAgPSA8JnVhcnQwX3BoX3BpbnM+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMKaW5kZXggNDgwMjkwMmUxMjhmLi5hZTEy
ZWU0ZmNjNzcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1waW5lLWg2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cwpAQCAtMjQ3LDYgKzI0NywxMCBAQAogCX07CiB9OwogCismcl9p
ciB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnVhcnQwIHsKIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmdWFydDBfcGhfcGlucz47Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
