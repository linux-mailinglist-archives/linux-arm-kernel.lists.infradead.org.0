Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C518356A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:51:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iferGYowj0827d1HO+tKv1VPz0L8uRzo5r1FTcPmNxk=; b=KJYo6vW+Px9T72
	kwOEjx4mrUTesDxH6pH7PX6/GQ+HX1ACN9WaeWwy+8SKRWCFkgXDLf5Mg0tYjFGoHrPCeTXtGdPsm
	1AFScElTYLV7SEJbsPM7IKx/C75Sb8SmuNcidfyYj4ouMdkZMJ1V0W1M4EOqRBsI3T4uyJEW+C6qi
	cIle6FmJUYZfjwygnxEQRFB8QJRO/ymB6I3QyXxe6u4sw9rPL5y1T9IZeuToyFguHaGs+hub906sD
	xmtbiifo19WL0d6TE560ETKgrjlZpsKIDcgEno4lvvInz2B8iVa/ky9ggjD2e7ncNxX8R/NNJuKy7
	aXTcIqwLd1seU6gLGrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQ6s-00039c-HL; Thu, 12 Mar 2020 15:50:58 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQ6g-000396-S8; Thu, 12 Mar 2020 15:50:48 +0000
Received: by mail-ot1-f65.google.com with SMTP id a49so3995926otc.11;
 Thu, 12 Mar 2020 08:50:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VmSnjUg0wpW0rLa5TeV8iHT4CfQoAhuM8tvfmUdklCI=;
 b=NjwjUTmbpppbB5VHe6AiXzAwe9bKq3Mm6jffj550y4mVAIGNfKiwVOtqbTVnnFf4F2
 Zy6a2Jx4loqNUaIBm2dy8ep1EB9BlUfJtpxvv7bjuXn7MwIS+GXdQ8yVxF0S9Q3shqnw
 xFclQbbxrs6JtHTKh/EoEo07GPS/fzMKYFu36Xf4FFZo2xtxhXx05D9Zc3voKauDFUTY
 gbh0qPLTooWDzbPB0QB6hbhYm+AIRgT8TaJphqvBYbfOhz2UyTEAEAGgdryCCwzQyfaY
 CUOcEndiWg9v0lnfktr72hosiwYtLyK7Vjd9iRqeQwZ/e79dpqVII7VOGMZgIcX9ShWT
 JlqQ==
X-Gm-Message-State: ANhLgQ2deGBeiQEHPuBigJElGT9FuJ25g3lmc0ODiqGzMTnSQU9Hvl4w
 ptYV+dMMpxRXFmPdMUE65g==
X-Google-Smtp-Source: ADFU+vtZdELV7BCrf8YMUOe0vH5ZKPB7JioeAIO2CIRABTehRRGFIR2nr2WBf9t9ELKW/BQbZJCPgw==
X-Received: by 2002:a9d:404b:: with SMTP id o11mr6582435oti.368.1584028245722; 
 Thu, 12 Mar 2020 08:50:45 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 81sm7075701otu.51.2020.03.12.08.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:50:45 -0700 (PDT)
Received: (nullmailer pid 25348 invoked by uid 1000);
 Thu, 12 Mar 2020 15:50:44 -0000
Date: Thu, 12 Mar 2020 10:50:44 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: i2c: convert rockchip i2c bindings
 to yaml
Message-ID: <20200312155044.GA25292@bogus>
References: <20200305143611.10733-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143611.10733-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085046_908785_A6CE3A21 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  5 Mar 2020 15:36:07 +0100, Johan Jonker wrote:
> Current dts files with 'i2c' nodes are manually verified.
> In order to automate this process i2c-rk3x.txt
> has to be converted to yaml. In the new setup
> i2c-rk3x.yaml will inherit properties from
> i2c-controller.yaml.
> 
> Also change document name in MAINTAINERS.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.txt |  68 -----------
>  .../devicetree/bindings/i2c/i2c-rk3x.yaml          | 129 +++++++++++++++++++++
>  MAINTAINERS                                        |   2 +-
>  3 files changed, 130 insertions(+), 69 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
