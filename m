Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 538FA1769DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 02:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgcX8y1H9lE06C4GrKFzW/Su2SrmGaU7WxNfQ5elaOQ=; b=F2QbmLI1woNWOx
	kXrtoMDV4xOUf3rJxXdojyi4Vo5eUn9zxj3fl0BxIBecijqpAmVKgqr6L57kFG53mW5+QS7OIywSs
	Gp69u42tlPFq9Y/fDMD6uToGc7JoFHJSrOmGbiTIVnF8j8TBhsc5eCa1S+FnEGxkf7s2xGJEQdiXo
	U9AjCVTbGJqsImWi8tUvsfmh7vBo14ivoi9DNWGmpdyU2iDfBTdHVr2g2x78D/+eznhdB5z7fqGdW
	Pte99HPslg/g6LrI30gqTemfTe4U7ULeDWzZYKfiOV2bokBLKPt099bOmW5ORtip9lpBlbosZyCaq
	OaHVFTkq+JcoRP34K4xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8w4h-00034Y-Qr; Tue, 03 Mar 2020 01:10:19 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8w4Y-0002lq-B2
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:10:11 +0000
Received: by mail-qv1-xf42.google.com with SMTP id fc12so932889qvb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 17:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=ndSx0yYjW12GRk/K7y0BYkAX4pUPocXZVNfkp1r7ykA=;
 b=gKwZ2lFGzrSsqzay3qVPt2twsaPJsLGkoSMLHZGoHKi4fvuqZm/Ye8VHqUXpGRUpTY
 hAtYh5y016lUnlTRB+jF/7BqGjyiXisXgV4DEo40CHjFZLBppG0OZR3EPgUw/rtb/LWk
 0XEatx3PtU18p3EwLkx+Nfp3jKYlHPGQXvp7Y44fjllEEDKO2G+rWJS89rrAbWtOPRFm
 D4nG1LaOmatBNgECBjAUTgYjbYwn5EZ6SI19mCCK8Oh53E1HkSE5uwxzpLuMQKRH8FMt
 fv1x/SeW9FrKrfb1KxLa5NAgUoZA/8p7BzezdeeCVLWfxVqLbenOJMUflK49p7Dg+l9W
 up7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=ndSx0yYjW12GRk/K7y0BYkAX4pUPocXZVNfkp1r7ykA=;
 b=ZZ7CU9jBsF/UEs+6OhmeJVaq2r4VZPk7pckEoxvLFMDC1+k7ks2zI/IYP7/P2k1Qxa
 PxaspLvck7pNPayFbX5qUTk2po8fSoDYl9AiMizsrvV6BPf8xZ3+8x0Qvkw5s3/y14OO
 T+tMxAO5V80Rh/ccsa6C1Clvn2r42JQcAJ8AkLh7Of1Ijde7UhkODyxtNMVwqOyC/SGT
 RaG5fN+q7ASZUQUH2OJmd3dTQ4ouMPzf6NJs52XvV3KR8GCpjZj5KILsEyAIYPf4Hdap
 o6MfLf3u9ccLlfISthAQYxUlGSxRVXy1xJOdh8auHOG9timOvODss3hHuwhqVltrlYjs
 awqA==
X-Gm-Message-State: ANhLgQ3esTozL38o6JC+VARW6Kgd4AhZSrosCFOsUVImTdLLSMV5UKQm
 7VF1t4sXpPg4C8fe+ilg5lETXA==
X-Google-Smtp-Source: ADFU+vtusM/VO7C4WS4aES/v36gj03RnGS2eDbYMBa3Wkvdx73qQlRC8chappFK+J8rnKqyuojVSMA==
X-Received: by 2002:a05:6214:1633:: with SMTP id
 e19mr2073120qvw.104.1583197807440; 
 Mon, 02 Mar 2020 17:10:07 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id s25sm6420725qtk.8.2020.03.02.17.10.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 17:10:06 -0800 (PST)
Message-ID: <84b8e4059194facc4cc8abd8e445d7a7df113c1f.camel@massaru.org>
Subject: Re: [PATCH v5] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
From: Vitor Massaru Iha <vitor@massaru.org>
To: Fabio Estevam <festevam@gmail.com>
Date: Mon, 02 Mar 2020 22:10:03 -0300
In-Reply-To: <CAOMZO5AmAqToKeDz=GZ0f44P6qAP2OGPHzUiD-xV+hr1W1_BRg@mail.gmail.com>
References: <20200303005244.13893-1-vitor@massaru.org>
 <CAOMZO5AmAqToKeDz=GZ0f44P6qAP2OGPHzUiD-xV+hr1W1_BRg@mail.gmail.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_171010_386618_DF0FD03F 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

On Mon, 2020-03-02 at 21:59 -0300, Fabio Estevam wrote:
> Hi Vitor,
> 
> On Mon, Mar 2, 2020 at 9:52 PM Vitor Massaru Iha <vitor@massaru.org>
> wrote:
> 
> >         pinctrl_i2c1: i2c1grp {
> >                 fsl,pins = <
> >                         MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL             
> >      0x4000007f
> > @@ -374,3 +437,4 @@
> >                 >;
> >         };
> >  };
> > +
> 
> Unneeded blank line added here.

Sorry about that.

> 
> With that line removed you can add:
> 
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> 
> Thanks


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
