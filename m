Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9FF1C936
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 15:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUO6DKy/232meC0AEZgmYDu6Jje6jMZw1+5QBWQ/bGw=; b=QrBfx7f4FLVBXr
	HPuCv7JrbX83AAKntQkTqxy2j1Ksxm+i8DUcdSeK27zDSxhnEpLQW7Eo51UMozh4l8Ia2HipcCmHh
	FqXyJKlmJuDGgrTxrX2CTH76TSTdg+UUVQxUhbv68p0dR8jA72G8QmHPdexnC9x41374gTXm96V2U
	IUzsISagaL9BCa4tia9t8OUSHaY7iYS60sGYX/ezHTPNIk6r1sWrQU2265GxqNZ6kXX7IQRoMuy/U
	XXoyMfvTm2emEFHEdAUc+ixCGIy6Y2ri/Dsj3rkn2ug0VqrBE5y/s0Ga+TdEhRezF/0wbjljSQ/yk
	QNg+Aoxipf3ybw3zcjhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQXCB-0008BO-Fn; Tue, 14 May 2019 13:10:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQXC4-0007qW-Ey
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 13:10:09 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so14233146lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 06:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QxULgCJJU6whyZ9y0hS1oF9JuMI5zQD1en38bvt/B04=;
 b=lN5eWoC/jDjSyyHYjsETGV3wO4lmD1qhUt9I/X6uZg166ukSlKLjDy97fwHc8kdHx7
 R/Hqx/VUzwjraqdNgeNp8JvxEKpGWnJL4cpmrnyExFklpILKvT8FAzCxutETAECKDLHL
 NbCWcFBGHRXud7p3a7+wXZHeaqDFlfevh/ENvawZbnS8z9Vn/PuNIYEsKTNrW8MxGumV
 g1YOmRH/C1ZMIp/IdkKNUMRm/pKKcnlbmFOQopvfHgRraCah1JWGDTv3K15cx1wSryma
 ckY/KlrLOpWi0Q9D8OdKcVBSIV43FIe4ccRG+nHRTVVHodonNvo2KX6b8kQt/uIFjDZ6
 si8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QxULgCJJU6whyZ9y0hS1oF9JuMI5zQD1en38bvt/B04=;
 b=Wg3Kl6ycfgvqh1UesDhcyCYnQaBGa/cruEnyrvITA6XH0bc/fuSVDSjChoaJg7mvZl
 +0Wzl8lYbixteWX1jcDTgsI/QzRIPlaqsM645YggS3VbWv9kr+noyA3DFIA3ZbIgDuc8
 tbQY7xnxF3SV6bkyV6nqQy4WaCs8aKX/34jNr+RNB1mefLefDTNDRTiKcFw6h/4TJ7Ar
 LqhBtpedxUSoTQ7zsBU5z15KKLTWCR1MK7sDvNVF3PwNr6RmgsDNNfsQQqJpf/ukHTW5
 t3+nt15mi3hUl6coQjmwveuzjgHH0XWYK42mbynQDnOigMAr8hLmtf4DkJvYlUEQNHNA
 6R2Q==
X-Gm-Message-State: APjAAAXmmxIItLWlTQ4Q74zRIjxq7ygOb7XlmMH+xz2jn6AMNffyUJhW
 CWpL6+51TTaClugWOEXxZDU/JmJSwsxn+dcruvg=
X-Google-Smtp-Source: APXvYqznroPJOcau3kywVIDJUSjhKgHyMhu+kPXLeokQZNIPG5akh0m7QdmTeIGkxLnrBgQDylGneEsMLTsOxBwZaVE=
X-Received: by 2002:a2e:5dcb:: with SMTP id v72mr18139620lje.54.1557839406129; 
 Tue, 14 May 2019 06:10:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190513202258.30949-1-angus@akkea.ca>
 <20190513202258.30949-3-angus@akkea.ca>
In-Reply-To: <20190513202258.30949-3-angus@akkea.ca>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 May 2019 10:10:02 -0300
Message-ID: <CAOMZO5BXq0nFBXtWb2cXQkqnv672vkWyyC4QoyQE2PyPmXdgUQ@mail.gmail.com>
Subject: Re: [PATCH v11 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_061008_506228_2B74517B 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 5:23 PM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
>
> This is for the development kit board for the Librem 5. The current level
> of support yields a working console and is able to boot userspace from
> the network or eMMC.
>
> Additional subsystems that are active :
>
> - Both USB ports
> - SD card socket
> - WiFi usdhc
> - WWAN modem
> - GNSS
> - GPIO keys
> - LEDs
> - gyro
> - magnetometer
> - touchscreen
> - pwm
> - backlight
> - haptic motor
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
