Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A2B29E00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nswWGmDDSRXuszbnTIQd3skNOaOkKETYXzqSBXaEdHU=; b=EsJe6xbtZQljZn
	WS/vCGFHo8XVWIlrPzPIIze8JVbN7Wo8hTa3xYXdJkkqA7W7ko54Pzk5QAE+C0zpUQMcvNpCnwtaA
	ELClUhzsar1sQupYY+ifDmUARJ7g3T4QJzmnkQKy6DEQn5E/O4FYmQd4e0wvBQHAWTuS5hTYvwE6g
	Ls4FeTjC57kt03EyM637NDXmIsjxjZJw852Y/3BpFvaZpfVstaC7hbQr/ER1eVaynhNNpOjyfptVE
	lIEVU/cZF0bV32mp83tlXe7nxVYB8d1fMGekGceeG3ShRcJjJ8YUNckQmY+BJQ9/fPIHclabrDt8Z
	hu0IiIncx7n8svbruybg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEus-0007cw-O1; Fri, 24 May 2019 18:27:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUEuk-0007by-3X
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:27:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id b76so5790566pfb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 11:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=KBFXSMu5iFYrk4qlfdMwTaqYNBRexORCw0HxEB88ViI=;
 b=N6/cibxJqoyRlASaCOA2LueJDOi4C9QLztjn5TkmTwrk0rGe/Hoq1gXbJIJJQSo4cN
 lWVbWl0eDEcbzHHgLZG5pa0XA2F6zW039A5KfSwxiWBSGlBzt4heC6aPO5KZYaABaPeU
 rzmSWyJABn1huhi+0Og2D9yy63uFN1xpEuKeVK7Sv6slAGO2a3+DY6mR3r1ClotkmfA3
 OidS9rX7ynb06yrKIKqeVbvVf+a6ZPmxyB7CleU7/AeQpch9cRjJPqNbI5xAFDnGWqNc
 iRqeZfjTs8EYih/Bha5dKtUbhVYimXhuxx7zUS+hcME/M80tEUxh8cdCOzrlBWfdx23E
 /3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=KBFXSMu5iFYrk4qlfdMwTaqYNBRexORCw0HxEB88ViI=;
 b=LwAPVd3MTcZFUPE434gM7Sh8rRqj0RwoHOARuYSZw7BpNyjtRJV8ZbRveGWiUVI2p3
 cmfbXDL/u7EpGY+GvJ1ew3vYBkpergHOww975+Hymvl8YqFpJGW8YhaHBWPjnWd174w8
 4jhUIzc7+D6st6A32eEfwaCG1w9f2kO862aXLQpkYR1Dtew+/6F2KAoPx2rPowKYu2gr
 gHa3/cDDQtoNUk2HhKRKElO8Y5vW18yj7f+5Z+fF68Idmfw7UlRQm7QOK41e1NTUomef
 8rgN6UEQoYJottEaOM8Spp3BBlcBt0DLQKLjNjhUAHB8RN1yygJ7EyZq2/5fv46Q/YMP
 qjTA==
X-Gm-Message-State: APjAAAVyzem4HZWJkjp6U9VBLw9KX7t32mJNQkDq5EU7qqgAFzSriZBH
 kEYNJcwpsujYpAoXI1KQxj6w9w==
X-Google-Smtp-Source: APXvYqzA1SAKKSIPwwZfDByTrKcnhebFoSdI+UmO8LD/ZPqhT5EFhsWiDk0n/ghktX76tHjhcfRtcg==
X-Received: by 2002:a63:6fce:: with SMTP id
 k197mr108309512pgc.140.1558722453153; 
 Fri, 24 May 2019 11:27:33 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id 85sm4639910pgb.52.2019.05.24.11.27.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 11:27:32 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on
 meson-g12a-x96-max
In-Reply-To: <f01b812e-ee18-528b-1859-620dd8f0fb53@collabora.com>
References: <5ce78689.1c69fb81.58097.eacf@mx.google.com>
 <7hmujc0xnp.fsf@baylibre.com>
 <f01b812e-ee18-528b-1859-620dd8f0fb53@collabora.com>
Date: Fri, 24 May 2019 11:27:31 -0700
Message-ID: <7hh89j1ze4.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_112734_348535_907DE415 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 tomeu.vizoso@collabora.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 broonie@kernel.org, matthew.hart@linaro.org, mgalka@collabora.com,
 enric.balletbo@collabora.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume Tucker <guillaume.tucker@collabora.com> writes:

> On 24/05/2019 14:50, Kevin Hilman wrote:
>> "kernelci.org bot" <bot@kernelci.org> writes:
>> 
>>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>> * This automated bisection report was sent to you on the basis  *
>>> * that you may be involved with the breaking commit it has      *
>>> * found.  No manual investigation has been done to verify it,   *
>>> * and the root cause of the problem may be somewhere else.      *
>>> * Hope this helps!                                              *
>>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>>
>>> mainline/master boot bisection: v5.2-rc1-172-g4dde821e4296 on meson-g12a-x96-max
>>>
>>> Summary:
>>>   Start:      4dde821e4296 Merge tag 'xfs-5.2-fixes-1' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux
>>>   Details:    https://kernelci.org/boot/id/5ce72c6259b514ed817a3640
>>>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.txt
>>>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-172-g4dde821e4296/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-baylibre/boot-meson-g12a-x96-max.html
>>>   Result:     11a7bea17c9e arm64: dts: meson: g12a: add pinctrl support controllers
>> 
>> False alarm.
>> 
>> This one is failing in one lab but passing in another:
>> https://kernelci.org/boot/all/job/mainline/branch/master/kernel/v5.2-rc1-172-g4dde821e4296/
>> 
>> I'll look into what's the difference between labs.
>
> Thanks for clarifying this.  I guess we should fix the logic
> which detects regressions to discard cases where there is a
> conflict between results in different labs.

Yes, we should.  If there are conflicts between labs, it's almost
certainly not worth the effort to automatically bisect (or at least not
worth it to send out the email.)

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
