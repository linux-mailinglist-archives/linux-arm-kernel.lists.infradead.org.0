Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BFB105ACA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 21:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOQ9wWx5eFxOGJdtb3l5cbkuT+IC/1YKEZtL/gBtb6Y=; b=rL9sGMoqhzGS7P
	uQED5g1NKrzoy+Wp0vbvTwLldISPO+1nznAe8b7bc6C5BgbVYDr1P4+eoxKiqvoyv366xsNCQAUqK
	TLP9Xcj26hH8WWbSAjuCp+UoamoSl/Vtx8YQoQZn6FCHQUlv6Qxh6/mjA5ysKlvzsFDdNIqWJY3kN
	AEyAw1BABQPWtYIwxKbZ7kIixsuHDCmOUnAa3ECgFnaGfzVtbGL0sJNM4CEkInEoDDJagwZAHMf6i
	5/GmKb556m6afE5m2A3oeFs9zw8zjmt9hrPJkCD2ewarkgM6ryhl7sw1Ryt7fXg3k/A+1zDyulyMY
	ysdA+SwuTOaAtCoqYjQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXsdC-0003L0-LN; Thu, 21 Nov 2019 20:00:46 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbk-0001Dr-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id y5so5123870wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q+B/OIVjrG1dlH6HSUpfUfOtGFBjbxI16EIo0y2GEAU=;
 b=MfIKbSxz1ViKv1FClZ1Y7HO8tDP27iqEfRdOQn7Z+H2SZ+3vBlAnSCT5KzzC+Rst/L
 79LbaZbN7hOK2FGlTYrI0WGeufKMf2xjcUIXSu/RR8k+ZoeM/e6ApOfmfjvRmyRipHQ2
 0xq+FiUkUvodQ+PpptjFzwNzNkmQCel34fwSO99VxjQQ50SGQ7PGw+Q0cLzHYMhTEOQp
 yVXOoOzShn0yUtcbHPkTgZg+JTpR9HKJ3i83CSSNTtJzXv3Nem5cnhOd2a4Tyw4xjY+N
 HQdNFktej6DSE5D9fX8a39EwfQWd7nESK5zzqzH3hMFoTYBcxgP4w7kray8peKiix5Gx
 GPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q+B/OIVjrG1dlH6HSUpfUfOtGFBjbxI16EIo0y2GEAU=;
 b=lyA+JV3ZsrQ6YMIzmOfzfwes3h9sg2lItEe4v4lpWi679ucUPNu6aHzfhXFF8R78c9
 uUwT/fQ1v5Kn/KZqMPNji7bs9l/05yHsYChpPmdvjE5Y255xVc8780nHkFZp8/URu0de
 4NFggdPMt+U8e3prWjI23lqjg1s1eEHJKF96w+g41bBkA2CTnHvahtf4pp4Vl87Q3CQy
 IWq2shF/g8UeVV8b65Ep5lglKVb0auQX017sBKV216bY5/sk+qewWuf8VGesg8eCFaGE
 CDTzWqVwFSZ0z0Qx7BDtBwzKZ+N78/scjDGj1BrDF0hJRC7R1Sj7wgR1293jpwnfdU80
 ZV5A==
X-Gm-Message-State: APjAAAUD03PYBzLB8xz9Yx8ccdbKLpR3HeCiAsfKxXtLRMt9M5Ruy9EJ
 NszG1y+P8s02fz56rdtCqTk=
X-Google-Smtp-Source: APXvYqyPDEXLEsfGsvqz9l3KdOkpAXePb3VTVy0wMdLDHlo6Ya6Kzeu0XRM4i9iNcMC3qKaYHJ4WsA==
X-Received: by 2002:a1c:cc1a:: with SMTP id h26mr1000354wmb.40.1574366354830; 
 Thu, 21 Nov 2019 11:59:14 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:14 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 4/6] pwm: sun4i: Always calculate params when applying new
 parameters
