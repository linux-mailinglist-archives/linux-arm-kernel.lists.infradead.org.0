Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67BFBDB5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:53:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPhS0Qb3XOGNJBrOnrGw/dZwJBBVdTO55tqENqo67aQ=; b=ps6dNA4zMSm8S8
	1CkTaH6NklJmldD5O//k+f1up5E5FCd/+oXWSnhxt91I3pXPK7IKvKGKoSK/BrZpHnKsg0ZOholqF
	f7y97wVyMVmiPC1ZnlEOJ3qijg9E4q7czPP74sx3ZZWEIaaY1pqQOEjlYdMZv1GrWSiYSXzHrTzAD
	jiu7EiWOFo2Ybtb+hEI+V1vSInmWl2xNwLHJDRf7fpZP3G+dmKl4ZQha171BuLlxQRBFYopdg3Bzw
	afdKPglarO/WSMqIy7TeMBg2t/0/LmjRVSPO8jNZFyL0eh2NrxeFqmV8TEJKpL8am0fZRFEOkdQgB
	leCzX9WgqL2VO87TkImA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4K5-0005Wy-Pv; Thu, 14 Nov 2019 01:53:25 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4Jw-0005WV-MJ; Thu, 14 Nov 2019 01:53:17 +0000
Received: by mail-oi1-f194.google.com with SMTP id 14so3761379oir.12;
 Wed, 13 Nov 2019 17:53:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YzMRKwOAeyLEJgS4ZedeWkKapXjgaDKadOBSenofCOI=;
 b=BltVV6O9cpQ4pxI3K0cmoqB39gwdjLWSFeqvYBdU1aSpwVW4nOH+CB1vZL/3nYSBBZ
 2JTmSMLTmsuUod/jHOIWe9faUdWXrBQ+6VCLn643k93aW6rm+OeTj187+Sl2vbe/89Qu
 C9QwNzB0ygpY3AuIn0iXc9QhFUbXG2PjX2Kd2xkzuu1d6BlFeMqAa0oH2yxbRWjiDhZM
 9NBn8lq6bttwUbulxZHSBtgPyskOE4wuVU6sOEK1Id0lgGXEBtcX73F9wMAr2xe/x3lr
 zDUbRhuO5EwlxT8ueVkZtfRBRF2J7k9ftdFj+TFkmGuhSwBUHEN5rqCiiTVWTsTgKmJ7
 b+Gw==
X-Gm-Message-State: APjAAAVfbw6OkAulKhC8ettbtWipTgVBn0qMysegKN+yxfWSyDZGk/sv
 ZVPUE/UDkP+eHyf/97oX+A==
X-Google-Smtp-Source: APXvYqwoPjq8G5QC+rJOSL3DpKhW/ooUFfVo8fZnHTp3oTWVQOIRPmWDGvOgzhuvR+EDBaTL0DpXUQ==
X-Received: by 2002:aca:6706:: with SMTP id z6mr1288414oix.89.1573696395971;
 Wed, 13 Nov 2019 17:53:15 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l18sm1345873oti.11.2019.11.13.17.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:53:15 -0800 (PST)
Date: Wed, 13 Nov 2019 19:53:14 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
Message-ID: <20191114015314.GA24328@bogus>
References: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175316_726036_EF95DB66 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  8 Nov 2019 01:06:39 +0100, Heiko Stuebner wrote:
> Further review of the dsi components for the px30 revealed that the
> phy shouldn't expose the pll as clock but instead handle settings
> via phy parameters.
> 
> As the phy binding is new and not used anywhere yet, just drop them
> so they don't get used.
> 
> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> Hi Kishon,
> 
> this should ideally get into 5.5 as a fix for the previous change
> so that the binding doesn't accidentially get used.
> 
> Thanks
> Heiko
> 
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
>  1 file changed, 5 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
