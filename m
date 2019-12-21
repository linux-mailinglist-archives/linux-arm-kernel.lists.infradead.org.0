Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9081288F1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 13:03:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSCL6nGmCAOgTNRnR2xy5fS2OqfB4op/iiU/k9I9SGY=; b=dVPJ9/PUrXDwRL
	yYtAu4LxKYl0/wLPWSF8vXXeZN3foE0UlTCUeDSwDvFaFWqnUBP2ZPda4oKPSBA9Ztqc/QzAb7vd/
	GXzkEsAHWrNkEaPzZKUzphXFSfBqUpYbwIALw1SGqNiPhm24hI36KezBeJe+3sA6WD7UkNVRTvBNl
	ajM1lHbUwUL8cPolGw+6l5z7V5aGHdAktgQIuVlUdgt1QMht1PG2sn68pFNhavx+7PRc6Jx1NaTS6
	RfVgMvmolIukEkIWXMvXsVSzU8H3ki6a+Leh7uKhgLq39ohij7fli/iUtfvhonm+VqOyEzEESP1pT
	TcvGYgutXCHskaaDNrzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iidTm-0008Td-38; Sat, 21 Dec 2019 12:03:30 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iidTZ-0008Sb-U3
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 12:03:19 +0000
Received: by mail-lj1-x234.google.com with SMTP id y6so4654970lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 04:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gnwuu4o80MMR95FE1m95irWoa6acQ2cUL/bray2otxA=;
 b=eYFoGwLxXjBd0x4w/b0LU3FGfWfIo8lAQLkAkePVTfE/eoEE6u5KicKZZgPOcuXNIX
 X2UV3G9pvpAMLEUfUvLNIjeTpcluGleLOsNTuZCm7WVnU/TlPsrkKIKiQ1oiV6pYEfFe
 FRRD6M5nVu+RV4EtYpx01w3/QWchonqscwH6J9nA3eFz4buZriQN5fw9X0ZovxnaGBYe
 WuYbRdsmCFrrwLSSry59tW09tej9Hy4/Ypkx2NtbQpbR+gLxFQPSO1ld2AcU5EcV+OBA
 HlTXX4o5F9hItjnbYlRYwbVW6jYLK1HlOM4XAem29kzRePGJHQlyVWSAFACAsWoPpD7Q
 aU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gnwuu4o80MMR95FE1m95irWoa6acQ2cUL/bray2otxA=;
 b=S+c0ydscE0PkvNe6Vtm3UzX8VPCJHh8+MvVBRFCPD0R+yEi0FZJ7eft0zzGiitwWK+
 cK9BfOM2go94w9j/nqiEq5gLh2z+zoIlXbyp/GyCnM/mNnraeaUmr5+3HP2tz6HhG8qF
 n7WNfbYg93Iyp/q6YweGjaWizWkNX/0QAKq5+0fmY83DGZk6KL+o36P/5ib9UP1yg1z7
 GUTtnvgmnu51Fd9KU/w6457TVHLdK6QQNcZi1ooGcuNK4Jb3q+X27AUtpyhGH1ZmMacI
 6cUkPvz94GUd1PpJ0a18Y1nm7fY+/+ZtyRyWOyG/+DUAQgSTuZdM9rX9cxMuQwrAicdB
 ZkyQ==
X-Gm-Message-State: APjAAAW4r27kcrt5zeZj+O9MmzM10FelnQZldRuGXF2GkcReBR8JfLCC
 FfkHL3DsYdh5FkYgyPASk6jGJGeQeSnGXStW/0E=
X-Google-Smtp-Source: APXvYqx1F3yXJ2T9Qd4j8qRXgOeQNiSkPgVBV7r91rbRxlSeRPeUyQcQ9ILOwyTgqG4lnNYH6n7WesX2rzYFi/eFUHE=
X-Received: by 2002:a2e:943:: with SMTP id 64mr1001266ljj.17.1576929795270;
 Sat, 21 Dec 2019 04:03:15 -0800 (PST)
MIME-Version: 1.0
References: <CAEj2-1PyhkhEJ1+uRWio4vYxGuFOuR9mpZOdxmDDjGt_Az+3uA@mail.gmail.com>
 <FD3C2267-A9B8-45BB-B027-C85DB5E60829@designa-electronics.com>
 <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR0402MB36003DBB288BC2B02A505ADCFF2C0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 21 Dec 2019 09:03:03 -0300
Message-ID: <CAOMZO5BXMdzTBVaM7xbetgDLB9Aycd=yrUe00weGgcQtgZZBXQ@mail.gmail.com>
Subject: Re: [EXT] Re: iMX6/UART imprecise external abort
To: Andy Duan <fugang.duan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_040317_997213_F6D811C4 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andre Renaud <arenaud@designa-electronics.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Dec 21, 2019 at 4:31 AM Andy Duan <fugang.duan@nxp.com> wrote:

> We should ensure the RX FIFO data are not missed since they are valid data.
> To compatible DMA and cpu PIO mode, to receive all RX FIFO data when start
> to send, it will involve complex code logic.
> So I suggest to enable the flag "SER_RS485_RX_DURING_TX", and force to enable
> the flag for imx uart RS485 driver.

Inside imx_uart_rs485_config() we have:

if (rs485conf->flags & SER_RS485_ENABLED) {
       /* Enable receiver if low-active RTS signal is requested */
       if (sport->have_rtscts &&  !sport->have_rtsgpio &&
           !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
                    rs485conf->flags |= SER_RS485_RX_DURING_TX;

Maybe the if() logic needs to be changed so that the
SER_RS485_RX_DURING_TX flag could be set in Andre's case?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
