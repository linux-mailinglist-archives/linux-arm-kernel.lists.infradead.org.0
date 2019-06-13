Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF64643522
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DqPbXEa4iosORgLcGXM0cPfhrGMEta/mk+lQyQJvCzs=; b=YiT187fOcRvBst
	gn7hTxl0cxy1utfj401UR9dTv12RslxvhifT43nDWFUBWOWoYZ4EVx9z7xucSv62S/UEnMq8L5XRe
	XYHcITn/zG1Au69HXFI7UtaTDJAbAtFJ8jfz5cxwCMPWwcPyqe4lgy2rCkUMmEQjLF91iy8ycDD9e
	lEeRYQkE4ZJ83F+JBkbIENpBPKuwSO8Iv03kZ6QfL86fAb5vPEEji0Vp0K6VEPvr1nWymAcofQrGy
	V0iK5317Q54/qWXEdvsuI7L3fAsbCXtq4W5r4MwjreoONjj5TJJ9FJlB8LkYbsGqAB3UQtBSvUrLo
	D3enTiJsatjCEQjkxCcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMgc-00086P-A3; Thu, 13 Jun 2019 10:10:26 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMgQ-00085g-QV
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:10:16 +0000
Received: by mail-qk1-x731.google.com with SMTP id i125so12319069qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 03:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G+/m82mqxjd9gIpNfnWmM7e/plUww26lxwM8xYns8rs=;
 b=QlGjKHJz2GJTVK6mzm0yFP2cbnl7i+MZ4Xec/pPRbnT9GCY6XuiRDaX+gJ5XWSrcuU
 r/Hu1CyptYg6U9chTIjTCEE0D6UwpwwgZagYGIgc5djxOj9xXYoHCrDf0udxdDjrS7Xk
 o9TstvnafPjdhuXreF+benUANGH5H3n3o4tVV3PBfqEIeRdXcfFNr+36VTffGZfROpgf
 6H2gMVnOm7dyOt8j3Wg1ifrmysZdpT7crM3Um8X550quH4lDKsbf3luMiOFKb3Jmb1Fz
 T9ZqlBtKxJMGeL2M0+rmyVSP/XHiKPU/JuE8UKotyfuIvvuIn2iKjA2v6zuY2+4Fpciz
 jxGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G+/m82mqxjd9gIpNfnWmM7e/plUww26lxwM8xYns8rs=;
 b=s3drk2lnwi7O62Iui4n18aRdZhEPs89IXHEEk0/ultlZXSMcHk9lKz2MeK5aoXw6WJ
 2q7IUJT4eD49LKeW6ehkDF0tkYeuqcrV2hXSKm5cXnSBWW1Byt/kSSITeX0r8OwNF9if
 P37pNkUKKs7BuJGBr8cMfIqCWnSeQpwD9LIxQ3p2waxAeqJyG3awMXl5KCnMGu9xXRTp
 4lYw9ChtunUfMQXQTCkMkAxWxD8f1DbMTK+7NgGtLmD+K2DH09zIUj4Sahjka0KGW+vk
 USCKa9F+H6AbFJsovbhLIErBH/8xoXhqeulHHyf2w3y1YMSb/s3Uvl3Jusx/Z55r1esS
 NwZg==
X-Gm-Message-State: APjAAAXgbDjOjZdcjQYlfQ7RQE5Iz2nrpCGZC97agQqyWOukDJ+UmA2n
 04/vZaM9Qyg6BDPOhTIqRhuEQQ==
X-Google-Smtp-Source: APXvYqxIbHOzxEYwBro5PMImc2reA5unpanKIDqO46BvGxrEx2OSDXZil6QC+n4Uhb/HMkmgHAcJlw==
X-Received: by 2002:ae9:e306:: with SMTP id v6mr70280179qkf.145.1560420611302; 
 Thu, 13 Jun 2019 03:10:11 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id u125sm1190373qkd.5.2019.06.13.03.10.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 03:10:10 -0700 (PDT)
Date: Thu, 13 Jun 2019 18:10:04 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] coresight: potential uninitialized variable in probe()
Message-ID: <20190613101004.GB5242@leoy-ThinkPad-X240s>
References: <20190613065815.GF16334@mwanda>
 <20190613074922.GB21113@leoy-ThinkPad-X240s>
 <20190613081419.GG1893@kadam>
 <20190613095637.GA5242@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613095637.GA5242@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_031014_870195_F4335CC6 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:731 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:56:37PM +0800, Leo Yan wrote:

[...]

> > In my experience it's better to initialize the return as late as
> > possible so that you get static checker warnings when you forget to set
> > the error code.
> 
> Just want to check one thing, which static checker you are using?

Okay, I think it's smatch :)

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
