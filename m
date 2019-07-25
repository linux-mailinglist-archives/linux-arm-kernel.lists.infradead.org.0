Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E2759BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/iOe54x/C4ADMTfWrYTKb1mlrpKi08oHzkeO6hk0Qo=; b=kIt7G+owDwEBLI
	xh1kaAeGSHmPm2J4XSGZFNaJ4BQ1LKsM6MZs1hZxopAXrhqaHY43YnE06NKAT6CZaUIX7KxGL7uzN
	pF/Mulj+zl0KMu8qU9nQ68JsKQ40vxy2DKMnmOHkflUhEL85msyk3oL6NPItZxumqjwfsfJvpX6UE
	DWpUxFQmo+n533AS6UfwAy/CJLvOW5FBmZy29bCy6FIiOHwggR8NHLGhqFLUFVBFWxmn+BK9H0fa+
	dQ5zA4xrryx0N+yZ0W9TsuykF867ytAHSwDgNI2cp26wDknh4A5adbxCH/a7C4D829T/mvktwpXil
	V8HDyI0GdI8L22ttSrSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlQq-0002Bu-6s; Thu, 25 Jul 2019 21:37:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlQg-0002Ba-5j
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:37:39 +0000
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7503322C97
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 21:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564090657;
 bh=DEqG5QVpqjFk6fDTKmZueo9OEbXtd2kkOwCkB9pcwsw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ChBuyG/zLWJRz7CNaa1J+2pTEKGQ5mPVZxhgAryltV3xIru5iRsalCt70Lgc+2swf
 OaUz0nXNxLffPqB602194PwAB1rEqPC8bnnh+EmKVVt2iF2akDyn7gCayH3wQD+9Gp
 1QMBZQQe+ocmwqbpkCawFcUezrKhOamAIJS4HUdo=
Received: by mail-qt1-f171.google.com with SMTP id d17so50504621qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:37:37 -0700 (PDT)
X-Gm-Message-State: APjAAAWgyMNgu/QL0Fj8ij0qfdbJZpVhJGWLKLMaSXzq78BLuczOnVdR
 JxK9DaQv7CEgIt1zrSst/ABQ6baPjWrrLBi5jg==
X-Google-Smtp-Source: APXvYqwh/T3W6Tp6QVzMKguGCdgOPe7mHm3zxACkzb6VLbhzRa4V1o3Vyr0DiCBcMEJFji5FQ4vwo8d9PagXgK58joc=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr63961851qtc.143.1564090656611; 
 Thu, 25 Jul 2019 14:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190725020551.27034-1-Anson.Huang@nxp.com>
 <20190725210619.5EB94218D4@mail.kernel.org>
In-Reply-To: <20190725210619.5EB94218D4@mail.kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 25 Jul 2019 15:37:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKZHG-y_cKitU0=EksgyVU-YLOi1gAcFXx4ve21CMki1g@mail.gmail.com>
Message-ID: <CAL_JsqKZHG-y_cKitU0=EksgyVU-YLOi1gAcFXx4ve21CMki1g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: clock: imx8mn: Fix tab indentation for yaml
 file
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_143738_233790_3B2BA706 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sascha Hauer <s.hauer@pengutronix.de>, Anson Huang <Anson.Huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 3:06 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Anson.Huang@nxp.com (2019-07-24 19:05:51)
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > YAML file can NOT contain tab as indentation, fix it.
> >
>
> Would be nice if checkpatch could check for this.

Would be nice if folks just ran 'make dt_binding_check'. :) It
wouldn't be hard to add a tab check to checkpatch, but that's just one
potential problem.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
