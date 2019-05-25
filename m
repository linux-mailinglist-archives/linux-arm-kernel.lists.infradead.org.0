Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188A52A685
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:30:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uiTP8g8le5SdKHtJmU+mb26/+8sHjuGusQAptbcnBrE=; b=qN4IB4lB+bwGzX
	0wFKaiqs/xpsLZSLvZQk0yhgSnZj+46FyfyKG7T1idUfxRagbjvAPcULDe0zZmdeidHF9ud40zvKd
	yX3VUyDG9X6LN2ZYrNmb9KSBpz/qRoApkS9qtcsqlfR7WLfiVB7qxEpW3yS1Em1yv+Mg7bzXH8Y1l
	jV+Sey2lsA6+cGNItvbBL5YWd6G2arkGGdyPCDJYc6zPgJLu5yw+iqfeKBflLN5baJoX0lLB/rrIF
	XwmCyTktJkZddlBsdhXkhTNaktpielO6uaish8U8/wpKTemL7sxRn6d6TlHJt5z7o9z0cE6OLB/r8
	deVS9u9DVA476QiPD3ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbQf-0004eh-HS; Sat, 25 May 2019 18:30:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbQ8-0003yY-FW; Sat, 25 May 2019 18:29:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Yb/S5cquO/qD7cZ8y/Ty2KEWw38/es4qeSEZUyR+jc=; b=DA2XRAo4/42BjE5N25wrSNegWJ
 3m9X/DkXpaCv8XYfkDU6rb9zWF/lpYhavOckzBVx1Mvt/C4X8PqXGTH6rXLipwB5Z7Z2TsH9KeZyh
 vJqhm+7TMmhMCfBsMpEv9h9C3B9Ih6SDQLk0eGLlIXuEI/WRLUw92G/1dpP4fzgtJRv6tC8PEvNtz
 juDSL0cyydQ9Bg0neDwZaLFxI7N8yseCN/Z8S3qnoLd0W0Iy+jpnnddXpE4e96KX9ePFoP1qGZFcr
 2pZABig6sZho955oufOCMq+36S8WMOckYIohXEk82s0+5+EyUk5DNup8HrfQY175pAZGaPk3YEDaU
 909Y9GVA==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb90-00024t-8A; Sat, 25 May 2019 18:11:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id w13so4590523wru.11;
 Sat, 25 May 2019 11:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Yb/S5cquO/qD7cZ8y/Ty2KEWw38/es4qeSEZUyR+jc=;
 b=OGJNTZfDrBzPN439RB++aRKeudPMkKmAnuPSKbCnLRPL0eV+S2U2ujtLWuKIW3R1/V
 tR+Vi1PNTFdC3hGP5egqzB5KZrLyec9thl7qdXa7ZIVQeM50/fuANNeD/xx2+zjavcfh
 Sot/dtNJhrUJ3CN3JWpD0bZEgn1Xr1TDXlo4Y3rXszL9ELsilnxHcpQutZ5dmQ95q+da
 O+cChUMRweL+GBgKmh1Swu+H8mtFOj4Ri6QVjHAt5zCjyhpT6mXWZBSD+SU+1eh04PNv
 rZm1iK+/8a/D9sCSzxE+GWi1gyxowb2WaeDIN2BLFZgY4xFUTPexkmSwSdQnPV+9iF8d
 jSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1Yb/S5cquO/qD7cZ8y/Ty2KEWw38/es4qeSEZUyR+jc=;
 b=T/jXCIdXQTypz8prJ5KQej6nuSh4IXjXYplweZuhd4fxMPU9Kg/Emsl7b8p+HM4XqL
 qRoRw7pZO1aDsMrxALUmWQUEO0n1P1onyA40wWVLUus5xk+8p4wYTvtXNcXW+wIXAtId
 tfPOSx0YYviraigLd7zlkSIe9RMDPvU7PEcVmR/1stRTbHG9lXUyDMLDWA9YutK+phx8
 aEE2bkAx4HyHJrkkR5LadTpDRs8scwD23/4A21toQh8IdLhlc0U7oUXFtbanC6necQ/I
 cN/NnDVIvJroRt+zilOjAswBO/2Y/D8puQ1i5xugD/swhY69O2n3CorcQxGCoHH+Nrbs
 fhCg==
