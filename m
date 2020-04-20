Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2F31B0C31
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7Mhdrgzk9QlQxdGwwOOV+f54xsKKJaPo5xR8khRmC4=; b=sEovJbmfVHE9Dj
	lwJm9f5Lwed6W6o/B9+tMQ66R8EsVqKU3N3yjB2td4v+titBz/0pkkqcOOHVMoGddsJM8Zip/qV/A
	EMqBoO2o5brCi2oD5RQvueQ/fINwT7nDImA7PjfhqhF9BOIxEfGo6p6ZfkEjlgfqKXi9ViwW1IArZ
	q0qET6ofk1S3LjPwSqr4QSvAx1JC8Qy//krgat5I2mY5E/wDySQryHeKPIzh+6JPimVOO2RQgd9qj
	BkatoH4zEB8Tsfpl4fwfpUXUvhHvgXiuRHwqnd9rVN8TquzOcuZxWuNqFkwZs/pgBb4hdVkB/0Tmc
	Raj3dbm65Qx9Zp8Lcl0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW4B-0004vv-Ea; Mon, 20 Apr 2020 13:02:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2L-0003Jj-UL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id u13so12048838wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gUA++TEaLcF7xVYj2JPvsFYTdSQV3W9a05Rr324UlUQ=;
 b=KY1IDGUIGtH6/X+S1RScsP53Z7/f03p0pdcXzOXaymcjmhHtHl0DTes5XhUCrLjiCY
 odHgGtVg4tqHRqFkIsVwgHZZ10NuPsTy4DA3FOixDJgPQChCcPcWCrIgJR3CoDuMq7m+
 hFqLYlVYzSaNne7NrOoSPUINJMcU2n2xVyFfVej9CqWbBOsn4+kLf9cX1Gp3fIR7uerx
 C5twxjfUcyt3bkaz1TaSiKjv7xrQFMfDJBK9Hby89viiULpMsfZn0Jz4ryFeTW3zhqM4
 VcZ1kyJn8JnEHbc+NthgUHxPa3gkjw5Hn2PoWSbl5ZM7fd+rl2lgVOubDWLp0XAExLFb
 eejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gUA++TEaLcF7xVYj2JPvsFYTdSQV3W9a05Rr324UlUQ=;
 b=hYZV6LYGbdqXLxKjqdXIgVfdSThL1coakNIs037pM80qm2UYIWw+Ujz3PcDYyOKrHQ
 rCqO9yRILnQcMpmh9U7mPpeYxkPqgX/uZzpIEU1+bBf/szGmeaPAuIBgAnAPuXmecTrC
 FBWF1Ug9yAHTU77hAP53RyWvjcdcP8O81NrbURkZTVSJMQNW4Zlo+4bR0HuoSCzv+Bmb
 MdrQau3dk0eGeejQafxKtBuGMnaT8W0Wp7KyQQqzeEJpG/XU3eRDWYLjquhTFXxd6J18
 wWbX/D0MdYhlQcQh7hp0xC8ap9MKgkV1XRGKPeyT7hWFraGKjgyOoTmel4yAVF2PX+2M
 w8pA==
X-Gm-Message-State: AGi0Pub5CNGgz+TnzbQmFx/TSbcu/2rP9ckNsaGDZHu0knrPakuWUM29
 TwJW4XD/8FeMjPDATDJ8uc4=
X-Google-Smtp-Source: APiQypIW3pkrHtqWX1Kq1F92o5ySwgRqIUUcD5PL5hrmLpCtgVGKllTp41jF8KU0Fk5d8jdDllv15g==
X-Received: by 2002:adf:dd0c:: with SMTP id a12mr19375810wrm.144.1587387632534; 
 Mon, 20 Apr 2020 06:00:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:31 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 7/9] arm64: dts: allwinner: h6: Enable CPU opp tables for
 Tanix TX6
Date: Mon, 20 Apr 2020 15:00:19 +0200
Message-Id: <20200420130021.3841-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060033_997017_7017BC38 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

RW5hYmxlIENQVSBvcHAgdGFibGVzIGZvciBUYW5peCBUWDYuCgpBbHNvIGFkZCB0aGUgZml4ZWQg
cmVndWxhdG9yIHRoYXQgcHJvdmlkZWQgdmRkLWNwdS1ncHUgcmVxdWlyZWQgZm9yCkNQVSBvcHAg
dGFibGVzLgoKVGhpcyB2b2x0YWdlIGhhcyBiZWVuIGZvdW5kIHVzaW5nIGEgdm9sdG1ldGVyIGFu
ZCBjb3VsZCBiZSB3cm9uZy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFu
aXgtdHg2LmR0cyAgICAgIHwgMTMgKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1
bjUwaS1oNi10YW5peC10eDYuZHRzCmluZGV4IDgzZTZjYjBlNTljZS4uYmU4MTMzMGRiMTRmIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgt
dHg2LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFu
aXgtdHg2LmR0cwpAQCAtNCw2ICs0LDcgQEAKIC9kdHMtdjEvOwogCiAjaW5jbHVkZSAic3VuNTBp
LWg2LmR0c2kiCisjaW5jbHVkZSAic3VuNTBpLWg2LWNwdS1vcHAuZHRzaSIKIAogI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgogCkBAIC0zNyw2ICszOCwxNyBAQAogCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzMwMDAwMD47CiAJfTsKKworCXJlZ192ZGRfY3B1X2dwdTogdmRkLWNwdS1ncHUgeworCQlj
b21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7CisJCXJlZ3VsYXRvci1uYW1lID0gInZkZC1j
cHUtZ3B1IjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTEzNTAwMD47CisJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDExMzUwMDA+OworCX07Cit9OworCismY3B1MCB7CisJY3B1
LXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIH07CiAKICZkZSB7CkBAIC01Niw2ICs2OCw3
IEBACiB9OwogCiAmZ3B1IHsKKwltYWxpLXN1cHBseSA9IDwmcmVnX3ZkZF9jcHVfZ3B1PjsKIAlz
dGF0dXMgPSAib2theSI7CiB9OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
