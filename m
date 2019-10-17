Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4B8DB868
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 22:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IkII/tfRxAjyanisRosRS6EXCjFsB8Av2Kipe3yd6R8=; b=cOmJ8XiABw1JWw
	s3QuyBJIYTvGTaoPz7OXKW81A771i93VeSHbi0XoWckR/p1DQYvC44/upjcAezvlvXKVowU97n9Px
	JxOt8WjljYyWIEPVIcKRRa/4xE5Aj9ai2HqV8SSuVFvooVReeGLVN15mrGvFQeKKT+Z4zx88P6vDu
	1/0fngxyf+6dn0MCdHwN8IZkXZ1VXzVWeP//SwROBk/Ffvl7wATxkfcwCOgXJVUll8qrq01CB3Ho/
	qgtkC557sWsVri51NRMrXK/4GOBtafI3vvdh60y22WjW6WhUno8XFm+vsqJBdzAuyLISL8BeBQvhG
	cXDxWqvZ3R336IytJAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLCbR-0001yp-6o; Thu, 17 Oct 2019 20:42:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLCbH-0001yJ-FH
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 20:42:24 +0000
Received: by mail-pl1-x642.google.com with SMTP id q15so1690605pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 13:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nPDOMJGsHH0zWzPAXm/wI3oxwPr0hf8L0/bKy7cCfl0=;
 b=JY5V0+zsgcHQRg+zIlfgYCnfvpm4+2xS++Wrh5CZKpfPmBH97fjeKguHx2KGQ7JcU4
 B1RXuRi2+tSbaAqaGOzzASRHJj++kOC+LCAmQDJSPeyZb8DnL2mMRwlPiCwzdPiCWlUs
 Xh6p7h9kKxZsBiq/NA6sEtIH65uq9Hafzf+lUVMfb8ijpYSuTXaNoiTNqv9sFEtuUwOt
 TbRUWF7kiHt5lcy828hYBACk5tIrtJaTrhPuN5uMVq25g5F/5h3tPmTd5qmwS88pYnAg
 2zZJVCktgXrf3VCPK9oywT03Y57xan/2a7SgrdB9dfI6+pIu3+CRznM3ZR/GkKdN2cf/
 aCKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nPDOMJGsHH0zWzPAXm/wI3oxwPr0hf8L0/bKy7cCfl0=;
 b=VvNqRpRf7sSSnIwKxuGZBLPnnY7//PX6um+yoYejrDdOB4krDlAkbFg+PM5i0S3jo6
 Q4XiLBV2GiMs5nsMMx5t1XM1ocCrsRcMKbEL3rqF3b1ddwrZ6rVhPUwXYFLUY6XoAhQf
 6rSBpH2x+OBN1nxhOvJZdyAFiM1H1G5mBj7NUt4zhcC/ADi0/IURXqUMrGNka2onvzxA
 2ge+S9wcB6m2D+hvWkKGmz4QO5BbO3SWJ/NDahTjszhowFDQ0oBBDbNlSqaxLJEwK34c
 YxKCbqbzBI6el/W3SrmZ7E5Vt/e9uu1KWRGbu7qIwUiupDix0twzy3L52340tlit/GPR
 RjhA==
X-Gm-Message-State: APjAAAUJ8GobdapqPjTiO43RfU1w+Kfpf4sje7N0ccH5xCEvLDKDFl48
 G6NiF/bK+ecpk60pI12nuD0=
X-Google-Smtp-Source: APXvYqzB6sY5K36yP5ikWTXLkI1rfufnmBl38JrsxdSekitFu0TG7m6r9+16waKtOEprzS9jLoRCDw==
X-Received: by 2002:a17:902:2e:: with SMTP id 43mr6159836pla.55.1571344941448; 
 Thu, 17 Oct 2019 13:42:21 -0700 (PDT)
Received: from dtor-ws.mtv.corp.google.com
 ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id b3sm4626365pfd.125.2019.10.17.13.42.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 13:42:20 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: linux-input@vger.kernel.org
