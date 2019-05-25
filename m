Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594682A586
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5l39VB5wA38gVjLO1WUj5JzfbeYgKj8CxZcliMFRXQA=; b=k5GUr5R2ACTjDI
	5UoyluBjYvS+aFqDL7+iqCZirqaSSBiaBnEG/ko0yjTuvVcHD91mHAGCTpcpzKI2dlb/srPhtOem0
	IS+JaUM9bF7G6eoRqMJNQ5u4F2CWeyS5XFyfFtaBftB5ZSEDhnaOFPjUVAf24O7V8uuTxpzvtHM/F
	tu2PqoUqow1YVxYLAEa+7ywPNKTKUQJyWPeskOVOpca9H78XrkVXHO1/ScuSc14OpkjTkTzfAMpkO
	vTHP9yf+Ptyj36ena8WRP2VOb/8xoOKv+H5Jp0EkV/Llr89+U6W+/A5bygO57aE7P7tIB9SVkMI64
	lFUIvbXfCiLZimzO+VWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZi8-0005CD-E0; Sat, 25 May 2019 16:39:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgp-0003ey-69
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id x64so12192896wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kX1q8iX0X4303ErWm6lM+rRst5YhXcgIu4cEhOJHl1c=;
 b=krobs59/49UbKhHuTP/YivClJTfexdgqOLwxGxG7GrdN9zj5Hh1sdevqbbAozFjouY
 O4tDua3cJoczqnfx+35v9XOguSH+4JB3LU21g3tBp+yKNIYc5N8I16BaEhhCF7+UOYEH
 s5HYSKrpiLu1F4z/iG6smjT4555gc0q/CjaFgZTUNtpscNq9F5ukZVO/ItzEegqm32IB
 LnacyjXEnqjnfhSnTHfUUQAJ03tzRslVmMSjIP39LIu3H6An/RqerVO1P2PzqmMqrsc6
 x7SRuIDscb7NVByOKxyYEUtHae6KNIe3w4KAbnRkHHE6A1sOsG6ARUnntOOGqAb6uq17
 zuZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kX1q8iX0X4303ErWm6lM+rRst5YhXcgIu4cEhOJHl1c=;
 b=eZpeYyyQofm5S2hlBrMJuLZinGzagl6WqH+IUbo0IsI9PyICS34YMlqgY/UAFvRvRW
 /rxYDoeUkE54AIpwA9HkjsSKf/uX5vWWDfmFxyLrHv7cD2gyKciG4xwHpcgWOzQtUmJc
 PKVe24icq2VYUM1uTTNd4cb9CEQr+akqE29PqBo2YRz3rMU37sGoUCMT1tNwky3rd0xY
 3ATtFKQ05OM5LDXzTXD5nJoHh6MM62KCMDYj9nOsxofEvLZU/k4621dLU8VezyWKKbIi
 nxpChX7yLcp+ibyc9+lFvEksQljNWksynydBywTrzcxl4mxMVPSgOsKR+9Nbbgu+MApb
 zISA==
X-Gm-Message-State: APjAAAUKBFMoj7gGqlIiCz/K6jjXW7whRa+ps0HT5a9rgFaohZ3Td3NY
 brpirK0JN8VN4fcKXJX8J8Q=
X-Google-Smtp-Source: APXvYqwH0lslbsXMD9wwixNplf75D7OjGQDY/HX6QdZZ6L6hQd2DzjzpVOz6N15Sq3zf0VrRJfVI9g==
X-Received: by 2002:a7b:cb48:: with SMTP id v8mr20897671wmj.108.1558802313160; 
 Sat, 25 May 2019 09:38:33 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:32 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 7/7] arm64: defconfig: enable Allwinner DMA drivers
Date: Sat, 25 May 2019 18:38:19 +0200
Message-Id: <20190525163819.21055-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093835_520350_1AB32550 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIHN1bjZpIERNQSBkcml2ZXJzIGlzIHVzZWQgb24gQTY0IGFuZCBINiBib2FyZHMu
CgpFbmFibGUgaXQgYXMgYSBtb2R1bGUuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcg
fCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvY29uZmlncy9kZWZjb25maWcgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCmlu
ZGV4IDRkNTgzNTE0MjU4Yy4uYjUzNWYwZjQxMmNjIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Nv
bmZpZ3MvZGVmY29uZmlnCisrKyBiL2FyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcKQEAgLTYx
NCw2ICs2MTQsNyBAQCBDT05GSUdfUlRDX0RSVl9JTVhfU0M9bQogQ09ORklHX1JUQ19EUlZfWEdF
TkU9eQogQ09ORklHX0RNQURFVklDRVM9eQogQ09ORklHX0RNQV9CQ00yODM1PW0KK0NPTkZJR19E
TUFfU1VONkk9bQogQ09ORklHX0szX0RNQT15CiBDT05GSUdfTVZfWE9SPXkKIENPTkZJR19NVl9Y
T1JfVjI9eQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
