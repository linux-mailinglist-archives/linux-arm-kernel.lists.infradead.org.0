Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3531A3D0E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fE3XkpPvgwhajqjZWq/sLF6uZ7bawRlHecMz8BM7fRA=; b=FhscP8dQexdbsk
	kJ5vfMnRL8QrNXU/kit1Ftugz/u/vAzmBg+RNsXP2j24wfEAhFh/DWfu1hmr95+DINYXHQHizLCjN
	5/SmMMCLOGieonJy5+OUgbRWSIe673qfpAanAv1koBx2DbZoXe3cjViHqgfpdyy/5Xyih7KWzjfNJ
	YlFwKBi/hQ68dEGtZt2vQJrfgyQl6BeSx1QxQUfC5gha3KqgS6KL0iYIOETWuLs66t58WXIu0v1To
	R326+0oEyGrN27/2uMtZSTadvr3kb3bZIQ3WwfW1D97kPCbpsI8T8MxyYfuu0kawwGOYoIZMEiLaa
	NPJx88dYp6XnGlrx5O2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiml-0003AD-D3; Tue, 11 Jun 2019 15:34:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haimZ-00039f-Vs
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:33:57 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B4922175B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 15:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560267235;
 bh=/D29hR8xaH+fI3Kqe7nKroDdw+Tyiq+obsj9qSH1T1Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=myT6eu70PDvKi56Pg6USbutKzLV9f4VqqOPSS4yJz2aO1yRgz2F0N0G9gERDVSkqP
 sqdmU6AWKfHaqqH2rxxiqjQOdAX/Z5a0A8ar7LQBV8DJSH75AmsxGicIDHwoBf9ypf
 MxctkGU6B7VPByjcpnw4wd5rnXUP4xDeWMKAkxXY=
Received: by mail-qt1-f178.google.com with SMTP id 33so6878462qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:33:55 -0700 (PDT)
X-Gm-Message-State: APjAAAUUCCpzl7FfVS8k4wi77b3u1fIW8CY6qFzgmrF8Qvbc8LYwhf1N
 bp1yjUOZAMRw+wv6zOYrLEqzbIyWAFUZAjTULA==
X-Google-Smtp-Source: APXvYqyPTmUTsnof7sPqxoX0Xap7odWWFNRm5z+QuRuINCRzXktgjnJpHwXSC5zbgDayMd0UUX7EQmT9RghDRo6Zt6s=
X-Received: by 2002:a05:6214:248:: with SMTP id
 k8mr29780000qvt.200.1560267234626; 
 Tue, 11 Jun 2019 08:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
 <20190611090309.7930-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190611090309.7930-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 11 Jun 2019 09:33:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLXFaDsfrzBc6dUwsuBrhWs=w2m-pXjFBdQ_sm685kf2Q@mail.gmail.com>
Message-ID: <CAL_JsqLXFaDsfrzBc6dUwsuBrhWs=w2m-pXjFBdQ_sm685kf2Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083356_042339_DCFE1D18 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 3:03 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Remove the copy/pasted example and use the one we had before
>
> Changes from v1:
>   - Fix the maintainers
> ---
>  .../devicetree/bindings/i2c/i2c-mv64xxx.txt   |  64 ---------
>  .../bindings/i2c/marvell,mv64xxx-i2c.yaml     | 124 ++++++++++++++++++
>  2 files changed, 124 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
