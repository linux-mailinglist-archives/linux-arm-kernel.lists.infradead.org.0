Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3254183928
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 20:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wehGMUSQswoE+yPEkHmxfNu5E5lZFHBSc2RlwgC0RBU=; b=lcf7FnLywCeaPa
	+vKMlI2v1tkNC0Jnn3sHhzrY5AKfNEgyD2xxcV+roFW41dAZFgiMkJbZso4FlQk7up3CzlMeG9m16
	hISIlcvf6VPyov+xEcSMk4yzXybcHojj968lDvObqtYPgVQmRWI8D2aI6EraZttQmbx0oWvJ1vB1T
	2wA27Y5jvSAWNDdBEuKU5a/HpanK/84mgscE5Uw3TXl5pqwdBunsRvfblWEfL+ccr1YbiZoEEnpTU
	/ETtqUSGCI3PNdm1Rj7vf8p6hHYTxFosWWYX85c7M2y9Phq96lAE2cD1dWAH1WXFfQ2ak76HaWwjU
	lsz499Uq3Qt4NBU/JKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCT6X-00069D-Qe; Thu, 12 Mar 2020 19:02:49 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCT6N-00068G-Tz; Thu, 12 Mar 2020 19:02:41 +0000
Received: by mail-ot1-f65.google.com with SMTP id h17so7442432otn.7;
 Thu, 12 Mar 2020 12:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qszn8t/TXMEw8klBhLWYzin7BjJynR0x9wt3vKldKkI=;
 b=l0cl6wvPGU16SNyWbLyxNBZIDC34u7W7kMFSILN0g1iNpRHucJ/MH8dClAlCrd90m0
 lNdN7SNbMjpHEJn3t80lajX0NBCzMGwlKMR0ywzFOCyZQPi9/UPqevZeimglRc6uYHWX
 zgT9PKVeztfPfkgTYoE7VM4kFrXFNsL6AYISxvEE4RUb7a9knqeoQ1NGfD1869NDlCAp
 OUT9KcrE4n7ic9NqZoDjNFW5dJr2kAM1uY2xq6Wa9kq6ONTTkI1PdaijLkSibbt5gkO4
 lUv5GgUkY9s7xQCygYtl60p+zGVXGjMYUgaOMHW9nEUmrN6vMu9M/Z2eAx9ho/crwUms
 Ampw==
X-Gm-Message-State: ANhLgQ3IzKv6M1kdTfZpagpZYc94qEljvKWNRgRT52Jl3oAG1PlPEuj6
 r6zkfwj2gYZqSxVQVqRJFg==
X-Google-Smtp-Source: ADFU+vtDTbuZErAslJQLMpArXJZf6snkXd794nOxeCf/BKZvRnoCio76FeXOXlwzNhrd+bsC58+mfw==
X-Received: by 2002:a05:6830:18c2:: with SMTP id
 v2mr7729860ote.350.1584039758461; 
 Thu, 12 Mar 2020 12:02:38 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e4sm8462394otb.23.2020.03.12.12.02.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 12:02:37 -0700 (PDT)
Received: (nullmailer pid 26970 invoked by uid 1000);
 Thu, 12 Mar 2020 19:02:36 -0000
Date: Thu, 12 Mar 2020 14:02:36 -0500
From: Rob Herring <robh@kernel.org>
To: Prashant Malani <pmalani@chromium.org>
Subject: Re: [PATCH v3] dt-bindings: Convert usb-connector to YAML format.
Message-ID: <20200312190236.GA26911@bogus>
References: <20200305222732.133047-1-pmalani@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305222732.133047-1-pmalani@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_120239_970779_7A7F1453 
X-CRM114-Status: GOOD (  14.01  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heikki.krogerus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>, swboyd@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Prashant Malani <pmalani@chromium.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, enric.balletbo@collabora.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bleung@chromium.org,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  5 Mar 2020 14:27:28 -0800, Prashant Malani wrote:
> Convert the usb-connector.txt bindings file to YAML format. This allows
> it to be used in dt_bindings_check verification. This patch was
> born out of a patch series for the addition of a Type C connector
> class port driver[1].
> 
> An attempt has been made to maintain the same documentation text and
> example structure as was in the .txt file, but wherever needed
> modifications have been made to satisfy dt_bindings_check.
> 
> Also, update all references to usb-connector.txt to now use
> usb-connector.yaml.
> 
> [1]: https://lkml.org/lkml/2020/2/19/1232
> 
> Signed-off-by: Prashant Malani <pmalani@chromium.org>
> ---
> 
> Changes in v3:
> - Updated maintainer list.
> - Fixed grammatical errors in descriptions.
> - Reworded "type" description based on review comments.
> - Added more info to OF graph binding for port@2.
> - Removed address from DT nodes in examples.
> 
> Changes in v2:
> - Added type references for some properties.
> - Removed pinctrl properties.
> - Updated power-role, try-power-role and data-role properties to be in
>   valid schema format.
> - Added OF graph data bus binding property according to reviewer
>   suggestions.
> 
>  .../connector/samsung,usb-connector-11pin.txt |   2 +-
>  .../bindings/connector/usb-connector.txt      | 135 ------------
>  .../bindings/connector/usb-connector.yaml     | 206 ++++++++++++++++++
>  .../devicetree/bindings/usb/fcs,fusb302.txt   |   2 +-
>  .../devicetree/bindings/usb/generic.txt       |   2 +-
>  .../devicetree/bindings/usb/mediatek,mtu3.txt |   2 +-
>  .../devicetree/bindings/usb/mediatek,musb.txt |   2 +-
>  .../bindings/usb/richtek,rt1711h.txt          |   2 +-
>  .../devicetree/bindings/usb/ti,hd3ss3220.txt  |   2 +-
>  .../devicetree/bindings/usb/typec-tcpci.txt   |   2 +-
>  .../devicetree/bindings/usb/usb-conn-gpio.txt |   4 +-
>  11 files changed, 216 insertions(+), 145 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/connector/usb-connector.txt
>  create mode 100644 Documentation/devicetree/bindings/connector/usb-connector.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
