Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46AFE5785
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:19:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5dXi0oBBbz1WPg3alKS1dz1DCODJWa+NA3HYxG/PEg=; b=n5dk4lNmaVtUXL
	+1pX29Sr2bGqD3/g/MoGQSVuqLdMo5HpeQuyCipmx/wJokoa9j2UL9hQxCszNu2FtGYhCnjH610WX
	SF8oNBmmJj8w/TYNciREednPJMMSyDwlTvOII8z1WRTgm3q+MoijeNx6X5y/DHFp+m6N2bhNSwatW
	otm1AM3EI2TUvS+jCIRs9p8iYgPCBbKuakfkX8ey1ItlGlwtx+X4H6tyXVBGaZrWzJ4drTIwtVK+7
	Man1p9rTAZsG8/LSBzAKd6UJM93OR5Jr18XvLTECP74EqXe2KrJGhPsmcvyXsXEZelB5JRRe4j6MV
	9Z2TBhT1AMlzQlXlo9Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9nw-0004yA-Dk; Sat, 26 Oct 2019 00:19:40 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9ni-0004xl-IA
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:19:29 +0000
Received: by mail-ot1-f66.google.com with SMTP id m19so3272256otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:19:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rP2TVgM7TJak8rqWj56HIs9Gk8TmKpgszEpCk0Rsvd8=;
 b=Qz9thuI8wnjY9n1t1EcCoA+Y6/GfPHHzMW6ZJzNFrP74YuuJHucE7wiVm29hDbaSI5
 zG3j4BpY0V13Tv3Gl3h0jFDya1mnhilKuC1m8iCORdMwuAMCxLet4/Hdi/9f9+/iMf9H
 RHXnpDyBneKSbycv2NGqIfRUwqYVbUeSh8eNkIm2D+6oylRvox8wT/DlKgWZavxQ6hrj
 6QlYbwKrtW1gq74SPwpMl3xL6cqnz8O9CjhEPQ0jM+MG5YFstVOF6x9D13sJv0510HWv
 FWt0YlZcgX2fByBDaa3xzHk41aaD6SuIyfPVOX/fL+BBuNYpJ+GutovVlY3aQwBb0uL9
 iZqg==
X-Gm-Message-State: APjAAAWNcjX3BRdU6jnQhRKl6T9w+baWKIfbzeaPn7i7CicbWGia3tns
 VcmGEQUL1YZLUKdC8KQt0rlvd20=
X-Google-Smtp-Source: APXvYqwqfU7/GBmiPwwQ/BnOKaxy9p8TG5uzY6dUbAc7nUscEJgAgUBAvMUN35q8Al2UNWi3aqk0LA==
X-Received: by 2002:a05:6830:1b67:: with SMTP id
 d7mr4770218ote.181.1572049165901; 
 Fri, 25 Oct 2019 17:19:25 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x16sm1032217oic.40.2019.10.25.17.19.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:19:25 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:19:24 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: renesas: cpg-mssr: Document
 r8a77961 support
Message-ID: <20191026001924.GA10102@bogus>
References: <20191023122941.12342-1-geert+renesas@glider.be>
 <20191023122941.12342-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122941.12342-2-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_171928_679080_3CB4706E 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-renesas-soc@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 14:29:38 +0200, Geert Uytterhoeven wrote:
> Add DT binding documentation for the Clock Pulse Generator / Module
> Standby and Software Reset block in the Renesas R-Car M3-W+ (R8A77961)
> SoC.
> 
> Update all references to R-Car M3-W from "r8a7796" to "r8a77960", to
> avoid confusion between R-Car M3-W (R8A77960) and M3-W+.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by,
>   - Update R-Car M3-W references.
> ---
>  .../devicetree/bindings/clock/renesas,cpg-mssr.txt    | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
