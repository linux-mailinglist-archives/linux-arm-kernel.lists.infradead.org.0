Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F94A1F72B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 06:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fEbTBaFjdha9Zh54iNlzhw7D8kJJLZ4OfIXm7mYPOcs=; b=ufs2zFDjh80YT3N0FMiS8twxhf
	wVDPobWWCurp/OI2ViSYbwbSukFfVdQorMCLbb02JAw9PhZSOVTY2t22h0MLy47uwkvLvodT7iGeU
	tjNR6/bC212uWJkztGVZ2Zpe4KZPZ/RpDXOdq1V3u/VEnCfVyZZugF3kIsyYNENOjstPlwT1RSg8Z
	ABIe/zrhUmUqHmBqx7hPhwzlcWIG9AnGRM2u01k4k+tvWqdhBEtsggaGON2KrL1ixYzOk0tInOmt9
	SNMb5c/7VnGtcsZl3MYzq5BHb+RF81Go5/M3FLDraZiHvpuOsnVsqy5/rqJ67H/7w+3broq1c7gyp
	hZfeNPIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjayo-0000bW-9u; Fri, 12 Jun 2020 04:07:46 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjayf-0000aj-Dl
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 04:07:38 +0000
Received: by mail-qt1-x844.google.com with SMTP id z1so6244468qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 21:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=W9N0HI/VJRXYdn3DxBbsnmWiEpklzY4+CMZBCSjxVLI=;
 b=MmowBu5g/zlVcPTy3ZBmy5iY8SG0VMb2dSPwH5MLFgedHfF8GKgeUxCK3uT+YrmbGS
 RacRhfM+AeWoO2epbNIPBsWgS5T7UE4jGevyuf6ruVakGyJdMgmeTUrQOZaKHQU97ykb
 tanSneGEeRFWtndHd69u5NxH6sVd1mGwvJqHyK16AXgLmttUQgiZz3sXLu88bIq3KxFi
 RLTeKXpvVyTpibyZiGdxDP7/R+g8uS4KoCGADEFB6XmAuYfCBY6vY3tiVXCGTenBkf/F
 Qx+3549AhBVymIp5SXL4UtYDx/fkunNCkaX+1XAmaX/eNojPWWSTsIkSMMaZCLdqboxN
 2/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W9N0HI/VJRXYdn3DxBbsnmWiEpklzY4+CMZBCSjxVLI=;
 b=TiA7gNlLSE0YBFKApP1w+tjulhN1FjoYzAIGALZz6qsJBihaMPNMFB+GwNs01dS5LI
 65pmxUbDCiy5zKlS5bq5eLxOGRNRt9/B0Do6m5EZWN2udOHTvKssgeWt0Go/UNH8Jl+/
 syMfl2VLKh5gxqZPK1sv64z7RiiAkQ0Kv7x76bADUZKz6lIfhsN4bB7WNS1HHzWFp9Mq
 649cnbvQCh19v1ukXPdIZMkg/GMMAW4NSq603VjFKv7J5h7zWQRNspQxNXH1z1Q/YBu/
 K6eyZ5bYgxcOhDYd/33lZRbHiOEII9uZF5TZr0jvdfYMCsZ+c5cst9+sSLa6qL691rjf
 VOsA==
X-Gm-Message-State: AOAM533XmjjoLgRWbJHg2wiOkAI7uKj5xUwbYs/5EDDrrVkSBPc4e/EL
 BqgpQvQJ/Gql3Z5PiFDUMgE=
X-Google-Smtp-Source: ABdhPJxQuukhtwanmQJb52xJH/9PJDz7QPdp/qzb+qaQvTRo3KgSQnfSIXB3TMpsb+uFZnWTDW6TxA==
X-Received: by 2002:aed:358c:: with SMTP id c12mr1177305qte.214.1591934854411; 
 Thu, 11 Jun 2020 21:07:34 -0700 (PDT)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id c6sm3609080qkg.93.2020.06.11.21.07.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 21:07:33 -0700 (PDT)
Subject: Re: [RFC] MFD's relationship with Device Tree (OF)
To: Lee Jones <lee.jones@linaro.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Michael Walle
 <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, Guenter Roeck
 <linux@roeck-us.net>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 GregKroah-Hartmangregkh@linuxfoundation.org