X-Gm-Message-State: APjAAAXp7P6Y5BK2CjDs7Tj5gGPNzRUO++bp+u4Vum0cyhkAE1Hvmowa
 5S33wNnbVnmF3gRfzJOqIZGS3isW
X-Google-Smtp-Source: APXvYqxBZiRxV8q08TSMKchVl/GQr4AJB1E/7X1Qboxu7UaF1qNqvJ7pwpHbrpQvTRZKOmexP2cjYw==
X-Received: by 2002:adf:f78d:: with SMTP id q13mr20308734wrp.220.1558807903867; 
 Sat, 25 May 2019 11:11:43 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 00/14] pwm-meson: cleanups and improvements
Date: Sat, 25 May 2019 20:11:19 +0200
Message-Id: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_191146_361004_0E39DDF6 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This series consists of various cleanups and improvements for the
pwm-meson driver.

Patches 1 to 6 are small code cleanups with the goal of making the code
easier to read.

Patches 7 to 9 are reworking the way the per-channel settings are
accessed. This is a first preparation step for adding full support to
meson_pwm_get_state() in the pwm-meson driver. Patch 7 makes struct
meson_pwm_channel accessible from struct meson_pwm because
meson_pwm_get_state() cannot use pwm_get_chip_data(). Patch 8 removes
redundant switch/case statements and ensures that we don't have to
add another redundant one for the upcoming full meson_pwm_get_state()
implementation. Patch 9 gets rid of meson_pwm_add_channels() and moves
the pwm_set_chip_data() call to meson_pwm_request() (like all other PWM
drivers do - except two).

Patch 10 is based on a suggestion by Uwe to simplify the calculation of
the values which the PWM IP requires. The nice benefit of this is that
we have an easier calculation which we can do "in reverse" for the
meson_pwm_get_state() (which calculates nanoseconds from the hardware
values).

Patch 11 implements reading the period and duty cycle in the
meson_pwm_get_state() callback.

Patch 12 removes some internal caching which we don't need anymore now
meson_pwm_get_state() is fully implemented. The PWM core now takes care
of not calling pwm_ops.apply() if "nothing has changed".

Patch 13 adds support for PWM_POLARITY_INVERSED when disabling the
output as suggested by Uwe.

Patch 14 completes this series by adding some documentation to the
driver. Thanks to Neil for summarizing how the hardware works
internally.

Due to the changed PWM calculation in patch 10 I have verified that
we don't break any existing boards. The patch itself contains two
examples which show that the new calculation improves precision. I
made screenshots of the measurements in pulseview [0] for the second
case ("PWM LED on Khadas VIM"):
- old algorithm: [1]
- old algorithm: [2]

Dependencies:
This series applies on top of Neil's patch "pwm: pwm-meson: update with
SPDX Licence identifier" [3]


[0] https://sigrok.org/wiki/PulseView
[1] https://abload.de/img/old-algormjs9.png
[2] https://abload.de/img/new-algo4ckjo.png
[3] https://patchwork.kernel.org/patch/10951319/


Martin Blumenstingl (14):
  pwm: meson: unify the parameter list of meson_pwm_{enable,disable}
  pwm: meson: use devm_clk_get_optional() to get the input clock
  pwm: meson: use GENMASK and FIELD_PREP for the lo and hi values
  pwm: meson: change MISC_CLK_SEL_WIDTH to MISC_CLK_SEL_MASK
  pwm: meson: don't duplicate the polarity internally
  pwm: meson: pass struct pwm_device to meson_pwm_calc()
  pwm: meson: add the meson_pwm_channel data to struct meson_pwm
  pwm: meson: add the per-channel register offsets and bits in a struct
  pwm: meson: move pwm_set_chip_data() to meson_pwm_request()
  pwm: meson: simplify the calculation of the pre-divider and count
  pwm: meson: read the full hardware state in meson_pwm_get_state()
  pwm: meson: don't cache struct pwm_state internally
  pwm: meson: add support PWM_POLARITY_INVERSED when disabling
  pwm: meson: add documentation to the driver

 drivers/pwm/pwm-meson.c | 323 +++++++++++++++++++++-------------------
 1 file changed, 169 insertions(+), 154 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
