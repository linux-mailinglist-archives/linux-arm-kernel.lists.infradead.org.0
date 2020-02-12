Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6828159EDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 03:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NG/PG+VmJQMEjSTe/4kq0YnEOJkx+LQeY2VBPrkmJ2w=; b=QXpH1HNUoVGhIr
	hnSWNnmwqVo24Lo30Aqq9e/syJ++a59rAK/3/R74Hwj1Hl+RGqmwY9V3vAKUCd851/4+He8ovNR47
	FRxXDn5qXwDi1rSHFZOdw2O0UplgPtSHGF6vVbP155BgqdCD1IzcCjqadR1+17Pelmaf5hWbDPQKe
	guVHSvWp0Z3cyGjGd3PgSArUi+RW33ZCSAHdAYnFVvFyLa697h3KQNvC5viODdCFH86HSpr+6pKxD
	i7oo8s/5RqIttk/Y9kdk/NKvBN46x0TAy0F+P2EnxvWCWvZ+IELPGnAsnWT0O5cW2I7rZKJsJhvMP
	pJ5r4CZTYfNxjMfDmNsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hKN-0001DB-J4; Wed, 12 Feb 2020 02:00:35 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hKG-0001CY-5k
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 02:00:29 +0000
Received: by mail-ot1-f67.google.com with SMTP id 59so324684otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:00:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jqod8cU69ry9qG3LojCpBl21hmbku6HkUFKcyniElVE=;
 b=ue3sZrX1InbrxzdXhP4gD1pJK0Fbe/b/J8Ef+/OuHkSTdDzE6kNGlvHBDCvB3+DJoZ
 b2kqT3v/oYoveCCH05iisIwgGQizRHTY+uapfN9GD/4RAygXFpBl3KHFrxu8PgeSPwoh
 jD8ZaSvfMm6XoofXH0m8mBui5zRFu6sqYNh3bc4K52Ks02m9Q8pWeOzjwrNYC5DCa3vr
 HNs0G/wR5e88tmv4+l1G08WJrLrORr09Rzu1bSR1a5+JPXGVW8S8PjVVRqwqhtC6T8tG
 sKRncJCAXRTRNqYi6qTnLLMV48cBTNUaiCrxF+/pEAalpUaHgDvu/OsiZA3VPEJDQZTD
 wJqQ==
X-Gm-Message-State: APjAAAWQLfLv/t6PRScjNTtxilh7I8rluHiehFdZ0G+t0ybCKV5cbejw
 kOx8ET3+bzorZgEk5ooxcQ==
X-Google-Smtp-Source: APXvYqwcvyc/bDrzO7PYwZ9Gw6qyT118/V2dmcyG16awFTuze1a1Y5CAiNgAKs/f4t4BnTQMNMjxKg==
X-Received: by 2002:a05:6830:1f1c:: with SMTP id
 u28mr7747677otg.143.1581472824903; 
 Tue, 11 Feb 2020 18:00:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l207sm1737003oih.25.2020.02.11.18.00.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 18:00:24 -0800 (PST)
Received: (nullmailer pid 17647 invoked by uid 1000);
 Wed, 12 Feb 2020 02:00:23 -0000
Date: Tue, 11 Feb 2020 20:00:23 -0600
From: Rob Herring <robh@kernel.org>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: hwlock: Document A64 hwspinlock
 bindings
Message-ID: <20200212020023.GA16678@bogus>
References: <20200211122624.16484-1-nborisov@suse.com>
 <20200211122624.16484-4-nborisov@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211122624.16484-4-nborisov@suse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_180028_216275_58865035 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Nikolay Borisov <nborisov@suse.com>,
 mripard@kernel.org, bjorn.andersson@linaro.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 11 Feb 2020 14:26:24 +0200, Nikolay Borisov wrote:
> Add binding for the hwspinlock found on Allwinner A64 SoC.
> 
> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> ---
>  .../allwinner,sun50i-a64-hwspinlock.yaml      | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.example.dts:21.28-29 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/hwlock/allwinner,sun50i-a64-hwspinlock.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1236266
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