Subject: [PATCH 00/22] Stop using input_polled_dev in polling drivers
Date: Thu, 17 Oct 2019 13:41:54 -0700
Message-Id: <20191017204217.106453-1-dmitry.torokhov@gmail.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_134223_536616_163E1CCF 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sven Van Asbroeck <TheSven73@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Jonathan Bakker <xc-racer2@live.ca>, Marco Felsch <m.felsch@pengutronix.de>,
 Stefan Agner <stefan@agner.ch>, Eric Anholt <eric@anholt.net>,
 Jilayne Lovejoy <opensource@jilayne.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Miloslav Trmac <mitr@volny.cz>, Anders Roxell <anders.roxell@linaro.org>,
 Anson Huang <Anson.Huang@nxp.com>, YueHaibing <yuehaibing@huawei.com>,
 Luca Weiss <luca@z3ntu.xyz>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Jeff LaBundy <jeff@labundy.com>,
 Mukesh Ojha <mojha@codeaurora.org>, Brian Masney <masneyb@onstation.org>,
 Pavel Machek <pavel@ucw.cz>, Alexios Zavras <alexios.zavras@intel.com>,
 Steve Winslow <swinslow@gmail.com>,
 =?UTF-8?q?Ronald=20Tschal=C3=A4r?= <ronald@innovation.ch>,
 Martin Kepplinger <martink@posteo.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, Dong Aisheng <aisheng.dong@nxp.com>,
 Alexander Shiyan <shc_work@mail.ru>, Richard Fontana <rfontana@redhat.com>,
 Maximilian Luz <luzmaximilian@gmail.com>, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 Enrico Weigelt <info@metux.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Input devices now support polling mode natively (via input_setup_polling
API), and input_polled_dev implementation is going away. This series
switches drivers found in drivers/input to the new scheme.


Dmitry Torokhov (21):
  Input: raspberrypi-ts - switch to using polled mode of input devices
  Input: sur40 - switch to using polled mode of input devices
  Input: ts4800-ts - switch to using polled mode of input devices
  Input: tsc6507x-ts - switch to using polled mode of input devices
  Input: adc-keys - switch to using polled mode of input devices
  Input: clps711x-keypad - switch to using polled mode of input devices
  Input: jornada680_kbd - switch to using polled mode of input devices
  Input: gpio_keys_polled - switch to using polled mode of input devices
  Input: apanel - switch to using polled mode of input devices
  Input: wistron_btns - switch to using polled mode of input devices
  Input: cobalt_btns - convert to use managed resources
  Input: cobalt_btns - switch to using polled mode of input devices
  Input: sgi_btns - switch to using managed resources
  Input: sgi_btns - switch to using polled mode of input devices
  Input: rb532_button - switch to using managed resources
  Input: rb532_button - switch to using polled mode of input devices
  Input: gpio_decoder - switch to using polled mode of input devices
  Input: mma8450 - switch to using polled mode of input devices
  Input: bma150 - switch to using polled mode of input devices
  Input: kxtj9 - switch to using managed resources
  Input: kxtj9 - switch to using polled mode of input devices

Jonathan Bakker (1):
  Input: bma150 - use managed resources helpers

 drivers/input/keyboard/Kconfig             |   4 -
 drivers/input/keyboard/adc-keys.c          |  36 ++--
 drivers/input/keyboard/clps711x-keypad.c   |  70 +++----
 drivers/input/keyboard/gpio_keys_polled.c  |  65 +++---
 drivers/input/keyboard/jornada680_kbd.c    |  37 ++--
 drivers/input/misc/Kconfig                 |  15 --
 drivers/input/misc/apanel.c                | 153 ++++++--------
 drivers/input/misc/bma150.c                | 190 +++++------------
 drivers/input/misc/cobalt_btns.c           |  73 +++----
 drivers/input/misc/gpio_decoder.c          |  42 ++--
 drivers/input/misc/kxtj9.c                 | 224 ++++++---------------
 drivers/input/misc/mma8450.c               | 101 +++++-----
 drivers/input/misc/rb532_button.c          |  48 ++---
 drivers/input/misc/sgi_btns.c              |  54 ++---
 drivers/input/misc/wistron_btns.c          |  51 ++---
 drivers/input/touchscreen/Kconfig          |   4 -
 drivers/input/touchscreen/raspberrypi-ts.c |  38 ++--
 drivers/input/touchscreen/sur40.c          |  92 +++++----
 drivers/input/touchscreen/tps6507x-ts.c    |  36 ++--
 drivers/input/touchscreen/ts4800-ts.c      |  68 ++++---
 20 files changed, 557 insertions(+), 844 deletions(-)

-- 
2.23.0.866.gb869b98d4c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
