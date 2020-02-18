Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94391634EE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0poUnq8EfS5xN7236pYN+JJFxRkVPukRJsVl1n3KIc=; b=kbR+Nw8MvZkIWJ
	rZ1EopHHCUSjmyirUd0O0e3Qo/SEkSgEmU0ci3dQDDLE0yv3S0m8nr7Ay7Fj0putSsyeH3KUO2rFN
	TiKp6oLTUzeF/0IY3ZuGvXJ7bEJoi1pBOJFBIr2ski7MmsyimAITM9Z2oSXB3KV8S8Ac+dY+qQwEl
	iraI5Axhe89+aJI/OL5I+MYHT6u9SOrOksNxR3Yneaqa94PchOW0Tgj9eBFeagxLx5dYW68ZSIwiG
	eSrNSuDJFKMFoJfeGRBeub67J6ukUFFrMweHL9S7xsS/A489OO+WRH3qKCKu9W5AZ0a8IlsLvOPvd
	J9nu1E+MF7PnVC81rBvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4APK-0006kA-3S; Tue, 18 Feb 2020 21:27:54 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AP8-0006jg-9l
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:27:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id j16so21057622otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:27:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7refnxEeRm7SYkBQGKPpWsQpWcFL/c9yrl6/7Io+6sU=;
 b=d9fbtRmtHjH0HFXY2F/mXy69OpRUdC+kaImu3PulGliuf04DOMclh6hH81xGSTXR0S
 QePgKV1vpXYnOL3EYPUlNt8rVK4YDwnCPlmZYJmtP1PageLhawm+io25yMZ8CZq0fAxy
 ZeMC+nTg7/yNIEN9VVlbLFnrPe2UYLyG6nww6H22u3CucLJ25NzjQOCe+I52kTM5mKdD
 bPZjhE8SFzbf39LytlzmiVHtWyhFAsU/e9x9rpq0mwvYrvOpwev1R5a9sSJUVcmpttHC
 J/7sylPdJiTCO2KuAHiLqW/T2n+TLClVY/FVRlsXqYxe1MzNsRx9MpmYzIwE8P9lI+1D
 ojBw==
X-Gm-Message-State: APjAAAWBSItFtlfuiicPg8UE8plbBScKcda+XwEqkF9mXD3zrqgSM3gA
 EF8w3T3sJs7cSoqgVEKTRw==
X-Google-Smtp-Source: APXvYqyUJxExdwMUzGxK7lYZeDEF5FhoGMqcJ7+RDmKImqATHWgRyE2lHkfz+pQ+ld+BL6Gee86+zg==
X-Received: by 2002:a9d:6251:: with SMTP id i17mr17699503otk.14.1582061261659; 
 Tue, 18 Feb 2020 13:27:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w6sm1749028otp.69.2020.02.18.13.27.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:27:40 -0800 (PST)
Received: (nullmailer pid 2645 invoked by uid 1000);
 Tue, 18 Feb 2020 21:27:39 -0000
Date: Tue, 18 Feb 2020 15:27:39 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 3/4] dt-bindings: pinctrl: Convert i.MX8MN to
 json-schema
Message-ID: <20200218212739.GA2588@bogus>
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582012300-30260-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132742_335552_A0442F02 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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

On Tue, 18 Feb 2020 15:51:39 +0800, Anson Huang wrote:
> Convert the i.MX8MN pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- use uint32-matrix instead of uint32-array for fsl,pins.
> ---
>  .../bindings/pinctrl/fsl,imx8mn-pinctrl.txt        | 39 ----------
>  .../bindings/pinctrl/fsl,imx8mn-pinctrl.yaml       | 82 ++++++++++++++++++++++
>  2 files changed, 82 insertions(+), 39 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mn-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
