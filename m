Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705A626521
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqjGhWvlv9AiSnWkgkYxSH04LtGRS/SLA1oH5QGyU/w=; b=I7E8nE+TpugVl0
	uylCQMMWxne8ORU/EHttc60odKI5LLZ38SvZEP2El+0ICWrVzMVoMM7rbXDexEiCQsefT+D1Ahmyi
	q+/RuRgG9jMOs0NEx35XIiyYfJx9qblE/AVuiX5qj8Yn1zo3dz22+S+vbR+ZqJ0Gx2cPu7UoKHXjC
	TsTSaTrMx7WfbNtzO5dNjIiWBUYOoJWjYihmPw0Vpp9xXOr0CwdPwwL5EUohZOCnDP1L4CZOMq9Wj
	pzv7/mWFtkTfHjFiviGrWVvW8RghXBGfj5TDCai6gUbLb79iy1DtFfipQBDHioGyUN/uFrJGIjCn/
	Z8ViZQQy746TihKsbkEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRed-0001H1-Hs; Wed, 22 May 2019 13:51:39 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTReW-0001GL-Av
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:51:33 +0000
Received: by mail-ot1-f65.google.com with SMTP id l25so2100703otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 06:51:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WNC2JYWG7tWES9f64iNfx+WaqJ4vmOCp/0J1TeLz0p4=;
 b=EcIq799SwRlcZ61QoNmL7YN6tmKoL2rA1vbaBQcxVhHaPUhxySYBjvsnQx3AEv44WH
 d8KkVwAFXOuQkoUfY7ZQH/hdR0GCximMSwDmoqQ9p05+RjV7TMj5I9+8UiJTvj+1Cc3x
 fYLh7OcBQ6QySONc2kPbgBw60NFoxTuDXBq6SYU6bBeupwCFz4I9ONy8EkavqYARIL5Z
 Wlz0T6cpiI4ZZ8RpK2ikTT6XkNbZjMpOE1iUSWmAbP3fdDcT8vasv0fQEXqeug5pjQwe
 x2f8uL/qE+NNCSd6Xp3GbTvphMSYN833A2uMAzv2bAAQt3erMcge8diOWFuDzFKOezAH
 9ZXA==
X-Gm-Message-State: APjAAAVDyp4DtIixf8IiwGONJ+W4LUv4fDltf9d1uThkNNcLea/h04+4
 J9X9Wfm6Cm/ACT7yrNpbLQ==
X-Google-Smtp-Source: APXvYqyruJO4hpb5ERYDyy8YFYJg7Z8ngUs0aEUiTimEwLTJsVuVZ4S1t245qpR8qtmb7mfA8CLAFA==
X-Received: by 2002:a05:6830:11ce:: with SMTP id
 v14mr23382616otq.184.1558533089709; 
 Wed, 22 May 2019 06:51:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e8sm4849679otk.13.2019.05.22.06.51.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 06:51:29 -0700 (PDT)
Date: Wed, 22 May 2019 08:51:28 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v4 10/14] dma: imx-sdma: add i.mx6ul/6sx compatible name
Message-ID: <20190522135128.GA24987@bogus>
References: <1558548188-1155-1-git-send-email-yibin.gong@nxp.com>
 <1558548188-1155-11-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558548188-1155-11-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_065132_378700_1B267D40 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 May 2019 10:00:38 +0000, Robin Gong wrote:
> Add i.mx6ul and i.mx6sx compatible name in binding doc.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
