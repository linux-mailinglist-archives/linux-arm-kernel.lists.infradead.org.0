Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807162E1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 04:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/nr8IbXKTRB2JjN+17ymm+ePamC9mnFO41M5ibMwG4=; b=YaLzh+w9Rvdqfz
	rMvZULpKqq0CjHTdeg4PXJNXfLOZMDh+ecTxj1g5GPOMoa09zQZrUE3oGhGdTbpidmW1Go1DgKcyX
	hC1I8nmv15bygz3OxIua7gpG5sddWck3G0gHe5vd7cDxTxgJUJRpZjMJ6JKwxSKNJXgF/MufQ0Igx
	ONjObVawckVmZG5aQcbojC/lv9wmfEaw/6IzQkQjDuTx0kb3SN8kAcdGv3VxmSEaXqQKY3G0RQyao
	bxNkwnRviTWFI7qXCH0G/WzlBEpccHFldGkv5rPjd3/H1Msaqm1IVEzbVvkTZVp+JnA0deB7oKQi8
	29N7S84p3lm7uTAmqsZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfsP-0006rA-Kh; Tue, 09 Jul 2019 02:29:05 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfsD-0006qk-Lc
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 02:28:55 +0000
Received: by mail-io1-f66.google.com with SMTP id q22so18044557iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 19:28:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3eMI25TMjMhXgi4o8mT6brExi7SJNcgzDLJEzsvQung=;
 b=b6rLcNPg0SkqP2trhPb9WM3x5JBUI0j9id7BcOtevnjxe9Mp7f7l2NED2RBbxwVU1/
 nJFWtSa2CJ9K2eDVuytFL33LNv2XCqCwf8EuwQi2CclhHQp1eOU446AGg7bASoht+mBG
 P4mT4H3XCKxTQl+xXSMzVdquGafAgZ1F/vhnqJ5l1MIOoBouuynDl6d4K3/8kbV3/4YW
 978bIX1u+qAnS3l9DJtwscMACOtrbJTOjzrF2fJNGcK046YfG3Ez1SPMjtcXbeKenEcb
 vrF1TWZ59jDJtX/YP4QcLWeiyC85G5H7WyRllUWA/LabFrovTnfEvqNpcw5dHtKlhJgg
 SbKw==
X-Gm-Message-State: APjAAAU8CGLrhauqbJdqkXFXG4OhiWBQqz/CvtzZA76lR8biDyujuN/3
 7JD7uLrXTEz67oiqA7p7Ig==
X-Google-Smtp-Source: APXvYqyHr4jZZoJjV8UUgOHoNnDbmjyv3LXE3PkWqpn9SPPMtZP84tRkS4C8fUpoVCpcpBMJk1LEUQ==
X-Received: by 2002:a6b:f910:: with SMTP id j16mr19739493iog.256.1562639332885; 
 Mon, 08 Jul 2019 19:28:52 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id m4sm31701032iok.68.2019.07.08.19.28.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:28:52 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:28:51 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/3] dt-bindings: fsl: scu: Update RTC compatible string
Message-ID: <20190709022851.GA28421@bogus>
References: <20190611063333.48501-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611063333.48501-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_192853_711396_33CB936C 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 ulf.hansson@linaro.org, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de, peng.fan@nxp.com,
 festevam@gmail.com, aisheng.dong@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019 14:33:31 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Update RTC compatible string to make system controller RTC
> driver more generic for all i.MX SoCs with system controller
> inside.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> This patch should be based on below patch which is already picked by
> watchdog maintainer:
> https://patchwork.kernel.org/patch/10962183/
> ---
>  Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
