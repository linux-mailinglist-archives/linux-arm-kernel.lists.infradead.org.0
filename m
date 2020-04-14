Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163511A8F3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 01:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkMMIx5mDMKU2kmSWxl5F3ZuFRbkjP43XQxmu9qdxg4=; b=p9hQKe3KXBRFLq
	+cVBy++9/OlfzRWXh50LDz+6Vxs24rsZDPERxNE/+MaJbmj4erqNZ+lhIzbrFfl03vhCAuZ7+ios2
	AAkONOdLqVewbjua14mFvqXO2tc+hWmLuDuJTe6Wig76iufO6f1xKpCzYRmYTBlJCjJcniBt88QLR
	UkCE/RVrn/Dzo6BW3SjhNsyi5Z54+Wr4mbTID9GkkTGepUNILYw3MzyDiCa7BKxetM0Hu7QqcX1p7
	dYfnGWBocOdSlF+HzEiIoaEbnAnmyV2LrZbKMNQZaSjeLiYRVwKsTBdnkiqTwfNTIkW9hg10IiF9C
	QYkfpWX9rEEVA8MKf6Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOVGE-0000AO-DO; Tue, 14 Apr 2020 23:46:34 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOVG6-0000A1-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 23:46:27 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so12025620oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 16:46:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8xSRt0kOxv48xywgi4ujHIQh1bkXuUAWN4jdwbwVrmg=;
 b=o9jI4XMKo++irge1EZu0L3RyFsSNtI6GfItGqcjc6T8AFRv68MXxC6gX8/r5n57Nhj
 xeNpR9iptRpNOGAPZe+g7Bah+vYYEPx3gumYi/1eXXRo9Wb28MHozrVmlkiLl+ZcwAGB
 iWDe4jDwOYU6xQEdhN4ij4a2LuzVrKpY0YfoqKde4DsCYBSG/zuXflXkM5sVSVmLvgNf
 nNqFXF9ZaWR1IkJ1dI9pVf9M99aeEQAWB2ZtimfkVNma5aai9EiOhPAqQ4EGrDSZi1II
 YnDpUbW0ue4qK0mtDGPGJNpaXlyl1zu7JdeQRdVeIhH03tKDV6TjCgSgCkZKzY97luj3
 Ce2Q==
X-Gm-Message-State: AGi0PuZhbMqHYypOUGBNqd1zhFVg9k9KuJPO/hYFh0LDkUaDh1KfYN4x
 7LLRwWtHme/a+PTeAJX7dA==
X-Google-Smtp-Source: APiQypLjJgia8DtwmXlglhQCkIfrCQUjRk7EaaiM7wZQW5xPrKj1csIO6d+59LYkgp2CRhzOkOeC4w==
X-Received: by 2002:aca:3106:: with SMTP id x6mr5969478oix.94.1586907985808;
 Tue, 14 Apr 2020 16:46:25 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 76sm5895152otg.68.2020.04.14.16.46.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 16:46:25 -0700 (PDT)
Received: (nullmailer pid 22578 invoked by uid 1000);
 Tue, 14 Apr 2020 23:46:23 -0000
Date: Tue, 14 Apr 2020 18:46:23 -0500
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 1/8] dt-bindings: interconnect: Add bindings for imx8m
 noc
Message-ID: <20200414234623.GA22499@bogus>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
 <8b341d91e9aee679ae69feb22a2c842b2aeb2137.1586174566.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b341d91e9aee679ae69feb22a2c842b2aeb2137.1586174566.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_164626_731033_05BD8BC6 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 Apr 2020 15:03:06 +0300, Leonard Crestez wrote:
> Add initial dt bindings for the interconnects inside i.MX chips.
> Multiple external IPs are involved but SOC integration means the
> software controllable interfaces are very similar.
> 
> Main NOC node acts as interconnect provider if #interconnect-cells is
> present. Currently there is a single imx interconnect provider for the
> whole SOC.
> 
> Other pieces of scalable interconnects can be present, each with their
> own OPP table.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  .../bindings/interconnect/fsl,imx8m-noc.yaml  | 101 ++++++++++++++++++
>  1 file changed, 101 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
