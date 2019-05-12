Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CF11ADA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQ1eIqgDCHyfNullvJ5nUuLY/cYQMmWF70WZBbh/l3Q=; b=XdwzD9xI0kUtF6
	jLQsMbR5FQxEbPebD44EGOG0VUsMHcKTMYs0vAZ+94YJJTNk55UuBMeKA729SPDUJNMVjKPa7eT0Y
	XsMIyI2WL8dNcSvSzHXH8XyVr0O5sW8Y50zpMPbGcmQVwOa8xl+WKxqM+nK2TZSLuKzml5r8e0l7v
	s+oqIvoX/ScJ+C+FXNnC3tuSVaMnPpVZUvS8CXzTFEaQSEpFkt1QdzFfBMtrd3Hxbxjf3pHmtj+kn
	+fIcoxOWR6jNoMUoYnY84xeeoYVueWFom8VTv2s8aBYwHIB5DixWgUnRqs6uKg2l/2ZusNHpAchAP
	QRhR9Ploeht0IomTEs/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsZ6-0006w7-8G; Sun, 12 May 2019 17:47:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYH-00062A-Ot
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id c5so12680358wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2FMzWU4kL/7cfSe9GLA2ni0LaXmAg+HUWUsDdn5ujQI=;
 b=dW7J2KNsq7L/8WnVMBpe0g5cOhxv/1O8zR/XignGtRI7/ohYqcUttaEzisem5rIzVq
 TDoYnZw1GK9I+fKuAgxihTbtmYLjQlh11kODNTfU4pACXLZub9JT0mdYTt4JTpTb9RVX
 UH2AyJNYmIU8DDsimdjmhtMhg3vixBvicryCW3Jp3t5o3bBkZ2X/2wEV4H2aQpuktaPu
 m5pnevbt48p9xjeXHyNzvmPCX8l523SUMjctrrbfCaMqkHV0MLMVghyBzCbk/c73W+e+
 csj1gcE+j7demTu+OwiEDASk6bQSZfun22Q/xh1xP3/5uAUzMeOP0U31jw6ypwlaHW9G
 aOjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2FMzWU4kL/7cfSe9GLA2ni0LaXmAg+HUWUsDdn5ujQI=;
 b=nZxYi8zep2V2+2XznUgCygfNKd3lw+Ds0IjhaygDAkEcawn4G8G8VIpd7JBlaPFgt3
 R4T0SdEAgXcXG4GI3OTyt/8g1mwv893JWlRbZmDoU+qVVEz/jKNZPNPeGS7/mhOOI/4q
 TVoFdcsrdqc+wiqKu0q+p7O1rSolMGFX9NIy68z0TdasJteKWSVf/2nxcpEJ05hFoz7w
 KTChUUPLyLRsJFzLr5fuqk4D8B5gFFl9hubDw/0BqIzruo4jRuT9YY8pdCgJcxbgvq3p
 qmxWchbVSVDbCe36TJfls6wQIFvlaePdDGtgaY2YXLeadhUw7UPjTSYZnIx9/MlF7Frc
 /3fQ==
X-Gm-Message-State: APjAAAXCTMIE1lgf72fPqHfeM8NMYjzUOH8Z2ZYeu3utC+cIOzIlj51h
 nK+QbG/JWpsa+7nS3nNSs8Y=
X-Google-Smtp-Source: APXvYqxLR33kLqVeufhwDeW/jJLuiemVx7ENonuL8c+dIbenss+tXjrpQm8GTkH1++RQ9p3NpS/vuA==
X-Received: by 2002:a5d:54d2:: with SMTP id x18mr15171610wrv.186.1557683180041; 
 Sun, 12 May 2019 10:46:20 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:19 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 4/8] arm64: dts: allwinner: Add ARM Mali GPU node for H6
Date: Sun, 12 May 2019 19:46:04 +0200
Message-Id: <20190512174608.10083-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104622_030488_5EDA02AE 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KCkFkZCB0aGUgbWFs
aSBncHUgbm9kZSB0byB0aGUgSDYgZGV2aWNlLXRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVu
dCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgMTQgKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaQppbmRleCBlMGRjNGEwNWMxYmEuLjE5Njc1MzExMDQzNCAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKQEAgLTE1Nyw2ICsxNTcs
MjAgQEAKIAkJCWFsbHdpbm5lcixzcmFtID0gPCZ2ZV9zcmFtIDE+OwogCQl9OwogCisJCWdwdTog
Z3B1QDE4MDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LW1hbGki
LAorCQkJCSAgICAgImFybSxtYWxpLXQ3MjAiOworCQkJcmVnID0gPDB4MDE4MDAwMDAgMHg0MDAw
PjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSA4NCBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKKwkJ
CQkgICAgIDxHSUNfU1BJIDg1IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCSAgICAgPEdJQ19T
UEkgODMgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQlpbnRlcnJ1cHQtbmFtZXMgPSAiam9iIiwg
Im1tdSIsICJncHUiOworCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0dQVT4sIDwmY2N1IENMS19CVVNf
R1BVPjsKKwkJCWNsb2NrLW5hbWVzID0gImNvcmUiLCAiYnVzIjsKKwkJCXJlc2V0cyA9IDwmY2N1
IFJTVF9CVVNfR1BVPjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJCX07CisKIAkJc3lzY29u
OiBzeXNjb25AMzAwMDAwMCB7CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41MGktaDYt
c3lzdGVtLWNvbnRyb2wiLAogCQkJCSAgICAgImFsbHdpbm5lcixzdW41MGktYTY0LXN5c3RlbS1j
b250cm9sIjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
