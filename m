Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C21AFAFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 15:51:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEiHumQ1Oz8e2FWHybmiCxCCcgMIUmy1Hm/tdRsbZJs=; b=QdnS1fh6i8y61D
	arlOMxAxy2Mv3egftou1Pozf1b05Y8ApygpCCWbElpd+cgz1vTpbvtKsk5XZXKOLZ6/81I3uBfdhs
	DRwQYndzN7e2i9fLYpqK+/2kx71w2I7M+dffTu5GwdFrt88iPtj1AuFc92kW3gWg3hVsMZvJzTHHV
	Lg1GFf9NlCqaTjiygPCP+mSgbrvjKWVLUgPvb/p70lszoI5484mil6dVKpwIa6frcqMx6PyID0aqp
	wlN+KtY2mEO4C/d97OI26CmCqwW1GmONyQvumOEC4HcbSuwze7JF951SlfNczur7sWPywY/rp49U1
	z9Sqt7SgwsLKMOJ5mF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAMM-0001L3-7g; Sun, 19 Apr 2020 13:51:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAKy-0000Jo-3b
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 13:50:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id j1so3279531wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 06:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=06l4F0Fbj1OIjrhQursMZ1QtwSUf8beeJ0SuDwg+II8=;
 b=iRS9/7JEnM5hRomC4mx0t/PamdUyzezofG9+VdLTduhoHbrl1wyBV5VN8557KN8vgh
 e1aSmMFjE7tgQinyBWIl/9WlDoB+m8KMo25R1GvfRPe9wjJYftHaKnAg8ViMhMnX4K4y
 up1pFNsK07VZ3j5p2+zGUybwA2MFzFEmr0zyrZskY/vhZlysQ34itjSuUwC7qkjX6NBL
 A6M3gxhBlgBGsdamSVqTTkeMkhuPjrEJVnpMH4nFPHyDoGpDa31FzPcgAmaMtt+WEyYK
 TcqncTwRFzQUyWb3D8c0hHiowKz7UCLAR3Jd1txwxxdeobQsm3y0oin4iPsdMavxD3Kg
 n7Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=06l4F0Fbj1OIjrhQursMZ1QtwSUf8beeJ0SuDwg+II8=;
 b=mHORml2BnA/Z0TZYUC3CDp/s+wfsAGdcsg+oPmz121q8oGoVliFpBMXWOnJWoy5EHk
 Q3pzCjMNVbykAHhOAAVyyHfgEAOr+3rusJISbh68jnEEc0mUqH2qLM8VZHYI6tomXhZ+
 YX9fNGHepgPRlD7BhMr5vmAgYxhzKBUSfBXDaBCzH0hFdpRP0jYcZF9WuhuB2XqXdepg
 mXhm5ph8AdSojuN67IzknjwuD0dqJvpc7E4VINg1tu8ocNydG0ifR6N6UUlsM6kRqQ7S
 CnL/oi01ikmJax7crjyZnFHldkfvxf5F2A5fq94JrT04OrHkdRwfhbJTOy4QChjnn6TE
 D0fQ==
X-Gm-Message-State: AGi0Puae+NFXSS7Sir1S7ofQmQtLN649lGuQsRT3ZfNWeE7crV0hTttE
 MlIWYfC+deWhov9tJygIjaY=
X-Google-Smtp-Source: APiQypJn3umlBT9pfxyglivyKGZyVpsYTbHNDV2DNYZllpm6NNO+sP5DyyxYCuauwplZltkyTp9Zsg==
X-Received: by 2002:adf:f091:: with SMTP id n17mr13642050wro.200.1587304218271; 
 Sun, 19 Apr 2020 06:50:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 z8sm20183940wrr.40.2020.04.19.06.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 06:50:17 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 4/7] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Orange Pi 3
Date: Sun, 19 Apr 2020 15:50:08 +0200
Message-Id: <20200419135011.18010-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419135011.18010-1-peron.clem@gmail.com>
References: <20200419135011.18010-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_065020_179371_FD3DA231 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBPcmFuZ2UgUGkgMy4KClRoaXMgbmVlZHMgdG8gY2hh
bmdlIHRoZSBDUFUgcmVndWxhdG9yIG1heCB2b2x0YWdlIHRvIGZpdAp0aGUgT1BQIHRhYmxlLgoK
QWxzbyBhZGQgdGhlIHJhbXAtZGVsYXkgaW5mb3JtYXRpb24gdG8gYXZvaWQgYW55IG91dCBvZiBz
cGVjCnJ1bm5pbmcgYXMgdGhlIHJlZ3VsYXRvciBpcyBzbG93ZXIgYXQgcmVhY2hpbmcgdGhlIHZv
bHRhZ2UKcmVxdWVzdGVkIGNvbXBhcmUgdG8gdGhlIFBMTCByZWFjaGluZyB0aGUgZnJlcXVlbmN5
LgoKVGhlcmUgaXMgbm8gc3VjaCBpbmZvcm1hdGlvbiBmb3IgQVhQODA1IGJ1dCBzaW1pbGFyIFBN
SUMgKEFYUDgxMykKaGFzIGEgRFZNIChEeW5hbWljIFZvbHRhZ2Ugc2NhbGluZyBNYW5hZ2VtZW50
KSByYW1wIHJhdGUgZXF1YWwKdG8gMjUwMHVWL3VzLgoKU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQg
UMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lu
bmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cwppbmRleCA0N2Y1Nzk2MTBkY2MuLjE1YzlkZDhj
NDQ3OSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLTMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1vcmFuZ2VwaS0zLmR0cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVk
ZSAic3VuNTBpLWg2LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAog
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC0yNTcsNiArMjU4LDcgQEAK
IAkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDgwMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTE2MDAwMD47CisJCQkJ
cmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRk
LWNwdSI7CiAJCQl9OwogCkBAIC0yNjQsNiArMjY2LDcgQEAKIAkJCQlyZWd1bGF0b3ItZW5hYmxl
LXJhbXAtZGVsYXkgPSA8MzIwMDA+OwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDgx
MDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTA4MDAwMD47CisJCQkJcmVn
dWxhdG9yLXJhbXAtZGVsYXkgPSA8MjUwMD47CiAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkLWdw
dSI7CiAJCQl9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
