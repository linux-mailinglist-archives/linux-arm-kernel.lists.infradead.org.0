Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2E41E6CE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 22:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Vf3o5Lfe6gCt4DtfZA+uc2GFk/ZfaAnE2Z7AC94pZ4=; b=CnsFP5xe5VxQZd
	EMgfWFB79bmrT4M0HPqmR2Q/O5tgc7ymfpe4NcprdSNla+v7S7fx7fxq80iTDrGjTP/x5VWYjw05G
	2rjWIFkBNcwktH9GVbm1p+zTeryhSHpEdfnZIbU0WJIxmb3VtAwsADBJcJz2wKYf5Us12ztr3gGQ4
	/Nk9B0tEMzW/L5sf8LMWaJp7FauPS3VoUk0nOokfaIBBfFTHePFBYC/6rWWYjdJ32BgGiuGTju2Vi
	bSEV9WqegcNs+c4N7TT6cLZghHhe5ujlBlkbGzAvj/W5Su5gMnSrECVs+H1X34jN94wePClQ1q2SH
	V1HzPfbtaMnH3jtiS4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePYK-0002Vb-4l; Thu, 28 May 2020 20:55:00 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePYB-0002Ue-0b
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 20:54:52 +0000
Received: by mail-il1-f194.google.com with SMTP id q18so340515ilm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 13:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F7XQzSdkLERxE1acZynKbz0LO6ZEk9eeYt7e0P7o/i4=;
 b=OLKqit7lfGLA6HtENkV6IPXBHsH7ZaP1bj1qQk7RTm8Utd1bF3TJanSXrK/Dwx/Kr9
 1D/z4nF73Ize795hE0eoRZ+CifzEtWORij5+f5+KuYlpUtQwNRERt0LMSjZB+DkUWV/9
 oO9ydDduD+y2PpPSFjVOaJKthNJhwZqIfB4Y7QMiu5HDITahfxFJ1rxXbIAs1w+BWr/1
 kI3EQvlnjjIRl279SMxmkevkaGgtIksHzFbtjnUzjrMVG2WN5FXTXoAEG/u+07+e8Rfh
 UNPI1H0crxOiS9VGAKwO5Zbo8RjTDRPvf5zZC6ZTTwkqd2TGwqVh6kbGTX27YaTDNBLP
 3Aeg==
X-Gm-Message-State: AOAM531X2UQk4QUTXztqbYYqdXrLJFiUXoe2Ygr4lpeXg2zKndfH4KFG
 354dkVMbtr5TFSiMQyBj0g==
X-Google-Smtp-Source: ABdhPJwJ0d29vn4rlFs/ok0iRsHB+WCre4sY9IDtIjo+Gy98OKVrQLZryjqhEtVfFrk6ImB9DOVB2Q==
X-Received: by 2002:a92:c809:: with SMTP id v9mr4494438iln.209.1590699290028; 
 Thu, 28 May 2020 13:54:50 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id y19sm2957545iod.41.2020.05.28.13.54.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 13:54:49 -0700 (PDT)
Received: (nullmailer pid 658956 invoked by uid 1000);
 Thu, 28 May 2020 20:54:47 -0000
Date: Thu, 28 May 2020 14:54:47 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: clock: Convert i.MX7D clock to json-schema
Message-ID: <20200528205447.GA656972@bogus>
References: <1589813554-20929-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589813554-20929-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_135451_059957_CCCF3961 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 shawnguo@kernel.org, mturquette@baylibre.com, Frank.Li@nxp.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 22:52:34 +0800, Anson Huang wrote:
> Convert the i.MX7D clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Update maintainer's e-mail address.
> ---
>  .../devicetree/bindings/clock/imx7d-clock.txt      | 13 -----
>  .../devicetree/bindings/clock/imx7d-clock.yaml     | 64 ++++++++++++++++++++++
>  2 files changed, 64 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx7d-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx7d-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
