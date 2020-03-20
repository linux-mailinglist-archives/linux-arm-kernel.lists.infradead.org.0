Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8979018D687
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LibvaNb9L4zjsQ1s92zMZyrsYAJU8Dm/qcmba+OlRtg=; b=ify31hcGD7W8Ej
	u2tMIkaWTChH4NF+zZ4I/drwwSybXBuvl+n634GfQnu0aH3ONEC2ttVlkTQ0Zj+Kkf8BvnPkYd0JU
	NeXSH6LWEATZBhmgP8St1vECAT1wHlXmOdmy+UTcI5j0j95amfc3/AD3JWocKq4p1TleC31cKvqY5
	tkJYQjzQHgijmQahL6rjUS1MyD7LyaaJrODCSeavhJQDJ9a3/lWrR6ZMTXFVJO9JtP3MvBnPAY81g
	HrCNmqPn6GcyQAMTMGf+kX/m+4/8fyZf+KxcAYiXp4Mu0PTxoaZFJVHE5JH4FyT9cKXF9RRmY4jlA
	7yDWoEbD8yhIzA0oMsqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFM2F-00079J-K9; Fri, 20 Mar 2020 18:06:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFM24-00078o-NN
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:06:10 +0000
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA0E120777
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 18:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584727568;
 bh=yp6Fom7/yku8A2ZiuJodg4eNORs8y5P9+1DLpLiuzU8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0t+YdURE3JanVJ6MrOTl2uJULL3rYmZJFZXo6r3CxueI9GjL9PUT3EkqqU8ut8Ri0
 3Vdyvk5NYZFw64VfzX6XcP4lzURWmrPoD76h7yB++qk5TGdK2bjuOgU/gAr6guOYN4
 W0CdiYp7c8ZIWpA071YXlbI/nsTvx5CSM2Uaey+8=
Received: by mail-qv1-f41.google.com with SMTP id p19so873328qve.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 11:06:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1g1Aw11z8Jf6PnRwlDBUmghAvHhuV9lIragmwHtshpfzG6aZdh
 lDla4wlqck+DWM8ZnGWEsswyXGVHhvvHBY8XZA==
X-Google-Smtp-Source: ADFU+vvYx1xhQtLz6A1KIug0vLHM4f1NO+sqNMOQFA87tKUVNVLKmGv10+EhK/AOJ+8fVdPqLc+hLhLeF/am0yONDGM=
X-Received: by 2002:a05:6214:a6f:: with SMTP id
 ef15mr9213953qvb.79.1584727567033; 
 Fri, 20 Mar 2020 11:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200229160507.31309-1-devik@eaxlabs.cz>
 <20200229160507.31309-2-devik@eaxlabs.cz>
 <20200310190054.GA2826@bogus>
In-Reply-To: <20200310190054.GA2826@bogus>
From: Rob Herring <robh@kernel.org>
Date: Fri, 20 Mar 2020 12:05:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK8+M=Vg0PiDXP2f1LrEp4hSVea6piAASMGu1H=pxme6Q@mail.gmail.com>
Message-ID: <CAL_JsqK8+M=Vg0PiDXP2f1LrEp4hSVea6piAASMGu1H=pxme6Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: serial: Add st,swap to stm32-usart
To: Martin Devera <devik@eaxlabs.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_110608_786227_23162D28 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 1:00 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sat, 29 Feb 2020 17:05:07 +0100, Martin Devera wrote:
> > Add new st,swap property to allow for RX & TX pin swapping.
> >
> > Signed-off-by: Martin Devera <devik@eaxlabs.cz>
> > ---
> >  Documentation/devicetree/bindings/serial/st,stm32-usart.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
>
> Acked-by: Rob Herring <robh@kernel.org>

I take this back as there's a 2nd binding (Qcom GENI) doing swapping.
So can you use 'rx-tx-swap' instead.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
