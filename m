Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F07123C94
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 02:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsJU1Jv2utRQH9SzfpmeDuOrOiQuJO4sXqrH/qp4AYY=; b=QDIwXMaVeQzQ9a
	xYdh4PfCv+Fu6lBFHko2zQzHbx3YogEjsMqroi4FFg5q1bMRu1dYJ1W/aNf0e5TR6c81ELHQag4RU
	DE/HlxHQDw7XYO81H50t44L5g7qQeG673vGiSbRy0F5I/zRMh05pHmGOcDddbTlV4GHAJLyeBw0D5
	oRGqMOzOJKWJ1uNYfG1fhJ7KYlDb5od5EtgEpdO1cFHESQfzNL3Fk61t7ALHKN5T7VCFSAqe0yv5k
	ix2LjpGFXALuO4dlHze7RVovxrurdGykXwQJD6XsHGwOttKNdedcyB5PmtGajhTz+LJA9+Y+6PsON
	qXpx6tLJ58Jh6hTIaaUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOMU-0001oT-Sf; Wed, 18 Dec 2019 01:42:50 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOMM-0001o3-08
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 01:42:43 +0000
Received: by mail-ot1-f66.google.com with SMTP id p8so312060oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 17:42:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Hey88KKmqccjKqtYDugzS1dzdOd1DvBoA8w9szQUp2M=;
 b=S/T0pfcvvn9V/AxkYLghAkd5j5Jz7vJNbhgMEOO9kCL8dV/cvonwyubwGtGPug222D
 QhIvn2YXOPri++KPQG9UHYrRyYZzI55+I7RLgI5IpIwGsok9wYxvWgmNWGdB8SQvMLYZ
 2lQYF6eh3PZbTD15Suct+tpVtoDShsquqIT+sFUpsWLsJRcUZdTp1QcA2j8zwQQPNS2H
 /0HC1C7ONRGizXIkVnXsk4U9rPcnyYlKXCd6WSZCfM/SZFceLpGl+ouV6cXQcSvJEAlf
 kaMydGOGnsmZLA4UFcJRB1FPqac3cbn/8GTsqvcdqRqUPvq17Y5qUqSFc76mtbY9G5Ga
 p6pA==
X-Gm-Message-State: APjAAAVt82o+lDnKfW/EZa58U0RdbjRuB3Q1yhlJtH1s9sBAm0Od7qoa
 PiKq0kIf0TbS8LvOLTPlOQ==
X-Google-Smtp-Source: APXvYqwNneN4mJ5aJMqo5eilggPAFxYYbiSOKo2ZT++DojHIE81WFPWqbXf+gsMEkKMJS+itFE8zLg==
X-Received: by 2002:a05:6830:9:: with SMTP id c9mr311021otp.94.1576633360907; 
 Tue, 17 Dec 2019 17:42:40 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a17sm220157otq.49.2019.12.17.17.42.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 17:42:40 -0800 (PST)
Date: Tue, 17 Dec 2019 19:42:39 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 2/4] dt-bindings: sram: Allow for more specific compatibles
Message-ID: <20191218014239.GA31784@bogus>
References: <20191209093441.50694-1-maxime@cerno.tech>
 <20191209093441.50694-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209093441.50694-2-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_174242_039375_0493F6EC 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 krzk@kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  9 Dec 2019 10:34:39 +0100, Maxime Ripard wrote:
> Even though the generic mmio-sram binding has a list of the sections
> compatible allowed, most device trees have more specific compatibles
> attached to those generic ones.
> 
> This creates warnings at the moment, and we don't really want to cripple
> the generic binding with all the vendor specific combinations that would
> prove to be hard to maintain.
> 
> Let's allow additional compatibles for the sections, and then we can have
> the vendor-specific bindings to reduce the scope of what's allowed exactly.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/sram/sram.yaml        | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
