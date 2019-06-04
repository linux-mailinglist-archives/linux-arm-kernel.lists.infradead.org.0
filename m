Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229EF34D67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:31:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTdjseNTqC4heU4sPFBZazYE6ASIwe7r1MZRDfh0WS0=; b=AMgMtEbnY0Wvp3
	rtqefJ90Ub9z7xVQ172F1+fi55kF9Sz+ncsuMPx73/2xJAOXg6xrOiym/74gVeGRmPU2jrd8rxS7P
	Q6L9vL3lQq9c0OvdtQWH0oT+/g+MxbRNZ0MzDSl8K+witwQIuDhcRIAZOFV5vPL5r65YFj6GADdqp
	jjbHcvDyFduYSIATCkFu257JKr+BLFhlQSVN4mroqNrk/UPcL+/P3AD1r6i1rVKMvzNsmP9E5S3rV
	1QHbESsze8WJU16q4+cdfP0rsBe7fYUNB1UweToWrdWYn6xi9E2EwkPVHdFpDXye5sdjTVfUeKYn/
	8FRHXT03j1S9HehsziOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCKz-00077I-AQ; Tue, 04 Jun 2019 16:31:01 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKC-0006KT-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so13484362wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TrJrO+4WVaDcBJRtqTErrFHqZWoDLU/J3nYOQSosNEY=;
 b=RGvzKAyaP8Nn+tVEfpqKFWUsv0KutBvUK6HHUt60gDfdFjLe+liHA6E3qMJj3yiaBk
 A18rCVtZgu60LIWyGbYuDG7sY6ybggpciaLV4xKTFNX5lbNqGIOaiYNS8UDc5HCGWcYC
 8S6+OYjOjuMgYQDj74AxTq+/s8rl0Wiz4NUTvvSj7i6WHDs7h2rvdCzdnob6+QmdlfMd
 Y3npXQef+x5jCNbLuCnLotNeabJwrW1Xfyi9SrUNalmYjeAM5FJNyCDp8zd1SYxdl188
 KB6255DdPms6iwIkIFcFFdc/F8/pC71XdXkPnCvqlyveK5E4o6/Ka0M0wvhz+U2kcmD9
 2OOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TrJrO+4WVaDcBJRtqTErrFHqZWoDLU/J3nYOQSosNEY=;
 b=hS7uCIfhb0cJwQdoAHEGb8Pu7vyKjGK2Ysb1+44YhzSxCeuus0mjX2Nd3BXC5RVAFC
 PJYVxfkmCxPHkRwrBCRo/drWq1UNBxXZ3VP1OOpAwj2biJcZiInyggwuVHFoRM74Xhal
 Vdiby+r46o7rKVMvHzzzMw4HDQX0thh3o1eYPe+2rul1qyrkO/vzWitUinqQKwqLizpf
 3ferJxDWRlWQPKJbDooL0sVUu14CUdlGcrP/IuXtpqY7RAitWueptljJ2hubkVez2vxt
 3FFkgzukAypasPlxMTQBSh0wj3CfaO+fcwPPaSKgl1fjlO12joCKRXHN/NkpPEstX5pA
 HjOA==
X-Gm-Message-State: APjAAAWKS4VcYbNlVd02RKTMnryNVMYdZRYLUfW5h8KGjwwDwBDGtONM
 AO2O6djiCii7oyFaS0geOI0=
X-Google-Smtp-Source: APXvYqzTMZNFQgYpbFMki+XibrOhrkub/SRgKsjfuDCDWwjvBw2nfOYV6dEbU1y/vUlXeJRW/t28xQ==
X-Received: by 2002:adf:e8cb:: with SMTP id k11mr20704308wrn.244.1559665809997; 
 Tue, 04 Jun 2019 09:30:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:08 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 04/13] media: rc: sunxi: Add RXSTA bits definition
