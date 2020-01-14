Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5036413AB8F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 14:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grVhvi9xcTgbvjRVarAXqLqzTSnt7RPvhl17cAWLLTk=; b=iiqZ4BCvIImaiy
	GHsf8lCHJS+pxHIz/pXTytkKs23hBYKiUueo2x6HNASaY38lDDWsiup0/EzJAL8fKHGPa4RVz5eXg
	WNOpZENV6BN/FN7cpqpXTIRRv9xXJlvpvVGclhlGpVsJN7s+KdtsMuvZw6UF3tyjL9h0UO1A9qCJ2
	tnc+8/+uk8C5bnDRKlLZrRCHhSN0lmNgKAYN6qhGO6VE+mZsI7Nr0HsCkhYT4Xq9MCLBW4Ja3L+OS
	zQ8dleSN7UVLqtFeWOt8pizvYxdWfL3DPrbsyX0U8IiYjlSmsojUkOcYjZlJz/nNSfTladeMMYS1V
	HftpQ5jTw4twanJiso2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMi2-0007I9-GB; Tue, 14 Jan 2020 13:58:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMhp-0007HN-2P
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 13:58:09 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32A0324679
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 13:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579010284;
 bh=4dlEZ5O6TRVm5SzbTpgu6LZbOg6cFR0SckRSi4OV/54=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=a6CQDE6Wezc/6DTSxV/pveS7LqpaHtIKkU+/Yedn2RNU6GB51gi0d5eEO+zOzl5rt
 D4RFGpRQeGE4fUKeWiZ4AOGvZ8uTyQy3g3rtaVeiAjBktgSGFLqZt1MqDWNaA7K704
 QIz70Mvb6jFz3fO6dzqO3MOdMw5yoZeMGHBgXnvE=
Received: by mail-qk1-f173.google.com with SMTP id w127so12097073qkb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 05:58:04 -0800 (PST)
X-Gm-Message-State: APjAAAW5SkEkMcAXX9XzpXzLrj7aXR+7uIb0AQhxT9j4DhrpOyYA5jfS
 mZuRmCGgYkWew604ANvwAvOb1c5i2XTS5JHhVw==
X-Google-Smtp-Source: APXvYqxDqKJxTHzTxrkKkapIjfnZCCCiezeAbzCYinEtmifEiYCBaAW1f0BnGQVFtyjpo1uY/Yp9GeMVllEll9d5gZo=
X-Received: by 2002:a05:620a:135b:: with SMTP id
 c27mr20045737qkl.119.1579010283333; 
 Tue, 14 Jan 2020 05:58:03 -0800 (PST)
MIME-Version: 1.0
References: <1578642914-838-1-git-send-email-Anson.Huang@nxp.com>
 <20200113212735.GA9275@bogus>
 <DB3PR0402MB391644F6152A726A13B8F628F5340@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB391644F6152A726A13B8F628F5340@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 14 Jan 2020 07:57:52 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+ULw1xpBktnjKu_8eQtLg_s7Fi5Jm1yuT8O+cWo3E=ZQ@mail.gmail.com>
Message-ID: <CAL_Jsq+ULw1xpBktnjKu_8eQtLg_s7Fi5Jm1yuT8O+cWo3E=ZQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_055805_153801_55197785 
X-CRM114-Status: GOOD (  15.78  )
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 7:25 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Rob
>
> > Subject: Re: [PATCH 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
> >
> > On Fri, Jan 10, 2020 at 03:55:12PM +0800, Anson Huang wrote:
> > > Convert the i.MX8MQ clock binding to DT schema format using
> > > json-schema
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  .../devicetree/bindings/clock/imx8mq-clock.txt     | 20 ------
> > >  .../devicetree/bindings/clock/imx8mq-clock.yaml    | 72
> > ++++++++++++++++++++++
> > >  2 files changed, 72 insertions(+), 20 deletions(-)  delete mode
> > > 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> >
> > Fails 'make dt_binding_check':
> >
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:0: 'ckil' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:1: 'osc_25m' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:2: 'osc_27m' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:3: 'clk_ext1' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:4: 'clk_ext2' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names:5: 'clk_ext3' was expected
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clock-names: ['osc_32k', 'osc_24m', 'clk_ext1',
> > 'clk_ext2', 'clk_ext3', 'clk_ext4'] is too short
> > /builds/robherring/linux-dt-
> > review/Documentation/devicetree/bindings/clock/imx8mn-
> > clock.example.dt.yaml:
> > clock-controller@30380000: clocks: [[1], [2], [3], [4], [5], [6]] is too short
>
> I did NOT see build fail on my side, anything missed in my environment setup? The failure
> log is for i.MX8MN, while this binding doc is i.MX8MQ, is it caused by the incorrect compatible
> string which should be "fsl,imx8mq-ccm", but I made it "fsl,imx8mn-ccm" by mistake?

Notice that the error is in imx8mn-clock.example.dt.yaml, not
imx8mq-clock.example.dt.yaml. So you must have DT_SCHEMA_FILES set and
yes it is due to the compatible being wrong.

>
> anson@anson-OptiPlex-790:~/workspace/stash/linux-next$ ./zeus.sh
> *** Default configuration is based on 'defconfig'
> #
> # No change to .config
> #
>   CHKDT   Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
>   DTC     Documentation/devicetree/bindings/clock/imx8mq-clock.example.dt.yaml
>   CHECK   Documentation/devicetree/bindings/clock/imx8mq-clock.example.dt.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
