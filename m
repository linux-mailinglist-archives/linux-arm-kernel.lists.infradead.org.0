Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AEB151037
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 20:20:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L9lz6BGs9rqnjlu7J3VNEyCOiiZvZFTzcQQoGV88BOE=; b=XN+BPZgbRtCdnR
	EBUs8HeccmxGM6FC2y7dsGa2m8EOMNel/o7QukAJP1zvDbfoJF3Hbr2+9cs42/Z1BnIaWPjDeQdqG
	RVYr8+6H8VaJvH8RtCPvkalttj4a83kqsjDGFJPKwPNYLHRj6Ren3sTRCwrRBXXVLObIWmol2iTYw
	N3NJPwq502HriXb/ygyKls91P7LRHIv8OCYFwW/pXhkudPfAy15FxeGYSiD6UZnfdUz4VoCdsDVf6
	uQ4HUA3y9FGfpJCptYGRLOXcHbTxuqgQ1kmKXWs6IqQRJCWS71NcdDGZS/bcEjsq0970+mBIZkrit
	GOLJdlVshjo4vWjSHvwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyhGY-0001DL-2U; Mon, 03 Feb 2020 19:20:14 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyhGL-0000u3-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 19:20:03 +0000
Received: by mail-lj1-x236.google.com with SMTP id r19so15895081ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 11:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=nslNUHlX7EIFDFgPaHrgVbpEWBtUd3831cJkStBtU+I=;
 b=lTUu1JKZSt4xgIzEs9N8gfA2saROUBzQ0miGai6+hBgzfuwNWHwgf8nqSSmobAYzT9
 7A/N52yVg3+/75muokcHAgBFZQv4bKgbiV0LjU/vQ3/ZcLm45pLwtnKeogCX06qxKRci
 Xe/SPIiVRB9EesuLwyZnUjK9M1roNi7BBKMA/SaeBaNa/M06IQhhAnh2lDcsV1uZkOx6
 oR7rySnkLTvhx9LR5c4TJD5FG0+naADZAyvlXeA9vb9QZ6HOF9nsX4+q92A81Sv+0K10
 7CMq4b7mLNlFnMP5pLq297ZGI3NAeB6m4qekeJPF6b5cvGDbsDk1Z3/GBlj5jbl/E84u
 rPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=nslNUHlX7EIFDFgPaHrgVbpEWBtUd3831cJkStBtU+I=;
 b=E4g4nz6Dy7DsCR5VlCIFjkcho6boYbJJV6P5/mIsbVimpt3tswjZtqguG7j6pHLOl/
 l2dnnCAjHHBuY2Juj6bnlbNLKwfCg20+WWQWCUPmr8M3Jd+O1hASsGrWPid2vVRWLZDJ
 co8g46V9A5ZgcFFPLeUDQuszaoKgMHJoAPWLJc8Ohmt3/EoYqDqLzYA9olRfbOVcRjIq
 fPHqP9FVeAaGMQhgmWot92K1HAyY0b6TdxMjvVTFBesq8nn00C/if/uwdaYC3sfF/3VW
 imyl46ps1751bYZZsU1qhYkBk1iz2GigR0bzWEeH99vy7rIaMBBAE78gLL+zb7kd9bP5
 skZQ==
X-Gm-Message-State: APjAAAUQWxymuO/iw9OFor97H+emLHfsUzFb3kutC6p6hnOOnqPquU3y
 wihfgVoNfgWmBdW0yDFhSfgkGfQExgC+WAfBdBs=
X-Google-Smtp-Source: APXvYqy9VZXDKV6EWHZytu77dkYEL5aEYN3h8uHqYAAxCABEFswLglssF50W2f+jmCtcbKoVjX5fElIjvVv3d3X7muQ=
X-Received: by 2002:a2e:2e11:: with SMTP id u17mr14375443lju.117.1580757599170; 
 Mon, 03 Feb 2020 11:19:59 -0800 (PST)
MIME-Version: 1.0
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 3 Feb 2020 16:19:50 -0300
Message-ID: <CAOMZO5DMMCZPfwNbTaG8_iQhWg2K1XeO719nSA0Gsf2ywHy4jQ@mail.gmail.com>
Subject: sdhci timeout on imx8mq
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_112001_874914_31F62F8D 
X-CRM114-Status: UNSURE (   5.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-mmc <linux-mmc@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I observe the following timeout on a imx8mq-evk running linux-next 20200203:

# [   11.747858] mmc0: Timeout waiting for hardware interrupt.
[   11.753264] mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
[   11.759705] mmc0: sdhci: Sys addr:  0x00000800 | Version:  0x00000002
[   11.766145] mmc0: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000001
[   11.772584] mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
[   11.779024] mmc0: sdhci: Present:   0x01f88a0a | Host ctl: 0x00000011
[   11.785463] mmc0: sdhci: Power:     0x00000002 | Blk gap:  0x00000080
[   11.791902] mmc0: sdhci: Wake-up:   0x00000008 | Clock:    0x000020ff
[   11.798342] mmc0: sdhci: Timeout:   0x0000008f | Int stat: 0x00000000
[   11.804781] mmc0: sdhci: Int enab:  0x117f100b | Sig enab: 0x117f100b
[   11.811220] mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00008402
[   11.817660] mmc0: sdhci: Caps:      0x07eb0000 | Caps_1:   0x8000b407
[   11.824100] mmc0: sdhci: Cmd:       0x0000083a | Max curr: 0x00ffffff
[   11.830539] mmc0: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0xffffffff
[   11.836978] mmc0: sdhci: Resp[2]:   0x320f5913 | Resp[3]:  0x00d04f01
[   11.843416] mmc0: sdhci: Host ctl2: 0x00000008
[   11.847860] mmc0: sdhci: ADMA Err:  0x00000001 | ADMA Ptr: 0xf97d2200
[   11.854297] mmc0: sdhci: ============================================
[   11.860908] mmc0: error -110 whilst initialising MMC card
[   12.027806] mmc0: new HS400 MMC card at address 0001
[   12.033283] mmcblk0: mmc0:0001 R1J56L 13.8 GiB
[   12.038007] mmcblk0boot0: mmc0:0001 R1J56L partition 1 4.00 MiB
[   12.044112] mmcblk0boot1: mmc0:0001 R1J56L partition 2 4.00 MiB
[   12.050172] mmcblk0rpmb: mmc0:0001 R1J56L partition 3 128 KiB,
chardev (235:0)
[   12.058210]  mmcblk0: p1 p2

Haven't had a chance to debug this yet, but just reporting in case
anyone has any ideas.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
