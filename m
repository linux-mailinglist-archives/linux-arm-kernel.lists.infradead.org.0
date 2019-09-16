Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50DB3AF6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wD20ykbfz5YQBcbWPduLTQjjzBZiA2NDTItEeN5Pzc=; b=ArseDYjgp84cya
	foABFiawedkSo6BtiQ+Gswg2MALpr3aGS/iFtj9U0R7B0WG+qbj0zgMCB0fN2ORuVgwC4PhnWWXb+
	/YLdebHpY3oJ8aCjwTmXRWBdHBIh2TMeoKd5PNpDD8mugsgjg6Bqz8sSb0kGX7eVLCsYQAcxPOY9H
	E+0E2/n3KS5m7ozGX8lr/ITAVj7geLLjIb2z1mHmV82p5tDci1DndPPBhnnUW96bFlm50yy4ZSkR9
	11YPoHH0GNM9sRPeZT5Q6HBpB3F2GIKE7oKFfKzRvKLPtqy4RbTAgfAAHVyVx8fIgOxy/TArbkOdQ
	5CjE826EgyJbVUXsN7lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qi2-0002gP-4D; Mon, 16 Sep 2019 13:06:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qhl-0002fC-1h
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:06:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id v17so9763721wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 06:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sIVQ04sXbtRDPC23vD1rE8CSxbsV5Z0Y5ojuZ/wNZpk=;
 b=m3YqvSe/4vcHzepLoMnqpXvXP8e+8ov4gmJ49ZFmzEPmlzYsHf3Vi5uvPV/wwRvibD
 kHPd5LJdYK2ioRVNyLF467TZkr2oe7rQl62hhxI4KEGsrTez/dYPLM+x6QlKQi+ypqHq
 UP+fnpx44zAB8cg7PKpYbCOms6voKoKhkfO5jLrX9ZgR8fTQ7UJjEmudWjP+voDGlm3k
 6IGUZSTl8IMqMw8BWQPbZkbgImR8GUETuOvlUGtl3Hx4u78NdPZvbW+QbTQuT0nz67Ek
 aVlN+DONJpIlMxZAZslpVW2HBh3oMEniCp8PKsmLFn2sZ3rXopig/AlWPObAKaTSwekg
 Splg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sIVQ04sXbtRDPC23vD1rE8CSxbsV5Z0Y5ojuZ/wNZpk=;
 b=c+Aq4iUSlI2DYVPpijWkX4HRRNciMNL5laEsLfMmKtAdf9g4VT2JhmQ91U4SZKnV2S
 itLHned/t1Jz/OBIqoZkNfTaFQo3ZUa3P5VlJkNuuGYX3lRqGwn2v37P/8FegnIxs8Uf
 GDgdxA3WS5IuqJG0hxqE9RMVIZJ55fJdaXg292eo0OPKeHYsQZlGbll6Fb8yYHv5FC4L
 mLGtE1v9o7AzWarZncrWqKppFFEqanlBvtBxFGUgaGUadio4kcT8Zvzfl/XHAevsNGhF
 rBhvWaZCvHXSu24YIh0ozhsQX9/OZNCZLqW7X66Z65pie5V467e8SSDvDmTQ+VJ9l6tW
 eShQ==
X-Gm-Message-State: APjAAAUCp9JzT/waJlfSa4Sa+51F8GOy44NzxVlIt6hDtrVlioIA5GiZ
 HBY4dJcX7t9v9R5jNsZ+sf0=
X-Google-Smtp-Source: APXvYqwtxlI1qOa2qQlAR2X0AyFfrrLHbOVlnn4CIXRAYrvyhOOilm8R+aJgzIXbhKbm9YwamftRfg==
X-Received: by 2002:a05:600c:248a:: with SMTP id
 10mr1127779wms.97.1568639167343; 
 Mon, 16 Sep 2019 06:06:07 -0700 (PDT)
Received: from ubuntu-buildhost (ipb21b6e0b.dynamic.kabel-deutschland.de.
 [178.27.110.11])
 by smtp.gmail.com with ESMTPSA id e30sm71943733wra.48.2019.09.16.06.06.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Sep 2019 06:06:06 -0700 (PDT)
Date: Mon, 16 Sep 2019 13:06:04 +0000
From: Markus Kueffner <kueffner.markus@gmail.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2] ARM: dts: imx6qdl-udoo: Add Pincfgs for OTG
Message-ID: <20190916130604.GA3140@ubuntu-buildhost>
References: <20190411065440.GB26817@dragon>
 <1555161577-1533-1-git-send-email-kueffner.markus@gmail.com>
 <20190415091150.GB18917@X250.skyworth_vap>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190415091150.GB18917@X250.skyworth_vap>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060609_118608_72ACEEA0 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kueffner.markus[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 05:11:51PM +0800, Shawn Guo wrote:
> On Sat, Apr 13, 2019 at 03:19:36PM +0200, Markus Kueffner wrote:
> > Add Pincfgs to enable the i.MX6's OTG feature for UDOO
> > 
> > Signed-off-by: Markus Kueffner <kueffner.markus@gmail.com>
> 
> Applied, thanks.

Hello, 

I was wondering when this might get merged into a release. 
Is there anything else I need to fix?

Best Regards, 
Markus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
