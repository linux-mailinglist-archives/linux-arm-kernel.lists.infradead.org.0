Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC02F5F1E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 13:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QN92Vh6ee4zKLCICUjhcbepmBV+LZoTwj3txzpLAqyM=; b=OTFF2alsoMPnBr
	sSzuyYrpPLjMXhd+8bLgUoSVOEXXlzQ9V3Z9riGhO1WqHn2EqsZsFS5/LRzfNaS8Du/FOE2gNYFhf
	wJHa8hOIF8qAfIwRFEUFZgXvQDkjlJ1xzI6wJ71PhHfWUFgv7YhocDyHAKIfnC7myY32TY9yGynmy
	cgSONtRwQT1FbFCD3e6rHhpvKSR8wBqZjB+cJgpQB9UVML+9iFarwtUlO6UXEcBvlyIhIY0wcbDF5
	T9UMouq/GtzJjzH6mAns9RZXGWmbWQgQs5V0H3mkeC8BGwcp582noBIWpoa/CLAphbuiEnwg71SyW
	dOlffF+V2dQfw2ww8mdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTPzE-0004TE-B5; Sat, 09 Nov 2019 12:37:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTPz6-0004Sl-2o
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 12:36:57 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41233207FF;
 Sat,  9 Nov 2019 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573303015;
 bh=94rB6uATtbEgExwYm/yBTizcjTGeAPvuJQYjQ5LwJB4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kjWuatU2Y3QYgPQx1zMJ59fS4cQBznORLZ7LCWzd4tHW7DNWUmlqiS0eFvqAxZGwZ
 fZrmVfYc8sAauNj5DJU4bHbQ9kQRUX9VQLU37N24r2w5FPoGkfH0rcf6b2NyX8cELm
 86ZXvexof6vOJh3GeBCqHQUJ5h3p78OK8wMnI+7A=
Date: Sat, 9 Nov 2019 12:36:49 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: stm32-adc: add max clock rate
 property
Message-ID: <20191109123649.0f77474e@archlinux>
In-Reply-To: <20191106032917.GA25856@bogus>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
 <1572279108-25916-2-git-send-email-fabrice.gasnier@st.com>
 <20191106032917.GA25856@bogus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_043656_147737_F6839642 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 Nov 2019 21:29:17 -0600
Rob Herring <robh@kernel.org> wrote:

> On Mon, 28 Oct 2019 17:11:47 +0100, Fabrice Gasnier wrote:
> > Add optional dt property to tune maximum desired analog clock rate.
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> >  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >   
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
Applied to the togreg branch of iio.git.  Whether I get a pull request
out for this cycle or this hits early in next is dependent on whether
Linus hints at an rc8 and gives an extra week.

Thanks,

Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
