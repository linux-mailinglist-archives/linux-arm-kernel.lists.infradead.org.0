Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5D473FB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKTiJXTSKDzWfVhEp86UNBVxObukDC1cifPB8psq/e0=; b=IKhuaiMymiMTHp
	J4bkXVa4P211hIt8sUXLPtCTnsuOebMYX7mqZza3AHnPSdRBa5pbJGiWfU93sOJwBQecMStV/HmvY
	LKT18MQpHvt7EjaNFi0YDDtV9STgfDynGw27/gohKYyYK6bfZQk2TjBsNMVAK414ouuh0qG/i/hiD
	U2ft7BQhHV6MNvSpXg4LHF4/oeSwWFBE0O2b3UYBwdk/4n0ACCK3gHOwmCe84/cn0Cmq8gOzJCZAz
	wYk6ST/4lQo9LeUMmtXLs4xjoHjc7/tbxhWKC3JZaogQrcDL4Xm5we4hHVGb2jCYIkF6E383D5NVe
	14Iplpl1+/8AdpShIzXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNyV-0008Nu-Ij; Wed, 24 Jul 2019 20:34:59 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNyF-0008Na-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:34:44 +0000
Received: by mail-io1-f66.google.com with SMTP id j6so17280985ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:34:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uHLqz6FDkSCI8LzqIEBRdrQs7zeUsE0ZRMiorxW3eeM=;
 b=eLURiI17HdoSthpWtSgXrLb5L1cDb6tK+theufn868yrfeMANmYkFfYc3NOPlc6SKG
 wr/EAkLJAFZDTzJib1CCXbE+CLjhJgM6mQoT2TmLw9+YTO5NOeozDKBo+eRepqxXunr8
 VaAdHOY7BFDhyCdVLWfnHTI3ZbLrrlNzL+gSxJ5T8mGWRVuD/3xngL39d+tvv7gZSb+t
 Spgb8cUSYMUx76hTo4/h3hkPyhthVm6uV9wK09I1lUqevpkOangEaFvFuIRK3ALPNGi0
 25u9/9ZAqNfG89SGViVuGfElRXxtbT+fbfssZesMSpppbXwIhrAkKtDIO9ZOqOenKLDd
 7i1Q==
X-Gm-Message-State: APjAAAUeW5kIKusUuYyOde/iRQmpy1oAW0WgE+vcdHo1tivbUrdNmoiB
 FMGildKTztQHZHZN6xw0/A==
X-Google-Smtp-Source: APXvYqyiTSzmcos+LtyMuQu0VL4DAqAkhvqzWm1usV7kqdE4UV43i+gHAw7kW1rK2LIWDuuVMITEbA==
X-Received: by 2002:a5d:9749:: with SMTP id c9mr13123190ioo.258.1564000482978; 
 Wed, 24 Jul 2019 13:34:42 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id c14sm37067202ioa.22.2019.07.24.13.34.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:34:42 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:34:41 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/2] dt-bindings: imx-ocotp: Add i.MX8MN compatible
Message-ID: <20190724203441.GA22721@bogus>
References: <20190711023714.16000-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711023714.16000-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_133443_722414_EF23A721 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 srinivas.kandagatla@linaro.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 11 Jul 2019 10:37:13 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add compatible for i.MX8MN and add i.MX8MM/i.MX8MN to the description.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
