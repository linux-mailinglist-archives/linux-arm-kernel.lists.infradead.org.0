Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630381CCD5B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 21:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrFu01prp/bJfLJLToTPe7jFtBSNNxmcK5TXEYBX4bQ=; b=Lujx3CIM+osxCv
	SLymNmfElJz7XAyUJoNXLgsAH6GJzl6eLLDG0fNTwK9YphgYYwvoTp2uvJcTuIJrkIaSpsKsu6QHE
	KTXVj7iZxmaNvKduKFE7IiJOIfURGdtl1DRKAzmQw+vCvxs5ryRno+3dyQoD39bit3QU22kM2jKW2
	G4sFqvVTI9U/SyoQRHXb6pBAxDxUX2c9xBFabEi77u8wLv9cIpPDXihN5bq6Yqml1gkW+Q1W6UuWm
	Df0GJnLNx+hsvsW4EksWcaTL+VoeDFLFJ64y/QCIcl+hl8JCvPSB31neKVyemIgRp5o1CsovJg6Kj
	sSyNI/jVijrExsowm3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXrzr-0006xe-3L; Sun, 10 May 2020 19:52:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXrzh-0006xJ-QT
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 19:52:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so8330839wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 May 2020 12:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Ev0gVa/MeZtNVLRSEHKJLWUsQeV9Y9ZcxTr8PwODIP0=;
 b=QfaR0nZ5+bPcvhnSmQsi58zM9q7KBGLdwmlhOXGbhFXjcWmhabac21g3D2BnWXSK3f
 v/ZkMSWcmOIdLvbPyLi4IppBNGM46VDFy9RsPgb7BEyIL8Bzie2U371oiECLD28TzRBk
 YOZvUUt/7bVjlOYYCyc7L/YTI7643YqoWTWQ1muknuAg7tgJHsgoqKCt6ZTmt7bdKoPZ
 nbNM35zz/UDc7DX19FUkxwsEVrEkTa5HLoyClYIjxzZx56SjegEcMm7U4RrUJ7maI5xA
 i1d6HZdAEKKYA0t+AXKS7fQcyH8nAd8ysA1LfjAqNuNZGk2VDKkerfxQ6y6p2qNdccuB
 9r8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Ev0gVa/MeZtNVLRSEHKJLWUsQeV9Y9ZcxTr8PwODIP0=;
 b=P02e/YqCjR4PsslHBjC+QgmgvbryR1+YnjthTUWnXmD4p3/6t3DuVU5Ksgi7rzYccD
 Ms2PJQ0EM4RFMlC9ZUf1hSYXwawHGbf8qqpGaXJ0HqgsZNKXO0+2TJYttWBvSZj3F8KR
 BW3hstdvqjJuaiFsLTr69Pk6k4P3kAKLxJ47PwARmN3qf2EW8SwoTvWCmXyYX2KI8BTA
 nFTW/RpBsY2lterozlQ+ZoKpPqQoGQBnlrUIRgtDbf4t/AvbEPRG6kQ3QncZUP6DTLE0
 hEjRAHiiHn1L2khkw0u85LHjvLAhToEgEoc0PUn4ABnWLdqXVKRUxlHk+DoCq7l4x2t7
 X+ZA==
X-Gm-Message-State: AGi0PuZ4dbW1pT+IazR73j0XcHmh94CtxWSHTgiPqstNcf6joojC3Ww1
 jL9CDEPekqX/qWL6R0Pa0kE=
X-Google-Smtp-Source: APiQypKSPzeLW70VVH8h+5+6V6ehsgDTv/l/qVwKIpRbQesWfdY8AcjsCcwOivqjUFFttqnOydl/+w==
X-Received: by 2002:a5d:4745:: with SMTP id o5mr13682424wrs.128.1589140330910; 
 Sun, 10 May 2020 12:52:10 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l5sm14492680wrr.72.2020.05.10.12.52.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 10 May 2020 12:52:09 -0700 (PDT)
Subject: Re: [PATCH] ARM: mm: Remove virtual address print from B15 RAC driver
To: linux-arm-kernel@lists.infradead.org
References: <20200506233708.422-1-f.fainelli@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <74e3f5f8-468f-b535-526f-b17c3ac8b4f2@gmail.com>
Date: Sun, 10 May 2020 12:52:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200506233708.422-1-f.fainelli@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_125213_882933_022D1562 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Russell King <linux@armlinux.org.uk>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/6/2020 4:37 PM, Florian Fainelli wrote:
> We would be trying to print the kernel virtual address of the base
> register address which is not very useful and is not displayed by
> default because of pointer restriction. Print the Device Tree node name
> instead which is what was originally intended.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Applied to soc/next, thanks!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
