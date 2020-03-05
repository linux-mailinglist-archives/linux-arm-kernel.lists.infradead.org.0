Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17C117B13E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQ6bcwhupO720uvIpuTiCxrx0eqB08RMEMIU5q8gmec=; b=fm5GppofnjIOcb
	+lOY1LhwGGRveiJmWlcxyrQUuXYnUz3XRwMFiwnojepruu2851DbY0pUCk2MeFp0Bt6k7CKBSRsIQ
	QSB1e0pD8c1mta3RMFzvlYcimibwrq0ycjOCxeOgV3fKf2gDzfyMawortyoRAPI0/+U5r8OGdKDFR
	FVtmQv1hFcrGdxz6ce/ZJ7WRctYMc2Bq0JbSIMV1odJ7wAK3IVGSH6z5zMRuoQ/H5a5LMTudoDBjq
	jBhkrucbUXuMi6hxyWw0YRriDGv+EnO6IndQyzzb/uxNgvfXzkxUawNvRkJEMRWMnG0rMfVY/26dV
	1a7bckZGgMsRSGO52alw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yhG-0004mt-Qr; Thu, 05 Mar 2020 22:10:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yh8-0004m2-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:10:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id b8so3228042plx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 14:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wP8ZLcoVfjRLy2wd1F6p7whOnIttnSe9o981shhqduQ=;
 b=EW642PHINIK0QQBXUVu9+0zYb98h6yXBQ6W1ECVmuPNBpv+xTNekh/mPEorDGkXbrP
 8R/GZTy5gtZKaGotUgRHMrfabg8VJ1UKudix3XnEE4X0wo4xpwsNgzn259YyN7kdpphX
 +NkbZc+7O2mRuEKZocKBF4+CZJu68vbYYfirA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wP8ZLcoVfjRLy2wd1F6p7whOnIttnSe9o981shhqduQ=;
 b=OZRfXGlKlQ57QHKqXTbfAA+jRJvwsUdlz5cg8JrR2utpOlIxDqAGlOsX+3b6oPKzYU
 Go0/2ZiIlQYAkpGTPHy2FJSI4ou0A+F819/6+cLc4BSkw6OH8RgwKflYjIL1kKDAPVMp
 VcVkehtrNp2cPqv9Kn6osCVzVoLLxkqZdP3rjNtAXsZYyxmFElM+2+Zw9fAN9w/SULOo
 tUztFw+pGZE9OJ4UUDHsqL4rN5JXt2NDX2J16GmNxrGHD+xrq2tCk6qgY+2cd2edRA5y
 1TuFiJ74qEZMcVTbq1dPGqCWoOaT//foOk33nlIprmnojF8O6LAtTQYX8TRmRD2VVzCU
 W5VQ==
X-Gm-Message-State: ANhLgQ2uvfsDDGenrOCQeog7PSWnX6QXQl7e1IyiNhyma8YcCTaqgPO1
 sEseTk7PsCWKY5t4Xvzhmjj7WQ==
X-Google-Smtp-Source: ADFU+vsGiwCvQZPWkXv7TRZ4jmXWr6psRLovg1wV5hcbdmqIqfAlL8UTuWw6Uuwi0lyBRg1ClCAohw==
X-Received: by 2002:a17:90a:9416:: with SMTP id r22mr293883pjo.2.1583446217711; 
 Thu, 05 Mar 2020 14:10:17 -0800 (PST)
Received: from google.com ([2620:15c:202:201:476b:691:abc3:38db])
 by smtp.gmail.com with ESMTPSA id q9sm32286268pgs.89.2020.03.05.14.10.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 14:10:17 -0800 (PST)
Date: Thu, 5 Mar 2020 14:10:16 -0800
From: Prashant Malani <pmalani@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
Message-ID: <20200305221016.GE142502@google.com>
References: <20200305030135.210675-1-pmalani@chromium.org>
 <CAL_JsqJcJf0JZVHEuY5y0eHLyw3e0Wr2ZDJvPs4=cZaSMWg97A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJcJf0JZVHEuY5y0eHLyw3e0Wr2ZDJvPs4=cZaSMWg97A@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_141018_478836_B2540946 
X-CRM114-Status: GOOD (  23.77  )
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 2.9 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Benson Leung <bleung@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Kindly see inline. Thanks as always.


On Thu, Mar 05, 2020 at 03:29:00PM -0600, Rob Herring wrote:
> On Wed, Mar 4, 2020 at 9:01 PM Prashant Malani <pmalani@chromium.org> wrote:
> >
> > Convert the usb-connector.txt bindings file to YAML format. This allows
> > it to be used in dt_bindings_check verification. This patch was
> > born out of a patch series for the addition of a Type C connector
> > class port driver[1].
> >
> > An attempt has been made to maintain the same documentation text and
> > example structure as was in the .txt file, but wherever needed
> > modifications have been made to satisfy dt_bindings_check.
> >
> > Also, update all references to usb-connector.txt to now use
> > usb-connector.yaml.
> >
> > [1]: https://lkml.org/lkml/2020/2/19/1232
> >
> > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > ---
> >
> > Changes in v2:
> > - Added type references for some properties.
> > - Removed pinctrl properties.
> > - Updated power-role, try-power-role and data-role properties to be in
> >   valid schema format.
> > - Added OF graph data bus binding property according to reviewer
> >   suggestions.
> >
> >  .../connector/samsung,usb-connector-11pin.txt |   2 +-
> >  .../bindings/connector/usb-connector.txt      | 135 ------------
> >  .../bindings/connector/usb-connector.yaml     | 203 ++++++++++++++++++
> >  .../devicetree/bindings/usb/fcs,fusb302.txt   |   2 +-
> >  .../devicetree/bindings/usb/generic.txt       |   2 +-
> >  .../devicetree/bindings/usb/mediatek,mtu3.txt |   2 +-
> >  .../devicetree/bindings/usb/mediatek,musb.txt |   2 +-
> >  .../bindings/usb/richtek,rt1711h.txt          |   2 +-
> >  .../devicetree/bindings/usb/ti,hd3ss3220.txt  |   2 +-
> >  .../devicetree/bindings/usb/typec-tcpci.txt   |   2 +-
> >  .../devicetree/bindings/usb/usb-conn-gpio.txt |   4 +-
> >  11 files changed, 213 insertions(+), 145 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/connector/usb-connector.txt
> >  create mode 100644 Documentation/devicetree/bindings/connector/usb-connector.yaml
> 
> 
> > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > new file mode 100644
> > index 0000000000000..b386e2880405c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > @@ -0,0 +1,203 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: USB Connector
> > +
> > +maintainers:
> > +  - linux-usb@vger.kernel.org
> 
> Person please. You can put me if no one else.
> 

I will list you as the maintainer.
> > +description:
> > +  A USB connector node represents a physical USB connector. It should be a child
> > +  of a USB interface controller.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - usb-a-connector
> > +      - usb-b-connector
> > +      - usb-c-connector
> > +
> > +  label:
> > +    description: Symbolic name for the connector.
> > +
> > +  type:
> > +    description: Size of the connector, should be specified in case of USB-A,
> > +      USB-B non-fullsize connectors.
> > +    $ref: /schemas/types.yaml#definitions/string
> 
> Needs to be under an 'allOf' or the enum is ignored.

Done.
> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
