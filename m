Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3101B2E38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EUFUwQ9Tq8bsJCbzXr/L+1TqsQUCESF2ljVf8qQbhUA=; b=FQpQJ5O7QUabzic7cdtbf8wdn
	JwoSHPcs9crrcpCUTR52z7JIhJldZW0o5am8OYMdyAKJGTTuQfdgPpowi/ciO6BK2eNyn7G+CtBOQ
	oj0MA5eEMB+IY8g6+F8alMMy1G5sgA0bvFj8Bp8vVHAdwZEzJd9hqjXla9cn3ZYH/53SMzLg8aXss
	CuOhGE6MiGivlvuxwHbzizuUiN4/HdksL9+03NCsypw4hvpXQHkzHffDObk2HanFxD0rmETzQojBM
	9CJAh4IjVqcg558I1XCyeOJApy1ObN2JqfBYUrsvjIQedg7thmNQgLSzvnEuL3A7NA/l4+xzpvvDS
	jjHXaU+3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwbA-0002U3-1j; Tue, 21 Apr 2020 17:22:16 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwb0-0002T8-7Q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:22:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a22so1639399pjk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 10:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8hpKp+pJXXfl8SBiWG0TW18VKTy23Dsewpq1B1vdSJY=;
 b=hHejU0rMzhttmHS5vUp5pxh33T4JcOLWAypQy/fUBG1Apb8uDmoT95JSblrteDSZQZ
 xvsW0UucX/Cd9DvlJ3CUWNP1DVwSaKLC57uqNwXjCmxnaLw2h9rb63cY8Qru81Q3xPfp
 qycWLBWyS6iXfsbHVF6QW5kDGmo3eK3kFGUWu8tOw0xELURcixxqT5QqEC0kmsQ8TGJA
 aaQ/7AMUqeztG9Rt3V2WNzfAM13Yq/0JFY48yF+yH9+Ln9AV6t/QuF0PJiAzJj0LTbGp
 gUNQxqexoQzX98bfberRppzngChJQD+1qtFGtayUMb1XaRc7hdJnxJxYpzUZ4OvyhPOi
 ASXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8hpKp+pJXXfl8SBiWG0TW18VKTy23Dsewpq1B1vdSJY=;
 b=iLa7PofqbOfvXFQhphxnQbZDyYp12S4zmqA3GbwmgOmwMo02zOVzAdwlwjdNfmylp7
 wejLrR3ylYz5zfMKNJWH9vcI6Wx+V+xLUHaoeW5Ull0Xtjvlr648a1DvCrcQ4FlNvznI
 K3BY+dtq2Abx9nk49H+PRkbkSo/r8nFrR+ggflnc0kSp4Zwux8fOVjqZdyBc2wmsikGn
 Zzg5AN/8AT95kaSgnFwcr/Fv6oL9S+/C2d7n6QsHWePavOUT+Go8wWOTgvJ7+jkirmKj
 oD6yvzKboDFLGND2CqJP/yAikM8YzLpYoGDDSPnhDKrAY7u9FuXHFv+/0csEQDh3YJ3Z
 hlDQ==
X-Gm-Message-State: AGi0PuZeLPEj0jmjzasF8O1/YfLG+EMCOG91NMBNAC70//L3UfRlHmiZ
 n2eFk6jvdo/0bjUg6Fvtno0=
X-Google-Smtp-Source: APiQypKtd8K22hCEJJdMxKo8xuqS7YFQ6JSbezNOUdnFWa3AHXmTV38tSA0y2M/IYGSVG2IKZcHLlQ==
X-Received: by 2002:a17:902:bf09:: with SMTP id
 bi9mr6325241plb.193.1587489725627; 
 Tue, 21 Apr 2020 10:22:05 -0700 (PDT)
Received: from [10.230.188.26] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k12sm2939328pfp.158.2020.04.21.10.22.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 10:22:04 -0700 (PDT)
Subject: Re: [PATCH v2 7/7] net: macb: Add WoL interrupt support for MACB type
 of Ethernet controller
To: nicolas.ferre@microchip.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, Claudiu Beznea <claudiu.beznea@microchip.com>,
 harini.katakam@xilinx.com
References: <cover.1587463802.git.nicolas.ferre@microchip.com>
 <bebb6e87da4be4b000c059351f3a4d82ecffa561.1587463802.git.nicolas.ferre@microchip.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <845410b0-f0fb-957b-e8ea-5a7cc2f152ac@gmail.com>
Date: Tue, 21 Apr 2020 10:22:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <bebb6e87da4be4b000c059351f3a4d82ecffa561.1587463802.git.nicolas.ferre@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_102206_270302_6D158CD1 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 sergio.prado@e-labworks.com, antoine.tenart@bootlin.com,
 michal.simek@xilinx.com, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/21/2020 3:41 AM, nicolas.ferre@microchip.com wrote:
> From: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Handle the Wake-on-Lan interrupt for the Cadence MACB Ethernet
> controller.
> As we do for the GEM version, we handle of WoL interrupt in a
> specialized interrupt handler for MACB version that is positionned
> just between suspend() and resume() calls.
> 
> Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
> Cc: Harini Katakam <harini.katakam@xilinx.com>
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
