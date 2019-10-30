Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3174CEA790
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 00:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR4ZKTxWsr48O2pdTM1lYBwGmzSEr6BVjyo4eGDc+fY=; b=GPH2ommqGHun+R
	KZgjA2eJ5SqJpGGFM68fgx71i+gojB/0AJSE6D8puptqG8ddpEqOxDFjc+tcbYX0nevi6DkEZXatL
	hdq+km+eX0Y8fbNxzdaS0yGeJoeA76Q+KnrAz5+TGNJsoEvEnOzofZ7EaBnmeqXr26jcKY271xGKs
	xe9raU+rtQaOyIGvBDSCq40HlrCSf137HlPNO3E3QqkRNpaYHUB6hlNQK2zhXPu4buNHTrgZuKQ7F
	qU7CZwWKPKytSblRSQqQVs+l1en/0oL60We0q5rcCKOoMJbyYuOqD82ecsZNTzP9/qn+abmDXTMFi
	YCC3T8fmywdSYWiFjKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPx8U-0004i8-L8; Wed, 30 Oct 2019 23:12:18 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPx8L-0004hE-OC
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 23:12:11 +0000
Received: by mail-pg1-x543.google.com with SMTP id l3so2572231pgr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 16:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=885nbPg6jGyxC22i6djzkMtMUJgUk22kfQ1KMF5dCF4=;
 b=oLRbvfDJm8VrWgYQ6QhhHNuvFg0HWFeMlx6uraE9cHEIEbD8Y1oHlM+S7uMR89ykig
 BfnUSMWbX5wXD6M1Luqc9OvqhZCIF6SP5AJBqS5JclOKquwXOCvDsPXkqnE01c+5FPp3
 UE67elkNz3DkQ2pUbtKXhNOQQ3mOta+UP73RbCv1nErNEX6a+3mjlG44qBG2gPZLXqat
 gZswl4CcAZgj7NiEFz8QmrQEttmSAeNdYh0DtpI3YkTRDdLmPzQ4AiXauoif2iJOqtwe
 u9VlEXoki011PG3H38z5ruJcH44K4kv4CvDQ9vm2frP71hTvnG1h/yE0nunVg8VfNv2G
 daFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=885nbPg6jGyxC22i6djzkMtMUJgUk22kfQ1KMF5dCF4=;
 b=ZPY6c2EwsaZmzxiM7i21WDPqrHn+uvK1QZp4WDjbYYaHfEyYE2VaaSzfo57GZG9Rcl
 8cA63g6HM26BBmWfV3WsOhK9E6iPNB64ihWO4kweriwcxXcRFiTI/tXRlM5vYkNZkoHd
 PbOVtS0L1siOPRLuPjlB/rdGxYvgadND1EXwbHOJMpDJ/ylpSAlSF/NkCtyAFw/ComQI
 rnQHL8JgtOD3LkM7gToX8+TY/91c5j9g/5uMHaF8Jvet5Xje1woDHNi+MPBuGMSa94cZ
 z88lojOcXrnjwUzJVT2W/FTX3qvXxSdtG0G9uoj9xxDqdxSKqNZG8E5i7S5tmboUZgI2
 0cFw==
X-Gm-Message-State: APjAAAUvLZXkXhWNCVPeQDiTJFdWghG2AVUZ0EU3GlAF81SFgOPVQje/
 Z9hFv95FJXmwdQGB4lpPslg=
X-Google-Smtp-Source: APXvYqxbfiwz4ogo5Kw8lSy4iUdkk8hpOLAZPedWTkyCs30wo0LDOGX1RlN+6AjnPZgj+BoIq0bmnQ==
X-Received: by 2002:a17:90a:a504:: with SMTP id
 a4mr2279687pjq.61.1572477128315; 
 Wed, 30 Oct 2019 16:12:08 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id r21sm1079774pfc.27.2019.10.30.16.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 16:12:07 -0700 (PDT)
Date: Wed, 30 Oct 2019 16:12:05 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 3/5] dt-bindings: input: tochscreen: ad7879: generic
 node names in example
Message-ID: <20191030231205.GI57214@dtor-ws>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-3-marcel@ziswiler.com>
 <20191030140455.GA4544@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030140455.GA4544@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_161209_811777_865E3AE8 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Marcel Ziswiler <marcel@ziswiler.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 09:04:55AM -0500, Rob Herring wrote:
> On Sat, Oct 26, 2019 at 11:04:01AM +0200, Marcel Ziswiler wrote:
> > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> There's a typo in the subject.

I fixed it up file applying, thank you for noticing.

> 
> > 
> > Update example in ad7879 devicetree documentation to use generic touch
> > controller node names.
> > 
> > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > 
> > ---
> > 
> > Changes in v2: New patch.
> > 
> >  .../devicetree/bindings/input/touchscreen/ad7879.txt          | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
