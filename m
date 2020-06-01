Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105351EB1FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 01:06:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uh+qzyb01WHvTmW0PbfKVsTPVGt84+nehq0h6hPbJ08=; b=H8p4gIuHMDiFWG
	VvnBleokD4gwRkLyUdwgIOs595tgDoNXxkA/BHvshsgyz7czTpTnX6+2NxcI2U8e8lvQHCRgifZZD
	cnCFKddBMCioh9nSrosqtbmC4rpbowd8ixCXoXyk2Wv1opHA0f9bIvyLim/68dDt7/664sThuYVZr
	vaMNiyRO+1izIxefdorp3gdPNaaUknxzLGqasySiQWr9iSRotC1h7m7dRQJFm/Bntks0Kvy6vrpq9
	t2raO+x3TmEG5Mss3+O5eH/6KHzHa7hM8uD75F8IaLCaHxGy65F0uZ+b2rViuRT9e9WargAk37kIl
	WeAUWItZOYl0yZQRGd0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jftVp-0000DH-Bv; Mon, 01 Jun 2020 23:06:33 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jftVj-0000C9-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 23:06:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id e9so2997202pgo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 16:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ksDb9WvMZ1M3ofOtFLzn4jr3f4hC59VYfNza1WsvRoE=;
 b=qm8dATNKOPlcESfgAAvsnKiWz1RNC4W36kcNYRoFZ8otgjEc1n/cXcgKNrZSx0Pcs2
 4WtDXyP3Ktbsa90g0PYgnVk4nRHJqGbejcat0TQsz96DMfWLm+eyucyC5uu8TPQcRGH/
 PsaXKpz/+4Hduu39mQ12jTewPa/9p+y07kkfSdSa6swz0OWHSWYMb0Xyt7kMDu7+Unrn
 bZbnKgQ5zUkUSH3uD/9BxLZsU2Ycbv4IUal/HKogIYYN3UMWvt3XhZNmrRPY2fDnjf2K
 z+MVt6Y7ktSwKoF/A8XkeOBFyor6GWGvHNdBYeT8Z+CaL2BwxocnCDnaZPN6NHIEJ1Jx
 rVzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ksDb9WvMZ1M3ofOtFLzn4jr3f4hC59VYfNza1WsvRoE=;
 b=THEHVnWYdCNPvj2EpCzz0Zp3dpj7xcIntFOLWI0kuVJ5023LDlFg2chBX2O4IBAx5q
 DKUuFtOmLVd4nx54ltiCSd9q7/HZHUKOJNJSivKhUVG6TurVseUo/sMl/fGeFZL2oYKm
 MYbSjvfMamo35opLhRMuRYodJKhjBMRBU62m1YGFbAwGwDyZRUYU89rogoApDs6YKH1S
 U1S9GMhW2VSUG+1vmgb/FKqCqG1izoCsxqLb/OAA49958uSW8+mPrKmQtavitu0axrcD
 j+ruWkCAOmITE2L0uw/ORtn5Lm8xwS0bT58rOZV/ZCQiNt9UQCSXAGPnnN0CRvPRFJ1o
 UsxQ==
X-Gm-Message-State: AOAM530skPAvdTqLIa3iHBJm2SU9KqHZ+nmOWWoYZItoXjRvIjaZPtON
 kvSirBsLK5Odq3F7jDcqpjbAl8nD
X-Google-Smtp-Source: ABdhPJyzSSRl8CDEGtel/I/WxxiOtih3epDRjNMht9hndzr/8CLd28xq2DFFdyzMcc1KPkG74ihiLg==
X-Received: by 2002:a63:1323:: with SMTP id i35mr21649156pgl.311.1591052784607; 
 Mon, 01 Jun 2020 16:06:24 -0700 (PDT)
