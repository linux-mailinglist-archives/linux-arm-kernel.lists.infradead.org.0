Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9481363DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 00:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZOBK/RIpLjYx026ePf8yLIqn3NoDc5ozVnryCtgKhL0=; b=n93JsC07oGX3s+
	I8AvaxchpFA3+57Imu1I59sl4gYZM09lTR31WP4C412d9OxlStcH85RIbCIQB8fIZNNIJZPRG+W+e
	C84lvfvTkJtqtNxGXMOXteVQsi0+2NXP1ZstMb8QC1MoHk2ziNY8krTE0aYNxVH0ux8N+89oFW6YE
	vHaVHz+eUN21m8W2nPf1EJPWaMIe4wwOfX9KCs0KXrjInTq6lD53QrHJG/K/Ux/aFyUdcGGBPFMkG
	G6uo+7EPJ/KM6Q3Uz4ufi37i5EZ6XZ3URydtppricMqwbOImOf8w2mjmqH+HK6OdCuA8pdovgnGql
	NFdpm5/Qfu4iw7ySwP3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphGt-0007ym-1O; Thu, 09 Jan 2020 23:31:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphGl-0007xl-NB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 23:31:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so33074wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 15:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6mL2rwAPESuHHV2T0yqwj8NcOs/y+OPpLLCMYhkdgY=;
 b=WHYq1fFh9Cxbs9wNaMgifYWFbckwV0pUXZqMxJQCtBA3YP2j/BbVnFoVGSfN65SwSv
 gUiQ+lh/SQXhNWPPqEF9P+u4NjB54mMMprX9wevto19lDtvn2MmOi1qdH01q7ExdSYZA
 T4oJ9NVOU9Fbq5xWX4cRsKvqOVbyCsSsbrtEasmQROlKfYk86d7ksdG05+V5BfeswNCX
 GmXCGVNZUrHkOkgbiiqHhejqH9HEMkJNsogVlCBOBSzEoUqBNhVXQE2nHGf+7Oblzszo
 oBEqqB7TvA9q0jesZLGTK0YbHXjYJv6sxkbQeF4IAlIXxYRAnA6Vvjc3cKkcvQYqbNl+
 bqRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=L6mL2rwAPESuHHV2T0yqwj8NcOs/y+OPpLLCMYhkdgY=;
 b=nt3SfE2abeJrOK9u6ziD3jZFz6UCdFD7FQpFaDOvqOcsqI+G1rNWshkW2lWmn0M0jt
 NzGjWofYDUrB2/Rzi2uu4c7v24A4y0V1K0VoC347Xi0HkdhtpiUdB2B8IfVJpQ3yG01U
 MQnqHRr5M4GHyZ/dURL/8emnzAFsiJAg0zODNE2Y82M9wCHvwlWJ1qRnJlJdq/oovxp3
 fF3TuZUy3Pvvzjr4jCYK5qNdnooAcdgI19U98HQfzZ65ENtBizfaChxIwkx9pxNCg6bj
 Chiojhw5zT+2xQrJlSFf6LccT/qgfJ85DEtDTo9VS+/+5jhrDzAbwDkjstck2W6vOLM9
 yyoA==
X-Gm-Message-State: APjAAAXmNQ6YBLqWnPtbqO7+pIOxACzeRe90e17sDRMb09xlmrK+Dws0
 2XQcQk3Noni/0L1gJ7HGPlA=
X-Google-Smtp-Source: APXvYqxYCt3lxuhdOfrbwTTC08LgsFznYbnh4QnkiyuzHfw0Pr0dMFXtnPnXBE6EQuGhXyiUcDU6zQ==
X-Received: by 2002:adf:eb09:: with SMTP id s9mr237036wrn.61.1578612672652;
 Thu, 09 Jan 2020 15:31:12 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::42f0:c285])
 by smtp.gmail.com with ESMTPSA id h2sm107563wrt.45.2020.01.09.15.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 15:31:12 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] [RFC] pwm: sun4i: Move pwm_calculate out of spin_lock
Date: Fri, 10 Jan 2020 00:31:06 +0100
Message-Id: <20200109233106.17060-1-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_153115_779490_DA055891 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Alex Mobigo <alex.mobigo@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHdtX2NhbGN1bGF0ZSBjYWxscyBjbGtfZ2V0X3JhdGUgd2hpbGUgaG9sZGluZyBhIHNwaW5fbG9j
ay4KClRoaXMgY3JlYXRlIGFuIGlzc3VlIGFzIGNsa19nZXRfcmF0ZSgpIG1heSBzbGVlcC4KCk1v
dmUgcHdtX2NhbGN1bGF0ZSBvdXQgb2YgdGhpcyBzcGluX2xvY2suCgpGaXhlczogYzMyYzVjNTBk
NGZlICgicHdtOiBzdW40aTogU3dpdGNoIHRvIGF0b21pYyBQV00iKQpSZXBvcnRlZC1ieTogQWxl
eCBNb2JpZ28gPGFsZXgubW9iaWdvQGdtYWlsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBWYXNpbHkgS2hv
cnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6ly
b24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KCkhpLAoKdGhpcyBpc3N1ZSBoYXMgYmVlbiBy
ZXBvcnRlZCBvbiBsaW51eC1zdW54aSBHb29nbGUgZ3JvdXBzLgoKSSBkb24ndCBoYXZlIGEgYm9h
cmQgd2l0aCBQV00gdG8gY29uZmlybSBpdC4KClBsZWFzZSB3YWl0IGEgdGVzdGVkLWJ5LgoKVGhh
bmtzLApDbMOpbWVudAoKIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgNyArKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXgg
MWFmZDQxZWJkM2ZkLi42YjIzMDAyOWRjNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1z
dW40aS5jCisrKyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC0yNDgsMTkgKzI0OCwxOCBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVj
dCBwd21fZGV2aWNlICpwd20sCiAJCX0KIAl9CiAKLQlzcGluX2xvY2soJnN1bjRpX3B3bS0+Y3Ry
bF9sb2NrKTsKLQljdHJsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVH
KTsKLQogCXJldCA9IHN1bjRpX3B3bV9jYWxjdWxhdGUoc3VuNGlfcHdtLCBzdGF0ZSwgJmR1dHks
ICZwZXJpb2QsICZwcmVzY2FsZXIsCiAJCQkJICAmYnlwYXNzKTsKIAlpZiAocmV0KSB7CiAJCWRl
dl9lcnIoY2hpcC0+ZGV2LCAicGVyaW9kIGV4Y2VlZHMgdGhlIG1heGltdW0gdmFsdWVcbiIpOwot
CQlzcGluX3VubG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwogCQlpZiAoIWNzdGF0ZS5lbmFi
bGVkKQogCQkJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHN1bjRpX3B3bS0+Y2xrKTsKIAkJcmV0dXJu
IHJldDsKIAl9CiAKKwlzcGluX2xvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKKwljdHJsID0g
c3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKKwogCWlmIChzdW40aV9w
d20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsKIAkJaWYgKGJ5cGFzcykgewog
CQkJY3RybCB8PSBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSk7Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
