Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD6819E880
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 04:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFrFocn4DTLOXNLx8q4zRyea60Dh9wLDBqgO0PbUIWI=; b=Kdkt+DiKnflMXy
	mgAoSxrRzkBTcrsaP2D6xLcC+qXcKKpeRBNXOVL36ueJBPDeYsnXG1TMGj+gCXydh+MIkzjDFJjyK
	8UeAEXg5ZFx78qa1mijgDApMGc5PDztQ1gTQEoZckAyd+YPG6RReP4mflLBWgZHgQzSsmzxpN9mVl
	amAW0GaSoyOgvtdt47k7wuBMhc4ilRQ04VzXviLVQ/u3GgV+jttBKq1kNsmAdSHVt7dti3z1KAtUl
	NPiJSCjYOGKbEBYLeQ5xXo2OCzZvR1r/Yvv9TaWpHYjtKlJaCel7/Af5Wg5QzNoCNM+FCovZaqbOs
	X02FjMmpSJx6C3Ya+Upw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKukH-00013X-DX; Sun, 05 Apr 2020 02:10:45 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKukA-00013G-V1
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 02:10:40 +0000
Received: by mail-io1-f65.google.com with SMTP id i3so11920774ioo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 19:10:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cE/liTALpMqdfLbgPQ+OMKvNPX/1bH463lnIhirz1sI=;
 b=b+azP1xnRzEmQCijp5ZH+VjRIiJbtDslEVPdSgsIyGAxYEmnQZOL/Y2GA/S4zXdFEH
 jI8I7oKF7Grh0x+/E9Y6EXUn6Sv7mL0lUViMYW8bQwTee75knmfW3d+AJIXSsfitZSXP
 reEue/+a82DaK7ntCoxkBYUwkYn5rolhFVAvuZfGiSpBo8THbYEwLO+3NMh1GRSO+CMD
 RqfTq1PAOmN70jkSiiAPXQja2FvJtz7hEWqNBdXCvlVlHmiQOK0QwqkVSw2rphAwX7ep
 DWjgqwjkANgVud/iHInj352QP6PEzJuVJcXuNUZXWrEBfL5j5JcvHwuZEwxwhXvq9OC3
 5Pvg==
X-Gm-Message-State: AGi0PubPlht4yTD9Ai9r2899AJqGeN5rjIC/L3CM4eY7I/khjPhAAcMj
 1e+7txdMht1OpllvMcL1Cw==
X-Google-Smtp-Source: APiQypJ4Bii0h2zVuvjzC9xTfN/pXAliQtZWN2YXolG58HYB/LUmgfHgAwhVGMXf9l9WEMGwZS1vug==
X-Received: by 2002:a5e:9901:: with SMTP id t1mr13990159ioj.176.1586052638133; 
 Sat, 04 Apr 2020 19:10:38 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id a5sm3803374ioa.14.2020.04.04.19.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Apr 2020 19:10:37 -0700 (PDT)
Received: (nullmailer pid 12991 invoked by uid 1000);
 Sun, 05 Apr 2020 02:10:34 -0000
Date: Sat, 4 Apr 2020 20:10:34 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 3/3] dt-bindings: arm: imx: Add the i.MX8DXL EVK board
Message-ID: <20200405021034.GA12944@bogus>
References: <1585394015-27825-1-git-send-email-Anson.Huang@nxp.com>
 <1585394015-27825-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585394015-27825-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_191038_997049_711C9383 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, rjones@gateworks.com, andrew.smirnov@gmail.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, jon@solid-run.com,
 linux-kernel@vger.kernel.org, cosmin.stoica@nxp.com,
 marcel.ziswiler@toradex.com, michael@walle.cc, robh+dt@kernel.org,
 Linux-imx@nxp.com, kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 28 Mar 2020 19:13:35 +0800, Anson Huang wrote:
> Add board binding for i.MX8DXL EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
