Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54B23997A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mowwNvSqR4DIDekoiTzrtvZRWyKuOBcWCri7F+QkrXQ=; b=Aq4xlnIp42mbZC
	lwu0tOiZ61kF2nDGzcwpxqejIExFxiONjMqcUDzlZT1xi9QaQXrINVZ7i7Zf4nXB5Kz8B8zwkLwkE
	GyVpMFTn1fEvqJUp+W29kj5yMqT/IpZnpbCMsjvwt7UxnG7TS3dbhNcIp0zLGqg8LIb3/nY9jhrwO
	H+L1iI0clpNi+5dnkeUFo5JrX285AZ5k/V1m5ZNqWgMkR8Lli0wXtYKp13qYG5dMdUpayNiMkRta+
	6mHEvjq5thL0vFcttRayyZTazvcHEY0EupbnUSymDqNkisKSA2CFZic5GCtvE2rKvYRXbme32q1Ez
	hYaD8dH4UJUdQkZHlPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO26-0001pm-M7; Fri, 07 Jun 2019 23:12:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0v-0000vX-SE
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id f10so3503350wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lol1q6oip3iAiLWaqttTm7yI5iUN53ws0ToXRxpRMt8=;
 b=oXRJCsXeB+er7f3oAowCoBA9MPGtd+CYB5T7BUiotF8B1kGDp8+d9K1KqzKfdShrhO
 EzsDwPmv15ztStk620DR0HwNFQEcBix+D8fW3lgCK/kjelJcdZ/eyufnEQ9SFEp7CQqF
 QuE6sW786uKiJbieQQjXWNzalxrGmb9Sa9/EKROMwFL5KJ7KRaYKt98DNX0BBiCKclf6
 dQQcURi/LwIl9gKW+MYByw1F1CKHTOwEH07eQSwhwRa9olW4UVH7aONLVNvsuaeIDtyf
 Z/Ejf4KPicB5vziOFFhqeruDnkIrNbB9sd66bqwTYwzRvOXLPpzQfirCvfY+m1slayQf
 aaDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lol1q6oip3iAiLWaqttTm7yI5iUN53ws0ToXRxpRMt8=;
 b=YWXP0n7MQ2poZORK18D5BhAgXCWl0GbHOXpzrh1RJ2xHtwPRkVovOJrcGhWfZ5Pshj
 MlPD3S1ZHqNIcHJ3vaKN7lXpaqs9rT8wW25hxUUdJerbD17y04pXDt7IWpMzo2JBMhTh
 +EjGOrSSQtW1B1AiEZ/8hYRPrJ+Q66Rb1qeUXi6fTI3JOVlVm0GSpUqetjO6cFrYud15
 xF1HMBDPjhquDcb1joJNZHFZ4D9QJZmq670JlomNGXm6A7zEs4pDbicZqkXx/ERRWL2p
 4PF/rxF/RAQ+XMhoPlASKva+rgZQ8evzPhGMt1LLTh5HaKOOoa4xjhDNs/711Z2BF0vI
 0uYA==
X-Gm-Message-State: APjAAAXv3etqVgz5S3SVKJql/r7++ImtmKhGZJGJ+B2wu/KB11FmPZiN
 fN2BV53w7sP027IpvasSLsE=
X-Google-Smtp-Source: APXvYqztHS7XCrwAZuxX3MKe/AIl2WKNXYx30cRsf1SdkQ5dTVEjbyQ1ZNptaV+f9m3ZRJVuntO8Aw==
X-Received: by 2002:a1c:c282:: with SMTP id s124mr5382313wmf.141.1559949072272; 
 Fri, 07 Jun 2019 16:11:12 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:11 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 03/13] media: rc: sunxi: Add A31 compatible
Date: Sat,  8 Jun 2019 01:10:50 +0200
Message-Id: <20190607231100.5894-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161113_933859_1D05D97C 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2luZXIgQTMxIGhhcyBhIGRpZmZlcmVudCBtZW1vcnkgbWFwcGluZyBzbyBhZGQgdGhlIGNv
bXBhdGlibGUKd2Ugd2lsbCBuZWVkIGl0IGxhdGVyLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNlYW4gWW91bmcgPHNlYW5A
bWVzcy5vcmc+CkFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4u
Y29tPgotLS0KIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgfCA5ICsrKysrKysrKwogMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cmMvc3VueGktY2lyLmMgYi9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCmluZGV4IGQwMmRj
YjZmZDBhNS4uMDUwNGViZmM4MzFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3JjL3N1bnhp
LWNpci5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKQEAgLTM0Myw2ICszNDMs
MTEgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW54aV9pcl9xdWlya3Mgc3VuNWlfYTEzX2lyX3F1
aXJrcyA9IHsKIAkuZmlmb19zaXplID0gNjQsCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IHN1
bnhpX2lyX3F1aXJrcyBzdW42aV9hMzFfaXJfcXVpcmtzID0geworCS5oYXNfcmVzZXQgPSB0cnVl
LAorCS5maWZvX3NpemUgPSA2NCwKK307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNl
X2lkIHN1bnhpX2lyX21hdGNoW10gPSB7CiAJewogCQkuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIs
c3VuNGktYTEwLWlyIiwKQEAgLTM1Miw2ICszNTcsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBv
Zl9kZXZpY2VfaWQgc3VueGlfaXJfbWF0Y2hbXSA9IHsKIAkJLmNvbXBhdGlibGUgPSAiYWxsd2lu
bmVyLHN1bjVpLWExMy1pciIsCiAJCS5kYXRhID0gJnN1bjVpX2ExM19pcl9xdWlya3MsCiAJfSwK
Kwl7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW42aS1hMzEtaXIiLAorCQkuZGF0YSA9
ICZzdW42aV9hMzFfaXJfcXVpcmtzLAorCX0sCiAJe30KIH07CiBNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBzdW54aV9pcl9tYXRjaCk7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
