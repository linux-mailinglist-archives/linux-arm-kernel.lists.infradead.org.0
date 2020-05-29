Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330711E72C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUIrLdYPTN61ftfAu9Xt9NlBbzQCCav2gJHnlhwmWYk=; b=XTaitdkwyYRx8j
	8vfUOfbwh7mFHNzvbCzvUYqg6kGooYxoofjnnY/wbODiiP+wsYxot27K4y/fTZhaW0s5+ln8SGFp/
	8oXQ9MkhsLgExxDCBcls4BiEmNpx1EBbdrxDHCuxiSyZfpYM9Ks4rCdiqfLGdZFWeUhnCwT4W4dd1
	38tqI8dFjrzkfkaX+JQCUJ3UBFDYbxomQP19VHFycwOXbEVhpexncQhTJkFoKKAPqSFUajsLRh9ew
	ombnHp7yV9Ix2Iehhsvtzj2Ri4Bv5NgQMP/ne2y5qogPRTxmxl850+aUoxSZD5997FLvk3m29A8MR
	SenROfB2le9ifrbHe9Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV7r-000473-2l; Fri, 29 May 2020 02:52:03 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV7i-00046m-2l
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:51:55 +0000
Received: by mail-io1-f68.google.com with SMTP id k18so830304ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:51:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=B2hJTTsHFtyJU4dEBhfj2siSRzajGaCQHW/RqcEB/Yk=;
 b=uIFSJ5/SwaRg97YTCqBYkN4Y4mFBFiv9tpJjn3+tYAk824S7ugWMxrV54YQhm5aIhV
 lIuAaObFYEHZNkRBdXLzr73MG93iQSIhNg0hJP+HBO1Cnt+ckwzrEL/x8SVeD9USo16w
 Y3bWytRPTglRD6l2hwsVcbCliRTgoFio9KjXOPiZrtwQAV0uG1DNAg98chHe0amIHnJ3
 ysXYYuAGXv47vLj23VZ6xOYLVP19S4XIeDvyFuEO9v4c149+ciDamq1fjOkz6o9W8vto
 wU5YTYWy+c1TaxnqtYEewQu07AeVwTJwcFcC9/d4k1yoOR6bDzzzwBREcVlBQY3MCyJI
 T/HA==
X-Gm-Message-State: AOAM530X7YvCr9d6InxYponjyQjtuYOmAeRHJFAftPw9zFkU/wAc/+W2
 t35BQdj9K+HPq3u3h/y1B7pcxS3G/Q==
X-Google-Smtp-Source: ABdhPJw6PmqgJ5xdIrW/3UYr6MdedPPQalvckWPH7hp4CFeAubFvrhDdmE6tJtOl8MOwfoEIvGETpA==
X-Received: by 2002:a5d:88d3:: with SMTP id i19mr5054087iol.194.1590720713435; 
 Thu, 28 May 2020 19:51:53 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s84sm4309500ill.5.2020.05.28.19.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:51:52 -0700 (PDT)
Received: (nullmailer pid 1176127 invoked by uid 1000);
 Fri, 29 May 2020 02:51:51 -0000
Date: Thu, 28 May 2020 20:51:51 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 5/9] dt-bindings: clock: Convert i.MX23 clock to
 json-schema
Message-ID: <20200529025151.GA1175609@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-6-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-6-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_195154_117902_3ADDC154 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, shc_work@mail.ru, sboyd@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:55 +0800, Anson Huang wrote:
> Convert the i.MX23 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx23-clock.txt      | 70 -----------------
>  .../devicetree/bindings/clock/imx23-clock.yaml     | 90 ++++++++++++++++++++++
>  2 files changed, 90 insertions(+), 70 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx23-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
