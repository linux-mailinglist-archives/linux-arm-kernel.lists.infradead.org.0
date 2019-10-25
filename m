Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AFEE51E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p34aeOk6F1UGI/39Zfb2r4uv1lHUZ+Fdbc2IAJJqOqs=; b=Y5OD+JrPVmgw88
	LGomSYY8j5cWX8deDiHUt1ewnCZyCfI3Xvn2Uvi7adlChe3uSHDo6f8x3TjjF1xovrJ6xgV9agB9m
	ss4t7XSx5ZNfywjchhDkJkan6o4NbBM1YRopJ4a6td20siW0u6oSNBWVj8e3SUpSwBnPrOfkZ38iN
	19ujqcFqnTdhaOEOLnqU1+43pzEBc+o6RHU1vUePGxiAhnUhdzlP45vF9ml8r2POVzrR8tRSC1El1
	UAT9UJJuobfw2OiyzMpixpn08MCeAbP5bVYSYmZ3zkAomy+rDJ4kgdisMRO6gg1L2i4IAX/cdtIro
	nDK1l0I5iqcncXJILofQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO31y-0000d9-3F; Fri, 25 Oct 2019 17:05:42 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO31n-0000cT-5t; Fri, 25 Oct 2019 17:05:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id 41so2502812oti.12;
 Fri, 25 Oct 2019 10:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1AgdABbWJsmP+A2yUEZpKyjJoywiJ/30OEkpvdzMQXE=;
 b=h5jYSbC9TVLIxJpYSuJKKTpJ91NPTIXo5tnhWfjFeWlhlpC/mpYT62RUjrFIpoeGgy
 ZuvfI3xacHaAKi5xignsKWkqp743Tq8ej0qy0HVhRPUmPEVh4gL4IuenzZYqLsW4uLoq
 Bs2dYC9UlodMnG6nc3WOeYy/UILsQnK+B+2/6M/jxT4HisnX4BxvvsULv06+teNnCwxz
 K5vmfObHaIG3P84Nm7R9SAeftjU1m6VVczzKaOi8+V8k2AyhcAajX/ODs0q0E+LKQdrS
 MydMJla0sccpgiiLRfWXmgnZRiNCm74pXpATWOVAbVXayKL1f+0c7SfT9WIJ72wLvioE
 7+GA==
X-Gm-Message-State: APjAAAU3zSviUHDlLoo6vWv6YPzaL0/gZ+jbgjmrjcPDmWoonQP/8Jrj
 B9nJ3IR1ajlkrNeQ+DiT0A==
X-Google-Smtp-Source: APXvYqzAIN39CFwejymy8N75FlRSEB+gx7AUGQuhXy4lYkgVhNH9amWjIoeuN/NJ45wpnUM65WYw2g==
X-Received: by 2002:a9d:6f17:: with SMTP id n23mr3512605otq.54.1572023129944; 
 Fri, 25 Oct 2019 10:05:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a21sm702920oia.27.2019.10.25.10.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:05:29 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:05:28 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 1/7] dt-bindings: sram: Convert SRAM bindings to
 json-schema
Message-ID: <20191025170527.GA12121@bogus>
References: <20191021161351.20789-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_100531_217731_1D0D7E99 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 18:13:45 +0200, Krzysztof Kozlowski wrote:
> Convert generic mmio-sram bindings to DT schema format using
> json-schema.  Require the address/size cells to be 1, not equal to root
> node.  This also fixes the check for clocks property to be in main root
> node instead of children.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v3:
> 1. Integrate Samsung SRAM bindings here,
> 2. Move 'clocks' one level up (error in previous bindings),
> 3. Add 'additionalProperties: false',
> 4. Fix names of children in examples,
> 5. Fix children nodes address pattern,
> 6. Address other review comments
> 
> Changes since v2:
> 1. Add Rob as maintainer,
> 2. Use "contains" for compatible,
> 3. Fix address and size cells to 1,
> 4. Add maxitems to reg under children,
> 5. Remove unneeded string type from label.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable).
> ---
>  .../devicetree/bindings/sram/sram.txt         |  80 ----------
>  .../devicetree/bindings/sram/sram.yaml        | 137 ++++++++++++++++++
>  2 files changed, 137 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/sram.yaml
> 

Applied the series, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
