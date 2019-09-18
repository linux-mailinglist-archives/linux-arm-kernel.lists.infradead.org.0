Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411AAB63DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lCZ0OWm1I9HdH+zrJN5GURgRfgOnv+KUSNi7h1t9sY=; b=cg5yfGaQurgeA1
	+b8NWp1T9LvXGljktuje4sUb2vmnByRo0d5gYtxRSXzxhza02vmt3IZFr8h47Pk3tJWa8Ct+k6+rP
	YQzirULow/G42fuy4PNJdCHDKH5ugyecnjT3HF7N7aqlk9TraAQyn/r6Ci7y2QiMaE6bpq4V6FEcO
	fmTxRyNCSizUDUwexawwTho+9luejn5BX+O/xzuC9ItQ3Ud2ReojdSESxNk5LVXlrrLgeuWCtxWqe
	l2FthFvIEgAbmPd9XYJxbOgSjzrwma/xCdMSmZialixQmrVbwbI8Sw28A9GdtfH0OGVusFBfxZjbp
	Qa230rWywekJ87XY14gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZXN-000444-Ux; Wed, 18 Sep 2019 12:58:26 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZVY-0003X4-DS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:56:33 +0000
Received: by mail-oi1-f196.google.com with SMTP id k25so5811403oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:56:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4mikUFOY8LB2TBVWO0IMJW/z8ZUBdx63ZRw5IwKRav4=;
 b=CLIqa5d6H9W2+ZCOU5OHo8xI9Ocz38CUPcGX7SnKkTFliljZzAD8/Hd2E2buR+/qDq
 8Gjmg3b0AiL9PE/HsGKCRLJpw9RSlgowRaIRIysjut7oovPh4m7TzF87pMLshKBveZBZ
 kYVvkB0by5ROZvpo8rdvoeM/BYlAXmgPqSDCbWysmsx4XfeWme7eMzP+j9+Shri34uL8
 LThhl8H8PqwDQadysGJzWioX+0tLWg+47+SuXClIX1dgfTVL2buI/TXqqK+buHx8wxya
 48o/tOgfDl7JhOKQBBr3M4LqTsVBnHahoOcw8dMf/O3qOPGYru50fKt6yiIGEZEguqNx
 Uo/A==
X-Gm-Message-State: APjAAAWzaSXy67IICw45LygvKvncY9be8wucaOhy92Keah8l1cuJ9Yr0
 815uaIWZwQ5tvZoywfEbaw==
X-Google-Smtp-Source: APXvYqyH8kyqvT/mR/6KhfBfV93YIoN5B9+IcnAoli/K5agAEv1pr7cTxKrl72FCTcIP2GorVPznmQ==
X-Received: by 2002:aca:b7c5:: with SMTP id h188mr2066027oif.125.1568811391727; 
 Wed, 18 Sep 2019 05:56:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i17sm1602019oii.3.2019.09.18.05.56.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:56:31 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:56:30 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 04/11] dt-bindings: arm: samsung: Document missing
 S5Pv210 boards bindings
Message-ID: <20190918125630.GA30083@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-4-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-4-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055632_573299_91ABD8E9 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:20:00 +0200, Krzysztof Kozlowski wrote:
> Add missing documentation of Samsung S5Pv210 SoC based boards bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../bindings/arm/samsung/samsung-boards.yaml           | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
