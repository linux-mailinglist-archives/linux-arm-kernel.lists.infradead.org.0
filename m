Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F96C9B2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hSl0exH9Cl6GW7Ad3W562KB2OVKt9AOINB69/Stj9AQ=; b=N4A
	yDp+/uBj3YggjKYn43Cpo+BJ260vZ+3Ojjumts1jNPykWyJ3deioFDwZEQbYAshx9kixwK1ypFQdm
	8IiFSk/c+9GEW4UavDrXTJ9uf8pJaEbT6QnpACxCWw/OW/tNuGeY4SQEO+hlKk7prOOyavzBf1w1e
	povioHIGH7f+wivwpRFSOZAZyEKfdD9q2wDsc/JYljx8BxUe1tcOg1UmnZBLm7eD6BvazNMGoN/fo
	s22wKjJ9wPlBEayazKJQ6tMH8Z9SMUNCur/WHF0mXllAFMlX/TpAymQDaHfE1jpuh3jH9S1ourjYb
	38rVbSOH3vP0hMuHDwBqU/OE82J67Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxpf-00027e-4l; Thu, 03 Oct 2019 09:55:35 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxpX-000270-Fl
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:55:28 +0000
Received: by mail-pg1-x543.google.com with SMTP id v27so1418050pgk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 02:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=e6qE7XB76qy7vrZGoWaWqzg5fBcTX3zqPmnTO48m2kI=;
 b=QQmX9/5Phtejcr1s1+XLaQd2GNoMEJRCgCi+qbyPv4OAQyhGeTxqwHOsoWcrQ3h4ls
 0PBrbMSml429sVGl9iiksabhKvcCNZRCsALpvqhhRxjstI3KJQrwjDS6cZZtK/8uOz4l
 sw1hkkpnKXuY6qZB/VyLeoze3Qm71B2UWxRvYm9T6dwL3Uo4zzJ4X0sxX7d+fbUbFohi
 MQHReNnKsu1eC2tK3k5llT2QaaFN0arIMNg3rOYbjbm3HBdJEdaLjyRn62TdLk6zDz+b
 h4HwvSOHP0ntz9Xs2AyqQLL/P+58M1xgZ+JylLH7VXlj/IqJAX0lv7FPnnILMKpKufPl
 Zu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=e6qE7XB76qy7vrZGoWaWqzg5fBcTX3zqPmnTO48m2kI=;
 b=AAzqQ5LxcLCYJlUirQ9aOY7lBCMqy3QOEL+Ga2LZ70NU7RkCAk/pzPb6p/SyE58YCT
 tgHDYINx09sGCOusDZvmI7gUmMDjPn3/URP9df4a2jugbuJW9QqSiY0CYdHRA6b29MO6
 7DwCqhaWS+jNJ6sma5LmceMLDKG6jFUdVzMNI3i0qbu1KJWwGr5GMigUb+tYlf5/V/Iu
 pv1ozLTKl8777wGX8de9DAsfn3rhPTe8ccAyJljR5UjdNFkS8NRhIFow/migs6lzJtXB
 Zoo5WP8q5reaeNzSgI7spGIfq0LbnJiCEqYOU7vhXnQd2y2mkAkApboW8GdE7Sy5XyX3
 j5tg==
X-Gm-Message-State: APjAAAW8SiDDMexKp7xz5Bj9+EXZvsPRpb7MvcEFnJBMgDeurOLsJJmm
 D+bV2iBRbvpbPBEHYz4BT+4s
X-Google-Smtp-Source: APXvYqzydIQYXMnyCqqO3yg3J8kBycFk+XR5FrVUknBJE3cp5jNvElNBPUavGxIrF2g9kfibWX3bzw==
X-Received: by 2002:a63:ed10:: with SMTP id d16mr8924685pgi.307.1570096526650; 
 Thu, 03 Oct 2019 02:55:26 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:801:ac5d:fca3:6f38:70fb:67fc])
 by smtp.gmail.com with ESMTPSA id v3sm2346171pfn.18.2019.10.03.02.55.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 02:55:25 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org,
	sakari.ailus@iki.fi
Subject: [PATCH v4 0/2] Add IMX290 CMOS image sensor support
Date: Thu,  3 Oct 2019 15:25:01 +0530
Message-Id: <20191003095503.12614-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_025527_529234_ED04E8C6 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This patchset adds support for IMX290 CMOS image sensor from Sony.
Sensor can be programmed through I2C and 4-wire interface but the
current driver only supports I2C interface. Also, the sensor is
capable of outputting frames in following 3 interfaces:

* CMOS logic parallel SDR output
* Low voltage LVDS serial DDR output
* CSI-2 serial data output

But the current driver only supports CSI-2 output available from 4 lanes.
In the case of sensor resolution, driver only supports 1920x1080 and
1280x720 at mid data rate of 445.5 Mpbs.

The driver has been validated using Framos IMX290 module interfaced to
96Boards Dragonboard410c.

Thanks,
Mani

Changes in v4:

As per the review by Sakari:

* Squashed the MAINTAINERS changes with driver patch
* Some misc changes to the driver

Changes in v3:

As per the review by Sakari:

* Switched to pm runtime
* Used link-frequency property
* Removed useless read calls from buffered read function
* Some other misc changes to the driver and binding

Changes in v2:

* Added Reviewed-by tag from Rob for bindings patch

Manivannan Sadhasivam (2):
  dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
  media: i2c: Add IMX290 CMOS image sensor driver

 .../devicetree/bindings/media/i2c/imx290.txt  |  57 ++
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |  11 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/imx290.c                    | 885 ++++++++++++++++++
 5 files changed, 962 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
 create mode 100644 drivers/media/i2c/imx290.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
