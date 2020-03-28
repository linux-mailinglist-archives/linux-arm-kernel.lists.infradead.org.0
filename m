Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5BB196334
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 03:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=onYEeOAJLqH9sRhVgcr8kTriAOQhFqtGFB9sLLKqQuo=; b=FeU5hxo6kEVqmf
	UW1yzVlE/RbaxKI16UROrU+9Kaq9ivGF3ZT3LPu1MNEVZn7xTnYsUn3Kr1Pf8fvWwqfYhOHO2K20A
	rGbhLtJTQ9SrNKypJ+Ina80btCjsvIdg7SFwx1vRq3+yaB7bEC5ByfEPgtjgWhqO4k8+gmJ3GmRDC
	p5k34XdrfJuh4gC2K3cJtOXrV5CZobHWgVEcjNf+8b1KiKCqyh3XlunKXAaA2FnSnY0W9dMB40AiE
	nbPwYLRdkpOckgmsM4CAuQz2OwNv3WB4RIlScyyxIozH/5o23+q1PxuPSFhMDs6vb0Wrfwi2kvGdO
	Vwe/tfxs4aggh7qH+Iew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI1Y8-0006r3-9a; Sat, 28 Mar 2020 02:50:16 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI1Xu-0006Tp-HN
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 02:50:03 +0000
Received: by mail-il1-x144.google.com with SMTP id j69so10666610ila.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 19:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=2T7espawJMH0SyrBBNkM4sZK6EGCQt+cUAnkbw8X+q8=;
 b=UIYixAiAO44c3MPcDqJ+yFWSoFESPl38VStvTMjsrJOy0IsBwRiHeMEbR5nA/3TkAg
 j5FovwdcFdK/ogckuQB6gKawnyfESHbFW6VGUGyCT+Jm/N/Ja40F9iCjMfnlWvkhh8sc
 UPhr+945c8/GdnIHfxCEboQPtjRttgswyyivqG2/rw64ZPTqZRGxUuu8j1MR/Llz98E9
 CEZUD6JHiiSYUlLoMTn2q2GOb6VIwlnQ6Wvyq2Ha7h0u3v5PH4Vbbh7sNjjU5mPSkCt4
 ii9lTJ71OByT/yOGVXXJ1c1ElQ9V+IezHQOhkWQv7JrSKaVcpZKmqR9zbE7VSUMtzPhl
 9EnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=2T7espawJMH0SyrBBNkM4sZK6EGCQt+cUAnkbw8X+q8=;
 b=c2hJwC2GfDrXhw/ppZIKQiguGQnMm3guDzyEEnh1ukYWObNZdd4IMinV4kN5+uJ82E
 i99s7rZyhy9zY7KLj8K5EopLAJOWXk554FVWtfDWsngxLcKdwT2VBBn5y7YUU2qtpsMk
 Ed1QRx+89bYVpdc2utbK7R9dpYS+F4uu9FQQYXe5CpXpkeNz4tC01JgaCYKbVmM0M2Jd
 pPGIiK5IXppf6QHFCy56nm416dOo5tfuRCDwVfzINI2YxQwhFBv3M/4AmVvZ4FB8phHc
 se7rJLTI+0z5KcymrwMZ/M3wcDhfHvQwV067dP098+DUTYLmwi02FWK48z2Zvv0LKCAp
 C9bw==
X-Gm-Message-State: ANhLgQ3h+VOxbgxEKN8InEDlkXbrB6UbK9v8veDr6wwSYZiBBTjw6vrY
 6eE4SWoDG06Tpfz5CAHXd02oucQgEYkyl77gO7vDBkK6
X-Google-Smtp-Source: ADFU+vu8brBOHjvUSXAejafUKJHfvGYcC5rvGqgefCeljGY9rSiNBTTc1qwA3lZCs0Mmew94vFBCEXJbPO00Gh/fpLA=
X-Received: by 2002:a92:4896:: with SMTP id j22mr2016718ilg.158.1585363799665; 
 Fri, 27 Mar 2020 19:49:59 -0700 (PDT)
MIME-Version: 1.0
From: Adam Ford <aford173@gmail.com>
Date: Fri, 27 Mar 2020 21:49:48 -0500
Message-ID: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
Subject: i.MX8MN Errors on 5.6-RC7
To: arm-soc <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_195002_647409_6EF83578 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Anson Huang <Anson.Huang@nxp.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am getting a few errors on the i.MX8MN:

[    0.000368] Failed to get clock for /timer@306a0000
[    0.000380] Failed to initialize '/timer@306a0000': -22
[    7.203447] caam 30900000.caam: Failed to get clk 'ipg': -2
[    7.334741] caam 30900000.caam: Failed to request all necessary clocks
[    7.438651] caam: probe of 30900000.caam failed with error -2
[    7.854193] imx-cpufreq-dt: probe of imx-cpufreq-dt failed with error -2

I was curious to know if anyone else is seeing similar errors.  I
already submitted a proposed fix for a DMA timeout (not shown here)
which matched work already done on i.MX8MQ and i.MX8MM.

I am not seeing huge differences between 8MM and 8MN in the nodes
which address the timer, caam or imx-cpufreq-dt.

If anyone has any suggestions, I'd love to try them.

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
