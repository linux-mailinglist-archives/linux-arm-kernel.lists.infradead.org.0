Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943A37DFE1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRwr64qsZsf64toPdis0b4xedNhK20W0rUe2BsgcnYw=; b=PncAm/OqqQL5Es
	ytCJfygcs97vr25ZRgDmcynh7C+hsC4iOYOOhqZ9WMLgre7FiTU8ApYrf+uY1zQXlsNtj+R7IuCI4
	UmLoaMznM6baebkBl+gRPtD3EK3O8IhPxN9imulnYF/aGjMo+4thpNx1I/35TSu1eYBONpyLDNO4K
	1e9QcDs27kWuJI1HtY4Yzoje8/DkO1NC9mYyO6PFbcVZnUs77/QITWgai3NJGJG3TtPR9myPb8B7X
	9gvGeUVnZQLGPLzB27F91ieuNjrghdO75hEGtCxz46e+YvMcGlivyWII+d2RrIG8EC7WwY2xJJbjn
	SY2FFRieuTcYIikVo7eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDj9-0008VU-7Y; Thu, 01 Aug 2019 16:14:51 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDj1-0008V1-18
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:14:44 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so69899750lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 09:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t+mJh2gE4B8ztRCbGNmN1VpOh+YJUGLCZLfK7th1+30=;
 b=vG6nYzlkY+HZk89od2/NnrIZ/ItJC5M8rfwtN6ZI+z+NDAaOTtGaanj9TXbkn7DvKd
 ByLDHmtnGeZPzOMcd5poXPRViPJFD7lqD4EYN9Czd/AGzGJcnZhHEyZ4YWxe+R6RNHD5
 /9+JHqSEtQYJ+qdBan4xsQFm+QmqVikLcf2NvsNxDO0Zcjw7pb4UeTAd6ooFEzE/7oVO
 ZShZWs+hnK/gflB7EdVxglG72CC9uluARqftDa4xHrVxAThpNCBj5+9ZO5MdS2KlMZIK
 16X7eRIOsR+xF8oq66DPpDKLRLFGsmXlJP2lLfhTOP/jBxG2plhGtFdxTZJdh1J2gZpy
 Pqmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t+mJh2gE4B8ztRCbGNmN1VpOh+YJUGLCZLfK7th1+30=;
 b=NcJliWgVt9R7g+HBxgWWoodzFH8pa/6hR7LYAsX5TuMm9Y/stuKNzKEAdzCEJg617T
 1YDv/i/OP4wWt9h3gQxIbzMDckHzgkbUMD0rb/kayf48VPquQWOYmWv0Yjcv4oqEOJtx
 tU5nDu9D6eCKJdwPirQhya8bBWPXI+H8ILnNIfpCmMyXQnB8yaDT6mHbLBP4KBf8rCG6
 0vey0GtV1JVptl2RV1ka/1N4ttYjHyKPzQwRSfU2icImsbSrRv37PLjEpGZW72sBwhen
 9NtBXAxGfoy+6V0hgKhU9An+k8iHI1Nx6p7L9K63VgXjDKcDy+DsfH3NLzJit+ghdAvW
 J3dg==
X-Gm-Message-State: APjAAAU0atkY9CoM3Yf2q+721hVdHwbsJdMklKY6TZwCuiY1NfK8jNRQ
 hOBqL96pr4vDpE3FJ1aK+zyExHzP3ns8izdX2+I=
X-Google-Smtp-Source: APXvYqxBlptLyw+p5zzhagnNEAZ0fiBRoYdvUVlpzRecUG6TqeZwuXCeDc3ihPyjkJ3URQkHMXE+c0YKixFeb6gBAIY=
X-Received: by 2002:a2e:970a:: with SMTP id r10mr64728348lji.115.1564676081171; 
 Thu, 01 Aug 2019 09:14:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
In-Reply-To: <20190731163330.32532-1-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 1 Aug 2019 13:14:52 -0300
Message-ID: <CAOMZO5Aq5WEGZ0uR5VS0A+UO_3LpGMxp9Y_agQSx1dTshATVEQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: imx7-media-csi: add i.MX6UL support
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_091443_129604_96773CA8 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
 Pengutronix Kernel Team <kernel@pengutronix.de>,
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

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMTozMyBQTSBTw6liYXN0aWVuIFN6eW1hbnNraQo8c2Vi
YXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+IHdyb3RlOgo+Cj4gaS5NWDcgYW5kIGkuTVg2
VUwvTCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5NWDZVTC9MIHN1cHBv
cnQKPiB0byBpbXg3LW1lZGlhLWNzaSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0
aWVuIFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+CgpSZXZpZXdl
ZC1ieTogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
