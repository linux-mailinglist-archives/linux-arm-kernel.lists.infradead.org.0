Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C089A17A651
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 14:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kgYG8enV/oUcrqDGaMvIe+FKuTQNu/qVipJBfn7+b6Q=; b=GsIRR1FDedMz6i
	lv2ifeOrC/GNi+ULOUHqCll6g8+VlXrrKeVcUZ7889KCwzfVRJgMqw3jWF2uMIaBJUmLZPVfmCqrS
	RB7CXFyPViCcvdrlt8Czpm1+U8GxCYDq230NrJubSED+K18aqczZA96dy5n4mVJPI+qoLyyZZIR7Y
	0NC1wkqZGz/Nvb51rTJdzcOoglEWXRiom99YuTiNmwETtm8KSUVdWOiDDZnKWVktBm8Y8hQzOomPe
	EczIGjCPsX1y6P8FtCGV4kHGVWMN8fYUGJXOcqzhXZC74J0Rfwyn4xxt0s4vbEtnZuYEvcJx/E4wW
	87PQBD2txAo1UUkhz7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9qVx-0007IO-Ar; Thu, 05 Mar 2020 13:26:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9qVq-0007HD-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 13:26:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id m3so5740141wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 05:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:organization:mime-version
 :content-transfer-encoding;
 bh=NzJlwBLu2PMXJhvFCCamBP6u57AQ/SuSFKrWPDuWILQ=;
 b=a697x9HiNkVQHItHTfxnttcSwWbaOhPz9ubP9b7NU9x/EP2Y2QUzX3zhaQVac6U4OL
 nteXZTLu5Z+SoZQm73w7R7oMIW9uuBa8Z1p5uqOE+RWUmjk0Px932a3MQMZAacBtTB8p
 AgWpqtFPPbqkbHLv9n9Xxsl4md9xcvfa0sPGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:organization
 :mime-version:content-transfer-encoding;
 bh=NzJlwBLu2PMXJhvFCCamBP6u57AQ/SuSFKrWPDuWILQ=;
 b=OQnhcnClo0oKVbCkELatIKxwglGpKWJgIWmFW5l6ihDjc70dSkF2UBxhtxLzXzeAdZ
 dvTgk3NmdNaCk+tAJxJIZOt3cqzGYDtMpU2QQhDTOnKCli7ZMCAmSCEx0Wdvn/XGu4ug
 BejWZiWMI5XMJm+wO5MX0fYC3YeyicIYT4CkTa0e7R6ZnUprNyc0PJSd5ukhup+Oq4CB
 5w54TN+4GyiMTXZhxdq9hVMl4fz9h2AsuhovpfIQIJ2hBkBpwuqM2mb6SYNppE9gdo8P
 1KuhtijTx7UibQdO25yRXQ29wcbb0DwOu8AlPGRmn7JyCzA38gKURJEpg/Iu89cfILnt
 to2g==
X-Gm-Message-State: ANhLgQ10QsHvzh1GHxMLVSV4JktEXpEH6j1R3wiyu01clyM+Y30CP7Tb
 F0iD/Qw5ubq5P36XZVeb/5vfpQ==
X-Google-Smtp-Source: ADFU+vu/gQ9srOP39BIyg7ghYVlTbTb3qRklu4tSmUPv6SYBuqzYJ8pXCVAKp9igdxtEx8MyKa6QPQ==
X-Received: by 2002:a1c:a4c4:: with SMTP id n187mr9982366wme.10.1583414764858; 
 Thu, 05 Mar 2020 05:26:04 -0800 (PST)
Received: from ub1910 ([213.48.11.149])
 by smtp.gmail.com with ESMTPSA id j20sm9477139wmj.46.2020.03.05.05.26.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 05:26:04 -0800 (PST)
Date: Thu, 5 Mar 2020 13:22:32 +0000
From: Paul Barker <pbarker@konsulko.com>
To: Thierry Reding <thierry.reding@gmail.com>, "Uwe =?UTF-8?B?S2xlaW5lLUs=?=
 =?UTF-8?B?w7ZuaWc=?=" <u.kleine-koenig@pengutronix.de>, Shawn Guo
 <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Subject: Inverted PWM output on iMX6
Message-ID: <20200305132232.1aced378@ub1910>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_052607_029681_A3C0D61F 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi folks,

I recently ran into an issue using the pwm-fan driver with an inverted
PWM output on iMX6.

The fan is defined in the device tree as follows:

	fan0: pwm-fan {
		compatible = "pwm-fan";
		pwms = <&pwm2 0 25000 PWM_POLARITY_INVERTED>;
		...
	}

In pwm_imx27_probe() the support for a third `flags` argument in a pwm
reference is enabled:

	imx->chip.of_xlate = of_pwm_xlate_with_flags;
	imx->chip.of_pwm_n_cells = 3;

However, the flag is ignored and the output is not inverted.

By adding some prints I saw that when of_pwm_xlate_with_flags() is
called, args->args_count is 2 instead of 3.

Looking at the definition of the pwm device itself in imx6qdl.dtsi I
can see that the number of cells in a pwm reference is set to 2 not 3:

	pwm2: pwm@2084000 {
		#pwm-cells = <2>;
		...
	};

That seems to be preventing a third argument from being passed.

I can change `#pwm-cells` to <3> and then everything works for my
device but I'm not sure that is the correct solution for everyone. That
would require all pwm references on iMX6 devices to use 3 cells. The
code in of_pwm_xlate_with_flags() seems to be built to handle either 2
or 3 argument cells but I can't see any way to allow this choice in the
device tree.

If the solution is to set `#pwm-cells` to <3> I'm happy to send a patch
which does this and updates all pwm references in device trees which
include `imx6dql.dtsi`. Before I do that I'd like to know that it's the
correct approach though.

For context I've confirmed this is the case in Linux 5.4 and that the
relevant files haven't changed between that release and 5.6.0-rc4.

Thanks,

-- 
Paul Barker
Konsulko Group

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