Date: Thu, 21 Nov 2019 20:59:00 +0100
Message-Id: <20191121195902.6906-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115916_637210_1389A18F 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QnlwYXNzIG1vZGUgd2lsbCByZXF1aXJlIHRvIGJlIHJlLWNhbGN1bGF0ZWQgd2hlbiB0aGUgcHdt
IHN0YXRlCmlzIGNoYW5nZWQuCgpSZW1vdmUgdGhlIGNvbmRpdGlvbiBzbyBwd21fc3VuNGlfY2Fs
Y3VsYXRlIGlzIGFsd2F5cyBjYWxsZWQuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24g
PHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgNTIg
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyMyBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3B3bS9wd20tc3VuNGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDY2YmVmZDhk
NmY5Yy4uMWZhMjA1NzQxOWZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwor
KysgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwpAQCAtMjAyLDkgKzIwMiw5IEBAIHN0YXRpYyBp
bnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0IHB3bV9kZXZp
Y2UgKnB3bSwKIHsKIAlzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnN1bjRpX3B3bSA9IHRvX3N1bjRp
X3B3bV9jaGlwKGNoaXApOwogCXN0cnVjdCBwd21fc3RhdGUgY3N0YXRlOwotCXUzMiBjdHJsOwor
CXUzMiBjdHJsLCBkdXR5LCBwZXJpb2QsIHZhbDsKIAlpbnQgcmV0OwotCXVuc2lnbmVkIGludCBk
ZWxheV91czsKKwl1bnNpZ25lZCBpbnQgZGVsYXlfdXMsIHByZXNjYWxlcjsKIAl1bnNpZ25lZCBs
b25nIG5vdzsKIAogCXB3bV9nZXRfc3RhdGUocHdtLCAmY3N0YXRlKTsKQEAgLTIyMCw0MyArMjIw
LDM3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwg
c3RydWN0IHB3bV9kZXZpY2UgKnB3bSwKIAlzcGluX2xvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2Nr
KTsKIAljdHJsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKIAot
CWlmICgoY3N0YXRlLnBlcmlvZCAhPSBzdGF0ZS0+cGVyaW9kKSB8fAotCSAgICAoY3N0YXRlLmR1
dHlfY3ljbGUgIT0gc3RhdGUtPmR1dHlfY3ljbGUpKSB7Ci0JCXUzMiBwZXJpb2QsIGR1dHksIHZh
bDsKLQkJdW5zaWduZWQgaW50IHByZXNjYWxlcjsKLQotCQlyZXQgPSBzdW40aV9wd21fY2FsY3Vs
YXRlKHN1bjRpX3B3bSwgc3RhdGUsCi0JCQkJCSAgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIp
OwotCQlpZiAocmV0KSB7Ci0JCQlkZXZfZXJyKGNoaXAtPmRldiwgInBlcmlvZCBleGNlZWRzIHRo
ZSBtYXhpbXVtIHZhbHVlXG4iKTsKLQkJCXNwaW5fdW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9j
ayk7Ci0JCQlpZiAoIWNzdGF0ZS5lbmFibGVkKQotCQkJCWNsa19kaXNhYmxlX3VucHJlcGFyZShz
dW40aV9wd20tPmNsayk7Ci0JCQlyZXR1cm4gcmV0OwotCQl9Ci0KLQkJaWYgKFBXTV9SRUdfUFJF
U0NBTChjdHJsLCBwd20tPmh3cHdtKSAhPSBwcmVzY2FsZXIpIHsKLQkJCS8qIFByZXNjYWxlciBj
aGFuZ2VkLCB0aGUgY2xvY2sgaGFzIHRvIGJlIGdhdGVkICovCi0JCQljdHJsICY9IH5CSVRfQ0go
UFdNX0NMS19HQVRJTkcsIHB3bS0+aHdwd20pOwotCQkJc3VuNGlfcHdtX3dyaXRlbChzdW40aV9w
d20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7CisJcmV0ID0gc3VuNGlfcHdtX2NhbGN1bGF0ZShzdW40
aV9wd20sIHN0YXRlLCAmZHV0eSwgJnBlcmlvZCwgJnByZXNjYWxlcik7CisJaWYgKHJldCkgewor
CQlkZXZfZXJyKGNoaXAtPmRldiwgInBlcmlvZCBleGNlZWRzIHRoZSBtYXhpbXVtIHZhbHVlXG4i
KTsKKwkJc3Bpbl91bmxvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKKwkJaWYgKCFjc3RhdGUu
ZW5hYmxlZCkKKwkJCWNsa19kaXNhYmxlX3VucHJlcGFyZShzdW40aV9wd20tPmNsayk7CisJCXJl
dHVybiByZXQ7CisJfQogCi0JCQljdHJsICY9IH5CSVRfQ0goUFdNX1BSRVNDQUxfTUFTSywgcHdt
LT5od3B3bSk7Ci0JCQljdHJsIHw9IEJJVF9DSChwcmVzY2FsZXIsIHB3bS0+aHdwd20pOwotCQl9
CisJaWYgKFBXTV9SRUdfUFJFU0NBTChjdHJsLCBwd20tPmh3cHdtKSAhPSBwcmVzY2FsZXIpIHsK
KwkJLyogUHJlc2NhbGVyIGNoYW5nZWQsIHRoZSBjbG9jayBoYXMgdG8gYmUgZ2F0ZWQgKi8KKwkJ
Y3RybCAmPSB+QklUX0NIKFBXTV9DTEtfR0FUSU5HLCBwd20tPmh3cHdtKTsKKwkJc3VuNGlfcHdt
X3dyaXRlbChzdW40aV9wd20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7CiAKLQkJdmFsID0gKGR1dHkg
JiBQV01fRFRZX01BU0spIHwgUFdNX1BSRChwZXJpb2QpOwotCQlzdW40aV9wd21fd3JpdGVsKHN1
bjRpX3B3bSwgdmFsLCBQV01fQ0hfUFJEKHB3bS0+aHdwd20pKTsKLQkJc3VuNGlfcHdtLT5uZXh0
X3BlcmlvZFtwd20tPmh3cHdtXSA9IGppZmZpZXMgKwotCQkJdXNlY3NfdG9famlmZmllcyhjc3Rh
dGUucGVyaW9kIC8gMTAwMCArIDEpOwotCQlzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3bS0+aHdw
d21dID0gdHJ1ZTsKKwkJY3RybCAmPSB+QklUX0NIKFBXTV9QUkVTQ0FMX01BU0ssIHB3bS0+aHdw
d20pOworCQljdHJsIHw9IEJJVF9DSChwcmVzY2FsZXIsIHB3bS0+aHdwd20pOwogCX0KIAorCXZh
bCA9IChkdXR5ICYgUFdNX0RUWV9NQVNLKSB8IFBXTV9QUkQocGVyaW9kKTsKKwlzdW40aV9wd21f
d3JpdGVsKHN1bjRpX3B3bSwgdmFsLCBQV01fQ0hfUFJEKHB3bS0+aHdwd20pKTsKKwlzdW40aV9w
d20tPm5leHRfcGVyaW9kW3B3bS0+aHdwd21dID0gamlmZmllcyArCisJCXVzZWNzX3RvX2ppZmZp
ZXMoY3N0YXRlLnBlcmlvZCAvIDEwMDAgKyAxKTsKKwlzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3
bS0+aHdwd21dID0gdHJ1ZTsKKwogCWlmIChzdGF0ZS0+cG9sYXJpdHkgIT0gUFdNX1BPTEFSSVRZ
X05PUk1BTCkKIAkJY3RybCAmPSB+QklUX0NIKFBXTV9BQ1RfU1RBVEUsIHB3bS0+aHdwd20pOwog
CWVsc2UKIAkJY3RybCB8PSBCSVRfQ0goUFdNX0FDVF9TVEFURSwgcHdtLT5od3B3bSk7CiAKIAlj
dHJsIHw9IEJJVF9DSChQV01fQ0xLX0dBVElORywgcHdtLT5od3B3bSk7CisKIAlpZiAoc3RhdGUt
PmVuYWJsZWQpIHsKIAkJY3RybCB8PSBCSVRfQ0goUFdNX0VOLCBwd20tPmh3cHdtKTsKIAl9IGVs
c2UgaWYgKCFzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3bS0+aHdwd21dKSB7Ci0tIAoyLjIwLjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
