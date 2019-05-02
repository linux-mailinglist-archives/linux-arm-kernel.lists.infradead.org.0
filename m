Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94485118E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uv4wHZbUGlyb43Ooqbn6qVtAPmXtEp3RXsTs+Cjlmyw=; b=eXj0Y/NdkeQIEq
	hkHi8vS00ZyT6ifUaTTOBM79HgtLtw9nt+qeJ77c5Y4eZPe1jbvacRNFkyJFbUNSIwT1KW060cZTV
	/IjyhXr9an/8Txt+6Hq3sNpiiDmJqTZ81SSjZYbJSHFR2cZQjbtPWZg1mhFpp7DZmeI4PSYzJnfd2
	eDJv24H+QSmXBagIE6SrFdFCJ23+c9znvMkYn0/ZE2kfhJ7IWNddFXuN0VXFOWtUNlT5R+nkLluhi
	4D3ouIUXudB066D+b65hALZzKxOGSnBGoxHqWJA0KIisI13VKnP+Ke7yq3TEhLEZC83Dbmx7njT8D
	yOrIA0cJ2UW9BWJMJ0CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMAgM-00067T-3c; Thu, 02 May 2019 12:19:22 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMAg0-0005lU-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:19:09 +0000
Received: by mail-lf1-x144.google.com with SMTP id t11so1692294lfl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:19:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0SNjztPUemVLTeTX5HL2waYiBQR8r75OELo66BjFUoA=;
 b=oiDRIhl0M87K/VSE0Ct9z19hQCpC4/o1p66nxiEjTv/kpmc8TXBzJA5owidDNCjuMr
 u5F+/ts9R5v23ut9eDl0wHZXimM6oRQIz05ppD2so8mqCbnzwGUdLSju10zdJ7R+lRe6
 c6Zz8Afqd6jNaJyGj2Ps6y8PDEjuwVgRoiro4GZUaXbloUwq5U24n/A2PEangNaFLEcn
 b6TPLpI14zMd8rjSsIQA9vgIWDvz87xWEpa139vsCTgpjkztsOfu6z51m6Xulp/I8wYM
 GNrosPjosbYz/G8bHdR5Ftpvczty3b9M2UFa1cJsGSl1/GKkQbUZ5oDuIexXlBbPFVSj
 9JlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0SNjztPUemVLTeTX5HL2waYiBQR8r75OELo66BjFUoA=;
 b=WP4520P1ssC8/F2iDHTo2LnLcOyfPDhA9Lu9KMda69+mtjFEX7Enq/e6Zds+d/VqzN
 nPsPwSoRsbRoev0YGtOC/7PszwLp0D0/OIRRojlQUP6Ra+0fXYDF9TQm+lpvP7S4hweL
 xYh3Y/8zDNDtizWjs3Z8mM4xcBV8FNHXfA8N7sDvGBOJbcrNqCOSyR2cKuykoK8xg5CU
 kAfAGlYCiFA/zSCYkXC/Be3JbJcT6JqNHr5MEhrL/y1SEGCG/UXuaTaT7B5rD8b+eHk7
 XaXfxlA9pXC0+BttvPSyc0l2Tzn8Mq+mwAIU9Ej0xhUfHjMSdGF4l6ict/6QnxTN1afA
 Wncw==
X-Gm-Message-State: APjAAAXNR1i58f9W0A74T4Ie3dHbbuejhckO5Oh+ULcB4lEcKpi3FeAs
 xMppOV+IJQx7CpOzDjNcoNaPevJOdAQaIviQZ1w=
X-Google-Smtp-Source: APXvYqy02pW1NewSWNKwYPVNlOHLum5fvjbinr4+d8kNGzsHODOOdARBrF355zx4tKnUCTxgYsy9IcBORZup7cw15tM=
X-Received: by 2002:a19:c7c3:: with SMTP id x186mr2010164lff.107.1556799538649; 
 Thu, 02 May 2019 05:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190430074911.8361-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 09:18:53 -0300
Message-ID: <CAOMZO5DbzRYYzhd=W=YvKuYdXyCc3q08=yTG6-3U2rxAeFApZg@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: imx7-media-csi: add i.MX6UL support
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_051901_443227_10A77DE5 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Rui Miguel Silva <rmfrfs@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDQ6NDkgQU0gU8OpYmFzdGll
biBTenltYW5za2kKPHNlYmFzdGllbi5zenltYW5za2lAYXJtYWRldXMuY29tPiB3cm90ZToKCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteDdfY3NpX29mX21hdGNoW10gPSB7
Cj4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg3LWNzaSIsIC5kYXRhID0gKHZvaWQg
KilJTVg3IH0sCj4gKyAgICAgICB7IC5jb21wYXRpYmxlID0gImZzbCxpbXg2dWwtY3NpIiwgLmRh
dGEgPSAodm9pZCAqKUlNWDZVTCB9LAoKUGxlYXNlIGFkZCB0aGUgbmV3ICJmc2wsaW14NnVsLWNz
aSIgZW50cnkgdG8KRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL2lteDct
Y3NpLnR4dCBpbiBhIHNlcGFyYXRlCnBhdGNoLgoKVGhhbmtzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
