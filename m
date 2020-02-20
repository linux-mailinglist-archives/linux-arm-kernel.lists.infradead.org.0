Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD1A1653AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 01:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKUcJtVjZeHHdrNX+F2SDHSFdhkAA/3wOMVYLKOit4s=; b=TeqK3Fs7c47szb
	Inl7BFQndwLS8/Scrh9mI0OLZu3X4WaxxH+hymktNX36MqJPeTlyINTgRMJgTqWRPF5ayJ98dMyf/
	YRInW5ZPKR0Brs9G709hO/p0wSBB9/R6KN6EBM/BG0Z5OUroOYDFzb4jP/OKQMrBBRpZ3rsEdYDCd
	f9fB0Pm1eXA9huez5ZzPz2VA7CgkHhs45IUEEJ+cp+91AE0nSD81dpAhuJ0bzKLkBElP/Vc5ssFQ+
	K17LLHIPR+9aL8IG7Ee9ZU9WyyyT4pY5O1zsTkice7YDZ8XvOe46x+wFHzFT+/488Sc52quttnx/X
	V0Av6KvzA/+e/hy5fSWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Zqy-0003bU-45; Thu, 20 Feb 2020 00:38:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Zqp-0003b6-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 00:38:01 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC03524672
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582159079;
 bh=wVkJ6ZeLNIZiy6+11L33texKMe0DidKfbB80UOC5yMU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JvX8juVh7tpKnAmn/OnSmnaV1SywCv8p99C7KMYuMuHchY1f3H9mbVcavJ5WDnIDx
 fd+LRfCcjhWysTgGbamLuebqnSq3BvPmfgPMFn0qDXokqCkHRWDJPwS+cfv2x5o2Ex
 chnRTRGQGmTzPo9HAVCm/o/09yN/GqdL8fcXlZ7E=
Received: by mail-qk1-f173.google.com with SMTP id b7so2008562qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 16:37:58 -0800 (PST)
X-Gm-Message-State: APjAAAW31ok/hjgF4shE9ikObV7yU1MXLheV+nMLhcb8flARsX7ghPLV
 qkRM80U5QNfTrIz9pkYuzwc/YrKK6iCcDlKAYg==
X-Google-Smtp-Source: APXvYqxK/YCRP+U9ZJ5s6W0p8TrvM7fN8CRsbqJZJ6kYIYqE9CGU40AmveoZ5T5GaZM7MUrQWu/w4Dbohg3zeMtMQ3A=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr26414050qkg.152.1582159078007; 
 Wed, 19 Feb 2020 16:37:58 -0800 (PST)
MIME-Version: 1.0
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
 <1582097265-20170-2-git-send-email-peng.fan@nxp.com>
 <20200219140921.GA7031@bogus>
 <AM0PR04MB44814713955807D7BB3E2CD088100@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44814713955807D7BB3E2CD088100@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 19 Feb 2020 18:37:46 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJWzax7eAc=qzWiSWtNtDuSyZ9OsnZ_rZNBSUgOQ7+fiQ@mail.gmail.com>
Message-ID: <CAL_JsqJWzax7eAc=qzWiSWtNtDuSyZ9OsnZ_rZNBSUgOQ7+fiQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
 json-schema
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_163759_850461_32A08DF7 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "ohad@wizery.com" <ohad@wizery.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 8:34 AM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Rob,
>
> > Subject: Re: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to
> > json-schema
> >
> > On Wed, 19 Feb 2020 15:27:37 +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Convert the i.MX remoteproc binding to DT schema format using
> > > json-schema
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> > >  .../devicetree/bindings/remoteproc/imx-rproc.txt   | 33 ------------
> > >  .../devicetree/bindings/remoteproc/imx-rproc.yaml  | 61
> > > ++++++++++++++++++++++
> > >  2 files changed, 61 insertions(+), 33 deletions(-)  delete mode
> > > 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
> > >
> >
> > My bot found errors running 'make dt_binding_check' on your patch:
>
> My command:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
>
> and output:
>
>   CHKDT   Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
>   DTC     Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dt.yaml
>   CHECK   Documentation/devicetree/bindings/remoteproc/imx-rproc.example.dt.yaml

Make sure dtschema is up to date though I'm not sure this could have
ever passed. 'items' value is clearly wrong.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
