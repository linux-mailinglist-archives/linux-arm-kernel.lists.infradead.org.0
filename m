Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF7513AC77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP3eneMnh7/Q8ENHvQOr+RUip4OoQbcIrPYbWCErHYI=; b=o1NE0vRWvhwgFJ
	Xl9K6UiOeJmAbcnF3+s8pyNQ9BzMOkL/pHUF6AcwjZI14ad/E1BKXeVRaEDpQhl7NY3yKWrSB0e4e
	Y2kEq7aljpcQGRbQhErZp/TTcNAZcqtH7qk3+IeGhUWSPEambfdDc0SzrR1r7zdD2qXs3gGWjPIdc
	j4yp3Wk2BCWs9J1JM93fhaRbqXrmG1tfd7tXisFW6JFcKAJ0Fjp/gfYnVqFIMJkED/N30kJqVQWJP
	Cok+ZQc58TeNQHL48e+X8vRKnz+yqDI0UNS18H9EDNOU2lRceZlwm+IZr6ET97nnenezJ5RSCGta5
	tDoUEYOiLxBMZWvsJ1ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNMD-0001fP-1p; Tue, 14 Jan 2020 14:39:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNLw-0001Ix-16
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:39:36 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 288B924682
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 14:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579012771;
 bh=DkkSSSCcpDI9HeBQHY1IX3M01OsOOAVdyk5wwFtEJpg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=2U3xxpKjVAikQnGWGZrNjaxs5Apbhn+ojqeT82/Vl3Q+wQDgqLlpmDMTKg9pEShuB
 Pz8Zq2N3d+npGfUnohK9Rz+K8OHbYApz8F2lodPqA3EoKHPg5s0qzC6VBOmoJX0UvE
 a+wZ37ge2JeKn1i4pujDAY5uE6WaQDtsu30JQgRY=
Received: by mail-qt1-f175.google.com with SMTP id w47so12621623qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:39:31 -0800 (PST)
X-Gm-Message-State: APjAAAUqpS48Z5Vhk6Nkd4Qi9Td2Tus7HPO8h1mF5mPdg5eKlZhT0Rbi
 vXWwJIKscKw8lclHM0dsRY7k2r4FK6A6juDlZA==
X-Google-Smtp-Source: APXvYqyyZlLy3kbLcDFKfECxJkAxHjCNepUAq3Vqf3Zhjrwf3ciIqlftYUmPRgi34c5gRrNnNETWFPxp2qXg/nkzX24=
X-Received: by 2002:ac8:6747:: with SMTP id n7mr3886974qtp.224.1579012770304; 
 Tue, 14 Jan 2020 06:39:30 -0800 (PST)
MIME-Version: 1.0
References: <1577696078-21720-1-git-send-email-peng.fan@nxp.com>
 <20200104003634.GA6058@bogus>
 <AM0PR04MB4481917D6A969053CB85276F883C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481917D6A969053CB85276F883C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 Jan 2020 08:39:19 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLsQmvM0Qsspj5n+1iy5X0TXaULonGtjKRkdOoSQVQmzw@mail.gmail.com>
Message-ID: <CAL_JsqLsQmvM0Qsspj5n+1iy5X0TXaULonGtjKRkdOoSQVQmzw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: drop "fsl,aips-bus"
To: Peng Fan <peng.fan@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_063932_093945_0A9E23F5 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 5, 2020 at 8:38 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Rob,
>
> > Subject: Re: [PATCH] ARM: dts: imx: drop "fsl,aips-bus"
> >
> > On Mon, Dec 30, 2019 at 08:58:05AM +0000, Peng Fan wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > There is no binding doc for "fsl,aips-bus", "simple-bus" is enough for
> > > aips usage, so drop it.
> >
> > NAK. The AIPS bus has registers, so 'simple-bus' alone is not enough.
>
> You mean the "reg" property below, right?
>                 aips-bus@2000000 { /* AIPS1 */
> -                       compatible = "fsl,aips-bus", "simple-bus";
> +                       compatible = "simple-bus";
>                         #address-cells = <1>;
>                         #size-cells = <1>;
>                         reg = <0x02000000 0x100000>;
>
> But the reg property is not required, I think it could be removed.
> There is no binding doc and driver for "fsl,aips-bus", so I think
> It not make sense to have that compatible in dts.

Well, there should be a binding doc, but whether or not there's a
driver is irrelevant.

From what I remember, either AIPS or SPBA bus has registers to allow
user mode access or not. Something may need to configure those and it
may want to use DT info to do that. It's not just Linux that you need
to think about.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
