Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DDB639E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 19:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhFjCl3636E/s3jwLW2FdfIN3Fgf06bLXx1sDtjD8u0=; b=b29cWBjDvSBhLg
	Wx2Q0YAwjv/AF65EsSC817i/U6oql19fm24srV8whm78ZLrVNoEaFeR1jWuJkoleUqeJLfoCO91EE
	Y+BBlxV5sKp73j74EWTc3eXe986jUf/D39ol/+5e6X5cHb76C0SN+ShFWj3igRdcjeA/GyZiOKqPh
	deY6ow8BRk2XUsvSR+r81F8qcG6kdYdlscjzwqr/mA+R6xUOK4o8FufykOsz+fyQgPQUYsxEWnps9
	xVFE0SVXd3op6U8UHgEC7ZHl6cd+FU7vEQbk+M3xr2XE5a2SwYvIU1l9qkV0TCL/+rSQG60KsRcOQ
	a6bjAkDPHMSdRLz1zb1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hktYo-000596-MY; Tue, 09 Jul 2019 17:05:46 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hktYc-00057y-CX
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 17:05:36 +0000
Received: by mail-io1-f67.google.com with SMTP id m24so35257977ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 10:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TZVSdIReA1dub8lT+/BNLKNf7FMnmnulMnUfS3UgQmc=;
 b=CPeD29UANW7zL9pPP9vbY4TIiBg1nAUiwPJpG2wONilEmDjCYYSzda2Wg8DlUGH5k5
 DtSv+nf6ASTpDID/cL0sxpNYp2E0melpKBZ64pBL23zGtK/2efEqw63KDXp5ESuNHBPs
 74Ux3KKiSXhKnN1MlVyFnv+XSBQih9a85Tt0phBnh64D2p33gmay4ZZL66RsyTVtLDOI
 +QYuQ8w9db5Q153x67k2QmvGgCqriTidiJfBZsbz08tzmKkRNkWNyDPz33tzwVfxu1yq
 OHJGWj6jo7IeMnwUTQXxEI7QqQFpe4PywFKJVkLCiXDgGNzfY2MWNRzeUIOhZ7LvVBIs
 Qn+Q==
X-Gm-Message-State: APjAAAXNzfsHuiyply3XDAEdjD1bFwmzyz6TAhAScnPJR1MJEJdU7Ckl
 EIUYW5+i2Pn8oQv+Vyurbg==
X-Google-Smtp-Source: APXvYqy82rUB+PxD0GvIta+96cabnu3QalLm/IpoEAom3xpXM1tw/t9dcYtTv9yOKDIievsmVKm/tg==
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr24563041ior.123.1562691933479; 
 Tue, 09 Jul 2019 10:05:33 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id f20sm19481160ioh.17.2019.07.09.10.05.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 10:05:32 -0700 (PDT)
Date: Tue, 9 Jul 2019 11:05:31 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for i.MX8MN
Message-ID: <20190709170531.GA19236@bogus>
References: <20190619055247.35771-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619055247.35771-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_100535_592663_8E9DCF95 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, ping.bai@nxp.com,
 maxime.ripard@bootlin.com, catalin.marinas@arm.com, mturquette@baylibre.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-clk@vger.kernel.org, abel.vesa@nxp.com,
 jagan@amarulasolutions.com, Linux-imx@nxp.com, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, olof@lixom.net, robh+dt@kernel.org,
 horms+renesas@verge.net.au, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, sboyd@kernel.org, linux-kernel@vger.kernel.org,
 dinguyen@kernel.org, kernel@pengutronix.de, enric.balletbo@collabora.com,
 shawnguo@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 13:52:43 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add the clock binding doc for i.MX8MN.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
> No changes.
> ---
>  .../devicetree/bindings/clock/imx8mn-clock.yaml    | 112 +++++++++++
>  include/dt-bindings/clock/imx8mn-clock.h           | 215 +++++++++++++++++++++
>  2 files changed, 327 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
>  create mode 100644 include/dt-bindings/clock/imx8mn-clock.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