Date: Tue,  4 Jun 2019 18:29:50 +0200
Message-Id: <20190604162959.29199-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093012_653040_0725D50C 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2UgYXJlIHVzaW5nIFJYSU5UIGJpdHMgZGVmaW5pdGlvbiB3aGVuIGxvb2tpbmcgYXQgUlhTVEEg
cmVnaXN0ZXIuCgpUaGVzZSBiaXRzIGFyZSBlcXVhbCBidXQgaXQncyBub3QgcmVhbGx5IHByb3Bl
ci4KCkludHJvZHVjZSB0aGUgUlhTVEEgYml0cyBhbmQgdXNlIHRoZW0gdG8gaGF2ZSBjb2hlcmVu
Y3kuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29t
PgotLS0KIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgfCAxOCArKysrKysrKysrKystLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgYi9kcml2ZXJzL21lZGlhL3Jj
L3N1bnhpLWNpci5jCmluZGV4IDA1MDRlYmZjODMxZi4uNTcyYmQyMjU3ZDM1IDEwMDY0NAotLS0g
YS9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMvc3Vu
eGktY2lyLmMKQEAgLTQ4LDExICs0OCwxMSBAQAogCiAvKiBSeCBJbnRlcnJ1cHQgRW5hYmxlICov
CiAjZGVmaW5lIFNVTlhJX0lSX1JYSU5UX1JFRyAgICAweDJDCi0vKiBSeCBGSUZPIE92ZXJmbG93
ICovCisvKiBSeCBGSUZPIE92ZXJmbG93IEludGVycnVwdCBFbmFibGUgKi8KICNkZWZpbmUgUkVH
X1JYSU5UX1JPSV9FTgkJQklUKDApCi0vKiBSeCBQYWNrZXQgRW5kICovCisvKiBSeCBQYWNrZXQg
RW5kIEludGVycnVwdCBFbmFibGUgKi8KICNkZWZpbmUgUkVHX1JYSU5UX1JQRUlfRU4JCUJJVCgx
KQotLyogUnggRklGTyBEYXRhIEF2YWlsYWJsZSAqLworLyogUnggRklGTyBEYXRhIEF2YWlsYWJs
ZSBJbnRlcnJ1cHQgRW5hYmxlICovCiAjZGVmaW5lIFJFR19SWElOVF9SQUlfRU4JCUJJVCg0KQog
CiAvKiBSeCBGSUZPIGF2YWlsYWJsZSBieXRlIGxldmVsICovCkBAIC02MCw2ICs2MCwxMiBAQAog
CiAvKiBSeCBJbnRlcnJ1cHQgU3RhdHVzICovCiAjZGVmaW5lIFNVTlhJX0lSX1JYU1RBX1JFRyAg
ICAweDMwCisvKiBSeCBGSUZPIE92ZXJmbG93ICovCisjZGVmaW5lIFJFR19SWFNUQV9ST0kJCQlC
SVQoMCkKKy8qIFJ4IFBhY2tldCBFbmQgKi8KKyNkZWZpbmUgUkVHX1JYU1RBX1JQRQkJCUJJVCgx
KQorLyogUnggRklGTyBEYXRhIEF2YWlsYWJsZSAqLworI2RlZmluZSBSRUdfUlhTVEFfUkEJCQlC
SVQoNCkKIC8qIFJYIEZJRk8gR2V0IEF2YWlsYWJsZSBDb3VudGVyICovCiAjZGVmaW5lIFJFR19S
WFNUQV9HRVRfQUModmFsKSAoKCh2YWwpID4+IDgpICYgKGlyLT5maWZvX3NpemUgKiAyIC0gMSkp
CiAvKiBDbGVhciBhbGwgaW50ZXJydXB0IHN0YXR1cyB2YWx1ZSAqLwpAQCAtMTE5LDcgKzEyNSw3
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBzdW54aV9pcl9pcnEoaW50IGlycW5vLCB2b2lkICpkZXZf
aWQpCiAJLyogY2xlYW4gYWxsIHBlbmRpbmcgc3RhdHVzZXMgKi8KIAl3cml0ZWwoc3RhdHVzIHwg
UkVHX1JYU1RBX0NMRUFSQUxMLCBpci0+YmFzZSArIFNVTlhJX0lSX1JYU1RBX1JFRyk7CiAKLQlp
ZiAoc3RhdHVzICYgKFJFR19SWElOVF9SQUlfRU4gfCBSRUdfUlhJTlRfUlBFSV9FTikpIHsKKwlp
ZiAoc3RhdHVzICYgKFJFR19SWFNUQV9SQSB8IFJFR19SWFNUQV9SUEUpKSB7CiAJCS8qIEhvdyBt
YW55IG1lc3NhZ2VzIGluIGZpZm8gKi8KIAkJcmMgID0gUkVHX1JYU1RBX0dFVF9BQyhzdGF0dXMp
OwogCQkvKiBTYW5pdHkgY2hlY2sgKi8KQEAgLTEzNSw5ICsxNDEsOSBAQCBzdGF0aWMgaXJxcmV0
dXJuX3Qgc3VueGlfaXJfaXJxKGludCBpcnFubywgdm9pZCAqZGV2X2lkKQogCQl9CiAJfQogCi0J
aWYgKHN0YXR1cyAmIFJFR19SWElOVF9ST0lfRU4pIHsKKwlpZiAoc3RhdHVzICYgUkVHX1JYU1RB
X1JPSSkgewogCQlpcl9yYXdfZXZlbnRfcmVzZXQoaXItPnJjKTsKLQl9IGVsc2UgaWYgKHN0YXR1
cyAmIFJFR19SWElOVF9SUEVJX0VOKSB7CisJfSBlbHNlIGlmIChzdGF0dXMgJiBSRUdfUlhTVEFf
UlBFKSB7CiAJCWlyX3Jhd19ldmVudF9zZXRfaWRsZShpci0+cmMsIHRydWUpOwogCQlpcl9yYXdf
ZXZlbnRfaGFuZGxlKGlyLT5yYyk7CiAJfQotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
