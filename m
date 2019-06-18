Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F784A201
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gULvljvCE9vJmRhTkOw/uf/VayrNWBnRKicWc7PXjhg=; b=FJ6IC76eRZz8NE
	vAhmUMc3Cl26cyjT0P0P9AWgDxFYDM0fQ+gTa9LgZnYfkMIK/7PouHGD9BvWmo39P7jFqOIabQvfQ
	MuIvla/aEGuxi6rqO0E//vNBaF3bgOTG8ExuveqJVycXpI/xfM0Q1p7ofPulZUJZOdwwVv2zSFs/m
	LalCRWmoARMsuvFTezXmN+YEJOiXCWsJPn/eEw5fkifeaOE11Ee1TKcpeL4/yT6sCt9l01/4QVNZ3
	QVFcgvJZoEb9fNgI7qEw+Vgtn+0ap+6U1K1kwVXbu7mQsS0K5NVu3U6kYCJzmo5/EaUQdKmVzLFDt
	O9yIPX9J3dy2bFcsqAZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE3K-0005xL-9y; Tue, 18 Jun 2019 13:21:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDtK-0006Qh-J9
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:11:52 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08B5320B1F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 13:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560863474;
 bh=7JroxIQyNQeYiA/nDU7vtSLWYTTT3Ald5Q/R/7U83P8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cntng++kN0fBbAtz+jK3kTPwVF7mSPzQxb/3zV1ND8efvHw8XxYdS5BSkhavVPx5V
 UkUDqbMjvYOq08uXis1SulyOvG4aCZqKr525jCM5zJjmeZJf7heOoGssM83JGgVR9w
 ADByBsECXb+2HFs7FSl/3fPSM4lKVlMAopXOKoJI=
Received: by mail-qt1-f182.google.com with SMTP id p15so15185159qtl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 06:11:13 -0700 (PDT)
X-Gm-Message-State: APjAAAVXCOrQZ16h6HTiBImUiLNK2TR4Y9p3EYCgEiYq9vyYcus/9m60
 GkgrUXZYY6mgYkNMOSgsYxchxf34gpYfkYPbxg==
X-Google-Smtp-Source: APXvYqy+FDRVfJJjBq8pSkHMbDkkEiiaH2YItVCa8J1WypjRg8AWveUeB8pkYwgyvwORgR7qmYNTA6Eh7ULD0nbFX1M=
X-Received: by 2002:ac8:36b9:: with SMTP id
 a54mr100553401qtc.300.1560863473270; 
 Tue, 18 Jun 2019 06:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190617224028.26974-1-robh@kernel.org>
 <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
In-Reply-To: <CAOMZO5DdAKH5N0vDq0tdnjarzWFkJrLg_OfuFoJj=qm7mw+Jzg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Jun 2019 07:11:00 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
Message-ID: <CAL_Jsq+nXVB3Pr961N1GAm5Pr-zAkvFPPxQvF18JO2r5N-Qx+g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: fsl: Add back missing i.MX7ULP binding
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061123_327364_93A2B3EB 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 8:27 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Mon, Jun 17, 2019 at 7:42 PM Rob Herring <robh@kernel.org> wrote:
>
> > +      - description: i.MX7ULP based Boards
> > +        items:
> > +          - enum:
> > +              - tq,imx7ulp-evk            # i.MX7ULP Evaluation Kit
>
> This should be fsl,imx7ulp-evk instead.

Ugg. That was me typing in the wrong window...

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
