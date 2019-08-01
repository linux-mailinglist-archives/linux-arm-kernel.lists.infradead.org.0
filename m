Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520167D58B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqENdDeDrSDfXQWdyOrzL0gBUYXVPX7fu+DstFHloS8=; b=qBuZARxpxJuUMQ
	d3YIwcnTaGUmeushdyWHKWj4VUGBsTqVwqkGmmL+tw8XRUf7otsqDsaU3lZkH+LWd9vjugqt+GYyw
	kW1cdayoJsuMlbJBvTdLSb6W1+JbiaLdlIzEWQbzsSyf6VsZalCqTLO9ULDr2WPnyZFQVBKT6KsMf
	Sfmd+biLqkkHkQh5Z9KZNhWjY/e6iGdpKRSiS+5E66Jbs18Ttd4EZ0GeNeMDEHbx8MDjdX9dgviBb
	m8e7kzcyqCPb975WpixnN27TJtufOUrM5sdPys5eJafMcz09PyBzMNTq/x30iH3uLv+4Bb2M/8EWr
	GKEpYnk4zc2zHHYbKvbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4gt-0001Za-BT; Thu, 01 Aug 2019 06:35:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4gm-0001ZD-9P
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:35:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so31684664plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 23:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vy7fiSVgkFbOoM9oVuh/IZ30LQ8S9jpUhyBj3j5WAYE=;
 b=ae8KMe7vtw9CbOVo5NW8OvD+W3A0H5gmbjw08lE21V5g/XHpJKjPHpZ/4oz1312HMR
 gNLZHyAOxxb8maEL9vCVgtaRtYNEQPx24fbVagwL6bKGPWrqDPCYHxXrKM+LFxKSLyXv
 dFo+a9IZYyXAOcp8Vsiv4c3YJh9HHtXgSllMpNFr8PAGLOUpzWaBd6pZ6B+zJ6+yRkyk
 K6uldheuuNBHLqB3mgE42PqNe8v/fHXlwV3zJPVQ2inDSw0XhDAg2GNrwsN/g0mzWrdO
 rvej6sD9a41ViP7+3hsYS+G+QhCGpzNQ/bdeqlPzVtwzND5mVrRD0tSHN3hroO+PvfGh
 /lYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vy7fiSVgkFbOoM9oVuh/IZ30LQ8S9jpUhyBj3j5WAYE=;
 b=pQkcpYAkbosgfGKZZQeAFD1LJzI6IiyrsKpJOTloG8Yzk7iXcNw/xsFuMFLFneOYoN
 /DnFPdktB2u5+o74VJZf1P7Lll/csIfsKMiKO1u8nhNwlsvJWg0Uvct6MhcchNWc68r2
 kHcePOoPNxbicRH1zpK41Jx7dvjaa1A39whf40amzSmkL8VNb4Dredqanm83UZMKNie8
 uAMM8+I+PlMMokXjYKGQDWVwiKUo6uVqC5SUq8285WIftWyLXHLBytiu8DkbwRyrUH4b
 sWSLlZqRRLxARNYE64MIvpg+0wmyQ867T17p/ApPOXm1ezNiXqtrVJvsDEya4RuTmyI7
 PYXg==
X-Gm-Message-State: APjAAAXvQcTp8Z7qkDwCgeLWSmhm+r4+DT6isnMP48AIPVz/Fl6sZJ7k
 Tc6zwKaFIMBi75U4QWRZNj6W1DI7Y18=
X-Google-Smtp-Source: APXvYqxzLt9itVfefRAkcodWXvJsyh1SKFRKmzWXDdVEME2BmOSrNLsKad//WkasBmqGS2/yrA2+SA==
X-Received: by 2002:a17:902:820c:: with SMTP id
 x12mr125486939pln.216.1564641347199; 
 Wed, 31 Jul 2019 23:35:47 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f15sm4067463pje.17.2019.07.31.23.35.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 23:35:46 -0700 (PDT)
Date: Thu, 1 Aug 2019 12:05:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
Message-ID: <20190801063544.ruw444isj5uojjdx@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
 <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_233548_362305_1AC7A67F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-08-19, 07:30, Julien Thierry wrote:
> I must admit I am not familiar with backport/stable process enough. But
> personally I think the your suggestion seems more sensible than
> backporting 4 patches.
> 
> Or you can maybe ignore patch 25 and say in patch 24 that among the
> changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
> was moved from post_ttbr_update_workaround as it doesn't exist and
> placed in check_and_switch_context() as it is its final destination.

Done that and dropped the other two patches.

> However, I really don't know what's the best way to proceed according to
> existing practices. So input from someone else would be welcome.

Lets see if someone comes up and ask me to do something else :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
