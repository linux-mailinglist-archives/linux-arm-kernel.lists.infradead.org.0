Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E73D23DF4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MVlyU2lZNpd/TSHd4eJIx9V0i/9uHqWAZmLVzEv1TVw=; b=B0Z1VkztRv/4RY
	lT47qYBpttJlTW/NeDmLbMSIJ91Wbw4qGRI5Xe5wd1rew1XRA4u1dQFPl5yNE+osA1KgUWJHOH1gP
	IhTSha5qOA/psAcjJ9yQSJhOnWsHoS7XaOtwesDPA0TQ0l50Ouimx8BSJlSIRp2tNoXsGB63yXI9W
	SkkMj/fjuOPDMxd7hD6cNjksHu8Z6NcpGISSAbb4rpCqolxnX4WODR3ydnbekwysEhsAyruXf1DWN
	F+mkBrvNE8sBp7AfJf8VDE9ACnpwHG82rnO4ymly3EQU1Z47BUfZ8V1R1cSHNt449Cm3w6YWQcqvD
	xoQ/GJqtdyr/mYG13azQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSlfY-0007Bo-F2; Mon, 20 May 2019 17:01:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSlfQ-0007AB-ES
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:01:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id g16so11607894iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 10:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6v5cZ4d3IbzzHyX9tB5SggAe9a0MLVJDqe4K+VrolY=;
 b=DgcBl8Smh89XruihvIIqo2/jwlRNXKwzhoakXmLzoUDPce90oG/GyzQ8l/jtA2OL0i
 SEXXSDe8NSrl1QM7MqUwkOtgDOh2Gr66AcXniCOv8ZqSJbDbxRvzXncS4+WdSFomASNH
 WfY30ET7xT7NYiS1Z1z8P77Zabz6rKiUmME9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x6v5cZ4d3IbzzHyX9tB5SggAe9a0MLVJDqe4K+VrolY=;
 b=UGt9xycxsHURXbD3kc4GvcGJKacaPWvxKmd8qd3fD3Rr2WgEK+KRqpRgubp32WuAA9
 jfyr489TC/cpUXfp/VmeBby8dNvDnLaa7b8tVN/45XmXbYJJpr0PTpfb6eY/DYYURe06
 D7es8H60HgKcBiw8zUrecEjlf7oNvQ8oNZoovUW42Q1G//CMHRCLfs/u9UszPTSzB1iK
 sLnFSnKmSS+gmTaO7sK5Ad0fRp8D2x26gKHqqSWPZAnP1WK/IyxS1a7YI+gYNd3m8WyJ
 yYRPYryJgPVo9MWS0o/F7n++IiXWstZ9Sx10+XwPeg6JGjUKltIxEWIK/BjJw+kDu8t6
 qQfw==
X-Gm-Message-State: APjAAAW34/dAjDDN2uwMmYCvaKLVgVeXjTFMQsTWg52aOgKcHxaTeJFL
 YMairdex07Cyw/rBr1CoJwUtHQ==
X-Google-Smtp-Source: APXvYqy0W2gpclxj4ZGsAs2T9LwfcoVY4dorBvuLBx7NxPHNi4Rs1l+AN5UkFsEt4Xy4HrBvwIlWAw==
X-Received: by 2002:a6b:2c94:: with SMTP id
 s142mr25278871ios.302.1558371699238; 
 Mon, 20 May 2019 10:01:39 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id v202sm25015itb.38.2019.05.20.10.01.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 10:01:38 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: Limit GPU frequency on veyron mickey
 to 300 MHz when the CPU gets very hot
Date: Mon, 20 May 2019 10:01:31 -0700
Message-Id: <20190520170132.91571-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_100140_496806_B73C7FC3 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gcmszMjg4IHRoZSBDUFUgYW5kIEdQVSB0ZW1wZXJhdHVyZXMgYXJlIGNvcnJlbGF0ZWQuIExp
bWl0IHRoZSBHUFUKZnJlcXVlbmN5IG9uIHZleXJvbiBtaWNrZXkgdG8gMzAwIE1IeiBmb3IgQ1BV
IHRlbXBlcmF0dXJlcyA+PSA4NcKwQy4KClRoaXMgbWF0Y2hlcyB0aGUgY29uZmlndXJhdGlvbiBv
ZiB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNCBrZXJuZWwsCnRoZSAnb2ZmaWNpYWwnIGtl
cm5lbCBmb3IgbWlja2V5LgoKU2lnbmVkLW9mZi1ieTogTWF0dGhpYXMgS2FlaGxja2UgPG1rYUBj
aHJvbWl1bS5vcmc+Ci0tLQpOb3RlOiB0aGlzIHBhdGNoIGRlcGVuZHMgb24gIkFSTTogZHRzOiBy
b2NrY2hpcDogQWRkICNjb29saW5nLWNlbGxzCmVudHJ5IGZvciByazMyODggR1BVIiAoaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwNzUwMDUvKQotLS0KIGFyY2gvYXJt
L2Jvb3QvZHRzL3JrMzI4OC12ZXlyb24tbWlja2V5LmR0cyB8IDYgKysrKysrCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvcmsz
Mjg4LXZleXJvbi1taWNrZXkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1t
aWNrZXkuZHRzCmluZGV4IGQ4ODlhYjNjODIzNS4uZjExOGQ5MmE0OWQwIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLW1pY2tleS5kdHMKKysrIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvcmszMjg4LXZleXJvbi1taWNrZXkuZHRzCkBAIC0xMjUsNiArMTI1LDEyIEBACiAJ
CQkJCSA8JmNwdTIgOCBUSEVSTUFMX05PX0xJTUlUPiwKIAkJCQkJIDwmY3B1MyA4IFRIRVJNQUxf
Tk9fTElNSVQ+OwogCQl9OworCisJCS8qIEF0IHZlcnkgaG90LCBkb24ndCBsZXQgR1BVIGdvIG92
ZXIgMzAwIE1IeiAqLworCQljcHVfdmVyeV9ob3RfbGltaXRfZ3B1IHsKKwkJCXRyaXAgPSA8JmNw
dV9hbGVydF92ZXJ5X2hvdD47CisJCQljb29saW5nLWRldmljZSA9IDwmZ3B1IDIgMj47CisJCX07
CiAJfTsKIH07CiAKLS0gCjIuMjEuMC4xMDIwLmdmMjgyMGNmMDFhLWdvb2cKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
