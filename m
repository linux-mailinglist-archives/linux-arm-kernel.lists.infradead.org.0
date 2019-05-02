Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F7911A86
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 15:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cNxnYH5yWWs+orXyyJUUq3hyaI9uvGwXrRX0m4otHw=; b=eiMh4pxgitEReM
	2YbrQAJjYDPGgMuS1BphfEj/wchQVSHBdsyOR+woqRfCOFM8R8Pf/kqTdEaowZ51whfTdJAaiQjo1
	kVTDw3M3OvJmcmH7ADxFxHDxdh+hb7aus6pf0wdtypHJrA4ppaBdprlMw7+3F2ekjYAlM5bs9oHIN
	Z+c5Zmi5CMEzwAg1IIAuvVkN4S/p+4jJXOZz5UB2Hknl0sc35qWFoz6PEnW2fIiQczkkqumJzgKkv
	qFhPaVoAqMS4XtQgQ7dDbU1epeE64NhROki8VxE85syKVSaWqpEhjrLS6001QYANotnomcr0nVjRe
	PxRPfiEiBVk3v/wFrODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMC8t-00010V-Qs; Thu, 02 May 2019 13:52:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMC8m-0000zv-Tg
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 13:52:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id y8so2039391ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 06:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5anwCJxZnrogG1HpaX5y6QTVoKVHb6NYl3V1OWC8Maw=;
 b=fZSaTxtUp9KZxUwqiulAv3Yf8e0/0Tk8FoqOybYS6zR3CxOOmSDfy0TNx+CGk4Eoch
 v1bVlaK+AAFJvqFsHux0G0CChokbiD1DMQXApebfeG3bEna9BB7jTs+NTPVBaTaXXqVH
 Kg7dyYsa/qzl21EcdbRGK5viwRJwQLI7e4+Vmb0zeO+PaGqJ5uUVpEKG+rqzHYIQ+ujL
 PV2Lzv2rg/TGcg/Aq37DYQgbmD1hOCK9lU8mcvBxG90juU/77zDTveC+nz7OIMNFbbSq
 QIQrKrZtqle2y6b3rLC5UqXFHhhZrZmQjvAid7C59nmKpVTddv6ESm8AZsk+kS75rKGR
 3fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5anwCJxZnrogG1HpaX5y6QTVoKVHb6NYl3V1OWC8Maw=;
 b=uLWcG+fbMulntyy0PRoij4ajuWAD8WweQxDCSl7eO8ZU7VEkGCJZSEKpv1V69775if
 PwcE9kUD9SlRnVrs+KDGvki+kVHWFsZTiSMgjdhCp6h/zIfuoC0NC6xbouzmdYh58E0C
 vM9KvAfHYnZVluRCsRYf0LkAs1+DwCTvYDHAq3jh6dKiJNDbW0NU0c5743b1jA5tMf92
 jy+Q8zwCacOP490nCeTnkyKzH3PLjA5ynHCos3q995aEvpVkK185f4yhnWKYxghh+nrw
 TbEcGYkdXpSH7WGOgo7r0N43Cg6DSkxdkTobicIxIEv4jud+ignteSDMzo7BDYhWzAvt
 93ig==
X-Gm-Message-State: APjAAAUmGCA3hlsPHl1Gi/vJidJo5FXSWIEowdw/fxm3PFwilq86E+K3
 tGmJGJZgnz+21yzxXnqNdoTOiYYCcjBTJObnhWo=
X-Google-Smtp-Source: APXvYqwpy0wkkhhf9ipmjbRgmrEAJI6N5SaQzNQ2z75ilDtSMuEnGod5PWv+zB0VGlgyLHDHCTU+WJ1wY+nHifNPqTA=
X-Received: by 2002:a2e:a0c4:: with SMTP id f4mr2067329ljm.100.1556805166266; 
 Thu, 02 May 2019 06:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <55a0abac1c2efc4921588ee87986da43af1eb35a.1556802190.git.agx@sigxcpu.org>
In-Reply-To: <55a0abac1c2efc4921588ee87986da43af1eb35a.1556802190.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 2 May 2019 10:52:40 -0300
Message-ID: <CAOMZO5B3GqJoGtN42OeukxVXEUxsDRPsgMGf1huKQ7xZFYedZQ@mail.gmail.com>
Subject: Re: [PATCH v2] clk: imx8mq: Add dsi_ipg_div
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_065248_985728_2F96FCFE 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMiwgMjAxOSBhdCAxMDowNyBBTSBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hj
cHUub3JnPiB3cm90ZToKPgo+IEl0J3MgZGVmaW5lZCBpbiBpbXg4bXEtY2xvY2suaCBidXQgd2Fz
bid0IGFzc2lnbmVkIHlldC4gSXQncyB1c2VkIGFzCj4gY2xrX3R4X2VzYyBpbiB0aGUgbndsIGRz
aSBob3N0IGNvbnRyb2xsZXIgKGkuTVg4TVEgUk0sIFJldi4gMCwgMDEvMjAxOAo+IFNlY3QuIDEz
LjUuMy43LjQpLgo+Cj4gU2lnbmVkLW9mZi1ieTogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1
Lm9yZz4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
