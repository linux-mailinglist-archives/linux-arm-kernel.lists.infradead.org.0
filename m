Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FB9190040
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 22:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cA6pP3Wi3m6hXEfn/Km3l5BrixY/Gs8Odhji5xDJiwI=; b=HAKOcRWiEeXE2V
	BkuiaZy8Rh1E7xX7CQ9rGNDcKzt19YecF0WG39bmr77xi+pzjDtYAz+xCXGcwTaC9sz7rXSftJF7J
	1BUE4iQGbbovRvrxDkI7YgSfo+iiQKhFs7Cf+qKi94hagdJg4pNYwBgeI5YkRBkNXMtoaIFxUNoHi
	qa9u3JEcqkXc1xUVkPDj15fxQdJ/2yyIDF3GDeE9zfn1v/ATH4xvzYxuAJ6OG9dPFUqevuKRWs2cu
	r6S6MExhJlhtvyYvKl7K9FxArDYLMExoBPPaZMTSwV9E8e2vASnFpRVYZyilI5OB1OqgMYVEJc8qi
	0uR60F30NzHc/1Epk41A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGUbW-0003bN-UC; Mon, 23 Mar 2020 21:27:26 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGUbL-0003aE-9d
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 21:27:17 +0000
Received: by mail-il1-f193.google.com with SMTP id g15so5666482ilj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 14:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lw7508pxSwFWdZ6GgiPhJPtehr+dVa5xWRm6kEQBC3U=;
 b=J+s5ABpXQLfjczDkLhjwOJKPrBNIPLfnobMswEXA22HcnTEcgUJdDUiv2NapnmQeu4
 G80ZxxJycqy8aHMRwbm1lTxAhofJwH4YKw5JuRWz0ZgLkNRuXbCoWwy9rB66E1iGPXFv
 MEukcUhEOJgLzd3hWaA8eLzLnS4PTmPk5XCZfiU42xUQ53wcNu3n54lDHtst/vhwgi+V
 6IlJuzeTiHqpenuK0/B77wIzEANMX54r5GiVomTY2uw7FJ7KegpRxoFqLWeZjBfRrtxe
 rCaC1w86HLsnu0zPgpOYSFr8oFCdXZLIiaKtiZtHXNLfRTBXr7XUarPtyJjcsX3XU8tG
 kTkw==
X-Gm-Message-State: ANhLgQ3KSb8Ij7Fhlmqgex6eOuwjl5TYcFVz17JRPK/9AB/K4hySHYZJ
 9mzDEIJxMprBVlm5Azdarg==
X-Google-Smtp-Source: ADFU+vs2Uyo1ZpCwKXkQd76bn4sXAFZC1wLEqEru6Weyzn2F3XdHL9ui98NABrGBYJblP8ZmXm+p3w==
X-Received: by 2002:a92:b61d:: with SMTP id s29mr22883085ili.66.1584998834315; 
 Mon, 23 Mar 2020 14:27:14 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id p76sm983942iod.13.2020.03.23.14.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 14:27:13 -0700 (PDT)
Received: (nullmailer pid 14521 invoked by uid 1000);
 Mon, 23 Mar 2020 21:27:11 -0000
Date: Mon, 23 Mar 2020 15:27:11 -0600
From: Rob Herring <robh@kernel.org>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [PATCH 1/2] drm/panel: Add Starry KR070PE2T
Message-ID: <20200323212711.GA6856@bogus>
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
 <20200310102725.14591-2-dev@pascalroeleven.nl>
 <20200310185422.GA22095@ravnborg.org>
 <280a128711458950b55b070dbf6f07a1@pascalroeleven.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <280a128711458950b55b070dbf6f07a1@pascalroeleven.nl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_142715_338786_0C2AAF4F 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:23:27AM +0100, Pascal Roeleven wrote:
> On 2020-03-10 19:54, Sam Ravnborg wrote:
> > A few things to improve.
> > 
> > The binding should be a separate patch.
> > subject - shall start with dt-bindings:
> > Shall be sent to deveicetree mailing list.
> 
> Hi Sam,
> 
> Thank you very much for your review.
> I did consider this. The reason I combined the patches, is that the binding
> depends on the display so I thought they were related in some way. Didn't
> know the correct procedure to handle this. I will split them apart in v2.

FYI, checkpatch.pl will tell you both bindings should be a separate 
patch and that they should be in DT schema format.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
