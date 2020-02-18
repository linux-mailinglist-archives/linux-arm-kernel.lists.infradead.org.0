Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DC51634EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTqqM81Vou1CP8u7YLy3BxbUYc9qutARF94W2QlrqpI=; b=bvHmZWSNpL2oO5
	pS75Fqdg/+5nhqpec1olidiqirFePT3ORsBSZDtsat/cnl+fhz693q3mVytIFoZ5+Rym3D2biY7Xb
	XmO6DpAVgk/doOuOP1ZjGTE36XAHqMfj9a7GCstD8XaDPFl5JnD0Xq9ge7AbWZlZEXjHUFd1tx8Y/
	WitDXxIMOswxqgoTqecgd382tvg5z4Cbw7umqy17tET2ka3T7xFFLz+QRjECYdMXXhyXKXFnPlEm6
	S8zN/t/mTvE0viJaQhG5PtPgGkVAmjIiuaSVtlPmNxCV2F54/P/aMDtY013snnXtWG3H901sIBnOM
	hc8dYqUuTA9XquGtuTGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AOu-0006Vf-R1; Tue, 18 Feb 2020 21:27:28 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4AOj-0006Uj-CO
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 21:27:19 +0000
Received: by mail-oi1-f193.google.com with SMTP id v19so21634227oic.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 13:27:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SZkfM2vOw8ze2ybVAuGSNguaCr88qukHDOjEHLDc/Vw=;
 b=LDoMz2gM36MisJWH0gCvPR+LacNDt9Wa/pAlFECRb1qdhzPFjEpxGoMJel2NRYznOF
 kG4BxmuW63mRIpaZok+BAP+f4PPSPYqp66RGtNUtcZu/bjZ0htb2w/xatP2l/3nK6XP2
 iYDboyx6fvds9q3aFbrOXR8IFt3hbRJXF5Z3CjbLgWUvlZLAgvZObH5/CiZAUAf4+AIL
 /LPtNUtZg5a5ZRiBlxwhL4UUMizsc93d5MogpQ5vfg4PwpOcCbMhZYsiDAM5eKDqSzGE
 UX1gqg7WINWjBE1b9bEKnB4QUnIrbPhGsHX+3tt3QBWD8Sp4+BbrMmEyEcQl2Rr5QGek
 Bx4w==
X-Gm-Message-State: APjAAAVnTP/GeV1x93VLuGk9tMHaG7eSKX+y/FznHYkwHw2SSpsE5ZW7
 z1qeq+TVK0dcSJJ8fp2Z4g==
X-Google-Smtp-Source: APXvYqxgHOj3VjZX1AHlZ5Nh2dnVpuVFb3Z30Trjs3tK6fu2V/2tB52gtPEpxGhmDmnIDY9k6xcduw==
X-Received: by 2002:a05:6808:7dd:: with SMTP id
 f29mr2642106oij.67.1582061236713; 
 Tue, 18 Feb 2020 13:27:16 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i20sm1766945otp.14.2020.02.18.13.27.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 13:27:15 -0800 (PST)
Received: (nullmailer pid 1931 invoked by uid 1000);
 Tue, 18 Feb 2020 21:27:14 -0000
Date: Tue, 18 Feb 2020 15:27:14 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V4 2/4] dt-bindings: pinctrl: Convert i.MX8MM to
 json-schema
Message-ID: <20200218212714.GA1878@bogus>
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
 <1582012300-30260-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582012300-30260-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_132717_444245_18453F45 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Tue, 18 Feb 2020 15:51:38 +0800, Anson Huang wrote:
> Convert the i.MX8MM pinctrl binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- use uint32-matrix instead of uint32-array for fsl,pins.
> ---
>  .../bindings/pinctrl/fsl,imx8mm-pinctrl.txt        | 36 ----------
>  .../bindings/pinctrl/fsl,imx8mm-pinctrl.yaml       | 82 ++++++++++++++++++++++
>  2 files changed, 82 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx8mm-pinctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
