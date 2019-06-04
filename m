Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAC034D6D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUrPEYVGNmE1SIoMUBdOM+LitWv5q3r1yF+Y3E3o+xM=; b=R1ZHzDgNR3nP64
	/+N2Fc7QglyAExKl2QWAgcxw6UMWohLTF930rkqXldGBk27SRAD+50nJkDLj+gQpFWEmhZZ5BNepG
	KfDi1yGxPwz7RgwCJu4K+m9Nc5QIqd3Bvc6651//H2Y/Q+Gzs5pOq6r2cov0vJ1nw6/a3S1o/HU8C
	mSMsLGUldohT2e8ACyVxeheHoC7IKDqQII8c4QBxYktv8O0sAuO9I4qFtEQJv4qHaJ+Mq17KLWtyk
	zOcUl6dZ8H5Y43PpchyMYGAmYC1sotEbtocLVvbCwEHuXfh1SHZ3ym9RqoHGRTUvQmnVw1aHEu1uI
	JqRoX5f0r/JSQdhnxpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCLB-0007SL-4o; Tue, 04 Jun 2019 16:31:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKC-0006Jt-9n
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id c2so16526527wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WVt9PLRHxA5shLBGM+rat6DzEBJdBuHXCCimY/wvQxI=;
 b=Xru/SMuMwtGeeWJ3+w4TxGGjpjQHqX4X8g8eFmhGVvijmB4VGTqI0vGJzZqmhinYf9
 yQbPAkvZt8d8Ss/f2AMKMQZ0gwETtA4010GDyUvDLdgPGzRyVFbXUuw3yV77NdxCu2XF
 1fhbB9o7LmJmFGQ+xYBmghjdwPKM3hZdFWnIVARImSuSyHKqOvi7Pupr60JfEnj5S7bi
 Y0KhiYJKB5XU0ZYNZJYds7HxI87XBs0sWcT+YNXQIlMRv5EMNtVBx6Kvt7YYHYSkkMo7
 G/PWLBmvTup5CJyxk1brnACswG12Zc48cMPobx1vAbLI4vyX88F9Ht3xWc53dJuPQ+td
 aoKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVt9PLRHxA5shLBGM+rat6DzEBJdBuHXCCimY/wvQxI=;
 b=p0/m1WFWq1cl5rm6XH1l11X4zaieOztbL/RsgybMRc62ZFIJNbFPtdVGm+IuPXDFDZ
 qDYiWh9yEASfSfgSnHv25f8ndsuuQKs9ESbnEhGZwrO+pgtqmibGE7qRrGvMZ6Fz6lt0
 upsnjNLsa91gVrrJo4cIntmOmMAs1tVpwLhw2mzcmXAWMGo0DdPPxz4dof+zG5RlXB6+
 8lkzukyBLNhjldodZe0e+HM/Oni/TbafWATCwREgHmQmSiO55g6eLnr5wP03R1OleivL
 GzBy/NcRWKKTE7H0lXXlGcvv5J7+1Uvd8pn/DQmXhd/h/CbOKom5RBs/TgihnfprLdnR
 5V8A==
X-Gm-Message-State: APjAAAX6D/L+9jQHDVDynq6coHIDa8tGUj6HtcgkhJOQWQYQqf9JOIjf
 seTnqXVSCCV2cJHJ0NjCqPw=
X-Google-Smtp-Source: APXvYqzBl9dj83P9V27+Fdl0MwabMhnwcsDkxoHC8nOmjtY9SHfRpfzvhefntyBnBp30NrlHWphusA==
X-Received: by 2002:a5d:4004:: with SMTP id n4mr21919479wrp.240.1559665808671; 
 Tue, 04 Jun 2019 09:30:08 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:07 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 03/13] media: rc: sunxi: Add A31 compatible
Date: Tue,  4 Jun 2019 18:29:49 +0200
Message-Id: <20190604162959.29199-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093012_536968_9403E8AD 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
bWVzcy5vcmc+Ci0tLQogZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYyB8IDkgKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9yYy9zdW54aS1jaXIuYyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKaW5kZXgg
ZDAyZGNiNmZkMGE1Li4wNTA0ZWJmYzgzMWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcmMv
c3VueGktY2lyLmMKKysrIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYwpAQCAtMzQzLDYg
KzM0MywxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHN1bnhpX2lyX3F1aXJrcyBzdW41aV9hMTNf
aXJfcXVpcmtzID0gewogCS5maWZvX3NpemUgPSA2NCwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1
Y3Qgc3VueGlfaXJfcXVpcmtzIHN1bjZpX2EzMV9pcl9xdWlya3MgPSB7CisJLmhhc19yZXNldCA9
IHRydWUsCisJLmZpZm9fc2l6ZSA9IDY0LAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgc3VueGlfaXJfbWF0Y2hbXSA9IHsKIAl7CiAJCS5jb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW40aS1hMTAtaXIiLApAQCAtMzUyLDYgKzM1NywxMCBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IG9mX2RldmljZV9pZCBzdW54aV9pcl9tYXRjaFtdID0gewogCQkuY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNWktYTEzLWlyIiwKIAkJLmRhdGEgPSAmc3VuNWlfYTEzX2lyX3F1aXJrcywK
IAl9LAorCXsKKwkJLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIsCisJCS5k
YXRhID0gJnN1bjZpX2EzMV9pcl9xdWlya3MsCisJfSwKIAl7fQogfTsKIE1PRFVMRV9ERVZJQ0Vf
VEFCTEUob2YsIHN1bnhpX2lyX21hdGNoKTsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
