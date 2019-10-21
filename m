Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F2FDEA16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGWgtMVN6N7x3U2s4lu80JRTR/NxAKaB9O1dGF9VQPU=; b=XzEscF41Wcxm7i
	SiST0Bebbts4x5Y4Ot/G5eR4n2auiOqu1sul1JCjAAvuBgXGz0TD84zJ7U7FcZLaf4fh+n8bTv0pS
	IuSPuX763Z1TOLmh099CZ/NBvP11qRJizdEqMAEdZ9ZdSfeLfJ05jkrepSpxcj9+BWH/mpzScIlyN
	akycAAGjWr7SVS88CeKG3vxIJLWzsdncrL9S2CodduZFQIH7OtPi9yVaEb0gAvSrRWbmuyFYGMoK4
	69fcUi09rLBIxaF6P1s6V8OJqDbiHStXafdEgHwnTNIoN6pbutZ0raab9DJoPW6NpWbEMOuwqyiNm
	zL4ZTC6X14ciDNKPJOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVJP-00067u-Ml; Mon, 21 Oct 2019 10:53:19 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVJ8-00062Y-WD
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:53:04 +0000
Received: by mail-ed1-f68.google.com with SMTP id c4so9661075edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1TgtWs4DJV+Q7PKm3m20XxcpK+EeU8BJOWEpeeqxE5M=;
 b=d0vSMgKfDE2n+DF05uv/Aw1+QtisWYt+ufaiokqfPe4seUwYGBCNz5XEXydvYF4D3G
 nO4OsABTBXh7pkV57KXKHTJnu+KXusSvXXRq7Xedzg+8UlpRcfOvqOxQ1mpfBfXASbwb
 BsxoiKfk/8P95xRWCLI6HJQ2CNI8KRVAnWcDOp8Kr64Z1eT2Z04+nnizlBw/oW0vzFEW
 P5OS43Xw9Fs+CY4piEVnYv43a/0+IiQ7FM2mfEeh+DvUd4KvrsG+cva0+FLPHkqhA4Uz
 TM6RdXxD65Ad0ib7ADoLvtRYeA/oqHeNeHUUsmt2n6xPTB1HqtRrsgO497mHVHeToMxj
 HDBw==
X-Gm-Message-State: APjAAAXIKa90SUVfGv8BMDvS63KEd4e8qJ5Zjq1PVYriOJn1sAyFbmOI
 UnC8ZW8q2grcaUu/tFaD19M=
X-Google-Smtp-Source: APXvYqyn3T6TPNnfeaVJZoBwWoGAgZgv5UKwL8hq/5/+A3Y7v6R5GsY3E9ElucI70tnAiJFoFzuFZg==
X-Received: by 2002:a50:ee12:: with SMTP id g18mr23842734eds.114.1571655181681; 
 Mon, 21 Oct 2019 03:53:01 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id a3sm594352edk.51.2019.10.21.03.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:53:01 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:52:58 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 05/10] ARM: dts: imx6ul-kontron-n6x1x: Add 'chosen' node
 with 'stdout-path'
Message-ID: <20191021105258.GA2089@pi3>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-6-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016150622.21753-6-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035303_036185_11594D51 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:07:28PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The Kontron N6x1x SoMs all use uart4 as a debug serial interface.
> Therefore we set in the 'chosen' node.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  arch/arm/boot/dts/imx6ul-kontron-n6x1x-som-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
