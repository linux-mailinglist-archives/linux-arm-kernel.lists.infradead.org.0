Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF58197FD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 17:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XwnWNhQXgpZJfAJUiYtGb7zTz3aexCVtndqsyJs+Ug=; b=eUorTHCDbAEVGQ
	w1aSt0iQrdKgPJ5qAKWB+v7jREXUxla6rwvhLEtemC+/RQnrDKVJOA8f9wUeMsHVaSmeLkKSHHvla
	8Cu0peHWatVFoxqolKEjHpK85QH0Kjkk2cJyJzcvEZ4wicFpQm1wx6sm7IzL8q4hXJagKbowupE51
	JCdwHQYns+43M1mx8G7FO+I65/mghDVf7MXtUjI3ajAGF692ySDRDVa0/eh7wSN7rYLGLyfRyNWf2
	OAZO/us9K4aG7jr0WDlVvZ9l6qClLfZBWhDCn6SurCnWPyFgiBRFn8dFZamHbNhcjpZs87+/VV+z6
	5Qvrho+ndvDWHeMqLWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIwVa-0007za-6e; Mon, 30 Mar 2020 15:39:26 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIwVR-0007z5-Pz
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 15:39:19 +0000
Received: by mail-io1-f67.google.com with SMTP id n10so4163275iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 08:39:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EZ1nff7YVijHzSQUa7ruR5O25OH0APmgrgDxrtZq5h4=;
 b=iERuQV4/6wwKhHbZUdZs7CfFlDEoSLM0uroE1238CyoTJXfe1ci88ufTz/MI8xSeMT
 VRKCvBn023bPFhcu0EpbAwDpzwro2+GEWSFZabUMZ7secvKMYi51mOyyPIdfr0fGjC+l
 XZvvAASFAbCPfJ2+qlYabacjRPq1gq9NSdRGcQxMQuIaX/uDh8SfB2DOLoIXMhkIpEag
 qSqzuSrsanJ2I8XyE/j08IlGqBtDW1vXB+L484/mp7pO+xemtTzvOYaMMhM13CZjyoet
 yeQiZEnQkMx6eTWoXYr1sNFU3Y5Xs0ORQ0ADFXRIdPvzN8LeZf1OLn1WsblN74aayJWA
 QXDg==
X-Gm-Message-State: ANhLgQ2iiI7yWSrNPDOcSI3I2xyJak+oG/DzHnBI+kx3Yd0p42G0I0kV
 7wePGXtZ8mEOat+dSeQXbg==
X-Google-Smtp-Source: ADFU+vtAbJIIRWynygDv7+bYMc+vjWB5ZJKEe6w3jC9R106pug4ci8qV3wN4dQNxIjcAu3fiI/HPww==
X-Received: by 2002:a5d:9a06:: with SMTP id s6mr8991926iol.165.1585582756185; 
 Mon, 30 Mar 2020 08:39:16 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id u77sm5012485ili.35.2020.03.30.08.39.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 08:39:15 -0700 (PDT)
Received: (nullmailer pid 20530 invoked by uid 1000);
 Mon, 30 Mar 2020 15:39:12 -0000
Date: Mon, 30 Mar 2020 09:39:12 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/8] dt-bindings: interconnect: Add bindings for imx8m noc
Message-ID: <20200330153912.GA20064@bogus>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <b7a93b75a3ea57aadeeda766a0b729a4bc97ccc9.1585188174.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7a93b75a3ea57aadeeda766a0b729a4bc97ccc9.1585188174.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_083917_841826_EC81B171 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Matthias Kaehlcke <mka@chromium.org>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 Alexandre Bailon <abailon@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 04:16:13 +0200, Leonard Crestez wrote:
> Add initial dt bindings for the interconnects inside i.MX chips.
> Multiple external IPs are involved but SOC integration means the
> software controllable interfaces are very similar.
> 
> Main NOC node acts as interconnect provider if #interconnect-cells is
> present. Currently there is a single imx interconnect provider for the
> whole SOC.
> 
> Other pieces of scalable interconnects can be present, each with their
> own OPP table.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../bindings/interconnect/fsl,imx8m-noc.yaml  | 138 ++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml:  while parsing a block mapping
  in "<unicode string>", line 4, column 1
did not find expected key
  in "<unicode string>", line 79, column 9
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1261720

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
