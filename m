Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D0B5FFAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 05:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeUoQgSz3k3DcntuIPTLJO+dQR2EbGBhWPtMoMM0wno=; b=u2Wvpu4mU6EQpP
	yp/GI56FZbdJXy1Yayj0fKhALLXXsxqBvVZRMRGleSPD8um/9xxwx6PAjXBw3QcS3Cxwhjrf5hLyL
	ItVWz9g/pxfkktIrKJC7EVdQNz1UvfGGWFnIAQQqqnyGltrPN3zlObHHBQOGyV/uyIskbXGmkV+vG
	C9mUhHJXcvsRIDidu9o0Oq6Huzi3zPGJ+hwNj23BBoW5Dk+/5HKqGVkraQxMmYnf9MT140wUPtyDj
	8N+fggVUmx7h9nAQgkUxrRGEGpEscQsvnRdU0290r1MbbneQDBjI/s17QyJFWUNM9A7oAW268qlQT
	UXOF444FY5Dy34Nc4UqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjEfM-0007O3-Of; Fri, 05 Jul 2019 03:13:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjEf7-0007Nc-JE
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 03:13:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so3635362pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 20:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=N2IO4pfRvp3fi/Bx06vT+ESFz9m9oS+vnVgitDhXnlk=;
 b=cvinMYul5caH68j0PDS1o1euY/qMSIt+eJQzgm97Fqa3GfDOq2oEsUvOQNXrVCwh48
 emTL3XAhJmoeXJkhWcNykVeXoXydlL1bSbR2Gf72J2XcSnSALaX/tRuyp+e9PbFFtm8o
 moR49LBYEp8iEDHV43t1iwy4GQJTIyuu9Imgn0OB6mNxMjcPa67SXzpag/SNO5FOnHgi
 iGRCbEtykbhpWgiZ1ou2DAIZAaY3BXz559PgIlxdvNevnIXUWSGjhlNaKo/D8C3hE5WW
 Pcx5u2fhD/KRr0T3mGOBGHtb72tSELxuy9O8+Y8EJViFdkfRMGp0hZsPJ+iiJ4lmIbFT
 3HYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=N2IO4pfRvp3fi/Bx06vT+ESFz9m9oS+vnVgitDhXnlk=;
 b=Zyrgl8wJhX3ydss8Wrd5BFPlQJ7anMWLprvXas8Hj3lYZ/JvkhCKA8GGQWjGanOAwd
 4+GL9x6r72aX4SwHbsNO+JKR2/F5SzJGKnRJXfq/MwmcQ5cy8kTmrYS5nQEdc7Z5DY19
 KfmB+pVQvMyLWaeaQn+NadQBLOjPODomBSoXnVE05IXU7on2lHk36EpnXf71Jjzzm83g
 9UmmSh2IAy9d0KsIh5+VsZHbrwRGW9P6mzhCj24H4uQNsZEmrUtwRAuQRMyDVFsA1ddZ
 owIw5bLORMhJlUsXB/DqeGaBrlFzV6Buvze3Fzk+lTX8oyRIstlTiutu0FdCeH1sAPds
 OHOg==
X-Gm-Message-State: APjAAAWILimjcbNaG/tHLpJPJYtkeft80A6drCyyAQ77sq/CniL79Vvw
 0rqIUYjaBMG06kMRpqdT4rsvLg==
X-Google-Smtp-Source: APXvYqzqeRpd3KPGd5X2doKamT8zLl4p5im8dqSN/7y2ZSp4g4fAZ+OLBA5C1SDmUDXXCWg7N2SIug==
X-Received: by 2002:a17:90a:5288:: with SMTP id
 w8mr1705563pjh.61.1562296402187; 
 Thu, 04 Jul 2019 20:13:22 -0700 (PDT)
Received: from localhost ([122.172.21.205])
 by smtp.gmail.com with ESMTPSA id s20sm7499185pfe.169.2019.07.04.20.13.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 20:13:20 -0700 (PDT)
Date: Fri, 5 Jul 2019 08:43:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v4.4 10/45] mm/kasan: add API to check memory regions
Message-ID: <20190705031318.qnhrvfrzjqk24r3f@vireshk-i7>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <0cedfc51f5941ab2c2e9a09149d34c7451efda56.1560480942.git.viresh.kumar@linaro.org>
 <9c5374d4-1775-572d-ba79-b161a82190c6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c5374d4-1775-572d-ba79-b161a82190c6@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_201325_666868_2C8425A7 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-07-19, 15:15, Julien Thierry wrote:
> I know you have updated the code since then but the issue seems to be
> also present on your updated branch.
> 
> This patch breaks the build when enabling CONFIG_KASAN because in 4.4
> check_memory_region() only takes 3 arguments.

Fixed and pushed again. Thanks.

I have also tried enabling all the other ifdefs used in these patches
to make sure it doesn't work after enabling them. Looks good now.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
