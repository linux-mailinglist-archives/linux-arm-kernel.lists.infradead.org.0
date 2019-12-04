Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C5F112887
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:53:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edDQDdoqifoK4rA/0AnzRrYcUMYNs1yf1YGT4lzyp9I=; b=MA+sjwyKZDdJ92
	UE7fn0/ofqhdWh1BRNcCt5jNTFc6mR8O9wunR7miyaMG5ldSHFsIrc8jSMbsOCglTLuaHQ6t0goP6
	sKhvgI9awjCgv3xR+GKXt6vWPRRATJ2yu2000dFIWGQFjvRdSSGmge0rhFSXQZHvqnC82yUUFcMqI
	+A6ic+EKXExBU9AKprhbv8+JmfzYmcZFrdsFp9urkPUulc/JatuVZSMAnN3sSsN2Onie/HCeAz8oD
	Y1jjHnrp4/BmeRVD7Q/y555oyT6fJyAmY+uysxB7qh6RWnbVaCoG77PfcIwIScuLHR7xWcueBQ9Q5
	d4q/U6d+dqJqq1nCjwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRL1-0003ZC-Kn; Wed, 04 Dec 2019 09:52:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRJu-0002Xq-M5
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:51:44 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l4so2788190pjt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=odZi1IR9XnidejlBLuktGXZN6VtsiVWqqzPx3lEfMLA=;
 b=EZITHQSpFxAZT7usbVviH2ml3EM4eJuEr7wGxBmMQMA542RB044GTT2Yfvi31fwPwj
 0szsqeoYyhxci7N4M1Q8L0voTsmAW210qZPrEg0GKU69+SF68UoL/sS8ok1AW0Cn2Zpy
 7bIjXY2Hv/Rpzi4bcL8w+rAupBSHi5cl5zGiAXFm6rjf5yQrjiYzyMD5RlkRWn7i4Fbd
 1syMeTlE/RV8VAozHm2/S4ZV9QQsZTbIyxXL/iVugxJe/yBaLLgMOuxXKFIeX5A4hW6S
 ibbg7jddnoyTowI1oGoAQG4iJt1w13W3TQsEC9aRwZB6bFOEkffLKZ/OzJqbjp94o+rG
 AQ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=odZi1IR9XnidejlBLuktGXZN6VtsiVWqqzPx3lEfMLA=;
 b=h71a4S4JyFSa/rTRbgM7f4ZzhPKBlD0sN9i6edCtCo0foQ0jfhLVkD+5QU3TcRlpS4
 ezc9sJ4hF/sTut5Pxg8CLljvPYmvdbJgtY/CrI1huUmJ1zWtmHe8YJASb7Ke6Zm0xxgV
 KLed2TDZpsnTGp3WKH3t49NPIjRqM5S0/enj2sohQNzHphes68KdMzwTwr1iYm5ustwo
 BArzGE12v0oGQetevEMhNxtdamw/rb6oemcZfdvN1+fwnM2NTDx5n4Bswul3Ni+8VGfR
 2tNEgE+VV8Rlj3OBfbj/L4FArhqQn7ucLHew7/26FtJsuOyIPeJlPw4hbTERVG2H68G2
 Alow==
X-Gm-Message-State: APjAAAXIEIFeuP5X1niTYOxLL9eAv2I5SYLp5eVsRhFDymshKVs1OHfi
 miP0hF8KdN0guuLdM136GaO5WQ==
X-Google-Smtp-Source: APXvYqyY9INZ1vv31aECkzfh918+GS1MGdepYxOYtRHcgrBPgrxoBps2q3Bn16LMv/xK/VTVlgWi5w==
X-Received: by 2002:a17:90a:19dd:: with SMTP id
 29mr2442390pjj.32.1575453101867; 
 Wed, 04 Dec 2019 01:51:41 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id u5sm6865104pfm.115.2019.12.04.01.51.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 01:51:40 -0800 (PST)
Date: Wed, 4 Dec 2019 15:21:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20191204095138.rrul5vxnkprfwmku@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
 <20191204091703.d32to5omdm3eynon@vireshk-i7>
 <20191204093339.GA2784830@ulmo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204093339.GA2784830@ulmo>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015142_774228_BEC62C48 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, Mikko Perttunen <cyndis@kapsi.fi>,
 linux-pm@vger.kernel.org, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com, talho@nvidia.com,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-12-19, 10:33, Thierry Reding wrote:
> Yeah, the code that registers this device is in drivers/base/cpu.c in
> register_cpu(). It even retrieves the device tree node for the CPU from
> device tree and stores it in cpu->dev.of_node, so we should be able to
> just pass &cpu->dev to tegra_bpmp_get() in order to retrieve a reference
> to the BPMP.
> 
> That said, I'm wondering if perhaps we could just add a compatible
> string to the /cpus node for cases like this where we don't have an
> actual device representing the CPU complex. There are a number of CPU
> frequency drivers that register dummy devices just so that they have
> something to bind a driver to.
> 
> If we allow the /cpus node to represent the CPU complex (if no other
> "device" does that yet), we can add a compatible string and have the
> cpufreq driver match on that.
> 
> Of course this would be slightly difficult to retrofit into existing
> drivers because they'd need to remain backwards compatible with existing
> device trees. But it would allow future drivers to do this a little more
> elegantly. For some SoCs this may not matter, but especially once you
> start depending on additional resources this would come in handy.
> 
> Adding Rob and the device tree mailing list for feedback on this idea.

Took some time to find this thread, but something around this was
suggested by Rafael earlier.

https://lore.kernel.org/lkml/8139001.Q4eV8YG1Il@vostro.rjw.lan/

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
