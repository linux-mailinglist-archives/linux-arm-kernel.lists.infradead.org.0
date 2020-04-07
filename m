Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB3D1A073F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 08:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AteGwBo8+o9U1i/D1J6fjQW4JFNUyeQ6XxlN/iKNv7Q=; b=jdashVbw4UnD2X
	jjfwpJFOeKrj3LtMal2OMm+jbdKJnDshXfUXHomQkqf9Auysa3Bb0TQarwtiSj6HeHskC/s3Uz+BS
	t1LturFq+ILVwyD/u0HAw2XBGtqSK46xAzN1E7iymsJICdP3wENntyM91zZzNdSzy1KBl4OIiWGzZ
	vTeC/g1ElBeWDI6k0/WRMYC4gUq984jVPv+fKhiec0OlmHipGdc9+mGf1lbiaAeEc9PvoGeJ+MkP0
	SeVpfqeYrQ/LABodYvfvhVHw8ocgPb4BvzLTYvCDcxsILbu2Y1gs3GAyaH1NVCyB/tWguTW6nqWgC
	lOt3CkbzfBKHFjIGHE6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLhhW-0006gp-Th; Tue, 07 Apr 2020 06:27:10 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLhhM-0006gM-Es
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 06:27:02 +0000
Received: by mail-ed1-f66.google.com with SMTP id i16so2573472edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 23:27:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mjsbhZ/jJSHwlg183aq1g5KLg6FSzbMim//7rih2R08=;
 b=P3MMkpcqFheolBgGM53FlEKBuhW+5omoi7hqfMtSrTyr9heZ4NsOM+BK3bZwYrCsia
 BD6SnKU/F2mClV6azaEAOutRTZfE+lzF2Ls2YfA12S5lqGAd5o4WZ9qFwPk4PR0wOgom
 2DUbg92tU3hhPGnTtXTNV8mqOxA/CmpTGkluVZXrygw+yTb3b594syYvApZlf/FQTVdW
 AxCZjBQ43IgcvaY2X65pnLdxw6uYeC+nzSv+PNKw4OsZdKF8Tnu1yvMOxHYr1yX8oO5P
 hnZG+zO6siZikCAJp0Qu8fZdqiN7+Ve2JFN4pTkVdsiW0+7/E19C+eq1VKvTncg+C36a
 R5Jw==
X-Gm-Message-State: AGi0PuYdbBzre3ZepUEKY7J00DDLzUOgkJ6vYHuWlrdplhg1zMUhzBzP
 wZceZJRNMPUREqLYdvCWcUw=
X-Google-Smtp-Source: APiQypKb22JBzydu03DDJPTCS6ihOeLvWWTF1K5nm4hTcD6KJe7da/1XFoUc9qIO+cbAbVPWdg7cYA==
X-Received: by 2002:a50:ab04:: with SMTP id s4mr650641edc.174.1586240818777;
 Mon, 06 Apr 2020 23:26:58 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id oe24sm2472942ejb.47.2020.04.06.23.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 23:26:57 -0700 (PDT)
Date: Tue, 7 Apr 2020 08:26:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Message-ID: <20200407062655.GC21995@kozik-lap>
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
 <20200406230855.13772-1-hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406230855.13772-1-hyunki00.koo@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_232700_501231_BEF74445 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 08:08:49AM +0900, Hyunki Koo wrote:
> Support 32-bit access for the TX/RX hold registers UTXH and URXH.
> 
> This is required for some newer SoCs.
> 
> Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
> ---

Why I am adding these for the third time?

Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
