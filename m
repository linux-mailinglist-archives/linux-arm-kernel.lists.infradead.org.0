Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51331AFAFE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXhP4Jn6k6EydzxP4q3dRGJ/jHrad9khODBzZVDy+O4=; b=cQJD5F4FiGMbzf
	1+cOdFIyHOoa4SjNWqr00gZ4/cooHBhBCD34jX5YO00R28R5ZAYeB894U3m24u6oGgicxSddAdc6a
	ZskgVZ1QCSo5bZN0PESg/iwTgdkgsntTSyzWLeGGs51NK5h2nIcNzu8ChTEN+c0FaUF2G6Rsla3L2
	ehzsZU+SNT59cBEANwXShC7JK8/J5R0mqlcbjvUSTVlAiM3GrOYXWT19Wokbu9xe3/dHR/A03/q7n
	EgVYl37YZ2/eAt0BiIqEwWa/BZjSLImiamZMpK0RNMrHFIGYggt8ofQJy/xInrb312GNj0dxyksdS
	7eXm47JQTyyxhSuWPivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAMo-0001mj-42; Sun, 19 Apr 2020 13:52:14 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAL0-0000MO-5Y
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id k13so7494954wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TvYBwY55hequdKKDkallbXJKwj0FSX4Wpx+56e8/UBw=;
 b=Y+I7XIdJyCO7AikaNxp7CzikO0z7qJMeXabc77Mlpc2MXuiraKAO9dOwGKvKqkdvE7
 n9Bs6dXr35KzRkf4upwGp07k3nT3/2uYPnTKXyE7OWKCxvT2Hrx2+ISLXYZ0rHoXgued
 iBk3QBwEDDe5i3PG6Zyk5stbHl4qthyctLTUNkjw1cnsuqDF+euYm9cfkp/Q7Mbh2CDs
 4Vd/4thZYWx/XBegRkOyBSsvptaJIcHOkiejFMoN7tej1tlaGFa5Uj0fMHytZ8oXfkva
 WL5F5XVaX9QDhcJWecqe4RfoVJAQ8kI94YEAzcNsPwAgvMM9zsop49HHS0G5RXNcgU1F
 2FWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TvYBwY55hequdKKDkallbXJKwj0FSX4Wpx+56e8/UBw=;
 b=FKS7OpDNb70kxR1XlbBNrVv4LBbY5TfpudNpuerRbwslDk6HyhIlShmS6I94cJiJkB
 MgFyugwtN97dtVvK0ZFGIZTR1lW9sKlAOWirdD6ex2hyt7l2nNSulIeqMog1gE/QGVIM
 bPRtgia0xY8SKQfzAaF6/veU39yoiegkpfxfucBCdSAQ3/Cv0Retb3F62YBeN2jp/Gw7
 MuL9vdJNnGa2SfNzbaOXeH7r/JEInssCqjt8uiO0fe9lHCWP/uDjHTLyfP0O2YxBDAaf
 QIqBOAc0+romKDi406pUjdVxZSC43vFEDVkD4lQPrIEzerJ+2Z8jYufzw/YSwsa8jq+t
 nzxw==
X-Gm-Message-State: AGi0PubmYniY2hfqgXMsM5qaRFfJEJ5Ja1rLqb5SteQ59eCRPV0PjOvY
 Zi1s3YwR6QNBu+OczgYl/bc=
X-Google-Smtp-Source: APiQypLn4bqtnUB1e79+Q6pe+4ghMVVA9Jb3/VN4U1zkQZ+3oHqQjqX4Lgt7x7IVN0Ja002iok/QaA==
X-Received: by 2002:adf:d0ca:: with SMTP id z10mr14909892wrh.172.1587304220548; 
 Sun, 19 Apr 2020 06:50:20 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 6/7] arm64: dts: allwinner: Sort Pine H64 device-tree nodes
Date: Sun, 19 Apr 2020 15:50:10 +0200
Message-Id: <20200419135011.18010-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065022_228943_E99579CD 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGluZSBINjQgZGV2aWNlLXRyZWUgaGF2ZSBzb21lIG5vZGVzIG5vdCBwcm9wZXJseSBzb3J0ZWQu
CgpGaXggdGhpcy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBn
bWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQu
ZHRzIHwgMzQgKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCmluZGV4IGIwNjQyZDg0MTkzMy4uNjNhNzg1
YjUzNGUxIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtcGluZS1oNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1waW5lLWg2NC5kdHMKQEAgLTgwLDYgKzgwLDE4IEBACiAJfTsKIH07CiAKKyZkZSB7CisJ
c3RhdHVzID0gIm9rYXkiOworfTsKKworJmVoY2kwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CismZWhjaTMgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZlbWFjIHsKIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmZXh0X3JnbWlpX3BpbnM+OwpAQCAtOTEs
MTcgKzEwMyw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAotJm1kaW8gewotCWV4dF9yZ21p
aV9waHk6IGV0aGVybmV0LXBoeUAxIHsKLQkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVl
ZTgwMi4zLWMyMiI7Ci0JCXJlZyA9IDwxPjsKLQl9OwotfTsKLQotJmRlIHsKLQlzdGF0dXMgPSAi
b2theSI7Ci19OwotCiAmZ3B1IHsKIAltYWxpLXN1cHBseSA9IDwmcmVnX2RjZGNjPjsKIAlzdGF0
dXMgPSAib2theSI7CkBAIC0xMTcsMTIgKzExOCwxMSBAQAogCX07CiB9OwogCi0mZWhjaTAgewot
CXN0YXR1cyA9ICJva2F5IjsKLX07Ci0KLSZlaGNpMyB7Ci0Jc3RhdHVzID0gIm9rYXkiOworJm1k
aW8geworCWV4dF9yZ21paV9waHk6IGV0aGVybmV0LXBoeUAxIHsKKwkJY29tcGF0aWJsZSA9ICJl
dGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CisJCXJlZyA9IDwxPjsKKwl9OwogfTsKIAogJm1t
YzAgewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
