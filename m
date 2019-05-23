Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8156F27D70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 14:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=by/Ax12cW78CKz8M8eka7iN5w7EVCBks5dbM/atu9ns=; b=sYnD/sxfDLjKLf
	uLn5WDdENP6Ex+fme/M12wbMs6Vqou9TSodT6PVD5OrKo2LBJsvklxDNrzJU1u+6OZv/GAAgvBoII
	GcgBTnUimSCgPlQzafw5S8IkPVy/+M0h//AjqTyv1/+PIjEif3yIzaMj7DwEQf6qLmDp/VaTJvQ48
	0c7NVWyfxKgD/VUicVVIZ9kngl9kQAiF2bqlLz2EWbUV2Xyq3ZoEL/vDEihrrofCHrQpLaJByZlAw
	+Moh8GlCk3Cos7WyN07cjZRWSSWwPwgAAcpGXySArfx1nISbXjYWEeeMLhII315rJpT6N+4q1ZjWL
	3VSkZobZ00+HzqCiD7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnIh-00052I-6I; Thu, 23 May 2019 12:58:27 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnIY-00050T-Tq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 12:58:20 +0000
Received: by mail-wm1-x335.google.com with SMTP id c66so7070202wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 05:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/wtiYR2xsTC11waSO0yQUkZ4S3S31FqfgaPX+rcr4s=;
 b=r9PZXAbFtJJPPvfQKRF6s1VHnG3klpb3OOQ9YbAaVc30OrfbyFjPcDaG8WTk7KnD/L
 wk6pIuXqTf4vOm2od99w7Gexv/tKuwTYb/vvCeEwIvK80SqkgbvRsJ9FHuQDWtuoG53H
 OZS6AEaWh89rv6PE3k7On3pIorUmC1ToiWFgTxcPTKuwsTx145B0OMOU5GVR61icBFtY
 dTNkQTBVq+F2qSfvgl6CUyFZqUFozzzOLBmPlmw/h2zLtgvG4ulfOqeRzAFhGIymUDff
 1H4lDDPPZt+UeupJvdXu8X7wV/wRH75j9sWdmyEAu2GXXQZ39U0OI6mZ4Mq4Ryu8vwLF
 jWZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/wtiYR2xsTC11waSO0yQUkZ4S3S31FqfgaPX+rcr4s=;
 b=eUBqFJ3aUsOv9YgiKUEtKIcgidlZ7IX180SfZjp1ZLp14KxZTMK6S37xWkUOaNXd7C
 CGvKaRaSjGWxRP5uAwWJvH5skRJQoQc/4lvZdak4jTkb5f6sHcQAp1+sLEP0rq3gq/sO
 Vd+wshvJFlHYA9a6a4t5cnmEhcioCxeTAc8yaQ0v4jyzTbAh8mSfw9KPBDoSQgxxhvik
 CAP5GFXfMPUrCiCB0eSYZyQS+32SLPpNQuQ4plslLngbiJKZzwrCI/DFtWWJvaMUiRLX
 Ovghu254MeZVdCt1Og3F2WlqF40Oh4eRZM0gS7+uItLMQX921i7f/OA8pZWbYxZJOQpJ
 OgHQ==
X-Gm-Message-State: APjAAAWnvX/ID9fscXdKsRSttT/iDghxZEnnThzEz9bDn1NoEhcUsL5b
 waRvnm1+2ruCAiAO5huD0i+eiw==
X-Google-Smtp-Source: APXvYqwK7EF3A/sETDYJqJjEvH+9WhzGaBLe8eflWij1cL5o/3OTIchEO4ol0wDyLjpwfdW/vL7BGQ==
X-Received: by 2002:a1c:a958:: with SMTP id s85mr11479598wme.144.1558616296604; 
 Thu, 23 May 2019 05:58:16 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id s13sm9876118wmh.31.2019.05.23.05.58.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 05:58:15 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [RFC v2 0/2] clocksource: davinci-timer: new driver
Date: Thu, 23 May 2019 14:58:11 +0200
Message-Id: <20190523125813.29506-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_055819_016550_FC51489B 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Hi Daniel,

this is another try at the davinci clocksource driver. Changes in
regard to v1 listed below. As before, the driver is split into two
parts (one for clockevent and one for clocksource).

v1 -> v2:
- changed the format of the copyright notice
- removed all mentiones of the periodic timer setting
- added caching of the TCR register value so that its updating doesn't
  require a read
- split the timer configuration for clock events into the
  set_state_oneshot() and set_state_shutdown() callbacks

Bartosz Golaszewski (2):
  clocksource: davinci-timer: add support for clockevents
  clocksource: timer-davinci: add support for clocksource

 drivers/clocksource/Kconfig         |   5 +
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-davinci.c | 355 ++++++++++++++++++++++++++++
 include/clocksource/timer-davinci.h |  44 ++++
 4 files changed, 405 insertions(+)
 create mode 100644 drivers/clocksource/timer-davinci.c
 create mode 100644 include/clocksource/timer-davinci.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
