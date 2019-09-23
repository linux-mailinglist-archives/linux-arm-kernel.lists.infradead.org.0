Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DDBBD8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 23:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WRckbNlwgT5YvT7Nt823skzCeRhMvxiakNOcPI3Q2ws=; b=gPGJqI4EhAI/MX
	CNQt48B8JVQP7oa5W1FxXrvKCT/Pxr0RsvFt1bdefN01iTnnh80T/mJDnd6/COlhr2fJXxr/urT2n
	/HdD35NaFhMZOKytqRa/35WO9qxUO5VguO0CZurw4GFH/c0itoc7tRDKZeFYQuh1ZygCD6HThYlqI
	ZB47vvlO3F9ZHt0XfOANo1xvFa3ExUqbvzOUl145YrVfPKqBl4P3AX+3EcfhR0Ubhiw039TQ6E3NC
	dMRYEHeL6/BxY2YIMMWN5DIy3oyFvunph98l98sIq/LA+7TfFjme6YLnPDx+1zV7ShFZ0NFudWyjH
	A1kYXxohQa5APcXKu4VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVVB-0000l6-5g; Mon, 23 Sep 2019 21:04:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVV1-0000kF-Ty
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 21:04:01 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7D1721D56
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 21:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569272639;
 bh=2HYumd6bd7QRJSQoXTVBAjk+hlSmBUlgr4Tc4zusLQ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SHMrH9mKtbzwDtautaW56F2gZJ/7E26XI4ICgPvRlM2lw+pLFtdV72SS0gDbQ/7HS
 AeF0TEgpXua/5uF0IIjl/uUUH1J5LvFIlwbsiufWPQIEZBC0dx7DYaYtQ2TW6sJIMa
 zkwHenm3uaGVC+R8S0DPDmBSgnZb4rOdS4r+QbTY=
Received: by mail-qt1-f178.google.com with SMTP id 3so16477620qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 14:03:58 -0700 (PDT)
X-Gm-Message-State: APjAAAW0tAY7d78+a2dt9qLDcBnhEadGoKqUljpxh2c60JNYA8yIkMS2
 IFtUyV7NQg51eN1rEBB2J0SYWp/MPPU5/1juNQ==
X-Google-Smtp-Source: APXvYqyb1clyCP0EtxyvXy3tkLKx/+18o0FpEUsDXY0uUXP5M9qYVVG7aLQNU81ezk89PZ/fmRTJyZLQgdFP8aVfF+U=
X-Received: by 2002:ac8:6915:: with SMTP id e21mr2219537qtr.224.1569272638075; 
 Mon, 23 Sep 2019 14:03:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566570260.git.leonard.crestez@nxp.com>
 <3f27038292c09c8bf07a086eac759132c100aedb.1566570260.git.leonard.crestez@nxp.com>
 <20190917201956.GA10780@bogus>
 <VI1PR04MB70237046A8DF88936C7A83F8EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70237046A8DF88936C7A83F8EE850@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 23 Sep 2019 16:03:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLj9FdoSwt7HZwoX42GS9RJ6Zeze=bUZs-tia2oS+OzUA@mail.gmail.com>
Message-ID: <CAL_JsqLj9FdoSwt7HZwoX42GS9RJ6Zeze=bUZs-tia2oS+OzUA@mail.gmail.com>
Subject: Re: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_140400_023788_48B0E152 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 12:42 PM Leonard Crestez
<leonard.crestez@nxp.com> wrote:
>
> On 17.09.2019 23:20, Rob Herring wrote:
> > On Fri, Aug 23, 2019 at 05:36:56PM +0300, Leonard Crestez wrote:
> >> The interconnect-node-id property is parsed by the imx interconnect
> >> driver to find nodes on which frequencies can be adjusted.
> >>
> >> Add #interconnect-cells so that device drivers can request paths from
> >> bus nodes instead of requiring a separate "virtual" node to represent
> >> the interconnect itself.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml | 5 +++++
> >>   Documentation/devicetree/bindings/devfreq/imx.yaml      | 5 +++++
> >>   2 files changed, 10 insertions(+)
> >
> > Please combine this with the other series for devfreq support.
>
> I understand that having two series which add to the same bindings file
> is odd but the devfreq and interconnect parts are independent to a very
> large degree and devfreq can be useful on it's own.

To start with, I'm suspicious of any 'devfreq' binding because that's
a Linux thing. I somewhat expect that the interconnect binding should
replace the devfreq binding, but I haven't been able to investigate.

> The only reason devfreq bindings are updated is to avoid adding a
> "virtual" node for interconnect. Since DT is a big source of confusion
> here can you read https://patchwork.kernel.org/cover/11111865/#22883457
> and maybe offer some advice?

Design something that matches the structure of the h/w not how Linux
drivers happen to be structured. I can't tell what that is without any
context around adding a couple of properties. Nor do I have the time
to dig into each SoC vendor's bus structure if it's even documented
publicly.

I also don't follow why you need 'interconnect-node-id' and if you do,
it should be a common property.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
