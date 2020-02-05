Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE04153590
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0JMEoVAY1eiLviwM0oKXPVEnlTkTpV3od5N3ou2pIA=; b=leaDt7Q9c4JaLX
	3NrsG0vlgh1r1VwMzoRP21b8TYeWMvV8yDOYuqYNrv5VhQeBi6ec8NztXsJ7YlcVZ2Hq4if0fmy8t
	6QLM82uFYAjw5wH/GsfvURj035IzzrwAXn7zg+BeauxDKHqjTUfGWlJTSdd6W0L3Kwv7X850UvNH0
	JnIEy4kTWUwCsPS8sHEMfekctBqPv13GDVtnJU5q0FvvHZkThZPAWgUce0q1iq+/+MYiTl1jOP7n1
	nGfSFsz2Y/2FeKXCu5Wi7uOm9fhUAjxw99D49jZhENgeIShY8ywzVZkx9tE4x2oyk7MklR9tKoT8A
	FZPUIs5Pu1jrFfQicdpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izNqT-0001to-ER; Wed, 05 Feb 2020 16:48:09 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izNqM-0001so-NS; Wed, 05 Feb 2020 16:48:04 +0000
Received: by mail-wm1-f68.google.com with SMTP id p9so3239125wmc.2;
 Wed, 05 Feb 2020 08:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sg+9y4ZuDI4laj7uyhA1zY5m32IMeo2ETRsWzCEEVrk=;
 b=D+DMtq7hqxh70XLnZgC+8+fBa2j9YwZ9exJWhwKeKzhj5ljcjSMx6DanXL9I09PXha
 P29t2VwF4rRKJKybnS9iauSf/O3l3im+nxWI8YYCRTzBJW9ocN/kXcvCO7brCi0hD6eu
 qULovwzEIEBjpNGBTW9sTXP7f7zlRaoDn++m/3HUpN6K4H4ysopH39DJ2RO+jwRrH0x5
 9q6RISiKJJ9q1Kd/MH1nnmqSn8NBxDpjaUiLOo5lEFh1ZsqDJRZ3PpujunYbDJTI9fR4
 10lcDz5QNJz8y8PmWPcxX/GqcboTm2ds71joGxxD9aF2ccgyMwcZwmI820h6nTYFpETH
 mj5A==
X-Gm-Message-State: APjAAAW5SZFzkU+mk3uWBqPfBxRj+GpX1mpWclxPbaRRu9jzNOdw5TPI
 PIfnnSwd/zszkd6nGQvq2w==
X-Google-Smtp-Source: APXvYqwMtUlQEaUDNrfzAKaMRiKiWvrZGJX2RF0Ip2aB9NqMpVgSSfmUtf5bgXleEXGsJ6mGhtAd2w==
X-Received: by 2002:a1c:545d:: with SMTP id p29mr7218951wmi.91.1580921280285; 
 Wed, 05 Feb 2020 08:48:00 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id a26sm203951wmm.18.2020.02.05.08.47.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 08:47:59 -0800 (PST)
Received: (nullmailer pid 23017 invoked by uid 1000);
 Wed, 05 Feb 2020 16:47:58 -0000
Date: Wed, 5 Feb 2020 16:47:58 +0000
From: Rob Herring <robh@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Message-ID: <20200205164758.GA22823@bogus>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-2-james.tai@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204145207.28622-2-james.tai@realtek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_084802_763316_989F7D5C 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 22:52:06 +0800, James Tai wrote:
> Define compatible strings for Realtek RTD1319 SoC and Realtek PymParticle
> EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  v2 -> v3: Unchanged
> 
>  v1 -> v2:
>  * Put string in alphabetical order
> 
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
