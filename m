Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF18CBFD3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 04:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJ5/BscadueKm0kJFzKPx4yQEURkDfw5/BP49AHas7U=; b=SuRth/HmU/xEP5
	TiPshhLbsi4TyA617GfuVss8M/Zs+0r1HqSLiZ2MrVvlanprdsrehhsQ/wYa95CBNllJyusRhv9WW
	+oqKrgmoDC6v387Js3Lc1nix/74vIPhDgtkRwwb9JT2s5rpWD6xB0sd//5lu5VH2FFPAhauaXMNrl
	yWn68UQynDbBl18NtZxUbTjOXwltuepf0norMShYv74kb2lGJBbXQ17s3LGskpFHtweEOexywNes/
	shYGw6Thyvi1MsRe3VztN68KhdBm7+3z5yn9YqIo/KOy19nu3Fvq8PMKh2IslZQts1qWmvhwIz1Nv
	opbJmjLazawgMdYyZp8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDgAb-0000CU-2M; Fri, 27 Sep 2019 02:39:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDgAO-0000Ba-4j
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 02:39:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id c17so2622839pgg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 19:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sXqrW7yAo32sElBZR5xyrbNlxSROErm0IRlzCqPpItk=;
 b=kd/IfVGYmMQNbQcDDOCSY55fwhH56/Y6UCJzE30CmzH3SGhBwitZue+fzuNuJUyUud
 kTiLuo05tHAmYhcOBYX2GGrbfYkifOyTGWbuCrBaK6zYdJ/N1utzoN0QpOFj6DPLtlXy
 8UuhuEU9LcRBRr5A5B56tMngTaPZLRIytqXaeK/khvr0+l2Y2gGO2z3nlkGbYDQT3upD
 Ub9czauyLNoYKQWbvlnuh+4QhVcpT9w+ObXYNACW2uyQuCtRTGxRZGBD5Mz1Hlf6xSPm
 w/onnvel587eomsUQXPQmKOnrmB74R1MPSoofeoEL36yFaiK7Q+H7ySup4B+GLi4O/UZ
 X3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sXqrW7yAo32sElBZR5xyrbNlxSROErm0IRlzCqPpItk=;
 b=bG+0rWS9KHVmn/8iZCEzV/1EB9tR23iCCUha/KFQ8H2tVBjicp58JoTH/+6xagIca0
 61exayvYz1zAAxrqIxHcARvIwMBEY48Y8uqWHwzuJSPlp2vQjYXzn96BhvYmY59u9LO8
 BxosZKPxGMRigGfqfuqRRjoUz/pENgXtV3cJ/lt+lsYA7JVUQ6oCqKHCgdAtFqeMtbEh
 +kUhTq5TXFEcbfNrJ+gPC3iUB1JPu97mtMZesYjf2LAj0+qwkQC67+27C8564oFzAF7X
 z8UA7+CsQV573+tpyNBg5e5jX0INJgxvCE3vCNJQhOfAoh6ZT/MSndsvRriPDV4lPmXu
 0xVw==
X-Gm-Message-State: APjAAAUTBQziK1fuv9OxV6N1xsOk6MuEMk5TG6xURwdobba5Kjkoo23A
 kKkptbX194w/O8eiiWHmdixZsK7N
X-Google-Smtp-Source: APXvYqxOQkZ3iq3kRdAdGTUbVVnAaakSBf11kzxBS9IG7L6YJnXsE330Ur0jVyoucW/fKMDuRzmFew==
X-Received: by 2002:a65:530c:: with SMTP id m12mr6826662pgq.309.1569551968268; 
 Thu, 26 Sep 2019 19:39:28 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id m4sm2813746pjs.8.2019.09.26.19.39.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 26 Sep 2019 19:39:27 -0700 (PDT)
Subject: Re: [PATCH V9 2/2] mailbox: introduce ARM SMC based mailbox
To: Peng Fan <peng.fan@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>
References: <1569377224-5755-1-git-send-email-peng.fan@nxp.com>
 <1569377224-5755-3-git-send-email-peng.fan@nxp.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9dff720e-2e81-a7b8-ff52-1f2c3d257368@gmail.com>
Date: Thu, 26 Sep 2019 19:39:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569377224-5755-3-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_193932_189765_C1021916 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/24/2019 7:09 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> This mailbox driver implements a mailbox which signals transmitted data
> via an ARM smc (secure monitor call) instruction. The mailbox receiver
> is implemented in firmware and can synchronously return data when it
> returns execution to the non-secure world again.
> An asynchronous receive path is not implemented.
> This allows the usage of a mailbox to trigger firmware actions on SoCs
> which either don't have a separate management processor or on which such
> a core is not available. A user of this mailbox could be the SCP
> interface.
> 
> Modified from Andre Przywara's v2 patch
> https://lore.kernel.org/patchwork/patch/812999/
> 
> Cc: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

Thanks for your persistence working on this!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
