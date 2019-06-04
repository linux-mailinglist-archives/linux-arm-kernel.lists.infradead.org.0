Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD2934D7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:31:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nM+rzxUfac7X1s0L05U4i7cQKMo3jDKju7Ow5vPpWBU=; b=aK3BYlHZ/bmKqY
	xU1VJgJj2TPpMJUL+Hg/J2JWoi5GtdnN5wo8BIAdvE7y0hEKuaKsjyEIjr/cLy6dJgguUJom4L2PJ
	3EQbONiSkQRpt1ffOsiHAOqU3QwkCnRwVmIX0msPF9FvfUzdv4PFw5Vs1YVZu7+x87Sn0tDsXgcQ6
	WLOs1JWu0FCWgPVQklkFAzoHzlpmJNFnTGZy0RQmfzIyu8tFoAShR9NUGLbklUt7A0VIDV1h22saq
	0Kkxz2zZPNH1ZAaA45UFPb4TvwJA0UdZQ8sWX7lmPhE2Nfhsb7lmKYQHPNwCLvC555NJtTIJ6i5Mh
	DDl08BcUlGQLkFJsjg2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCLp-0008G6-6N; Tue, 04 Jun 2019 16:31:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKH-0006ST-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so16518298wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BsQBIKOAel5fnBJ7QqXJ25YvFcF3acsbydOzLPIsKmY=;
 b=Neh3CJxmgXFLwtJqcm5/RvHG3XrJvBwVkV9GXw3SPiRijWVpJwq6+YsQMxCTy5KlbN
 tu8hzH6fOAthfEtmxLrlK1urrNqqwoYo+OCbCp2MSGN1n4lngSZDQ00zNN4afAinX9jR
 Sr/xMiJk2fIrZpPLdsLZxCOnaE0Y8w2GYyga4Hb9JKFllebZYMO2BHGj1fiYgbQgkXTs
 eHI5LGD+HC338p62eNbl1v7oAhaLEeM6Kmo6mrfnw27EgWqQrSKD1F1h+NV5mc0bA6/y
 rrVHyL8Z4xnOrc8Y6/J6fwGESDrMJ3ETnvi7TMyMb1adlzSTIe1wmOVgmUP3oNdHUtpA
 g9pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BsQBIKOAel5fnBJ7QqXJ25YvFcF3acsbydOzLPIsKmY=;
 b=sZmiO5HlzyjVj0NPQPmNPb77C67qlIbsL/QUV8+M+XvPThjtEMYs0YzXyuuLXlBRzi
 g5+BMbaYF23FjXhT2//rRoSsL/9eukJtJiIG9p9cCewBLNuvrUqv7kHDuR3sY+o2QQ8W
 XyM8JSpcolUapiXbdpTtkwQtJksaeucW99Zn+VWpC+QQq8Klqw7PPVdjimSk8SD+qr7X
 Msh1kRjAazcRV3xoKuG9+a0gVOhycpfjLubD8CPwZ1ddqSRI9Li5QkjeydW7grc+ar/O
 VNsQT/ROOA9y3zElUdwi51bwDpeZC0citYncsJOVmLO/DREhFDtJanfYieiUHQMzNz0c
 Nc8A==
X-Gm-Message-State: APjAAAWdIR5AwwBdaIyD9ptQs8Aw24PN8Ku/EoqRIsIQdjiHXObAtCUH
 jEKHnYNmy81u5s1QQIwSU9w=
X-Google-Smtp-Source: APXvYqw4IUgpTbaVDk3VP/y7dsyc/2s0BvfDiNjuBzNtOuW3TqSFu7Pv5I7AOYT3qOOXVOiKURXImQ==
X-Received: by 2002:a5d:5283:: with SMTP id c3mr7123707wrv.268.1559665815867; 
 Tue, 04 Jun 2019 09:30:15 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:15 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 08/13] arm64: dts: allwinner: a64: Add IR node
Date: Tue,  4 Jun 2019 18:29:54 +0200
Message-Id: <20190604162959.29199-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093017_670094_D12D12BF 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sean Young <sean@mess.org>, linux-kernel@vger.kernel.org,
 Igors Makejevs <git_bb@bwzone.com>, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSWdvcnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgoKSVIgcGVyaXBoZXJhbCBp
cyBjb21wbGV0ZWx5IGNvbXBhdGlibGUgd2l0aCBBMzEgb25lLgoKU2lnbmVkLW9mZi1ieTogSWdv
cnMgTWFrZWpldnMgPGdpdF9iYkBid3pvbmUuY29tPgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDD
qXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CkFja2VkLWJ5OiBTZWFuIFlvdW5nIDxzZWFuQG1l
c3Mub3JnPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRz
aSB8IDE4ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKaW5k
ZXggOGM1YjUyMWU2Mzg5Li5iMjJiMGFhODk1MTUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L2FsbHdpbm5lci9zdW41MGktYTY0LmR0c2kKQEAgLTEwNzIsNiArMTA3MiwxOSBAQAogCQkJI3Np
emUtY2VsbHMgPSA8MD47CiAJCX07CiAKKwkJcl9pcjogaXJAMWYwMjAwMCB7CisJCQljb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0LWlyIiwKKwkJCQkgICAgICJhbGx3aW5uZXIsc3Vu
NmktYTMxLWlyIjsKKwkJCXJlZyA9IDwweDAxZjAyMDAwIDB4NDAwPjsKKwkJCWNsb2NrcyA9IDwm
cl9jY3UgQ0xLX0FQQjBfSVI+LCA8JnJfY2N1IENMS19JUj47CisJCQljbG9jay1uYW1lcyA9ICJh
cGIiLCAiaXIiOworCQkJcmVzZXRzID0gPCZyX2NjdSBSU1RfQVBCMF9JUj47CisJCQlpbnRlcnJ1
cHRzID0gPEdJQ19TUEkgMzcgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOworCQkJcGluY3RybC0wID0gPCZyX2lyX3J4X3Bpbj47CisJCQlzdGF0dXMg
PSAiZGlzYWJsZWQiOworCQl9OworCiAJCXJfcHdtOiBwd21AMWYwMzgwMCB7CiAJCQljb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW41MGktYTY0LXB3bSIsCiAJCQkJICAgICAiYWxsd2lubmVyLHN1
bjVpLWExMy1wd20iOwpAQCAtMTA5OSw2ICsxMTEyLDExIEBACiAJCQkJZnVuY3Rpb24gPSAic19p
MmMiOwogCQkJfTsKIAorCQkJcl9pcl9yeF9waW46IHItaXItcngtcGluIHsKKwkJCQlwaW5zID0g
IlBMMTEiOworCQkJCWZ1bmN0aW9uID0gInNfY2lyX3J4IjsKKwkJCX07CisKIAkJCXJfcHdtX3Bp
bjogci1wd20tcGluIHsKIAkJCQlwaW5zID0gIlBMMTAiOwogCQkJCWZ1bmN0aW9uID0gInNfcHdt
IjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
