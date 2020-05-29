Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2631E72BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNRWtVEIxdWw6tY7iUthTGn6nqgtrO6WaMIbyr0LjkA=; b=Z3LvbZnVx/oK0Q
	aoaIWcZcLmfjXH0X9E8f+GIBDfXtK8OJVcLR9uVLxljPnOIYZJGXM/P+7DbSOL64TIO0kZlI1QUFS
	FIQuqPXfveLexrurDXUyabnGaeI7Ivf6vtqmRQ/PxL7YC0z1vjjGNdF/I749T3oRuaFh2mABRGgYR
	31l4AnCde8VWpIT6lGBGTsITlOsiCenLoHXVeHZ8hCVC7HH+f7ICSOO95AANgMj2o2RJsG1KuoGDU
	1kdCGjxJpL9N1y9VK4viDXAa5g+4ftux7Ujm+JjMp98mvgXwx0OziGz2XDN+FsUE6ZRH4ywOzZD/8
	jHI2qI/vgMLKgvqzLKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeV4H-0000J0-3V; Fri, 29 May 2020 02:48:21 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeV48-0000Ij-VW
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 02:48:14 +0000
Received: by mail-io1-f66.google.com with SMTP id f3so815770ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 19:48:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q1m9tKVJmiPkpjVJ9X5DnP4DoNu0eVPvuiZD1HFsVYE=;
 b=fmVg4Lge2D3548jDTrs7jChjfqV97hSbYmR0WXZ/B1tQK/Lwmos/YJBIpPwfAJMANT
 TVW1LPfP3McpFrq/zneG9rFtid77GMD/14pCszSnSdUfg3ppHLowcvmzn9FvMhGB0x46
 7K06+1jOSrJZ1Yrx2z/dQ3M0xV3BQ4N4SzRPJXYrvYdA/sZdQzYCHZ3tmMCiViDN5YYe
 yJuM0s6U/eVJGLVBWvHgjMF6m8JdGfRYYXihS0ChnFMA7lRwqIJE0XOIt5ro8FhCXv0m
 kgDeVEv7iE/z74YjexdWMyRzSZ/PmWl1FLjZXql1gV1cL/qosd7JWJHHDfl0wtgz+qpX
 3uZQ==
X-Gm-Message-State: AOAM531dXytiU03eAu1ipd7OeKKmZ4ahCVI7eDZ0biuwSA/QqgGKi+NR
 /OWD93WuvB7aSpphvkupJw==
X-Google-Smtp-Source: ABdhPJxWVCmMrK5zSnnEPmpXBj2Pl3iFgBmdHggvP7hCMu0TTF1lMF5Dkq3PsGMR/NV4Qy36bH3Aug==
X-Received: by 2002:a5e:d506:: with SMTP id e6mr5000253iom.184.1590720492161; 
 Thu, 28 May 2020 19:48:12 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id r17sm4248768ilc.33.2020.05.28.19.48.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:48:11 -0700 (PDT)
Received: (nullmailer pid 1170326 invoked by uid 1000);
 Fri, 29 May 2020 02:48:10 -0000
Date: Thu, 28 May 2020 20:48:10 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 2/9] dt-bindings: clock: Convert i.MX35 clock to
 json-schema
Message-ID: <20200529024810.GA1169680@bogus>
References: <1590650879-18288-1-git-send-email-Anson.Huang@nxp.com>
 <1590650879-18288-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590650879-18288-3-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_194813_012115_005F5AE5 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, s.trumtrar@pengutronix.de, shawnguo@kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 15:27:52 +0800, Anson Huang wrote:
> Convert the i.MX35 clock binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/clock/imx35-clock.txt      | 114 -----------------
>  .../devicetree/bindings/clock/imx35-clock.yaml     | 137 +++++++++++++++++++++
>  2 files changed, 137 insertions(+), 114 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx35-clock.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
