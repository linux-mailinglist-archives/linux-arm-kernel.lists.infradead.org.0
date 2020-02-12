Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAFC15AFB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 19:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRxf7JpPSio2ss7mCO8RCn00RvPtA+tOAFpBuWlM8J8=; b=mavcqBVS5swcnd
	IcrQNDVIVVZjMIidvtiKcmnoGl6WZal91GlXXeOQZf5HEWSyS/1Qx70ZK8xD3/2BFScarYbSTIlaP
	n1E4dV+PGms57upWJ4axE4CmUf3FkD7TiuQgp2in408BD/axo8pQq8wH1Ttwp021aQ/gK6u0vjW/k
	dd0DikrhLeeKVBqXleqtfzmPn6K0jFPBkgXrIIsN4v1K1QKCJBdkFsRUf+P5enp0BqGwthHlufJU+
	2GdxA6agizVzhoGVxTVnT/h/T19DZkg2xSSzkzuiW080EungHZLP3WFy1qkJY1SNHOtNAtPszULqi
	frhnXfptrIkf4yBp7jsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1wi5-00087f-Em; Wed, 12 Feb 2020 18:26:05 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1why-00086z-Du; Wed, 12 Feb 2020 18:25:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so3474006ljh.5;
 Wed, 12 Feb 2020 10:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sdJy3y/pjaYpYWC4J4QN/ZTkobn3EjGqqaK/ExDj4B8=;
 b=PDl+NqgL/n+cptSpvy3o69nsnQDeFVZK5EcckuzH9CtGJU9MGCvbmo9l1XlFtSY9NP
 PjsnyN6dRhKPnjP0+M0v5Bvbmga87Wqa667VT5KGe13SNrj2vaySsTgqFNRJkBO+jcGS
 1PX3uePvSoDEBBXCHQfZDqxymmTSnSx2UYsL5KJU/hdDtmX3PnWWuyAELrQIXk4zZ0pC
 GZMmLubj2cJJiSAsvBxi0RO+97Zxd8BbkKHfaPqnp7MmP4RuKXZwDEq2WYaKow8je3Xg
 rBie8/l18sE7TqlahXXzNDoeOC45Sa61/4NmdKNBdXsKRlHD1l+MhwOaebh7RoQ2zmD1
 c1SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sdJy3y/pjaYpYWC4J4QN/ZTkobn3EjGqqaK/ExDj4B8=;
 b=BUfDhk2w3DxYOgCNYZj/j+MkmEgrlxSJRuOIkxuRNyz1eL/hgCENBH8QDKKyTzwZYD
 eIbvBhsemNIWWZBPsE6+QUPR7CWvvWdhCJ2kuX70v9TqpKg82TJAGTi3zof4zZOtCVRB
 kCzIuX6ysj2GVcb++Ghxj8MI8U8C3y3pZFHTvKS32n67viBO5wG0IZa+ftF2q7q1IDQP
 wvsJ15SzVY4jXyTUT5VCXZ5eH0hvye1B8HXuPFr9YbBGauZE+qlnIM4nzK4UsNSWKX9W
 9s5jT/FVIV5HPKxeXsmndEXBqVdgQIlBMI6SZgI51tl+cKXWh1lBwOZ3B+ksCoovGHma
 +yiA==
X-Gm-Message-State: APjAAAUd2W5cicnAW0bdXylM6gFyoBVaK0VKcbkOKcraWg8DvmQjhFKs
 lS1gqFJDDPH1fe7c1VHh3kM=
X-Google-Smtp-Source: APXvYqwW8lp+R+SCYfdudPq/rEy1BJkdsJzEMeiG2qAC1OaWJKbtuvvqTu29yUSv5jGGKPKIep94DA==
X-Received: by 2002:a2e:5854:: with SMTP id x20mr8026053ljd.287.1581531955333; 
 Wed, 12 Feb 2020 10:25:55 -0800 (PST)
Received: from z50.localnet (109241122244.gdansk.vectranet.pl.
 [109.241.122.244])
 by smtp.gmail.com with ESMTPSA id 14sm669227lfz.47.2020.02.12.10.25.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 10:25:54 -0800 (PST)
From: Janusz Krzysztofik <jmkrzyszt@gmail.com>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [RFC PATCH 03/14] ARM: OMAP1: ams-delta: Provide board specific
 partition info
Date: Wed, 12 Feb 2020 19:25:52 +0100
Message-ID: <4506487.GXAFRqVoOG@z50>
In-Reply-To: <20200212145154.GK64767@atomide.com>
References: <20200212003929.6682-1-jmkrzyszt@gmail.com>
 <20200212003929.6682-4-jmkrzyszt@gmail.com>
 <20200212145154.GK64767@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_102558_471935_06D9AD5B 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jmkrzyszt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Richard Weinberger <richard@nod.at>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

On Wednesday, February 12, 2020 3:51:54 P.M. CET Tony Lindgren wrote:
> * Janusz Krzysztofik <jmkrzyszt@gmail.com> [200212 00:41]:
> > Now as the Amstrad Delta NAND driver supports fetching information on
> > MTD partitions from device platform data, add partition info to the
> > NAND device configuration.
> 
> Fine if you want hardcoded partition info :) Not sure if the partition
> info coming from bootloader is any better either.. Ideally there would
> be a partition table somewhere on the device like we have for disks..

Yeah, but Amstrad didn't provide anything like that, and we may want to get 
convenient access to factory content of the flash.  We might use command line 
for that, though nobody seemed to really like my previous proposal to use 
command line partition info exclusively.

> Anyways, this is best merged together with the mtd patches so:
> 
> Acked-by: Tony Lindgren <tony@atomide.com>

Thanks for your A-b:.  BTW, patch 06/14 also touches the board file and would 
require your acceptance before being merged via mtd, so could you please have 
a look?

Thanks,
Janusz




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
