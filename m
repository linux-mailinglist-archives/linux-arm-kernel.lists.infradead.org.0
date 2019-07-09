Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E0363926
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 18:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zREoPjNYVBdFa7UJ66VGWjLw9lekRgIsrnO8AqKRzSM=; b=ootyiAuC3SdTxq
	IKxtCV+BYeu89Memf7w00sDnvey+vkX+Aj1K7W+bF/8pBTllUxrkZQstogOhz0T0twmjViirnCAWg
	yQh4mLUcdUmlskVUCtdt67kRgguC4e08tZay8YJKO19RD4zsTvfBlEZ/qERok4L2Kd/6B6OWAsslC
	EFXtoCSn/NOcM3oDkmLIg4q5A5+la7XypxtLnZF1eiJ8/KLZ2GzniBvJOqJ3lFFPS0q12aOzu3UdT
	pokZ8qoCh/tACNNHvFnBIaDIs7n+a0NYtOiFYkH8aHnAy9C0t7vK7d/KPRvqUB60J7wFcCClWqMBr
	uMvpfUka7L5Eqhkcrfig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksnN-0003iV-Mo; Tue, 09 Jul 2019 16:16:46 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hksn8-0003hi-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 16:16:31 +0000
Received: by mail-io1-f68.google.com with SMTP id h6so36159308iom.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 09:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cmH0c7rU2QLLyWG/6xPHKfwtrFCXaKp58TMMmxWczzs=;
 b=sqLvVaqzSTH0H1hINdO0pLK0Z1H6fzoRl6mEMZVK2tjKbsGnvp4c2SI9m5q42X5uUp
 J4DsYBrOwL/9Ua2gNnZxc0dCp4i1Kr17Fxs3W4nLh5A0GiKRGuCLp3NORNmx96/8Lacr
 +5Pj8phVNrIhilIOMoIp2xI1BYIP3Em9/OAb0Whfg36m8olVa8sFeJgRo+JNNy6dbpXW
 BAHfDsvRaVdDes8RVMug58c7TLdhYxzZ2/D7hgKA+Yzw3/ez1Ev0+dgETbDv8xAuMN6V
 kz2aN8rYOJxicFdTvFm+EQT1O2vdZeeS0qlTGOjsbsM+3W8FpZlFiJrmPg7pZekC3PHV
 sEBg==
X-Gm-Message-State: APjAAAVIuAtGr4FAIdcA8+O7eunTrz/aChQyZacEAOphZFJqAWETNHiU
 3JTnwe9D4zNVG102JWWBPQ==
X-Google-Smtp-Source: APXvYqzdvfXwgR2WspdKABPMp95eGUqFQLHUA9L2KvpwEo20v19atw5mJsEZC4pFZvMvyV7fMi+5Rg==
X-Received: by 2002:a5d:9711:: with SMTP id h17mr20726190iol.280.1562688988577; 
 Tue, 09 Jul 2019 09:16:28 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id 8sm13425764ion.26.2019.07.09.09.16.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 09:16:27 -0700 (PDT)
Date: Tue, 9 Jul 2019 10:16:26 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 7/9] dt-bindings: sun6i-dsi: Add R40 DPHY compatible
 (w/  A31 fallback)
Message-ID: <20190709161626.GA28908@bogus>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-8-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614164324.9427-8-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_091630_390438_4C6C9BB1 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 22:13:22 +0530, Jagan Teki wrote:
> The MIPI DSI PHY controller on Allwinner R40 is similar
> on the one on A31.
> 
> Add R40 compatible and append A31 compatible as fallback.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
