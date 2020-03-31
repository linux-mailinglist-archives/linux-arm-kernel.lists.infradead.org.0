Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B933519A19B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 00:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sp6Zyinj6q9aLV0jpIbe30b5wKNAPCjNQq13qeRcV4g=; b=ljOW4A9Nff0gj7
	f/5s0+KTMg53yz6dvc6dsTQlLIQ+K1P5zxBNm7ukvi3wChcJlS0PB4Sp4X4XdQJS0KuqUmnGprSl2
	Gk70JGxhOB/yLhmnuEFJY31vcCK5lcR7N55Xekrdce2sMm93q0OLtdMa9h7iOPMcPYtfUTis/LtGL
	SKpgwVDwB/zNUHqogFbrHZ/4d07493BjcIU5tJtdNDtE34YFV+RVLGVa/HFJHxBodu5BjSSU2EPhC
	fQ8NfQRvYt0z2LqD2/EKB/UTwC8pmYcyqv0D4qk8zWj3vPkr2GJM8QSeE0p/QhBhJE0YzRViTZe0m
	o1MUXGQQZfcDDYH607GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJP16-00088J-5y; Tue, 31 Mar 2020 22:05:52 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJP0t-00085d-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 22:05:41 +0000
Received: by mail-io1-f66.google.com with SMTP id q128so23423469iof.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 15:05:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rOIfNa9jSDYoTkdrnG0D+oJgScAuNFcwTbvGHk2M+5Q=;
 b=YozkGma3vasW/NJCLzGZUAcqGbwJ39P9Rms4B4DGpSgRdKE5WswgOrJ1GeYp6w+4Vx
 9F6zgatB+AHFgN7mSI4T1leSWD+kX3AgXWmO/AbWYSFfs/U/hSMQ33frEJ+LE7nHY5cb
 iu/Gp/OQDAULuhGFUo4IDrnadhLlJALFSoHrYGZLw3hn3GfOFCyuQl+2IW/dZGu1CUng
 n4gAJK1T/kJDgZil6IXzRFXTWklq6luOWR+uALcMc3zdhXbWsZ8exVNwtf7+R8mjbptb
 4976M+NLkZdL3HKJWOfFvULxkzaBjLFZlaPc5neLtL1rA6ZQJOIytwTksDjQdLBwjgic
 6jFA==
X-Gm-Message-State: ANhLgQ1u16d3HYxQPk3BloVCIqnGavqJgF4K/6rrHUeB5XLWuwN84d7K
 ilZ0UtSb2nXCkqfiFsBY+pol4WdJ4g==
X-Google-Smtp-Source: ADFU+vsYaihj3BeOAMA2dZQ0vbo9icSYSvG7WTj4zQz/949WwYlUKMhl4yzmFbTx86K+/WBDGD7Ctg==
X-Received: by 2002:a02:634e:: with SMTP id j75mr17812133jac.23.1585692338870; 
 Tue, 31 Mar 2020 15:05:38 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id z13sm45525ioh.16.2020.03.31.15.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 15:05:38 -0700 (PDT)
Received: (nullmailer pid 29406 invoked by uid 1000);
 Tue, 31 Mar 2020 22:05:36 -0000
Date: Tue, 31 Mar 2020 16:05:36 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: power: Fix example for power-domain
Message-ID: <20200331220536.GA29336@bogus>
References: <20200326105626.6369-1-ulf.hansson@linaro.org>
 <20200326105626.6369-3-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326105626.6369-3-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_150539_621713_2844A343 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 11:56:26 +0100, Ulf Hansson wrote:
> The change that converted the domain-idle-states DT bindings to the
> json-schema, forgot to update the corresponding example for the
> power-domain binding. Let's fix it.
> 
> Fixes: 3261227d136d ("dt-bindings: power: Convert domain-idle-states bindings to json-schema")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  .../bindings/power/power-domain.yaml          | 28 +++++++++----------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
