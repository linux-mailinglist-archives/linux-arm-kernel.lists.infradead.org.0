Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1623E7DFE5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9Mi9QGtQR/fTPPBrjjdoojp3jGPBRkM2iTmJ4UMwWQ=; b=bBCgxD5eqn0EtY
	FuaUGqVuyjCpAcl9gfhSd6UMDwdFeHA+1rxdLL4rdaHxPxVDHYl9a/D/lTUU1GPdxqI/a/a0H+VGR
	5yyPh7/rAlJu2SiTTy73x5i7TiUD1pugaAC3lU1C3RE+6DPhIOxZ+AmyhPvUD4xx9Ts/OKUCEuXpr
	XuM370Ozqje/+9TsQEmbqG7A09xI2AcxT3VgB2ndRNFHcB4fJyordZzNw8zBmp/NqL6nPcjXipu8W
	Hnxyeq2+hyk/ZgF4sgFc+ka1VjiIyEJNpsq7H/sERQxf6l9/9eLbTQ5iDkhtM+aI/EL9fjbufbzJp
	QVpzAiH3rtzdLyqNNwmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDjg-0001ZJ-Pz; Thu, 01 Aug 2019 16:15:24 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDjX-0001Yg-PA
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:15:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id x3so50790834lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 09:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fzTcCU8DmiEfu3KOpz+zNVDtmEzQUG6MLn72PQe0yd0=;
 b=lR7SLV8tBosSuoZxn7SAB6sPGvH+WPf1E4MioS1ezN+r9IS3K3xjze4bze9tzXQFOe
 3CcP65yrQ4fBmXSJjNX0b91v5eQ+/I+/3GzeKru0jF79p9wLmvsFZUgsTRTXq9YEHECX
 nRmguLIWQSJLQmPLcyIgu+TgbBNts8/1TpeK5mDK8FcUnJKh1ltOVzUmVjSI/lRj+V2j
 kKDel2o4k4Gxy5XRmPUW0JdEfQX0NsVcdYQ89xV9+OZUe7oO72lCHNC/CRS/BuM0sGd9
 QkcSgfVKf6FZeJD1R/NrB01plBIYwGg+tPi6j6cScGTBGOQm7zqkhZj5+VLa9aTaXGsN
 zHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fzTcCU8DmiEfu3KOpz+zNVDtmEzQUG6MLn72PQe0yd0=;
 b=JRtCzGXN4SSXvYI9mf1HaOcLDetNnoZpLb5FMNS54hSRgY0zc5FGbadNUxCrrDfkyg
 cQ9a4ZHPSowMrRm/+r4+JOQD+v0ryqbwuGX96OLmDOe8nQio1MMWzlc8LWQpIPEFe89p
 AJdNCJlmhunLOnuH+YzbcKOfE/j7A2XVNAyCZqAT99V4ohfxrdzAjSnjczQRwrYEh2X8
 lDYKJErw6IekCpt0YpzM6sskLREys1dOmZ05d1yNmAWbFY2Aqz4Q8iZjl8Xj9PJ/Ym4P
 nuHQisK4hbmqKmBpChwpvcUDdk0SY/kBjRxwdqkaYsTzMm6VVtuEFxhX4Ex6YE0WeA1o
 Phkw==
X-Gm-Message-State: APjAAAUDKGDJ4cSIEzysweJCl9FWINSSyCUZghprFbR1VkYnJj+cKZbv
 /rHLBNPrOTU2QfJA2ERfpp22Qf2b3os+QsaUhTE=
X-Google-Smtp-Source: APXvYqwNJxjcu2xuSyLo7PU4FvCCkXLvk9CQQaJBa+MRaFtEi3yjxNzKMFYskhzEERhc9bLgb9kY/z9FW7cowNHmpLw=
X-Received: by 2002:a19:6e41:: with SMTP id q1mr52031933lfk.20.1564676113934; 
 Thu, 01 Aug 2019 09:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190731163358.32622-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 1 Aug 2019 13:15:26 -0300
Message-ID: <CAOMZO5Ct1r_3HLzdEPGyk3pDZsVWhmiRgB436bb-NwGuLnzYKg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_091515_816285_0F78230C 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTozNCBQTSBTw6liYXN0aWVuIFN6eW1hbnNraQo8c2Vi
YXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gRG9jdW1lbnQgImZzbCxp
bXg2dWwtY3NpIiBlbnRyeS4KPgo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gU3p5bWFuc2tpIDxzZWJhc3RpZW4u
c3p5bWFuc2tpQGFybWFkZXVzLmNvbT4KClJldmlld2VkLWJ5OiBGYWJpbyBFc3RldmFtIDxmZXN0
ZXZhbUBnbWFpbC5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
