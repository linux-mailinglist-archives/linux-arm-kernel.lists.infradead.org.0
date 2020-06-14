Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4B51F8B1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 00:18:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soMq/oyhc0VS9FeewSHwsGdLK/60Fzg3kcSBVKqMxUI=; b=sO7H42sYZwGhHz
	VpkGDvS5EyCFyp2U/zREBLzLu3BUiYmXocViLM55KNb3sJCPuwMPLzZsv4Tu6b+UvDooKUJoBA8U8
	I+rfq/3tB9YGgHfx5tLhi9zdlARrNecJMJlV08tCDVL1GyxKzrXqFhneO0knFqwNDfvzwCRDr34wO
	1KQEb15RrL9yZyRGOANlwBMm5MBQpQVOPKAheCcqZWpaXXDqRAyfiE0racyClnS7pw//q/7UL7qYP
	/oXxxlCNzmH80jEx4toaC1MJ5LN3a1GHjU0hLyFhXHgEySkT1DBotZeA6z/SlsPF2Xagl2PeVY1vJ
	qha6ZfGRCRVXg1npKW2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkawx-0005r2-Vi; Sun, 14 Jun 2020 22:17:59 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkawp-0005pT-9d
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 22:17:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so12754586wmh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 15:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5TgbMQr2ynpkjkeHceDs7ejinDsY4qGV2JU6Wh2aUoo=;
 b=X8Hjqf1iNpJ4l4eLhFIw932NLhIEB1uR/cBAuY7aJfGQl/Poorn1tdoLhc3l94aT1t
 e4pgEgEdOuImd9UMpEt/BmxW9Ryv/ZDuS7q9ubgpAh344Oh96+4nVAhFBKGDE/1vkDmc
 ZD9BOxgIA1GQq6tCFYiivmBJDDhmJsGIftFkKG1T8wSl8SEa4Yk95JAfHYvAHKjVLE0g
 j/BQW6ThCpsBoQyXS+geuNcXkEOj1OcJxre5rkkC+hYn6bEKsR14Rmd6wl97LuJ3QM9B
 IHcwKvSr6O4JzaoL6iX/9MbRSDKZSnFAYAU9NiK9jntVvbL4wLlGRZj3/mMYCSSOAG3S
 DMZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5TgbMQr2ynpkjkeHceDs7ejinDsY4qGV2JU6Wh2aUoo=;
 b=FW/xTUDuRTwruEQmfwAg5OBZyKGZyGUfltk6gKllfHNrWoOYXzHuXMxzyrzV2RqCJh
 QaM1PHfwkjcyRzNypnCaJuhp7V6V3S0yNy76dkTBpqwcYZfZGHjRYTqi2lQmsRDDXWKQ
 AK3WDCp4h4rQqKjL9Sgba1NC+zRkKNikcGFOhucPW8qjWRXg7z6PM3X6Cam5FsGKCb0D
 AO5YuJ0A7EQJRbrgsMxGfpO2AT2hISmdZ5lF+Tw7VVrJfpjjDyapqbaajTH7/uGlG9u0
 PeLGdXyafTmD1khtnqvOEcWn2GCpZZgk4GqQcqAGBkRbn4+Shtuc03zve2fPu5QfRHhS
 rfug==
X-Gm-Message-State: AOAM531dfFZqHd+PsRBj360Ha+nWmSVyFH5CAAGyY2iUpvW50PInMUg0
 CbTw2J659OPFhfua9Vf7O15wnwLe
X-Google-Smtp-Source: ABdhPJxvrGIoXnMWmpHerrw4JnxtmxjqhDEJQfJMkMM6l5G792MPS2W79Hk4BTSg9nI4z8AsDa21lA==
X-Received: by 2002:a7b:c8d6:: with SMTP id f22mr9627845wml.108.1592173067668; 
 Sun, 14 Jun 2020 15:17:47 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 u7sm22134570wrm.23.2020.06.14.15.17.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Jun 2020 15:17:46 -0700 (PDT)
Subject: Re: [PATCH 1/3] ARM: dts: NSP: Disable PL330 by default, add
 dma-coherent property
To: Matthew Hagan <mnhagan88@gmail.com>
References: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9e83df99-fae3-107d-3983-1e79d9591e00@gmail.com>
Date: Sun, 14 Jun 2020 15:17:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <c19be985a3e7abc8ac05fc30678475aeadb73c50.1591719237.git.mnhagan88@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_151751_334987_7362DBB7 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/9/2020 9:58 AM, Matthew Hagan wrote:
> Currently the PL330 is enabled by default. However if left in IDM reset, as is
> the case with the Meraki and Synology NSP devices, the system will hang when
> probing for the PL330's AMBA peripheral ID. We therefore should be able to
> disable it in these cases.
> 
> The PL330 is also included among of the list of peripherals put into coherent
> mode, so "dma-coherent" has been added here as well.
> 
> Signed-off-by: Matthew Hagan <mnhagan88@gmail.com>

Applied to devicetree/fixes with:

Fixes: 5fa1026a3e4d ("ARM: dts: NSP: Add PL330 support")

Thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
