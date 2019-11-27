Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D986010B6FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 20:45:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8KaM9/B6X+mYWol3TYdNMl2943FTQP5EbTFhE3z6udI=; b=L6UpnnI5XNMTko
	CuOz+qyO21p31L48DpTcyGGRNTuwOp3X+JyNnAt0MQQTmKBIqHO1+JC1DvvBPIO2gt3oPAZEIh5Iw
	jxHbyaS/+XXA8z+6NrZXfi6vnG+o029HdN4PiOek81tkye49EGCdx+alVVofhshf/NOW9SRXAXCUa
	u0LpWWbbIOziv9eLCYBZ9JW2ps1fKj9Z9vzcfqeNQCzBzZDxm1MIeixRdfvZ8aQEFi+c4hEWcpUMq
	/mydbYurr/YC7fmZeSweGd2JtN709FVGqx1bIDm6McFVrIzN2D1mxM0tyUNQ7E5imxc9mksqW66uS
	ZN32G17iEcJX6SsOuSGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia3FH-0001BA-PV; Wed, 27 Nov 2019 19:45:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia3F6-0001AU-2I
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 19:44:53 +0000
Received: by mail-io1-xd41.google.com with SMTP id s3so26251031ioe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 11:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JkBh9nZ4d1Mjj7D298qnbqHDDohOhtH9Rt6HWk+4d2k=;
 b=enZ5Rj6U22Yrwy6nCsHHAVUtmWP2EhQStJL8ungoozR2CsEPcLMiwvAkfoBNbg//M0
 mbG/S0zeNVmsWfQBJLz99X5LvVLrkY+ao4Klf/Y3mQn5Ik/Aj/IFoyXAamSxYR+FIKe/
 0Zl9VCDuoRSEqdGTV9A67DgYR7ltQ9rRPkQ11lg0+UDodVuRi8vH4NxNxnpTxIN0fm2B
 sok/dkOsRHBtamcEf9oYXqeTvz227dkonyTexdOGBjulPKjp0uq1kGcwukcUa0mgtxTZ
 GrOLRiKb39w0dqjUdO/0jPcwSYn1Gy0XAYdKgjVNl/zeVaVhvwBIk6llsOC9pVpw9SiD
 77qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JkBh9nZ4d1Mjj7D298qnbqHDDohOhtH9Rt6HWk+4d2k=;
 b=WZtYhVghLyLbNi+Szb/4SBHPJ/8a9gi1h/ysPLaczKxgzRI1lrKzT4l6J+v94jTRLM
 tKU69g9A7SW42BwtVCAHfwsYvQ4gOEZKBFDlEByrrl8VVfCBK8wkoD7AmARliAcR0Xrt
 2tz2Oi7D1blWlXX9QZ9dFi/1ub/d37vMtGxc5kmhIBufqbQ/SS0vuTSSgd5wifrdL90X
 D/9iXSMRqOnvnvdtsGwHcYXlVk+wnzVMtuaERSpFhFhBcq/Y3qyIPMPXuv2YQtnWcZ2z
 dxBPgFW5Igkr5mSc74uzjWC73MufXtlOtU4L5I6nDcoIXiyxuAE8hwC1c8pqnQiWlMGy
 NpRQ==
X-Gm-Message-State: APjAAAWQAp9tX5rHRG9ftXTU7lrlyIjKPYIwJTNur2vUps0DbWbiJ4FW
 I+lOlUkiUIVQYQTGoNVNVf2kPmB2vPZ12848a8I=
X-Google-Smtp-Source: APXvYqyyxziPAelILyTg664cHIWmPn+fz/UNPf2PsuJoQe1urUaJkiSTDxDeRsNDpEcQnqWvRh0cBA4L6uJWoDd2Ywo=
X-Received: by 2002:a02:3f60:: with SMTP id c32mr6155122jaf.30.1574883889954; 
 Wed, 27 Nov 2019 11:44:49 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
In-Reply-To: <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 28 Nov 2019 03:44:38 +0800
Message-ID: <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_114452_138887_C1036F4D 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Vasily,

Thank you very much for your work on this.
This looks good to me.

By the way, I would like to ask comments about adding the following code.


diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index c0ed60782b11..579dde5e0701 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -629,11 +629,63 @@ static const struct of_device_id of_ths_match[] = {
 };
 MODULE_DEVICE_TABLE(of, of_ths_match);

+static int __maybe_unused sun8i_thermal_suspend(struct device *dev)
+{
+ struct ths_device *tmdev; = dev_get_drvdata(dev);
+
+ clk_disable(tmdev->mod_clk);
+ clk_disable(tmdev->bus_clk);
+
+ reset_control_assert(tmdev->reset);
+
+ return 0;
+}
+
+static int __maybe_unused sun8i_thermal_resume(struct device *dev)
+{
+ struct ths_device *tmdev; = dev_get_drvdata(dev);
+ int error;
+
+ error = reset_control_deassert(tmdev->reset);
+ if (error)
+ return error;
+
+ error = clk_enable(tmdev->bus_clk);
+ if (error)
+ goto assert_reset;
+
+ clk_set_rate(tmdev->mod_clk, 24000000);
+ error = clk_enable(tmdev->mod_clk);
+ if (error)
+ goto bus_disable;
+
+ sun8i_ths_calibrate(tmdev);
+
+ ret = tmdev->chip->init(tmdev);
+ if (ret)
+ goto mod_disable;
+
+ return 0;
+
+mod_disable:
+ clk_disable(tmdev->mod_clk);
+bus_disable:
+ clk_disable(tmdev->bus_clk);
+assert_reset:
+ reset_control_assert(tmdev->reset);
+
+ return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(sun8i_thermal_pm_ops,
+ sun8i_thermal_suspend, sun8i_thermal_resume);
+
 static struct platform_driver ths_driver = {
  .probe = sun8i_ths_probe,
  .remove = sun8i_ths_remove,
  .driver = {
  .name = "sun8i-thermal",
+ .pm = &sun8i_thermal_pm_ops,
  .of_match_table = of_ths_match,
  },
 };

Yangtao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
