Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE451FFAC7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1YZfDudcg4N3W0iHuBfKfGFRlandSiyY6x09FN4PECI=; b=TviieJhZWbA6hs
	ma7qLYnUUzoZFdQXpCmfsR6QImYGtkUPMj1juMA2ST/UCKJmJticBDpXzqBF0ivnZM1V18fkFbX/w
	Bb++5bYH2FZ4UxXrA2Qtc2DnKkzJFqla83QpXKLQIMeBpdxvUJFSoBNx3zMwNQnxjL3cMYDd7R7AI
	r+Yo9uuop3mDIYOUueRMQ10OZC1y1DqC5XrHTzudu6jl6vKvFxbhKG9qwhigiZJTDEmAqXjdzoaJ2
	RLyFg81HM/VQ5R9QGaS/09VzpG470zpg/iw9jyRNaC3We8c4BSkG/QyzwwtdePBJSX/GjLHKGvbI9
	5TDjnjks84CGyosfy9kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyxE-0006o1-0O; Thu, 18 Jun 2020 18:08:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyx3-0006na-Jv
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 18:07:50 +0000
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7312120C09
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 18:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592503668;
 bh=KA//1bD9BcrK8/lxvOXcCF+JQtiTauvjZLDS3E+OsfI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VwGa/w87tN4LTvCG5HLsX0B03TZZ05jRESXKSNMJlYy0Ut0/UfxI+I0BTQE5RY7lL
 JUm15MDTU8QuakLegL5rwjtyRBttfGR+X89EGRFe1pjW4oiqp4I+ikmNbcjg+KuTuI
 hJYCCO6Dzl+4CxEOo6DEvTxY2XU+INCx36cyAn4s=
Received: by mail-ot1-f54.google.com with SMTP id 97so5280357otg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 11:07:48 -0700 (PDT)
X-Gm-Message-State: AOAM532i+i17fNPmkyYz08Z4cLfyuK1o0Q+thYDp3FK28XWgtAQbGoQK
 8aA+cRnBAeLofT24w8FanDwapQAMgZnI9JC/Ww==
X-Google-Smtp-Source: ABdhPJz0B3UsnGoEf/FA5KAGc6jI6UDS3zxzffe1y+bD6ZgajEpGsDIKeXrt/kD/1a+oLZt7rG9XGQuJH/Sw3DDtGNM=
X-Received: by 2002:a9d:3a36:: with SMTP id j51mr4707679otc.129.1592503667774; 
 Thu, 18 Jun 2020 11:07:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200611211144.9421-1-luca@lucaceresoli.net>
 <20200611211144.9421-4-luca@lucaceresoli.net>
 <20200617223955.GA2967317@bogus>
 <b2c064c0-9a52-890d-b026-9cc1f4cab7d0@lucaceresoli.net>
In-Reply-To: <b2c064c0-9a52-890d-b026-9cc1f4cab7d0@lucaceresoli.net>
From: Rob Herring <robh@kernel.org>
Date: Thu, 18 Jun 2020 12:07:32 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLCYdRci2W3otAwz_rDKQeFXuOdO0ZAv4fUGNZoiZb6hg@mail.gmail.com>
Message-ID: <CAL_JsqLCYdRci2W3otAwz_rDKQeFXuOdO0ZAv4fUGNZoiZb6hg@mail.gmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: fpga: xilinx-slave-serial: add optional
 INIT_B GPIO
To: Luca Ceresoli <luca@lucaceresoli.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_110749_676391_BF69AB82 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-fpga@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Moritz Fischer <mdf@kernel.org>, Anatolij Gustschin <agust@denx.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 11:47 PM Luca Ceresoli <luca@lucaceresoli.net> wrote:
>
> Hi Rob, Moritz,
>
> On 18/06/20 00:39, Rob Herring wrote:
> > On Thu, Jun 11, 2020 at 11:11:43PM +0200, Luca Ceresoli wrote:
> >> The INIT_B is used by the 6 and 7 series to report the programming status,
> >> providing more control and information about programming errors.
> >>
> >> Signed-off-by: Luca Ceresoli <luca@lucaceresoli.net>
> >> ---
> >>  .../devicetree/bindings/fpga/xilinx-slave-serial.txt       | 7 ++++++-
> >>  1 file changed, 6 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> >> index 9f103f3872e8..a049082e1513 100644
> >> --- a/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> >> +++ b/Documentation/devicetree/bindings/fpga/xilinx-slave-serial.txt
> >> @@ -16,6 +16,10 @@ Required properties:
> >>  - prog_b-gpios: config pin (referred to as PROGRAM_B in the manual)
> >>  - done-gpios: config status pin (referred to as DONE in the manual)
> >>
> >> +Optional properties:
> >> +- init_b-gpios: initialization status and configuration error pin
> >> +                (referred to as INIT_B in the manual)
> >
> > Don't use '_' in property names:
> >
> > init-b-gpios
>
> OK, will fix.
>
> Moritz, please don't apply this version of patches 4 and 5 if you still
> haven't done so.
>
> Now what about the existing prog_b-gpios property? Should we just leave
> it as is for backward compatibility, or is there a migration path to fix
> it as well?

Just leave it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
