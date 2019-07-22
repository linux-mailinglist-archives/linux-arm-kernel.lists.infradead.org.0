Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436E570DC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xTM2Y0M3wFW+A2cxtaZqX8eq8VHBxe/e4Zov22ics7E=; b=cArhNnoPui0jB7
	5aRy58qQ4WnXuA3KbzBQebOrRKTyd1n0/HUoZ4MvprZUZjFfLl0GyrmI1PIqTYdwHKNkTkjgjDhrQ
	CVZWfQcVx7XSShblp0AwllpE8l3lgN2qYJHkm1MWtveoznvU8AFU1WEI4Aq6SChvhbC9m0/Apv/HB
	AjbuNfIEdItxp+lEU0XATFKzATpZ0j+ouax4Dqk5eIxVy15OKNt0V9dRdTv6qa10TUnWG0Vze0SXa
	YDIzIoIH0D5tt0P2kkz6fIb5HkZB8An98yaGfYcwK6EtIeuHkVjBuMiclxyHFFB1IIagXses7r5Ne
	X7/egtCoEhGGEqUt++jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiA5-00009y-Hi; Mon, 22 Jul 2019 23:56:09 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi9Z-00007Y-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:55:40 +0000
Received: by mail-io1-f68.google.com with SMTP id j5so73766146ioj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:55:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vqJ5d9ZQlPSxepkXpdg9L0L47AP0FG3UApIywG0tHP0=;
 b=FQ2DYIChXRtQ9Qsusza0sfe1vqBp1dKLwh4wVLQsG2og72i55ewdUYQ/IPHFgyQT8L
 Zlx5IqTgjnUH2rzqlerrB1kLi82tIqpYZfoHimCV8kPED5HzyQ1OflbV01ObbbrBv6of
 85byyLUvqRRLCpSTwFJIfFEvk8lmyMUnbWgnWXEBV2LGH89C5HsO6TY9SmrcpQz6cIeP
 SqMHRctl34qaEH2dk5fap+DUQfzIKj3+j5agmSlGadnC9ztvQPen3WuUI3wLJNoX1reh
 IFWTBNZjfvFWz0KtqUhllKvAjN664929yvfhdlQQXmzNarP4M8n8SF3IBB/qDJM+xdoP
 naow==
X-Gm-Message-State: APjAAAURYaX52zxhNIZYKQ1dzroyned4GCoQDl+YV1NeDPsZpWpg6BHp
 fnogSs7D+0USvI/aPe1C6A==
X-Google-Smtp-Source: APXvYqw58MCXgfGnS9niRqusPKURAiF8Clqzetlow7uAqDRR7t+ARIZAti8gzv0k2RxJyHEpymaXCQ==
X-Received: by 2002:a05:6638:281:: with SMTP id
 c1mr75013085jaq.43.1563839737044; 
 Mon, 22 Jul 2019 16:55:37 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id c23sm34794384iod.11.2019.07.22.16.55.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:55:36 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:55:35 -0600
From: Rob Herring <robh@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 3/6] dt-bindings: thermal: qoriq: Add optional clocks
 property
Message-ID: <20190722235535.GA2063@bogus>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-3-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705045612.27665-3-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165538_111453_41B53C53 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, ccaione@baylibre.com, agx@sigxcpu.org, angus@akkea.ca,
 leonard.crestez@nxp.com, festevam@gmail.com, linux-clk@vger.kernel.org,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, daniel.lezcano@linaro.org,
 Linux-imx@nxp.com, rui.zhang@intel.com, mturquette@baylibre.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 edubezval@gmail.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 shawnguo@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  5 Jul 2019 12:56:09 +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Some platforms have clock control for TMU, add optional
> clocks property to the binding doc.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  Documentation/devicetree/bindings/thermal/qoriq-thermal.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
