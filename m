Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C269EC82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1J2MMJAA4UoQu9jHzFamN80agzENBYg18d/dW4BQZpY=; b=Hha6pdK7itQgnQ
	R3nMsRORQo2OtctrhltBBJ9ecG2aEvE0g8kElQhQUiQxK20EEaNW4dN7zkhYLhj0XRUncZ1z63CES
	cLNNIIMxyWieiivbTx2uDxnwAukDhxirp+Mo6o079xBFTsQsgx6bPpFajBckwnMZqeoCSEApnO2yf
	b0jUx5hFNCPtXQpIAQJC9caI+znBzKhGEmAHkyfZfD5De8cfyuCMrHXB7J51nTN+Bxj+53zzAlSvB
	RcAGSNHZUctCp+H/P0i6Xud3zpDE1/Yv/6lgtSajkWTQiFbxo/aDoKPyf5mrnkr5n4nySxTsKpnNg
	i9znyIUZu4sLtGzor5uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dMb-0001fq-SV; Tue, 27 Aug 2019 15:26:29 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dMT-0001fN-1Q
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:26:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id k18so19068871otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 08:26:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Cx5A9kmsqXyCRtIPjR+drsX0vo8kNVTlvMzHwdHDI2U=;
 b=hxyrz0iceiyKoszykQlTJs3oLqddD1vZeP+y988DrbWmdP+NXGiSFbhtQRB8HvBmNs
 c6JFTh0zpejRbT3A7XaZmvCxDU9izHbXkKUD+n9mSauo/jXPMUWrZd0BUx0AjOMXiFbR
 D+kNC/X0SWb8pxW85RN+X/t1Ckmg/3U2MCruDXnxGaHM4CgeIFphhev2mdfsGud/jxeP
 rhWAWDKMK8QAXG1SIcG66ZClxoAbbVezOFhMt8Ht6mNNYxUwAq6nM7Du4+3XS4sg5wCF
 4zgltNdZexvZjNVGEAQEm0jwBx7hiKrw7XLqyAHlfLnSv8hMqcUeZhbcdRr8WdHaOOmr
 CF9w==
X-Gm-Message-State: APjAAAUKGzfrVgdkNC7LKik2R89DzpzDTTcCKi2W1TlClXABPKcALhDx
 cqT/0TYfusV5cTmuJIbqtw==
X-Google-Smtp-Source: APXvYqwSeY1/zyQlliXFGLvmROu9EUOrSjDGZJ/u1Ovb3jw9fy9cQ2GnzE/ll0sd4/G7GJ44D+KuNA==
X-Received: by 2002:a05:6830:42:: with SMTP id
 d2mr19950752otp.123.1566919579411; 
 Tue, 27 Aug 2019 08:26:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i16sm5354376otc.65.2019.08.27.08.26.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 08:26:18 -0700 (PDT)
Date: Tue, 27 Aug 2019 10:26:17 -0500
From: Rob Herring <robh@kernel.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 10/18] dt-bindings: thermal: add binding document for
 h3 thermal controller
Message-ID: <20190827152617.GA24677@bogus>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-11-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190810052829.6032-11-tiny.windzz@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082621_083138_303425F8 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, gregkh@linuxfoundation.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Yangtao Li <tiny.windzz@gmail.com>, wens@csie.org, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org, rui.zhang@intel.com,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 10 Aug 2019 05:28:21 +0000, Yangtao Li wrote:
> This patch adds binding document for allwinner h3 thermal controller.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  .../bindings/thermal/sun8i-thermal.yaml       | 81 ++++++++++++++++++-
>  1 file changed, 78 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
