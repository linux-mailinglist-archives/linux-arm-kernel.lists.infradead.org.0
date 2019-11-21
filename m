Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C78105A22
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZBGkKg/5x0u1ZWlD/ToUMxQ4Ff5eYibExs8BQx7FzA=; b=VbiPUPbff4MBji
	wOPlLufmy/GmZkKIO7/FhDespc/4Z0GDqdZudVmfCPXkQLi+JFHi01Y2NueEP9/ZlEwbjJj95bYN7
	IZrLogApYzsJp6FZ2vP//+J5mTeB/2BMa6hApUhA2Gb3+L/eV1ggdn9d8JVLfM2UIpq5fgi1s5Z6z
	2Mi60B3OjtoVXlsYReX/ZWopkTFvJ5Rso/MiXbMTa7G/9QmSeIXXx4F+Aj/DuYmZ5aF6I8YZU3gPd
	OQhe0qMg51ukFo22WhE+E7Lr/KPi0gNu1bI6IIZcfd8R7yL0lJDHW6ihH3pyb8SyE7bUGbbsAm/tc
	mEzB3kJHj2vbiKEaIltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrhy-00066A-Us; Thu, 21 Nov 2019 19:01:38 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrhq-000656-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:01:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id r16so3772945edq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:01:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WGlv9N7emzPPMkGFW2suWUAOKKS+im2D/mbhQrUjPOw=;
 b=hw0tGGpydIclVWzvfKyqExS+ky3mFe5zVFYzo8L/vE9QIsquY7DLXT3bxgRHCc913E
 QPYswTjKLbcK2rh16yudPur9Safmg77tW/A/pa8QnF37XhIQ5u2H6l5XQnrqZ0aSXohF
 y6vPt6lysOVpBO2kR2FnrJoNlGusPUTt7c8MvEYo4Ow7Xs5zpbwdCctguSfnT+blVgEB
 Q4i301/C0VgEKQcp8OXyj0B4DEMiIH+KW8S+llH6hOmRla4aO4RRVQjT1xyHulgZf1VE
 +VPAp76Wx4D/VNMQcC/VxE3KHRvxo2QJLj9rf50nPHnZVipfoaeoJSPhd6ml6WK1/f/3
 nZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WGlv9N7emzPPMkGFW2suWUAOKKS+im2D/mbhQrUjPOw=;
 b=j26OH5sREHYK/SAxKdRz3sBc9zhlanv5w5woj062/4n7wpHkMPCcEhGHsGZ5vZA9mF
 Wh9T05GfwVXqfmOFVSd+7QKDrNvQ8kFlGZHu9CX9lYlY8O+uU9D0A8YC4VqXLqD/pJCf
 /+00OabQMUljObemDSY3cJswc/CThcsUzB7q5huRQp4c3RBUDj7R33ImHLGZpAZcq0zc
 Bd94GXiCk1icZfcCewlb6F5F+KvPhdIg95DYubVvEq9Y43Nb7Ymuov1XFyPwyCBJ1PHY
 JpjjdQq2l/1o4hiTKWwkVVy40jpWbBc5WANw33IB0YljDnKkjo1v3mbRDqFFdR2euvNG
 /2Mw==
X-Gm-Message-State: APjAAAVb1WjJbS08BpLM+M1CaJxDR5yBfKd7Xx7qIXVknS6vV1ePU8/L
 fEK1TMWj7lI9Pj7VNYXb4VruGlBYCD+tQODgnRM=
X-Google-Smtp-Source: APXvYqw7XM4/ilKVdiKymLyfmxi48lasfzIxyiJ681Tf/Q+giqd2n8es7XgsJNBR5MISNx52NIpdSQew5FnTSv5teuU=
X-Received: by 2002:a17:906:11cf:: with SMTP id
 o15mr16093149eja.208.1574362887584; 
 Thu, 21 Nov 2019 11:01:27 -0800 (PST)
MIME-Version: 1.0
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
 <1574232449-13570-5-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1574232449-13570-5-git-send-email-manish.narani@xilinx.com>
From: Rob Herring <rob.e.herring@gmail.com>
Date: Thu, 21 Nov 2019 13:01:16 -0600
Message-ID: <CAC=3edbHWA7gv-mTFVXXcMzN6hyzO4LPqkbcRZ-zDp5BAm8_Vw@mail.gmail.com>
Subject: Re: [PATCH v6 4/8] dt-bindings: mmc: Add optional generic properties
 for mmc
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_110130_814834_3B84CFC6 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rob.e.herring[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>, ulf.hansson@linaro.org,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 Rob Herring <robh+dt@kernel.org>, mdf@kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, jolly.shah@xilinx.com,
 linux-kernel <linux-kernel@vger.kernel.org>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 20, 2019 at 12:49 AM Manish Narani <manish.narani@xilinx.com> wrote:
>
> Add optional properties for mmc hosts which are used to set clk delays
> for different speed modes in the controller.
>
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/mmc-controller.yaml     | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> index 080754e0ef35..305b2016bc17 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
> @@ -333,6 +333,18 @@ patternProperties:
>      required:
>        - reg
>
> +  "^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|uhs-(sdr(12|25|50|104)|ddr50))$":
> +    minItems: 2
> +    maxItems: 2
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 359

This is wrong. It can't be both minItems of 2 and a single uint32.
What's needed is:

allOf:
  - $ref: /schemas/types.yaml#/definitions/uint32-array
minItems: 2
maxItems: 2
items:
  minimum: 0
  maximum: 359

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