Received: from squirtle.lan (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id q201sm394891pfq.40.2020.06.01.16.06.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2020 16:06:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] clk: imx: vf610: add CAAM clock
Date: Mon,  1 Jun 2020 16:06:07 -0700
Message-Id: <20200601230607.31740-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_160627_072149_B4B45DCD 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrew.smirnov[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWNjb3JkaW5nIHRvIFZ5YnJpZCBTZWN1cml0eSBSTSwgQ0NNX0NDR1IxMVtDRzE3Nl0gY2FuIGJl
IHVzZWQgdG8gZ2F0ZQpDQUFNIGlwZyBjbG9jay4KClNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50
xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmRyZXkgU21pcm5vdiA8
YW5kcmV3LnNtaXJub3ZAZ21haWwuY29tPgpDYzogQ2hyaXMgSGVhbHkgPGNwaGVhbHlAZ21haWwu
Y29tPgpDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgpDYzogRmFiaW8gRXN0ZXZh
bSA8ZmVzdGV2YW1AZ21haWwuY29tPgpDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1pbXhAbnhw
LmNvbQotLS0KIGRyaXZlcnMvY2xrL2lteC9jbGstdmY2MTAuYyAgICAgICAgICAgICB8IDEgKwog
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay92ZjYxMC1jbG9jay5oIHwgMyArKy0KIDIgZmlsZXMg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvaW14L2Nsay12ZjYxMC5jIGIvZHJpdmVycy9jbGsvaW14L2Nsay12ZjYxMC5jCmlu
ZGV4IGNkMDRlN2RjMTg3OC4uNTEyOWVmOGUxZDZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9p
bXgvY2xrLXZmNjEwLmMKKysrIGIvZHJpdmVycy9jbGsvaW14L2Nsay12ZjYxMC5jCkBAIC00Mzgs
NiArNDM4LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IHZmNjEwX2Nsb2Nrc19pbml0KHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqY2NtX25vZGUpCiAJY2xrW1ZGNjEwX0NMS19TTlZTXSA9IGlteF9jbGtfZ2F0
ZTIoInNudnMtcnRjIiwgImlwZ19idXMiLCBDQ01fQ0NHUjYsIENDTV9DQ0dSeF9DR24oNykpOwog
CWNsa1tWRjYxMF9DTEtfREFQXSA9IGlteF9jbGtfZ2F0ZSgiZGFwIiwgInBsYXRmb3JtX2J1cyIs
IENDTV9DQ1NSLCAyNCk7CiAJY2xrW1ZGNjEwX0NMS19PQ09UUF0gPSBpbXhfY2xrX2dhdGUoIm9j
b3RwIiwgImlwZ19idXMiLCBDQ01fQ0NHUjYsIENDTV9DQ0dSeF9DR24oNSkpOworCWNsa1tWRjYx
MF9DTEtfQ0FBTV0gPSBpbXhfY2xrX2dhdGUyKCJjYWFtIiwgImlwZ19idXMiLCBDQ01fQ0NHUjEx
LCBDQ01fQ0NHUnhfQ0duKDApKTsKCiAJaW14X2NoZWNrX2Nsb2NrcyhjbGssIEFSUkFZX1NJWkUo
Y2xrKSk7CgpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay92ZjYxMC1jbG9j
ay5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay92ZjYxMC1jbG9jay5oCmluZGV4IDk1Mzk0
ZjM1YTc0YS4uMGYyZDYwZTg4NGRjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL3ZmNjEwLWNsb2NrLmgKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay92ZjYxMC1j
bG9jay5oCkBAIC0xOTUsNiArMTk1LDcgQEAKICNkZWZpbmUgVkY2MTBfQ0xLX1dLUFUJCQkxODYK
ICNkZWZpbmUgVkY2MTBfQ0xLX1RDT04wCQkJMTg3CiAjZGVmaW5lIFZGNjEwX0NMS19UQ09OMQkJ
CTE4OAotI2RlZmluZSBWRjYxMF9DTEtfRU5ECQkJMTg5CisjZGVmaW5lIFZGNjEwX0NMS19DQUFN
CQkJMTg5CisjZGVmaW5lIFZGNjEwX0NMS19FTkQJCQkxOTAKCiAjZW5kaWYgLyogX19EVF9CSU5E
SU5HU19DTE9DS19WRjYxMF9IICovCi0tCjIuMjEuMwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
