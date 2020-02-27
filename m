Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5711F172A5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 22:43:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gw+I2XSJO/HveBQKfeQe7xEzRihDf9pwmMuG6r7ZxWg=; b=FhOdBYTgqncAtR
	nNjNSNc6wgyhrbdTmQEElwybYk94G19j4oO2ihJ26pMUGUiZRSWrN1bg79Y1ZrNP00L6UbPtiVvbh
	oxHBxtYXqkZqAeOS341NaOr9mhXp8JB+rjb2Z4P53+ygsAuR8DdA38ojCCeifDvSpyagHqjhPOpx5
	BawXwHIedocbbsJTwE/JOKwEvxahNZH15+c0w3yQcv+ycFmFjMW4Sh9vX0jAY+zTgWgAWWzEJiLVs
	eK7sBwdaCxaccrvhEkPUIuB4Cngq5E9mSeISMXgqwZm+TQVBWb9xjmoegzMA4LzDiGI4H+Od5zIo6
	o7QjURQyhai+crFEJ4lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7QwD-0001A6-M4; Thu, 27 Feb 2020 21:43:21 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Qw5-00019e-3t
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 21:43:14 +0000
Received: by mail-ot1-f65.google.com with SMTP id x97so657305ota.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 13:43:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XEnD8TdKVqIu64W+GQpQmvs4MDvwdtUaMqdLh54wz1E=;
 b=YbGn53uzJykBGZFUmfiBkbfDx/Pw3zVEhL9V/RS/oP0tIGeLLecZY4rixnZk42W2Zc
 Gjtc74m8kAL0TE1jbyVPhgfHnVqpEnz1/xdSoOzk78++aqOHKhWo2Ozi5LzxZ0Oevz1G
 cxgM+7sm1/HenlilO231G1Nerc9lRyKcFaOVnjDFfh64WuwIwRRlO82QSlLjbG1uE30H
 96aG5Q/xw0odyx8ju/2hx+rVZKzhGBJE6TAM0UapCkwdL+oZdN4m9Zrj5o7w3cyn9h3b
 K16Y+cI6i4KYS67bwKpSokxZc8pBp8pjM14lpd3ErKIhgcLvHw1jqh/S1MLIGfW6Emqe
 giPQ==
X-Gm-Message-State: APjAAAVMkvrlpniBAM1qLBeAbKAGtUe2V68U/NW6b27lIjFO94S24lNc
 3IsvjH02KlH0/AtOaOdZ0w==
X-Google-Smtp-Source: APXvYqxLWh19a+bfGPEv9RCTwVytLpC5q2dw/nc7vSat1aAdkrr7hOvb+jV6MhiVTJ1aHFLBPRIZYw==
X-Received: by 2002:a05:6830:184:: with SMTP id
 q4mr799194ota.232.1582839792251; 
 Thu, 27 Feb 2020 13:43:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n2sm2376537oia.58.2020.02.27.13.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 13:43:11 -0800 (PST)
Received: (nullmailer pid 3683 invoked by uid 1000);
 Thu, 27 Feb 2020 21:43:10 -0000
Date: Thu, 27 Feb 2020 15:43:10 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 02/13] arm: dts: calxeda: Provide UART clock
Message-ID: <20200227214310.GB26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-3-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_134313_154141_26B49F8E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:21:59PM +0000, Andre Przywara wrote:
> The PL011 UART binding requires two clocks to be named in a node.
> Add the second clock, which is the bus gate, that just gets enabled.
> Since this is a fixed clock anyway, it doesn't make any difference.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/ecx-common.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
