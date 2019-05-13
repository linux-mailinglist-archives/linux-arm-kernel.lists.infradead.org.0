Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319721BB9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCd56HSdI83nEXnC7qAAWJn/xsz0sLnRjlsJd17xGGE=; b=Sg58T/S5pW/2tc
	Q8ArT51hji67SuD0wfhtJ2raX/dysVKobOQpJ7svvcbOgPrvlRsSLZM12nYB/PdZVuuRg8SXzx5Wv
	6+sIAByLoci14cGszfOilEcBfmL/kAlJg8kYB2znN9sAivdlCasVqD6/RH2bL6tovDsKa4pkf9gAm
	beoNBVyshBp0HGuK+rpy1Y7j1BIHo+MFJ5lP3jSIILtWHA/zYPRjTin1l+sHrHhEx0IGbI7YvmKSl
	6h06ypLsw9kI3j50cJw2Tx/VJZSb0KgQgS+sbr4vmIamsBgTg297BGQtk5Az3mzgrc9GbCZGl++z/
	xFetG+NaL/8VvchKgEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEYj-0000al-WE; Mon, 13 May 2019 17:16:18 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEYc-0000aH-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:16:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id f23so12485118otl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hi/B3pDLCTv/0zQybMoo8PsgjNBI5kvnYnP5VMF7qhI=;
 b=s+JiC+ZUwQXi/Mp+hhYDfTWPPUqpbyJlWAt3MQYUVLYRf+11+NkgzW5KAA/EYNHIMP
 3QraDPp6YcFjaqozkYhcujGAMWOgT0xT9gSC3MHAQbGCfUPIQ9PHczPPz4A3XxbM6mIh
 i0n7g+cKg7LzWX9McZM3BluUbF3ZSrDDr6y32/Q9iyMy+I12xVllbO2Nf0sllxj3h67c
 TcAxV8U4n5UCGDi3/+Nf5fX5TYajFhmYFQFHECUwHfIzP6Lex1Z2bjrbsCLjZXKpMD7f
 iPJKKNoNtR0tF16id6Q6ufg/hkIOsDYa+uDvNQBEnodID/mL4MnZjC1V7JgWCrzXrWmJ
 LlwA==
X-Gm-Message-State: APjAAAXuIkIvPirxzLHerp2eHp+++OdQLp+vI/ZDhCkrTpbIYmFX3vAM
 9gIEF4/V8ZxKLRvYHk2pxA==
X-Google-Smtp-Source: APXvYqz/YR2P1ehCNc15CXc2iDimOfGfWV1/7llqz6w550adaNWtvx+q+Jy3/kM9N6Z+rfW8gqy7Hw==
X-Received: by 2002:a9d:60b:: with SMTP id 11mr2484447otn.9.1557767769212;
 Mon, 13 May 2019 10:16:09 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c3sm5319743otb.13.2019.05.13.10.16.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:16:08 -0700 (PDT)
Date: Mon, 13 May 2019 12:16:07 -0500
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: imx-cpufreq-dt: Document
 opp-supported-hw  usage
Message-ID: <20190513171607.GA24874@bogus>
References: <cover.1557742902.git.leonard.crestez@nxp.com>
 <7948ab63fe5c92da280542a9a372349486d40c65.1557742902.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7948ab63fe5c92da280542a9a372349486d40c65.1557742902.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_101610_340222_B7986C4F 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 11:01:39 +0000, Leonard Crestez wrote:
> The interpretation of opp-supported-hw bits for imx-cpufreq-dt driver is
> not very obvious so attempt to explain it.
> 
> There is no OF compat string associated.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../bindings/cpufreq/imx-cpufreq-dt.txt       | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/cpufreq/imx-cpufreq-dt.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
