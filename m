Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAF51AA8FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTpuBavC31LzjXOr6Wt5mtFH3DwAd+Oq02xgbL2V8J8=; b=U8+2SUNmw5ewsC
	r93xHIaMRQVpj5axRYrGtXWHJwPX+D7msypWjEbO5rvGxFfxZYX6s9+8ALARoHBBobZVYh/myWP5/
	wYaIMt/VvgHJK2rJ7EpD00mCg9Wi6x7sh9tdToQx4zWErxu1FBYU+ryC1P6zB1C+n2lMccs2bV5Wi
	rjlsA1pqHoe52d6UuZSYrmql5uhRCpjDtfim6tZS3SQAUdw5rdevkoQM1Eodw9ZCknmqvg2gk51bJ
	B9YYRxLLSYRUGzutOHQ0DHCGD/9ZX0Iq2jQXStFMIJ+zNyTltzljTxhc1cC2Ut5EabB5wLEGmtbUa
	xNhTUNNrphFBevJBD5Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiOc-0003lF-JI; Wed, 15 Apr 2020 13:48:06 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiOV-0003ke-QX
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:48:01 +0000
Received: by mail-ed1-f65.google.com with SMTP id f12so1135253edn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 06:47:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mIOZ/sd96Rx46ThWOAXmWIaAK4iqfwYtds7TxEtsnA0=;
 b=nbzXFtru2KnO3zoqWa1k0MXZuIfOkWy89ur2i4+waDYoMP4llK9mnjjO/fDiN6PMFo
 1Rn2omaopnzlE4AUQaLYUERggBA21YhKUsdfhnzUnAaRhsHvWprlmtN3kuf/J/cwwwAp
 v5LPhtbX64wOc5aTJcjHGAfipfMZIbiIUwSytZRlsvW/ea9ZVUnmfHM0twy1f0PF8LmV
 FOEOLvp2s4TOX1m938VDeDnuAVPwsWHrd0RCqFfLh976Xsl2op/6hct3rmcLpU2fHaA9
 TZc1er8D+dEmLiEMPlH1n5tnGzR4nKJqosp8tQqz2kBSkp2qn3cJfcf+wN/SuIyz6hSL
 YbgA==
X-Gm-Message-State: AGi0PubQophQ7tPXNlwgb27AAKRvjs4HTJZCdEMOA0sRF7MTdLsgp7er
 ykIuVu/n/g0qv/Sdo3jAkDo=
X-Google-Smtp-Source: APiQypL993rtIwMeMfH5wHZyMs+H8Y65XYCjw99y7Fo0rlwZe8pf8YowOuo4m22Vp9YytQslngDtFA==
X-Received: by 2002:aa7:c2c3:: with SMTP id m3mr18170324edp.10.1586958478322; 
 Wed, 15 Apr 2020 06:47:58 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id gf12sm2524950ejb.62.2020.04.15.06.47.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Apr 2020 06:47:57 -0700 (PDT)
Date: Wed, 15 Apr 2020 15:47:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 07/12] ARM: DTS: omap5: add sgx gpu child node
Message-ID: <20200415134754.GB21120@kozik-lap>
References: <cover.1586939718.git.hns@goldelico.com>
 <004611c9660943759b635a87484932869927cf74.1586939718.git.hns@goldelico.com>
 <CAJKOXPdEkWniffmGZmf=S6E5UxWTdVGXnycqTFftXwo_45rz3w@mail.gmail.com>
 <EFA7F2F0-96EA-45D9-B8C8-00DC8C72344D@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EFA7F2F0-96EA-45D9-B8C8-00DC8C72344D@goldelico.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_064759_859384_669392EC 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 01:46:06PM +0200, H. Nikolaus Schaller wrote:
> Hi Krzysztof,
> 
> > Am 15.04.2020 um 13:38 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
> > 
> > On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
> >> 
> >> and add interrupt.
> >> 
> >> Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # Pyra-Handheld.
> > 
> > Don't add your own Tested-by tags. These are implied by authorship,
> > otherwise all patches people make should have such tag.
> 
> Ok I see. AFAIR it originates in several phases of editing to report on which device it was tested.
> 
> Is there a canonical way of writing "tested-on: ${HARDWARE}"?
> 
> E.g. would this be ok?
> 
> Signed-off: H. Nikolaus Schaller <hns@goldelico.com> # tested on Pyra-Handheld

If you think tested platform is worth mentioning in the commit msg
(it will stay there forever, ever, ever) then just add a line like:

"Add SGX GPU node. Tested on Pyra-Handheld."

From time to time we add such information to note that only one platform
was actually tested.  I am not sure what benefit it brings to most
cases... but your commit msg is so short that adding one more sentence
seems reasonable. :)

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
