Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AB927FBF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oClLzMwfizMeU8NWop1/rtOLPT+l3HnJsKsXZBPbafk=; b=mMMZz9eHlOtNY6
	WKqrlPPKVRSCruLNAXSUJVoZL0+NeMkI3G66YaenFTTcV55SPjhp+jRXofG3cxa4UdrNDLJuCGLIk
	J6z9sSEAXUrAjnowhSp7kTPjXxrCuMMJLpmMulDmWxKwqhSWj6jIDyL5Sk2NGktMiC68E4J3feQid
	s1o0eICAKP6TSJM3Bg2L4Hk7g/cMKRfPA8kjXlN7JWh1hc/q/ytYy9nOi+39mZM3VuOrohYbmUsGi
	dQ0V6cvghtS8SzCCOBeSkvw3L9CoKJq5KAa0ja2LKznca0ev4g/1IWvelKc44b15lpcrHGcZOzIla
	Dp9QqM1yyKuO3UUh789g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTom2-0005BR-Dk; Thu, 23 May 2019 14:32:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTolu-00059g-JS
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:32:44 +0000
Received: by mail-qt1-x841.google.com with SMTP id a39so6989575qtk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=26O4OAT3StjGcdvXWdoax0aRus0DVxp2E0u/qprceKo=;
 b=zfcN1c1eomMu4+oxnKPYdhDF2+VuS/B2E91XN3OlCwQw7KkklrujUQt8Kn5EKAXrGY
 ky/1UB308P/7q0WsnVGs5zkXTd0UslTzabH6KAPdXvHo4ywiM4EJ2agZAyCfJm3t7kGh
 aJfKlvedmBR9f+Odt+gP5zlLz+6cPU0onGlKfVGSiOf1C4L4lRQJ4lTTjH4aGIf0hIU1
 eDpi16auna3NIpAhQOqkSI/vfO4QvFDbGR/p5yxpVQz0ftc712fBu5i+MhhNqFAY4hMQ
 KRW9jPEmbatolCDcubTgZulhcUm7MK+6TxOmmNTr/UujaPPAqinAbJOii1JTZMxPzTRu
 qGXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=26O4OAT3StjGcdvXWdoax0aRus0DVxp2E0u/qprceKo=;
 b=lH4MKw6e+MX0MFtHQwtOXzuXi7DZvabmVKN7JlEWbu+6JRWPxFGzmeTsPxG/SRhhgy
 6Sw74fPYiRYQs0vRsbOA5yPsM1OVm6yMP3FQJkWC96aOTB9Uh0Maeu8fEIlJw4LJVyAP
 I1v2jMW8FVW7iCQBblISff3+ZxfzAQisFig/IhjGj4CY528S0L7iEGzZLIUPILoE5XCV
 Ui0W0X/BZ3ar4wBkOIzmXYIq0oRmCOOk1/pXRf23z63gufW+VZ/b8BBbIC75M/J4SrU/
 6Z1zoTtSrPchdTNTTMsG/erHcXN5wlQUSkHHdgk24ix5FX3JflMDADQNftF/tpREVQCe
 1bNw==
X-Gm-Message-State: APjAAAXxaggJIUFoglwwmwrRVz8sq0i456aSo+UE71Li3JCYc/GIbA6I
 GVrREe0RXjPxiZ+QnYwDXD/1Ow==
X-Google-Smtp-Source: APXvYqwhHNKz/pi41E5cnHTYcYzQ3e6W/Vv0HpqStGGaYWCsQz5zn9J2dosBcXxlTD20r8VmIj5f4A==
X-Received: by 2002:a0c:b50b:: with SMTP id d11mr27491149qve.98.1558621960357; 
 Thu, 23 May 2019 07:32:40 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id w2sm10446227qto.19.2019.05.23.07.32.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 07:32:39 -0700 (PDT)
Date: Thu, 23 May 2019 22:32:27 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190523143227.GC31751@leoy-ThinkPad-X240s>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_073242_659952_C18FA390 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Wed, May 22, 2019 at 11:34:33AM +0100, Suzuki K Poulose wrote:

[...]

> Changes since v2:
>  - Drop the patches exposing device links via sysfs, to be posted as separate
>    series.

Thanks for sharing the git tree linkage in another email.  Just want
to confirm, since patch set v3 you have dropped the patch "coresight:
Expose device connections via sysfs" [1], will you send out this patch
after ACPI binding support patches has been merged?

When you send out the new patch for exposing device connection, please
loop me so that I can base on it for perf testing related works.

Thanks,
Leo Yan

[1] https://lkml.org/lkml/2019/4/15/658

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
