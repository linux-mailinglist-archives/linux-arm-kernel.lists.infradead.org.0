Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C384070DBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1sZ+22FjtkEFuGPV5fjQrzz60Qews3RBc1a6ZuvTz0=; b=RHN8Wnr6RNaDse
	vhRBuWlo3v/tu/2uCFonBuzP0rUvB569xDSY1HFZTC5eLzBsme+rM5fpi1WYsyZzIfLmqVQMwaAAA
	gOPPzo0QI2u3vsr5NZ5vTYsXg+3uiOElf9GxOMIEMkQXT+gedP0DMsYI5C+6DXySuHRmaQG9y4q9r
	hymbrLLNnyf9jsbkrXqEWUuTm1/ndM5APCW7+LuHayvUIrELWd2fKSAneQH4JNH6XX1sowwrpW+cu
	9n/hZykOTWJHEedXaDWoVaHn6eLdKaeCAS76abgThnuIs0/FtLdY0XxQDVwT51pfo9iIisuWRuyq0
	qa0+97N9VXRcYjk6q76g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi8f-0006uB-M5; Mon, 22 Jul 2019 23:54:41 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi8D-0006t4-Ve
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:54:15 +0000
Received: by mail-io1-f65.google.com with SMTP id g20so77896242ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:54:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3nDpavAXEWgNVl6Sk1jx2h/Nm7wVxk6Q4nHCU/rUxqU=;
 b=PTgGQ6l3osE73DblEBK/eH+vGOyzcsqtji/XZpUtU0xqxRCpeZCy9fSu/Z2wZlb9h7
 HRHrXM1nVcjR8s15xd31SkXeFEqD7RzfKKWGthQITR9cdq9Q4Lw8xbxALsWm097UjbL1
 1YYXJ6n7Iesi3AAS65qf8jzvFysyN60e9GvpDCSpRcxDdo9XDt6/v81Ouct3SDgw9K9i
 tymp016cSGikcwb4e0rRbiIuQ4ohYswJgkjDr3s9FPzb4+1nndq2FDdV23cOhrIhxbsL
 zeHi8l6KcZu7y9aivxxlvVYOW8ra8nrW+JUGp9VOmU9rz92AV/qc4HTkdbIeyIgllc9Q
 19qQ==
X-Gm-Message-State: APjAAAU/zEyf94BUaknNAaFjes0LGbIpMMRuGZ13Pv1L4LE8VFwnn0WP
 nXVSTcuvIATt2En+u4C5gw==
X-Google-Smtp-Source: APXvYqxn4QaTx3LWjksHATeP2k+L0qFydE43WGakM7TNZ86jroqPmVi5rppxcD2cbLn0NIXyU/riTQ==
X-Received: by 2002:a6b:6d08:: with SMTP id a8mr59973963iod.191.1563839653198; 
 Mon, 22 Jul 2019 16:54:13 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id q13sm37476258ioh.36.2019.07.22.16.54.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:54:12 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:54:11 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/4] dt-bindings: thermal: imx8mm-thermal: Add binding
 doc for i.MX8MM
Message-ID: <20190722235411.GA32006@bogus>
References: <20190704091313.9516-1-Anson.Huang@nxp.com>
 <20190704091313.9516-2-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704091313.9516-2-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165414_013564_5331110D 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, ping.bai@nxp.com, maxime.ripard@bootlin.com,
 catalin.marinas@arm.com, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 will@kernel.org, festevam@gmail.com, daniel.lezcano@linaro.org,
 marcin.juszkiewicz@linaro.org, jagan@amarulasolutions.com, rui.zhang@intel.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, edubezval@gmail.com, olof@lixom.net,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dinguyen@kernel.org, kernel@pengutronix.de, enric.balletbo@collabora.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  4 Jul 2019 17:13:10 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add thermal binding doc for Freescale's i.MX8MM Thermal Monitoring Unit.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt        | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
