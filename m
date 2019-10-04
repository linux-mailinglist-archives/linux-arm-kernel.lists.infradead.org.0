Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF5DCC53F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:52:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBvruqmO4Q73BVEn8evEq1o37DEmPvMtLPJDXBa1hN4=; b=n1EoyAsUR6IOQm
	ArIywKgK1mMcmL866VwqT3P6mpIhg6Az5rDeRhuaV31JlJD1z/i2hsmrb3ofD2WkjAGNx7sxTD+5K
	Z31j5WFfKWZCvBvHG7f2kYaS7EMWEdZNJS1tQ6g2X/pTpQkyt1ZBMIYDNnLJYVfprcmPuj4b8I+2g
	wRupxztPbknJ7EvMzlkG7PZJzKdaop/6YfHGslYEQgto4WETQTU09IceuOhuNC9H2QLM4YmXyvDDm
	TBfPF351Lu7y5LJVS9QFBuPGrDCMu/ZA6uUCoh31dGgATuIElahxGeKIDaGOFWifFMapZmQao+cdG
	R8A5DJ0PwFLGqzEr2bRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVUs-0004m3-Qz; Fri, 04 Oct 2019 21:52:22 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVUl-0004lP-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:52:17 +0000
Received: by mail-io1-xd43.google.com with SMTP id b136so16732516iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2NHwB5wF7rQTeZnawydpHnEae0UNUyf0umbpqxfApS4=;
 b=UXyWAN1netWXO8wzokqz7oMK4zAnqa67+noXFlYnXYSonxedyWNQjaX2lle7O9oaWg
 6E+0JogNPSEJQtEwNYtIrpV3DhqBgW0XyLesAKNODdziIGBgAT0Kcz3r5nuGMJOVgybs
 UW4NMndkYjmyyZBxWAh0LXThYbAaNZhfWipzcZh4dUvnt1XiWJvNeLxp9vH/I+d1rhLa
 00HKW6A9C6NttJlIYVMNvccLvoiu+q15fK3IERPjagcF65Xgk63CyeUDr974f9XAs2rN
 Ic04LIv7bZZn921L892ldiGsvnsiIPmz/dJbsWZNyODKkC7W++cS9LL/dB522pwdWjxw
 OKsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2NHwB5wF7rQTeZnawydpHnEae0UNUyf0umbpqxfApS4=;
 b=N/YEx9ttIUmdDJ9t+Ln5sSjO1ZjvFiHLoUPwYT12vZYSbPUPTD7Wfjb7UBp7s9/I6n
 B+mGtJhjp76uF3tgh4xXFzUkjFoxIHKQDk3WCTjJCr2EY54mKY4FXe5Q7zV3UGZmOuV/
 0bOLZO7/71x9Kd4CK+Gr7j2j9wg1WUqZc29iCQ7uPkrlvuDp2EUXTcdqjiRwgRuXQtn/
 1hZEOF0xXWQScELlqKi405rIPelZUCPdy43DJMWFLx2aLUrzkB4VIuqwGBTlPQuy5CkM
 FuNUqSaGaImAy6OXl4z5260jjo++odXdbpqX3A2wdZRvofgCbA5UzfUJGcoP7ilUBEp0
 c7RQ==
X-Gm-Message-State: APjAAAUDomFmQ0QH3/FSSTLZctFbRqMr/R0/8873BurRMKJxxMlTjkMm
 Np6CL9TzbkeF/8WnyhlYSb57aEwzY3pyXHRclbM=
X-Google-Smtp-Source: APXvYqyExmJsuNOtxdeWwb/yncB5aTD63s1eVIhDHJxOm8bm3sqKxM0SlP7iLrhf5X7HN3FkMnHeqslK6bBbYF2mSak=
X-Received: by 2002:a92:ca84:: with SMTP id t4mr18199133ilo.171.1570225934327; 
 Fri, 04 Oct 2019 14:52:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191004054115.26082-1-andrew.smirnov@gmail.com>
In-Reply-To: <20191004054115.26082-1-andrew.smirnov@gmail.com>
From: Chris Healy <cphealy@gmail.com>
Date: Fri, 4 Oct 2019 14:52:03 -0700
Message-ID: <CAFXsbZq6MQk1DyUVGjC5g6jmsOdmG=1Q=4fX=9n3amSjLW1Maw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Specify
 'i2c-mux-idle-disconnect'
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_145215_826621_7F026AF2 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Rick Ramstetter <rick@anteaterllc.com>,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Jeff White <jeff.white@zii.aero>, linux-kernel <linux-kernel@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>,
 linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 10:41 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> Specify 'i2c-mux-idle-disconnect' for both I2C switches present on the
> board, since both are connected to the same parent bus and all of
> their children have the same I2C address.
>
> Fixes: ca4b4d373fcc ("ARM: dts: vf610: Add ZII SCU4 AIB board")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Cory Tusar <cory.tusar@zii.aero>
> Cc: Jeff White <jeff.white@zii.aero>
> Cc: Rick Ramstetter <rick@anteaterllc.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> ---
> Shawn:
>
> If this is possible, I'd like this one to go into 5.4.
>
> Thanks,
> Andrey Smirnov
>
>  arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> index dc8a5f37a1ef..c8ebb23c4e02 100644
> --- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> +++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> @@ -602,6 +602,7 @@
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>                 reg = <0x70>;
> +               i2c-mux-idle-disconnect;
>
>                 sff0_i2c: i2c@1 {
>                         #address-cells = <1>;
> @@ -640,6 +641,7 @@
>                 reg = <0x71>;
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> +               i2c-mux-idle-disconnect;
>
>                 sff5_i2c: i2c@1 {
>                         #address-cells = <1>;
> --
> 2.21.0
>

On an SCU4 AIB, this series is:

Tested-by: Chris Healy <cphealy@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
