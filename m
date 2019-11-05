Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC36EFE15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:15:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGtWoLyTGF49vd768Ckea9sjwCsyKurB+ahBTQkurcI=; b=goKZksaKMBUc9P
	6sqGn0rddnj5pnm6HV6eOmIrs9IehszRdY88UaVLNbK2raDoXkpn6vdiNdclR7p+STfVPElAXBvfq
	rBJov235GxjNu76MP0O0NKbiPM8l/m08elImzP4bD+ky4p6KJ93snJl5I9LMo0BmJvErY/eyuKFOt
	2Pc7H3ephhW8RfJ+s/jcImXlrKJEOjxjVrWQoHuRyxFe9cYHXdCXJhiyiszAbFNI1LuG8ZD5PcXwE
	8uYhcj0jVOOETlnw+jJXYlrte7O9ts192JdqRex8ThUwKqTMhnfLq40ct22Mz9ORjrhP/mHcfwIL0
	l31IMZFpWqSuYsXuPiiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRygI-0002cj-Nc; Tue, 05 Nov 2019 13:15:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfn-0001Er-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id c17so13507685wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GcH9L4v6hLjTb03WVEbtc4W0wjAfbHPhhP9UPT/iBJg=;
 b=mkazB2Pdvg74n1/2dtJ33b6WxUCwe3pb6cl8egWK2Fb8IbtMhU1cuF8jUjvQP8lZu3
 yY7SPxRbayA9XWOkRweEjKT9BO2dyBqR+cZNDafVBQFcoHH9MLpS1XeiN6xFbJ4PGtM3
 cr2gI7khpQQnPxCeUSA2YgjcW2gIr0h8H4laylTS6z5488b69YQ+eUG9QCvnFQq2hl/N
 k8wJoFpVRdFQu/hoj11/yxhvJCves7Ls71xjQoxN6KKOHWaCDACgiJWUtMnuCyiP4zPT
 zqWIo+EDoJr3t7pW8fkkYhXZbSz54+IPmXYM1QT4B5dFumns64p2/R2fGRjF2xdoOtFP
 Hq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GcH9L4v6hLjTb03WVEbtc4W0wjAfbHPhhP9UPT/iBJg=;
 b=s1LwWKADjXkYXBTrQzfQFL5tqTDRfQbj6Bzqrz9v1Ynmm7iCNScCYzwUBB89fIsFAd
 hYAfGXg3oN6fW4t3mLSzl2CLnc2tJp2upa9XR3bg6/KxRj+VOx/brdREQ8kwyKb81y5F
 wTp3uqzEB94D0N64BV/ehuyjDAzVR+cwegtNYzwJQcSyO8jZAWj5qxewGSSKFXIBD9Rs
 IHWbCA9O5K5w4/PK1N0gDV+RzqgLIn/CwjOdn7qvm+Fu6yyY3Cyhehzf3jYdtmX1Da/c
 qqwA5tTSwjJVt9uQc294pnT6ori0dZSZQQkDmpksAMJRjOXT/LWCE9QpFPhbGM5CasHx
 tcWg==
X-Gm-Message-State: APjAAAUEq7pDcjT35abwxG6kpDU35Z7TSQSCeE6ir6tgf+SZTWBHK8m7
 J1a5EM+6D7xumvA8AjPir8Y=
X-Google-Smtp-Source: APXvYqwZaocVvRMmSfJBgecb0AwHpmFVmxqomctE7z4EdhbBlsnv7DVhdCkYdM3JjAQLpKZcglC+Dw==
X-Received: by 2002:a1c:3c42:: with SMTP id j63mr4273646wma.90.1572959701957; 
 Tue, 05 Nov 2019 05:15:01 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:01 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Tue,  5 Nov 2019 14:14:50 +0100
Message-Id: <20191105131456.32400-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051503_810661_AAF3CCFF 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwpidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KCkV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00gc3Bl
Y2lmaWNzLgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwu
Y29tPgotLS0KIC4uLi9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbCB8
IDQ3ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3
aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCmluZGV4IDBhYzUyZjgzYTU4Yy4u
OWZjMzJjMWQ5NGI0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCkBAIC0z
MCwxMyArMzAsNTAgQEAgcHJvcGVydGllczoKICAgICAgIC0gaXRlbXM6CiAgICAgICAgICAgLSBj
b25zdDogYWxsd2lubmVyLHN1bjUwaS1oNS1wd20KICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5u
ZXIsc3VuNWktYTEzLXB3bQorICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20K
IAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEKIAogICBjbG9ja3M6CisgICAgbWluSXRlbXM6IDEK
KyAgICBtYXhJdGVtczogMgorICAgIGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogQnVzIENs
b2NrCisgICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKKworICAjIEV2ZW4gdGhvdWdo
IGl0IG9ubHkgYXBwbGllcyB0byBzdWJzY2hlbWFzIHVuZGVyIHRoZSBjb25kaXRpb25hbHMsCisg
ICMgbm90IGxpc3RpbmcgdGhlbSBoZXJlIHdpbGwgdHJpZ2dlciBhIHdhcm5pbmcgYmVjYXVzZSBv
ZiB0aGUKKyAgIyBhZGRpdGlvbmFsc1Byb3BlcnRpZXMgc2V0IHRvIGZhbHNlLgorICBjbG9jay1u
YW1lczogdHJ1ZQorICByZXNldHM6CiAgICAgbWF4SXRlbXM6IDEKIAorICBpZjoKKyAgICBwcm9w
ZXJ0aWVzOgorICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgY29udGFpbnM6CisgICAgICAgICAg
Y29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCisKKyAgdGhlbjoKKyAgICBwcm9wZXJ0aWVz
OgorICAgICAgY2xvY2tzOgorICAgICAgICBtaW5JdGVtczogMgorCisgICAgICBjbG9jay1uYW1l
czoKKyAgICAgICAgaXRlbXM6CisgICAgICAgICAgLSBjb25zdDogbW9kCisgICAgICAgICAgLSBj
b25zdDogYnVzCisKKyAgICByZXF1aXJlZDoKKyAgICAgIC0gY2xvY2stbmFtZXMKKyAgICAgIC0g
cmVzZXRzCisKKyAgZWxzZToKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xvY2tzOgorICAgICAg
ICBtYXhJdGVtczogMQorCiByZXF1aXJlZDoKICAgLSAiI3B3bS1jZWxscyIKICAgLSBjb21wYXRp
YmxlCkBAIC01NCw0ICs5MSwxNCBAQCBleGFtcGxlczoKICAgICAgICAgI3B3bS1jZWxscyA9IDwz
PjsKICAgICB9OwogCisgIC0gfAorICAgIHB3bUAzMDBhMDAwIHsKKyAgICAgIGNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjUwaS1oNi1wd20iOworICAgICAgcmVnID0gPDB4MDMwMGEwMDAgMHg0
MDA+OworICAgICAgY2xvY2tzID0gPCZvc2MyNE0+LCA8JmNjdSBDTEtfQlVTX1BXTT47CisgICAg
ICBjbG9jay1uYW1lcyA9ICJtb2QiLCAiYnVzIjsKKyAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9C
VVNfUFdNPjsKKyAgICAgICNwd20tY2VsbHMgPSA8Mz47CisgICAgfTsKKwogLi4uCi0tIAoyLjIw
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
