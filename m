Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6662A6AB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uW0ooDVe4vYwaL5yS/n+doulGkgs62Z+NMbQU379hWw=; b=YphXZo8Uomoc8p
	Cznito1lJmRU0pgg6mgWV1wh4pBEY3JVZ75emPSodsnnEPQLvZN7p6xf29leQqCr8pcsTPfhFnmb5
	bH8TO3QtuVxcGK+tZzPH8OefrtjutE7NFrvc5yBCPgjwFsuzZhHA3SHWEJZXQg/TXiDKWI6u6FrIG
	4C7Rz3XI7koTw5mMoBgAJGCP7hqBDF78UnO7hoHLDgNzWSq6hfmPqXpwNUJvI/27hYMp2A21bplBH
	vZwiE2ZSJGB9Bs9jqwEiFY1dgPVwucfDlHd1jU+b5LmQ0EsgDYWD/TDjbBLflADhLBAzEQy826ALf
	ib+0XputMetb6cKnIDfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbvz-0001Xo-Af; Sat, 25 May 2019 19:02:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbvn-0001Uu-QU; Sat, 25 May 2019 19:02:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id z23so8063600wma.4;
 Sat, 25 May 2019 12:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FMgRwBoum0Ejn339EXDQoU9BYTUMpQqabDlvOkJFkRA=;
 b=LI/UOUKEetrDqZGCWdjAdtJcMs/WfNEF/yvH0JEZyz9Bs4zcUNdVEcw5EX9KDVAK0I
 Hmp8mN3pH1u6IKYCMkFQ7FNhBx5xhAiVUB8KjboEdh2NsZG8eKLdtzRkltjRKiTp/Cs1
 Y6dncQe7+lN/1Ia9pYnByRlCp1sPe1IkVhKzUczHmlHn0z84O7RHWJGRI0qzG0ZNBiK9
 LGm8sDARfU4nAVttZAXUXxABSceTuj7pflgl8fUWEJnekuRma/b4GXocdaHFk7pHqtIH
 zK6w+le3nOIyHZwlCNRD7y9FPQhbo3Ogv5/0TG7O6tg1+A2zdEtizmI9k90fIgYW67tD
 PmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FMgRwBoum0Ejn339EXDQoU9BYTUMpQqabDlvOkJFkRA=;
 b=Gyg1UV14e6tBSbJqBUN/872neoa0sNPqPW6cblXFuGIK0QoxABbIVd3SylFGXSEZJQ
 c7/VPrXN7B5GWvdbygpzTi8j9l/Fk54kswtJvP4tq6NGLWVW2HTeEwSfetcTgJSXx14D
 n7spkdnj14diilEacZtYHe4Jt3FKoucNyvqkHMPmXevsvGdmgiC/u7bLwdmJaA3Bi639
 505CG9cU0cnP8eq6b70pkyME1Gn2B+LmDY+AQGxNKIi+2oVTqrEkWUQukSpBkMqZTULh
 SX1UZgamL9dRkpgU1CFtWOuMpiRiy0SExNTwYwtKnJnFqC1v9M0tDpqbN/xb/WCEJO9X
 U6OA==
X-Gm-Message-State: APjAAAXz75N5+bFdQ+VQe4jdtKVnUig+pcjS1t7G9MB52H8odTgNRBD8
 1U4L8fp5gGuNeqOgBG7glgk2fD7B
X-Google-Smtp-Source: APXvYqzsGZFaNFf0zprRY/s7WMFdZxHwCQ2PrEP35RUVc95UKMBki5ybO45bWRmlM2Em8nC8+Ua8Fw==
X-Received: by 2002:a1c:2dcd:: with SMTP id
 t196mr20662035wmt.141.1558810929981; 
 Sat, 25 May 2019 12:02:09 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id f2sm6870426wme.12.2019.05.25.12.02.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 12:02:09 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 0/4] ARM: dts: meson8b: add VDDEE / mali-supply
Date: Sat, 25 May 2019 21:02:00 +0200
Message-Id: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_120211_878113_0D82144C 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

EC-100 and Odroid-C1 use a "copy" of the VCCK regulator as "VDDEE"
regulator. VDDEE supplies the Mali GPU and various other bits within
the SoC.

The VDDEE regulator is not exclusive to the Mali GPU so it must not
change it's voltage. The GPU OPP table has a fixed voltage for all
frequencies of 1.10V. This matches with what u-boot sets on my EC-100
and Odroid-C1.

Dependencies:
- compile time: patch #4 depends on my other patch "ARM: meson8b-mxq:
  better support for the TRONFY MXQ" from [0]
- runtime: we don't want the kernel to change the output of the VDDEE
  regulator to the maximum value. Thus the PWM driver has to be able
  to read the PWM period and duty cycle from u-boot. This is supported
  with my series called "pwm-meson: cleanups and improvements" from [1]


[0] https://patchwork.kernel.org/patch/10960283/
[1] https://patchwork.kernel.org/cover/10961073/


Martin Blumenstingl (4):
  ARM: dts: meson8b: add the PWM_D output pin
  ARM: dts: meson8b: ec100: add the VDDEE regulator
  ARM: dts: meson8b: odroidc1: add the VDDEE regulator
  ARM: dts: meson8b: mxq: add the VDDEE regulator

 arch/arm/boot/dts/meson8b-ec100.dts    | 31 +++++++++++++++++++++++---
 arch/arm/boot/dts/meson8b-mxq.dts      | 26 ++++++++++++++++++---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 27 +++++++++++++++++++---
 arch/arm/boot/dts/meson8b.dtsi         |  8 +++++++
 4 files changed, 83 insertions(+), 9 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
