Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB72C1627E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:59:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Oo1xh8ejATFfBlD331WsII7X64H8vBnJoYNKo/6Z/o=; b=tvDRa9FGq3G1Kh
	MCZXlhc01Fc+fq0u1iwo1xOwCeEugWOUqGpz7rFOOtNsicJfA6mDoVSG8905hto2SVnvOODKFDJnJ
	1zlwPblFEm/9jgHGVBbLeCJmQ+lwjzDglNBAPLJCseIcWmb2A72jFeR+G9c0MDWYOeZChAXCkp4nv
	fXN6b6NkKE7eMX0+N1gJ2X0sU/Tu2nMIOQK+D+A7QJEUZDxFulOcIM+mFs2Wgr+5Ke+I/Vfdg4oX1
	J+8SfZ3Nw40KR92uQiKKyfJWwIHEO7x2KiD1LhWjHr6Xnz8HuLShClypFfYyVWfJU+MoHPd5OP315
	ovuXhOARDaV8E12Dr2rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxp6-0005Hi-8M; Tue, 07 May 2019 10:59:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjt-0005ur-4f
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:48 +0000
Received: by mail-lj1-x241.google.com with SMTP id f23so13916276ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 03:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GCAhg11SRp6Hew9zFemJx8a1BnYPfIc90dC9LSkimJg=;
 b=TjALlnw4nsc9u8UJAhsZ1uBY5MpOfYYFHDH9mn1SZIL22WxRUXNdnNDBKfloMxs27a
 zkktcwu/Sx6rAtgYRy+jjbrFEiebWtpPakYRhHYSNwUjqg7hkjBxrywE0qdj+bs5mwqT
 mAGORk3CLwMloH9BP4lzzaQuXR9JlzO+Kj8q69ccRd2MiUz3z35BBRqAAtUo4zi4smZI
 MabzDOCr9zz3P4SlWcmyucv0ihFJpbiG3KUU5uh85AnttvSQVcs4Nu1Ynf9ze8oNrxGs
 bmUy+Q8EEcR0F1vtMfz5/KTQoCKVgobaHPF78FJw1bkxm28K/RTEI8P+B2dIY2YPQEXE
 KveQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GCAhg11SRp6Hew9zFemJx8a1BnYPfIc90dC9LSkimJg=;
 b=Rkr1Y8m4iMUFyBfDEul76SfPqtMBh0TBzHRSOMXawvf3vdCiZm988Gcxn9Lh439ozc
 QSX+RBVkwPLT2P8ZT7AnNWYGbKhaFYiUBOKcDR6xJyGnMYQHucjmahyZvkQJ99m5zasQ
 nsxjxnSeC8OFCKxb8uo9nhC1Smie/Y2pPd5T8lQ7wF+SXZkZOXxBUXLW95/z5DE+7B+L
 eAgoMQlHRC7223TF/3xKtcwZ62+EGlV4b8xlzuw9Ljigr51gK496vGyWfWVcGeWAuwkE
 dTwhLS87RJm9YGeCv4a6kycPeCin6OnQcMs+/tnYweYiw0yNaFqCw5fZd+Y2aGyUNIl4
 b3HA==
X-Gm-Message-State: APjAAAUuDKzNSlddwJOnVFEUHydnTYmuUPjOAw3Bq9b6v6lsd9Jk1EHK
 1pJ97DQZdvy779ExBl6o/BM2KQhVENr495TXpfI=
X-Google-Smtp-Source: APXvYqzra4CeE9doUIEh8YRPLjXBNgdVF2kc5zUdswNRrUeYL/COm0wsOIKOaERd5W+viBb0m/EIk30lew/cjlBl89s=
X-Received: by 2002:a2e:97d8:: with SMTP id m24mr16824476ljj.192.1557226462187; 
 Tue, 07 May 2019 03:54:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1557215047.git.agx@sigxcpu.org>
 <5817853945e1c707f641ae22458a0f27aa25949e.1557215047.git.agx@sigxcpu.org>
In-Reply-To: <5817853945e1c707f641ae22458a0f27aa25949e.1557215047.git.agx@sigxcpu.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 7 May 2019 07:54:27 -0300
Message-ID: <CAOMZO5Dn7yHC-NEBd0egHtXu8R4Zg=GNrvXR-RoHH6t9pqq_rA@mail.gmail.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: phy: Add documentation for mixel dphy
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035425_741998_DD13DAB0 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Abel Vesa <abel.vesa@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Thierry Reding <treding@nvidia.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgNywgMjAxOSBhdCA0OjQ3IEFNIEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNw
dS5vcmc+IHdyb3RlOgo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBNSVhFTCBEUEhZIElQIGFzIGZv
dW5kIG9uIE5YUCdzIGkuTVg4TVEgU29Dcy4KPgo+IFNpZ25lZC1vZmYtYnk6IEd1aWRvIEfDvG50
aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gUmV2aWV3ZWQtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJh
dm5ib3JnLm9yZz4KPiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4K
ClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
