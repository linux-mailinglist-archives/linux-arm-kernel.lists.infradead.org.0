Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC701A8EF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 01:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7s0c3k0L9RDXyD9VMPUfdPkAat9wCF4zQuYwALw3GiU=; b=S0FQaou/TL7VFu
	NRf7sAtZoMyuxwBT0Ko6yXOh2J2hM6mToTgKvVumWXpgdvPXioKeGN+p/mKNTqEdyBNcvcKtWRNa1
	6dZgt42kRaOoRfR4/fT7oRbtaYlDCuERiW4wMnCDkji1qhiqfwUBrEtYz3yNWIvCL1nv9FrT/rvO+
	aIndagyMtxahQZQi6pOgRwG9mhouku9UXQsDkdbajNx4k0rSk4+i0bKFdH0s9PPY6AteiNqTMXLn1
	gw7jIDun4zzi53Ko/O7RFCrY0UTPaBhGNQWb1E9CHQ+WxrM9OWAZQ6itStSyx5utijmtGdN0RPoei
	LwC9ZNogY4tV7rKdU1SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOUk3-00023Q-M6; Tue, 14 Apr 2020 23:13:19 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOUjv-00022r-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 23:13:12 +0000
Received: by mail-oi1-f196.google.com with SMTP id r25so2116885oij.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 16:13:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VvYN+POzUP/HxZIW68dFGmEkR5GANu8XsXmHkqwh3r4=;
 b=sF+wk2EhsQePoNHinFvlYgIFz+wdPX4BQiW9ISmNYMuQB9lj8nwi95KC+orV4gzmd5
 /VaL66w0NhG42UrP//WiXrWVrGogYDgJketN8Tly1fvuYnnHpU4te5podblTHiTEEA/S
 SYqRoqqe6X9aJJPmAmdkl7g53d+KKzQdWw8Z9bsLn5Wmkyi+XQBSL1MQYOynFj/ksizy
 Fi7sE9rgDzF75+xpxzVVRwdpl/7XUzssvxGR++Aq/YYKkI1wgi5N31nUJbB0Xqf9+nTv
 elUFPTc30dNBwN9zVXk+5QNjjf1PmpdvG6kul1XpFsO59hco021Rk6NcEE9TXC2sS/Op
 lMGg==
X-Gm-Message-State: AGi0PuaANSGrzhCwC1nLZZG+6iH6bgg6W2ZZvBJklOJAUtAnd3jMfOgA
 xCjQ53v8t/DdPfetah6iXQ==
X-Google-Smtp-Source: APiQypK61RTHR9kuSvlYPwIECBbuocsSAp6KyPuha5OGWWkV7afY5lGlf+sLaVr7JcOhZjc7RQrgHw==
X-Received: by 2002:aca:403:: with SMTP id 3mr12694157oie.166.1586905989246;
 Tue, 14 Apr 2020 16:13:09 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm5911183otl.12.2020.04.14.16.13.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 16:13:08 -0700 (PDT)
Received: (nullmailer pid 9163 invoked by uid 1000);
 Tue, 14 Apr 2020 23:13:06 -0000
Date: Tue, 14 Apr 2020 18:13:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: memory-controllers: exynos-srom: Remove
 unneeded type for reg-io-width
Message-ID: <20200414231306.GA9106@bogus>
References: <20200406104554.29773-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406104554.29773-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_161311_189486_EBB0A403 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Hyunki Koo <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  6 Apr 2020 12:45:54 +0200, Krzysztof Kozlowski wrote:
> 'reg-io-width' property is an enum so there is no need to specify its
> type.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/memory-controllers/exynos-srom.yaml   | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
