Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5AB19A0D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 23:31:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPnoumcP1mkyp7agv/rIuWf8bEmT1Molz/6VrCHUing=; b=pzPMLYJRdlQXZ6
	lmebxt7kGm7VtTOgoKoWWQyGsh3JLRI0lZKsVl3u833VZjDPBIUx1lu5yfxcbEnqc5JfwZSWoYyY9
	6mgbuidQ1nj+qTM454Pbx2VvkfDnjDVn6L593TkxJNxgj/IgnEI24VANi9mm5V2yeRe17cdVWt/Cl
	1mAYCGgJVNjQvKrczCWIg2igGbdhkWZ2SWzVw/Ihc6S7pyjM9oOUmlnjxz8NGvpHsOzQuKC0WRr13
	nIoCR2+AzrMQjmX5b258zydIH/vU3xxFPWhfdowhzkvSLj7brvu4gM6Uak+fWZT1qSO+YzHP0wWVc
	yzen2OOnOOudR9S7y8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOTS-0008OZ-8I; Tue, 31 Mar 2020 21:31:06 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOTA-0008JY-Ci; Tue, 31 Mar 2020 21:30:51 +0000
Received: by mail-io1-f68.google.com with SMTP id m15so23454269iob.5;
 Tue, 31 Mar 2020 14:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aiuZold3/szOntpIHNt+cxtF0FuegPX6DhcwFbkv7eE=;
 b=HQ114Rq0IxOOgGUJ/aXhq6mbR3/AVNJ3aD+RSup76OlIkxZujjnzGrmd7iLlzBl8ve
 H6nVr1tvPiaUMUcbGsZBqVwCEDAtqDj4T7VhQ/rAI2BfonZWIRChbBsdnmZhRfuDoPlW
 1BzLy+9Y857v5+QAGWaleIWa5RCyqCFhCEXslZ75NXnCJUHQXLnMXsK6ATIhaLCqz32A
 jk5LTdbEuf7ZRP16MttJezffgh5OLgVhoT6hJI/Z1JsnP4WKhvvA3qhdMgtbmiVOc5hN
 Nx5pLjxRn3WALsc2iLpQinZByGSeWgNXCdi5q5bqnsm1e7+2p/quck/9aVf8r5iuNFL5
 0hOg==
X-Gm-Message-State: ANhLgQ0wp8dNOL9lxfJmU0v4I0o8vbjGSeMBxamiDdERZtkKBHijx51m
 Y4Bu7YcPP+Iw0dRqEl2Uww==
X-Google-Smtp-Source: ADFU+vuFyLeWV7L4V9baWHFqPFA5aoKrnkKsgccAwz1uR8hUkn4KXEkWgkr5NwyCG1JL2b06eyzmEw==
X-Received: by 2002:a6b:c9d2:: with SMTP id
 z201mr17573545iof.169.1585690247505; 
 Tue, 31 Mar 2020 14:30:47 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id z15sm30393ilf.0.2020.03.31.14.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:30:47 -0700 (PDT)
Received: (nullmailer pid 1921 invoked by uid 1000);
 Tue, 31 Mar 2020 21:30:45 -0000
Date: Tue, 31 Mar 2020 15:30:44 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: display: rockchip-vop: add
 additional properties
Message-ID: <20200331213044.GA1829@bogus>
References: <20200325103828.5422-1-jbx6244@gmail.com>
 <20200325103828.5422-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325103828.5422-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_143048_441641_247A1072 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 11:38:28 +0100, Johan Jonker wrote:
> In the old txt situation we add/describe only properties that are used
> by the driver/hardware itself. With yaml it also filters things in a
> node that are used by other drivers like 'assigned-clocks' and
> 'assigned-clock-rates' for rk3399 and 'power-domains' for most
> Rockchip Socs in 'vop' nodes, so add them to 'rockchip-vop.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/display/rockchip/rockchip-vop.yaml    | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
