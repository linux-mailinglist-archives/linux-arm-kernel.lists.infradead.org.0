Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3113460DD7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jul 2019 00:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57coO9Mfc5SGh+MMGZSCUt5B4ng53XOgUaNXvAiNyl8=; b=e2ep3paCDVsL6L
	PcQyi3OfWG+XonD8N0ekf6XUjZJ4AtlsW71aw/wPt8EhDkx77ZPD3r6gOzefel6Q8PTMOQtaoFWdo
	aW9OyM6ujAFIEyjxEf3RFFH5dHxIaYlZ5So+xjOu8J7uAqmb6EjqhEDL/YYzlYIUIWpaMcnN2oX7Q
	WOrwhF1acM0/menBPJw6ZPQSxA2JrUL+DrFbAYFfo4lBoQlF+7lxdKLrU65NtTV4tQkTEsuNY6+Mc
	W3oya+mJgTXVWRv+/YAeyDJpKBCY48+Sg279xq5mGHRytMPBD71zuZvlvi/4G6ipalIDDcIx79RJa
	+eHdebF47lSBNiSNh1mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjWid-0001WO-Ny; Fri, 05 Jul 2019 22:30:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjWiM-0001Vh-Oh
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 22:29:59 +0000
Received: by mail-io1-xd41.google.com with SMTP id k8so22203273iot.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 15:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TiHoVMsFcSLIQMr9uOZIpXIgFEvQNZbBssFZ43ZIIe8=;
 b=kEgPCwANMUFzB8Tbmw0ykNs9VmJkGcKJRMnmQpfjnitHffAN6aT8hGO0cfsK5uox5+
 P0rr3Dc8i0HzwW0k8l/P5waoyng9xc6GttS9MlwMqNljBTc+pUEr9k9F16iopjSwPkkp
 JGxvgcJ3Evzu7W928BVVu8+Bvu4rHhjlX3wxvWpm5GlRYby/ni5DX+/B4sIrXwxyQcW3
 UNy/7pEyCeCC466IWnOqIoDp73E85Yy6cvfo1+E46aMGrkb5U9HAub/FQ2mU3IrnoW8f
 BUcOVZDvtwhXrXo+6XjEZ5X0a6ZE782e3NTITo2MZ2jCidpIpR2uXlVuv2ljV2fTVYWM
 a0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TiHoVMsFcSLIQMr9uOZIpXIgFEvQNZbBssFZ43ZIIe8=;
 b=lCgST+UZs6R8VfJwPsoU0O/fdBn1CGaG8rfPfU/1n+3Nbb4B2Q1+aoYH0AC3/rlIKi
 DZJqUJ2rcvAbtqtbdVqMGVFLPNVCuNiqkoTdfsGv+vO6M8lXNJFhQ/I5Fdci7Nodwhm+
 xdCTE8cas/UP/JQ8ICfINc1t9Khsvt6lmxUqaCCfmN+pMzbRTD3o6qVHPJ98kRx4N1Q5
 xm2Jedxttct5/zZwzhfV9v1X2X1rcXyaW39IN738saLJm8hMzrS31cDxtWGM23O5RlhR
 H2lPdr7ffFbkrdmpuV0uzj0QzWFk3NgLkG8o2/AsAPpBXRMfvq94Ziio4CbMKWZwczRJ
 Mg2Q==
X-Gm-Message-State: APjAAAVB7P54f+Z0v4iVQ2rDUa3WGcEGpbvgBZrwMJZCMtiF3GEcD8rS
 dK8OKPd1oMFzaqIa+EPJmj3xrd/UivAlzO8pSERYlw==
X-Google-Smtp-Source: APXvYqxkIW246ER+0x11WTY5HcsLZYgY0kDKBdaZ85h3vZe4O7pl2xjdYiJwW2/mXxrxy6EmgNSpsuwt+g6Gcc/XNPg=
X-Received: by 2002:a5d:9282:: with SMTP id s2mr6264093iom.36.1562365798212;
 Fri, 05 Jul 2019 15:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <1559636093-26005-1-git-send-email-krzk@kernel.org>
 <15AEA3356BFC1A54.4080@linux.kernel.org>
In-Reply-To: <15AEA3356BFC1A54.4080@linux.kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 5 Jul 2019 15:29:46 -0700
Message-ID: <CAOesGMhBs4qJPis4cO3f6kmwgqpbP2OF00y2PZ3_AE82mYnDkw@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: configs: Remove useless UEVENT_HELPER_PATH
To: patchwork-soc+owner@linux.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_152958_803663_7F161A1E 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mans Rullgard <mans@mansr.com>, linux-aspeed@lists.ozlabs.org,
 Tony Lindgren <tony@atomide.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 ARM-SoC Maintainers <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Arnd Bergmann <arnd@arndb.de>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Sascha Hauer <s.hauer@pengutronix.de>,
 Vladimir Zapolskiy <vz@mleia.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Andrew Jeffery <andrew@aj.id.au>, Dinh Nguyen <dinguyen@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 3:26 PM Olof Johansson via Linux.Kernel.Org
<olof=lixom.net@linux.kernel.org> wrote:

This didn't work as I anticipated. Please ignore, apologies for the spam.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
