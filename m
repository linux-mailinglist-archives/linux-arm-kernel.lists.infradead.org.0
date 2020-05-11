Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BAFF1CE308
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfvT+2W/zvpdoCfqG1Vx6C2tk40clUt3HVVUbjI1WPk=; b=KSJSnufDW8eNlA
	YVZ8g7i20gwY51CPXbdR4DdsO37RlNlhwe1Ssl+wBgRTSWo8w+ejnWNWn/brZrg7GqlBAg/NOsAIB
	Nht+iXUIqjgPpW/Y+HzI4d4TuBeauSqczxpI194YcwJiiS0Mx92kKPopq3wKIpOk4RVzAXvn3QQWl
	BWdx6YOtEajRVdM1a+gwscI6+ICWcvntWtttQ/xUTgf6b2+Jw2Bz+Yioex/cieE++t2D5cT1mIz9O
	jNNu8VnL/Jq/hSWqfGmH7iU4HJUWUgUKwONjPTB37ksb0voqeBHUGFTcVpBhyjZlccraZ+4LyA1vi
	+T9M8h6Xk83IIWR6Mh/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDWE-0006IZ-4p; Mon, 11 May 2020 18:51:14 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDW5-0006Hm-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:51:07 +0000
Received: by mail-ot1-f67.google.com with SMTP id 72so8457843otu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kE5/Go6t2fYGvoXtO9HkWgvHFtqFj74OSf+x9Glf+U8=;
 b=KoDLn1DpWgRA0oGpJfQTGmPorQCOC8+Kc0znFMgyAAHfX3InIKojsHbdtCYX5L09rx
 S+nlPLWMqd2GBkHCQ5k2+iydPZfMullLqPxNyRio9vZdd4zuonDrvzP5RqvmXfCn+zjd
 ZyXZOAiEsf2T195q//YLuUZ+EqVV08lFmlbbtSYnELt2q5AsvDmwr0Vw2ZL7vYIjL2Gw
 wmf/nAtZXL88WkRGZXSJ7LlYADurmTiP+El2+pauqkndZMAWDr/zauTo9aKXoJM8Ux7b
 Tqt8JCmBX4dbsw9AaoG91eF1qI0o+v3f3o3I2lC22koYONYv+KdDEziKSifar3PsYDXO
 P+OA==
X-Gm-Message-State: AGi0PuaY7UBGBizK+4eRZh4AJE4+6bYW/dtecJcfVbGy5yFr+rzvs1us
 nAuI936xfn4Ym8stWQJUeA==
X-Google-Smtp-Source: APiQypIRsow20DA+OFWNNQtxZ4M+f9YRd4zN3KlQ4rWozGy8h57PD0s4/z5hpOktemuW1PcKm94mMw==
X-Received: by 2002:a9d:19af:: with SMTP id k44mr13367362otk.80.1589223065262; 
 Mon, 11 May 2020 11:51:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k84sm4766130oib.10.2020.05.11.11.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 11:51:04 -0700 (PDT)
Received: (nullmailer pid 25902 invoked by uid 1000);
 Mon, 11 May 2020 18:51:03 -0000
Date: Mon, 11 May 2020 13:51:03 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V3] dt-bindings: thermal: Convert i.MX8MM to json-schema
Message-ID: <20200511185103.GA25293@bogus>
References: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115106_016761_58500092 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, amit.kucheria@verdurent.com,
 linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, rui.zhang@intel.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 21:59:04 +0800, Anson Huang wrote:
> Convert the i.MX8MM thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V2:
> 	- drop unnecessary description for reg/clocks;
> 	- improve compatible;
> 	- use thermal-sensor as node name.
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
>  .../bindings/thermal/imx8mm-thermal.yaml           | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