References: <20200609110136.GJ4106@dell>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <7cf94809-7346-31bc-877c-679ecc4d9710@gmail.com>
Date: Thu, 11 Jun 2020 23:07:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609110136.GJ4106@dell>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_210737_480364_4610E6A9 
X-CRM114-Status: GOOD (  31.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lee,

Please add me to the distribution list for future versions of this.

-Frank

On 2020-06-09 06:01, Lee Jones wrote:
> Good morning,
> 
> After a number of reports/queries surrounding a known long-term issue
> in the MFD core, including the submission of a couple of attempted
> solutions, I've decided to finally tackle this one myself.
> 
> Currently, when a child platform device (sometimes referred to as a
> sub-device) is registered via the Multi-Functional Device (MFD) API,
> the framework attempts to match the newly registered platform device
> with its associated Device Tree (OF) node.  Until now, the device has
> been allocated the first node found with an identical OF compatible
> string.  Unfortunately, if there are, say for example '3' devices
> which are to be handled by the same driver and therefore have the same
> compatible string, each of them will be allocated a pointer to the
> *first* node.
> 
> Let me give you an example.
> 
> I have knocked up an example 'parent' and 'child' device driver.  The
> parent utilises the MFD API to register 3 identical children, each
> controlled by the same driver.  This happens a lot.  Fortunately, in
> the majority of cases, the OF nodes are also totally identical, but
> what if you wish to configure one of the child devices with different
> attributes or resources supplied via Device Tree, like a clock?  This
> is currently impossible.
> 
> Here is the Device Tree representation for the 1 parent and the 3
> child (sub) devices described above:
> 
>         parent {
>                 compatible = "mfd,of-test-parent";
> 
>                 child@0 {
>                         compatible = "mfd,of-test-child";
> 			clocks = <&clock 0>;
>                 };
> 
>                 child@1 {
>                         compatible = "mfd,of-test-child";
> 			clocks = <&clock 1>;
> 		};
> 
> 	        child@2 {
>                         compatible = "mfd,of-test-child";
> 			clocks = <&clock 2>;
>                 };
>         };
> 
> This is how we register those devices from MFD:
> 
> static const struct mfd_cell mfd_of_test_cell[] = {
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 0, "mfd,of-test-child"),
>         OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 1, "mfd,of-test-child"),
> 	OF_MFD_CELL("mfd_of_test_child", NULL, NULL, 0, 2, "mfd,of-test-child")
> };
> 
> ... which we pass into mfd_add_devices() for processing.
> 
> In an ideal world.  The devices with the platform_id; 0, 1 and 2 would
> be matched up to Device Tree nodes; child@0, child@1 and child@2
> respectively.  Instead all 3 devices will be allocated a pointer to
> child@0's OF node, which is obviously not correct.
> 
> This is how it looks when each of the child devices are probed:
> 
>  [0.708287] mfd-of-test-parent mfd_of_test: Registering 3 devices
>  [...]
>  [0.712511] mfd-of-test-child mfd_of_test_child.0: Probing platform device: 0
>  [0.712710] mfd-of-test-child mfd_of_test_child.0: Using OF node: child@0
>  [0.713033] mfd-of-test-child mfd_of_test_child.1: Probing platform device: 1
>  [0.713381] mfd-of-test-child mfd_of_test_child.1: Using OF node: child@0
>  [0.713691] mfd-of-test-child mfd_of_test_child.2: Probing platform device: 2
>  [0.713889] mfd-of-test-child mfd_of_test_child.2: Using OF node: child@0
> 
> "Why is it when I change child 2's clock rate, it also changes 0's?"
> 
> Whoops!
> 
> So in order to fix this, we need to make MFD more-cleverer!
> 
> However, this is not so simple.  There are some rules we should abide
> by (I use "should" intentionally here, as something might just have to
> give):
> 
>  a) Since Device Tree is designed to describe hardware, inserting
>     arbitrary properties into DT is forbidden.  This precludes things
>     we would ordinarily be able to match on, like 'id' or 'name'.
>  b) As an extension to a) DTs should also be OS agnostic, so
>     properties like 'mfd-device', 'mfd-order' etc are also not
>     not suitable for inclusion.
>  c) The final solution should ideally be capable of supporting both
>     newly defined and current trees (without retroactive edits)
>     alike.
>  d) Existing properties could be used, but not abused.  For example,
>     one of my suggestions (see below) is to use the 'reg' property.
>     This is fine in principle but loading 'reg' with arbitrary values
>     (such as; 0, 1, 2 ... x) which 1) clearly do not have anything to
>     do with registers and 2) would be meaningless in other OSes/
>     implementations, just to serve our purpose, is to be interpreted
>     as an abuse.
> 
> Proposal 1:
> 
> As mentioned above, my initial thoughts were to use the 'reg' property
> to match an MFD cell entry with the correct DT node.  However, not
> all Device Tree nodes have 'reg' properties.  Particularly true in the
> case of MFD, where memory resources are usually shared with the parent
> via Regmap, or (as in the case of the ab8500) the MFD handles all
> register transactions via its own API. 
> 
> Proposal 2:
> 
> If we can't guarantee that all DT nodes will have at least one
> property in common to be used for matching and we're prevented from
> supplying additional, potentially bespoke properties, then we must
> seek an alternative procedure.
> 
> It should be possible to match based on order.  However, the developer
> would have to guarantee that the order in which the child devices are
> presented to the MFD API are in exactly the same order as they are
> represented in the Device Tree.  The obvious draw-back to this
> strategy is that it's potentially very fragile.
> 
> Current Proposal:
> 
> How about a collection of Proposal 1 and Proposal 2?  First we could
> attempt a match on the 'reg' property.  Then, if that fails, we would
> use the fragile-but-its-all-we-have Proposal 2 as the fall-back.
> 
> Thoughts?
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
