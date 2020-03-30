Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D837198318
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 20:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uf7wX4drdB6PVF2EJATvC4Q44AWX9VGbZWmGmj7/MY=; b=DduRepWgaHx+8O
	32R5/kNLq0aP50ASl+TFXM7IPrXiShRs8t+PUHPzFbZM8nhm6QmOtYSahSh3r7YxKSkVJKnvkFe8R
	tzxqcsNajEubiRL6i1x7udBt+95FHhMPZtjKXV6bSIsTubRSSPjwTjbGvEMmmWUwZncu4lxrPVFqD
	aZYQ8OVe53OrsKwf86UQJcfJ7NHltpuQvS7pV9xuwtKP5LM47SCIU1DxHzA5mN00f5+mQ9HTvhxSZ
	zOVBRlFNhUGZwEDmP79LPHL5DIcJDOFHO0ErBwLp0b+giokUtvDmnJXKqqVlLogMNewmURY2KFswt
	M3NdccQgbaaVX9EHIU5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIytB-0007NG-2j; Mon, 30 Mar 2020 18:11:57 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIysP-0006YF-Ry; Mon, 30 Mar 2020 18:11:11 +0000
Received: by mail-il1-f194.google.com with SMTP id p13so16745884ilp.3;
 Mon, 30 Mar 2020 11:11:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s037sC2z9ESNjlnmzZ5RPd9h1faVevqStuCn9N98VOk=;
 b=Hznzl+lUoBJAgcpIOSSeHQ9BZBl0jhMw3UQ6F/tEPOCZ9Aoq2bjk9VxaYBgazTu7An
 yeN1W5QPe5GXcINei9wdNRQR9uEA+vwJWLF5sbSqUiELmfyElecjN0zQr2/qJ0QLJ3wp
 fNCJHGy2vI5Xkac1obXswC3waL/FvgNhhsvQ7MZibholMiP8N5w4N5NxnvXgrW6RJK2R
 uqWXcrxrpcVDXNi5NuiKEDUYML+ZXnf72zeHL35RKo+As3vXufEbBNiDCHaPX/1Vnr43
 f0FYrxzcb3/GET+G/C0XzFUlDGGk2SBMNlfnRa7n7s94K/nQGhqNqOWasc4ILVZG9OCE
 XT5w==
X-Gm-Message-State: ANhLgQ1Tvqvy8pfQ1A6J+ZPhaA25RtPjdPndMw5jsA+Ca2ilJ1IFRfNX
 g4XhSODDxJqn3MOzG6PGLA==
X-Google-Smtp-Source: ADFU+vvnW1E4loPKsXsXHGuRBP7ua4bfNufn3sVJlvuMFqQEmjNGX7i3bU6vAWNXSWc11oAu5L3yCA==
X-Received: by 2002:a92:88d0:: with SMTP id m77mr11696908ilh.282.1585591868568; 
 Mon, 30 Mar 2020 11:11:08 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l70sm5158843ili.81.2020.03.30.11.11.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:11:07 -0700 (PDT)
Received: (nullmailer pid 8155 invoked by uid 1000);
 Mon, 30 Mar 2020 18:11:06 -0000
Date: Mon, 30 Mar 2020 12:11:06 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 3/3] dt-bindings: iio: adc: rockchip-saradc: add
 description for px30
Message-ID: <20200330181106.GA8102@bogus>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200313132926.10543-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313132926.10543-3-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111109_934512_B1D08B57 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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

On Fri, 13 Mar 2020 14:29:26 +0100, Johan Jonker wrote:
> The description below is already in use for px30.dtsi,
> but was somehow never added to a document, so add
> "rockchip,px30-saradc", "rockchip,rk3399-saradc"
> for saradc nodes on a px30 platform to rockchip-saradc.yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
