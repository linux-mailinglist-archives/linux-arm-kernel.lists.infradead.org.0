Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4439578DD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIaKVeSyFiWJeF4mgUnU7EcINN2CGaQoqZWTl7zoBoY=; b=fgLzwc2jYyXxQS
	VMPeYS8YOS+TdDQl86NpqtKfOjTl/50/SSzsEgyW77TnhXDXoGjOlj+mo8JdbFqxla/8qIit7ST6i
	rkElEejfgR8RHpdCQ7zi5oidV0K9TADevlnqYgXXaUP0Gdx0FLHrpzHt7/LDJznXopepiRjgMvhMu
	92HNDbyCLFzGr4FRW9SMD+9w5JgYA8L6mhZ0Zqrd4297SsAk4vbdL1ei9LeeDI6sJkTVjh0YPpm/T
	R3u6cJLaUZxprOVFDE88BuxudrGZCulJifpBRvGazAjiL3HvfHS4QVvc2DlOCsJzLQoRS25uBMtzz
	Ge2kSDdu5Vskejig0Dcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6cy-0005Rj-Sj; Mon, 29 Jul 2019 14:27:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6ch-0005QW-0i
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:27:36 +0000
Received: by mail-lj1-x244.google.com with SMTP id y17so34229934ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 07:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IfFtsX7/KQzCdNl+4EmQ+q1A1wAgR9VhDhbJ3xDy0FI=;
 b=TL/ogVAqOph3tA0zqcygELc5HLq5Orqtel3nHcqIUrSjaAeJOmKqUg57nswgEvcMRr
 3ttzxGwo4apa/dW3yhpCmu2eiXrSeVqCvMQT9QnjrfsXjljf1kU/piOxks/XVJ/2LeE/
 sUbVgSzK9xKTHJPaCAC/mlQp7J4uz7nvMPnbMFVDn8m9FlEXmNBEvbQIlI4j1RzY5UYb
 rwpqX0kwYO5RQg9VkKfESEcOLg/hv3c9HZTNy7Y3jszlZY9tSg6b375WdHH6brWKc7nO
 DZmBm+Y6gIHA9LueWGA4k+dGAhJPDW//+TnhgStSquXKm59+YelelakFb+8M+Xk+H0b+
 1HFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IfFtsX7/KQzCdNl+4EmQ+q1A1wAgR9VhDhbJ3xDy0FI=;
 b=mPVfc2G6phsqplgwQ2NraSkkBaJ2cvgGp8MznyjLZjStFyFHEe5rypMVaXKr7gZ5M3
 Py9rTtn53ZdVatirhAZ36mo2vT9gBgVix16jP8Z/nw/POHwHEcHKqVCbB23H9q36Cjwc
 znJXbWG3tCFWtKafZ4baO105+8d+PjgwX5a4bRccx+sdoUM64hqMdfD5WIIVtgYPemZr
 qqNAhaf4j2EzvUSzNwMKTf2OPQ28+1ZkAwX+KAhJrdbOTa99fq/Kn1QbqdyyIqpqeJ2+
 w6tf4lByWPjAQxRPxpAXNByKJERkFa0ilaZgfjBFD5UM89mk5kOBwYrplh63eiqjFGV1
 XLYg==
X-Gm-Message-State: APjAAAU0u3bKPJ3+ySRyv+rPCT/PfLv6I/Ouvn0YjeWJoIVSvb1+Ty0+
 lsR/F9n4Yf+IC42Ph77U3SX9XUNbBEM8HCVylq4=
X-Google-Smtp-Source: APXvYqxyvYnlrpXV+q974vRNYgN8Q7Dgy+WEUgJJaPMwdxJhAwANTp+qf0ki5yF5XNm5+lqtCYtJQUee5dZGKBZE/u4=
X-Received: by 2002:a2e:a311:: with SMTP id l17mr56352974lje.214.1564410453056; 
 Mon, 29 Jul 2019 07:27:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190729141349.28465-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190729141349.28465-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 29 Jul 2019 11:27:37 -0300
Message-ID: <CAOMZO5CFqQEdqgwyHZ2E2F22QDgG8SUjBM0y4Y6qyn8Tqo4O0g@mail.gmail.com>
Subject: Re: [PATCH 1/1] drm: mxsfb: add i.MX6UL in Kconfig
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072735_057491_9B63CF3E 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Sascha Hauer <s.hauer@pengutronix.de>,
 Stefan Agner <stefan@agner.ch>,
 Julien BOIBESSOT <julien.boibessot@armadeus.com>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDExOjE0IEFNIFPDqWJhc3Rp
ZW4gU3p5bWFuc2tpCjxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4gd3JvdGU6Cgo+
ICBjb25maWcgRFJNX01YU0ZCCj4gLSAgICAgICB0cmlzdGF0ZSAiaS5NWDIzL2kuTVgyOC9pLk1Y
NlNYIE1YU0ZCIExDRCBjb250cm9sbGVyIgo+ICsgICAgICAgdHJpc3RhdGUgImkuTVgyMy9pLk1Y
MjgvaS5NWDZTWC9pLk1YNlVMIE1YU0ZCIExDRCBjb250cm9sbGVyIgoKVGhpcyBJUCBpcyBhbHNv
IGZvdW5kIG9uIGkuTVg2U0wsIGkuTVg3RCwgaS5NWDdTLCBpLk1YOE0sIGkuTVg4UVhQLCBldGMK
CkkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIGlmIHdlIGRvIG5vdCBrZWVwIGluY3JlYXNpbmcg
dGhlIGxpc3Qgb2YKc3VwcG9ydGVkIFNvQ3MgaW4gdGhlIEtjb25maWcgdGV4dC4KCldoYXQgYWJv
dXQganVzdCBoYXZpbmcgdGhlIHRleHQgbGlrZSB0aGlzIGluc3RlYWQ/Cgp0cmlzdGF0ZSAiTVhT
RkIgTENEIGNvbnRyb2xsZXIiCgo+ICAgICAgICAgZGVwZW5kcyBvbiBEUk0gJiYgT0YKPiAgICAg
ICAgIGRlcGVuZHMgb24gQ09NTU9OX0NMSwo+ICAgICAgICAgc2VsZWN0IERSTV9NWFMKPiBAQCAt
MTQsNyArMTQsNyBAQCBjb25maWcgRFJNX01YU0ZCCj4gICAgICAgICBzZWxlY3QgRFJNX0tNU19D
TUFfSEVMUEVSCj4gICAgICAgICBzZWxlY3QgRFJNX1BBTkVMCj4gICAgICAgICBoZWxwCj4gLSAg
ICAgICAgIENob29zZSB0aGlzIG9wdGlvbiBpZiB5b3UgaGF2ZSBhbiBpLk1YMjMvaS5NWDI4L2ku
TVg2U1ggTVhTRkIKPiArICAgICAgICAgQ2hvb3NlIHRoaXMgb3B0aW9uIGlmIHlvdSBoYXZlIGFu
IGkuTVgyMy9pLk1YMjgvaS5NWDZTWC9pLk1YNlVMIE1YU0ZCCj4gICAgICAgICAgIExDRCBjb250
cm9sbGVyLgoKYW5kIGhlcmUgaXQgd291bGQgYmVjb21lOgoKQ2hvb3NlIHRoaXMgb3B0aW9uIGlm
IHlvdSB3YW50IHRvIHN1cHBvcnQgdGhlIE1YU0ZCIExDRCBjb250cm9sbGVyLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
