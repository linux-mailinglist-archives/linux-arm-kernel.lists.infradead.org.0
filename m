Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873E3198312
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmtDyUhmwm+zj2hk2rCF6LSj4We+BV7yR6cadc6WEe0=; b=lwuNzhslIMfCSe
	JCyTebkp9sgjhh22UBOMAd7AXM3SGTcZFs818rbisgHps9i1bzCKw9NTf4a1RrWC8z+R+BVCx50yq
	FuY3XhJ3t4N/e7Wa+8uQevVqERLDa0eORaO/95bONcAkK8fhlSmvb1pr6zAUrT6HdQGdLHVCBoy24
	b7I4nw4iSONw3ZvVsrruUrWT292W8WXg6SExSCN66r4To/8XFC2M6eCSB2U64G/A2XwMEMG6s1+VY
	tuJnhzc5iUTE3UZF53gAwaBay7PNyTBPGz6aBLlbjzGk+70uJgwsiD5A0SxvInjdhVGcaYltbkuW/
	rawuFhkJw0IZ5z8Lao1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIysM-0006JE-Nw; Mon, 30 Mar 2020 18:11:06 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIysC-0006IY-5o; Mon, 30 Mar 2020 18:10:57 +0000
Received: by mail-io1-f67.google.com with SMTP id x9so12373574iom.10;
 Mon, 30 Mar 2020 11:10:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IclrqcW8ysqtuVmS55rZcOs0qoTX1+BcxJZ+I1k0oLs=;
 b=jy7k4WRn29vUNxMMJsQIepMrrPSX32XcmSGxE90PMK6Xi1P4jz4WtVStpa6/05FNI5
 pUHncQt9xAa2eeXa4gtN0tmaUvLwlbvy6OeqNyQvxsyWBf2oS61zTqZ86IfksBxCFj8x
 FoTpMyJDiG1qJWU01FJIJ87a/Ytho9ODzXdOze9JMkoraK18vP2HBt77yD/ccwpU13aD
 0ENkCzUUZlyqufBLnLLDsGa6T3IWt+RH6ZzAl+hgjn5IfeTPXOkuQBG0yuQzY6qxe6wV
 g22fA4bDtbXbvp63UjKfslJ1tzk11CIv+v52JHlijD1NNX1CJ88XlgfAus+QSFvrlXH4
 NNvQ==
X-Gm-Message-State: ANhLgQ2bopbKT43PyJIonDTwEoy+T1DLiwrhEOU8TVRVukpHt6E5apeU
 hhYDn2ZDvyBOkSzxF1gHzQ==
X-Google-Smtp-Source: ADFU+vtRD5i4b5WuUylbDfvEsPS/m7kyJL1kE9fsXtKCkDqfbgwFrDee2r1oGdFUeVl9G7yiIgiu4A==
X-Received: by 2002:a6b:d808:: with SMTP id y8mr11628918iob.121.1585591855212; 
 Mon, 30 Mar 2020 11:10:55 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j23sm4248204ioa.10.2020.03.30.11.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:10:54 -0700 (PDT)
Received: (nullmailer pid 7604 invoked by uid 1000);
 Mon, 30 Mar 2020 18:10:52 -0000
Date: Mon, 30 Mar 2020 12:10:52 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Message-ID: <20200330181052.GA7527@bogus>
References: <20200313132926.10543-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313132926.10543-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111056_221586_93A5D606 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 14:29:24 +0100, Johan Jonker wrote:
> Current dts files with 'saradc' nodes are manually verified.
> In order to automate this process rockchip-saradc.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
>  .../bindings/iio/adc/rockchip-saradc.yaml          | 79 ++++++++++++++++++++++
>  2 files changed, 79 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
