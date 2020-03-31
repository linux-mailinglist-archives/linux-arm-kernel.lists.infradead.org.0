Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1A319A0D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odQZg85OjBLoxg/zPz4Nav4y8PaZebmRozzoPAiiiwM=; b=Rjx+IS6+Zbs5gN
	Ij+dAtGA9tFLZWZqOMigghL9Ak1VNHhnJ3++tOVW0nhiqoaQzJODvE9OHU7ys5DDpn7jsx887FVRA
	ImMaIAk85nme0X8gArG9TUE8QWCnhYE9LUMYioWNm7z000ZjAb79jBro/wi/k52VX8EXXNzxw2cYN
	s4+oxSh73uWGIJRsT4a1BRPWXMlXdPXsfcVrHTdbaPGJhIo+gk+ySdSxVRz5FvK1BY7KVYZt9XVXc
	bbuSUJtYOECTsQd8T4hdN/RAQpj5FxSGL7gwYu21Z56afnN5Yl9Q7Dp/FG5lDgHlg7yfBNdPFlWtS
	c1bbW0xgVEGGdkhps0Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOSo-0007y8-Ko; Tue, 31 Mar 2020 21:30:26 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOSi-0007xk-8T; Tue, 31 Mar 2020 21:30:21 +0000
Received: by mail-il1-f195.google.com with SMTP id n13so13658292ilm.5;
 Tue, 31 Mar 2020 14:30:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hgde7gIab0A9AJlPfRAbxdOzxdpC6QBuQyWWHDDG1s8=;
 b=mZxZsmMiBMEKkI0UteECPKqSn9SmZBSqilxjEA5QtAR/l05WXQjIxBqoiojW0hxeEX
 +Pr32R88wVaP9+bPTjL3yFEB+hMkC4N1k8Br73nShl+M0PFT7iM80g9Rh6l/rwXTRt9P
 dRAwKz+TQRtjDXznk5kbCo/ZCQMPl04CdOZvQfUoI7JhWHXoIqgOsof6SbpLm70wR7j2
 At+CPmHEZFyYZw7hFbyhDkFR8ntF/qobZrVaEy4r0mBWrtpskCD1Q5ltQfVhwmxxiNQx
 xnvvr/9ialeTFrgXu4MdYwVqfQHbtQy+UEc8OwTtlxUh8CgSlNBPf3Hgs5T8osW9MH9d
 N9tg==
X-Gm-Message-State: ANhLgQ2AnZ/u7njp4zGep0hTiCGXOY3I+jrPPlV1e93OD/iTd2/pE2fz
 v0vf+vOqOFmcGikw2kNtRQ==
X-Google-Smtp-Source: ADFU+vu1BYo0UPKQXSA6GKj/6abEkzFRO5nrM14lwT3cYsl1D0tV1MA1I6gmRcQjxC2STIxV/8Y8gw==
X-Received: by 2002:a92:8f81:: with SMTP id r1mr18614381ilk.51.1585690219360; 
 Tue, 31 Mar 2020 14:30:19 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id q17sm23336ilk.48.2020.03.31.14.30.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:30:18 -0700 (PDT)
Received: (nullmailer pid 32705 invoked by uid 1000);
 Tue, 31 Mar 2020 21:30:17 -0000
Date: Tue, 31 Mar 2020 15:30:17 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: convert rockchip vop
 bindings to yaml
Message-ID: <20200331213017.GA32448@bogus>
References: <20200325103828.5422-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325103828.5422-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_143020_293793_8F0587DF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 11:38:27 +0100, Johan Jonker wrote:
> Current dts files with 'vop' nodes are manually verified.
> In order to automate this process rockchip-vop.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v4:
>   Change description
>   Replace compatible oneOf by enum
>   Change interrupts description
>   Remove resets minItems
> 
> Changes v3:
>   Change description
> 
> Changes v2:
>   No new properties
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt     |  74 ------------
>  .../bindings/display/rockchip/rockchip-vop.yaml    | 124 +++++++++++++++++++++
>  2 files changed, 124 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
