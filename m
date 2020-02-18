Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD951634E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScBL8BmvXZo4t0AfoSGnoTQYiAUELYrRUKK/u5WprS0=; b=NFIdOAlcIHk3b1
	HunTWj1bk3bchRqTC6Xx3tuHw5raTL6hdI/6sr4+IR54dv8HkAWOvwqXa3UJouvtgN85gQ8U3HIVD
	58Oofgo97G6XUNP9yS4i+BisHYFSD/9jcxYhwcDiG5mSUmZ88HPYhylYkfgNVnko4jfcRSqD6sfcf
	KkdDZrK9Yh2a8bbm3tqCYYSRnRAAjzYsBRLCZKqeCuAq8OXbGQG9Q5nCJzParHj8ud5wSetwy8jiS
	9d07MrnNGyBYYX7m0aiHAmCocPZcB9fKJJaQalsuMorp+FwxFNzW5UVQxp7C1WakXeALMPe19rd3D
	fs8hA5xznTM1Z4L0q4Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AOZ-0006Cw-QX; Tue, 18 Feb 2020 21:27:07 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AOM-00067u-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:26:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id j16so21055579otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:26:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h2K/XZraKn9rsfZd2B0zXYFlvkUJ0wpYcKLlh++3J+s=;
 b=mlLRjSzsDCiXGEig1fBESIQ7ApXLYkP04VHMpt7bYSfvBUBQpgzVqqpwXCnF4O81Mb
 txHW4gD8BKChEUKkAADTCq+lLWTyKdj6JGJ9Rc356su6H5ny/rw0QB/sondndPHRCFcm
 M3NsFmDRfjcIJxGRW0OuaXQz3XzSTW+iSbdvxSzo0gsF1eeACBK1QmJmqQYTnf4WAKil
 VDBe8Ns5IEa26IzOVT7gtpJOk78oFRIF3/gu/VQTGFdeICLi1EMq4ttuXrepvx8tDu0y
 ayAxsE7j8LwirLacN4KtdKYw2YSoRTjHbDIxchIZ8K0Wx3lk8kCTQrkdkVoePnldNrnh
 wERg==
X-Gm-Message-State: APjAAAU9txnriBLx5CnLTpJTCeR0hVJlIp69kCCEihFLFkDfOorhVYEp
 +Edk/CmQynbFwCP1OtAA8g==
X-Google-Smtp-Source: APXvYqzbaCZzvfi8Cy+dBrQE5LP4XZSe/Xg6NlqllGYh8sbHW2iC9O4HRQTU/e/DPHz1Tg6BpoIGHg==
X-Received: by 2002:a9d:111:: with SMTP id 17mr17106296otu.256.1582061213266; 
 Tue, 18 Feb 2020 13:26:53 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm15269oic.52.2020.02.18.13.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:26:52 -0800 (PST)
Received: (nullmailer pid 1306 invoked by uid 1000);
 Tue, 18 Feb 2020 21:26:51 -0000
Date: Tue, 18 Feb 2020 15:26:51 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 1/4] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
Message-ID: <20200218212651.GA1209@bogus>
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132654_537740_7FA0F02F 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: aisheng.dong@nxp.com, mark.rutland@arm.com, devicetree@vger.kernel.org,
 festevam@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 stefan@agner.ch, linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 15:51:37 +0800, Anson Huang wrote:
> Convert the i.MX8MQ pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- use uint32-matrix instead of uint32-array for fsl,pins.
> ---
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.txt        | 36 ----------
>  .../bindings/pinctrl/fsl,imx8mq-pinctrl.yaml       | 82 ++++++++++++++++++++++
>  2 files changed, 82 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mq-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
