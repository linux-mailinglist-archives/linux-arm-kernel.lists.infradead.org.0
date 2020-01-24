Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1126D14867A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RooBS1Kj+YvhYU3IE1DVdy3pc9lCARIzCYVCWud2JKQ=; b=lP1Siei7UpuGXL
	/RUNZGwS6I9rtxhXAWAF8kxjsy/0KSMODQvDjiwL5Amm8ua20GAoXll5Zs9Z4N5BsJyH/1wO8JBW5
	YBfCbZPtVyq5WUPUh/SLuly6vOwAPNUD0rWFC/WiPaUYwEwhvUqpqUmF2cnJ+eCELZ9BMhy533PvQ
	dDuCk8n1QoDTBj5O1c1Ll/WdjwWhKdEekv/dJKpiMIgi+rBP3RnSak7WANSHnZb3JVuhzM7PPT7Du
	JR/vnXCT2tBif2M/mM8Hb5pVxW6Pq0tothqohNJv7W+0+SZt8eOMfqmcDkmeAPrNSQsfWFpgMo/yr
	wTkXiKch6IaQE0DyUT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzXy-0002UR-Mg; Fri, 24 Jan 2020 14:02:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzXq-0002Ty-3t
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:02:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so1776810wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 06:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=P//bELOAogzapLRAvc0MrTECr/vkbTdTXm/vZxUoi7A=;
 b=L9ErBMyCtJKb5ZEZYl3TmzU8EuI/xFUWYDF+VW9m90cvjhClhkYvKXe8R60FO1jApB
 myLg4r9b28I5Vc+4zNLsdEfYsQ9aWxkO/BdkYOuyV0Au5mSq/4JtRW7JFx3Q9S24CGvD
 2Mt0W5leTE7dWl9zVcoVSRPAuGZBK0Oa9tvBEwzJWzXG5ls6izBvvc/iSVkBHUTOe1UN
 lVmz78njpXZZBYDF4uVoTiXQxlxnKtYYk/B3Bkv9edn4xJEHhsz8BwyM/v73POvMSl67
 SKL+XWTPYoyrQQQ9G67iRS++pePFi6hYUxk0uCIipKFSOxIjcgoZK3kfOa46mExL59tk
 73/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=P//bELOAogzapLRAvc0MrTECr/vkbTdTXm/vZxUoi7A=;
 b=V+fIwh354cNQQDosadMiCExfKIPLYRvEpZ1blBqsZhwEP8cAMdfQlcMMp6W2JEJ3Qf
 bA/Fz+Uc171avFoalfIL9nCR/swW+UfNxEe0/+fmaDTIiT+lIybStnoizeilz+dwGsre
 4iPjBFI2shJnwUkUuCFHyMAFH8jcxlxDps5j1H7xEKDdkFNYORgzllk6lz2mILvELN2W
 yNTXbxaEXbe547UdeXHoeMwdjdjXo270WCN0mYBZUGpM0zYY6nSScuCkVKEktBTt73WE
 IyUPGQAATGEwhPF6aazhnhfSD4367OcsXUO3VETLUgO2s6DrU3Noahr+6Mc3d9EV5l4O
 pMkg==
X-Gm-Message-State: APjAAAUIrx2yHPWs3DlyR5HUaT/7W+RxievDD9pPgvio15FwV/rAwgJV
 K82D2iZcUXdQo9nh5g2F+C3VCg==
X-Google-Smtp-Source: APXvYqwh++vgRWy9mDsoWvMlmUS3xeKplJZO2IFAv+YwFA/ve3hr0mvoCovh3TlbiktzN44VhH43YQ==
X-Received: by 2002:a1c:1b4d:: with SMTP id b74mr1475490wmb.33.1579874562635; 
 Fri, 24 Jan 2020 06:02:42 -0800 (PST)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id o1sm7474771wrn.84.2020.01.24.06.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 24 Jan 2020 06:02:41 -0800 (PST)
Date: Fri, 24 Jan 2020 14:02:37 +0000
From: Quentin Perret <qperret@google.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2 0/1] arm/arm64: add support for folded p4d page tables
Message-ID: <20200124140237.GA180536@google.com>
References: <20200113111323.10463-1-rppt@kernel.org>
 <20200122185017.GA17321@willie-the-truck>
 <cb6357040bd5d9fa061a8d3bd96fb571@kernel.org>
 <20200124122053.GA150292@google.com>
 <af9e7292f723f808406510f437d5b0eb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af9e7292f723f808406510f437d5b0eb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_060246_183707_B9DACCC4 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: kernel-team@android.com, Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Friday 24 Jan 2020 at 13:34:35 (+0000), Marc Zyngier wrote:
> I don't disagree at all. To be honest, I've been on the cusp of getting
> rid of it for a while, for multiple reasons:
> 
> - It has no users (as you noticed)
> - It is hardly tested (a consequence of the above)
> - It isn't feature complete (no debug, no PMU)
> - It doesn't follow any of the evolution of the architecture (a more
>   generic feature of the 32bit port, probably because people run their
>   64bit-capable cores in 64bit mode)
> - It is becoming a mess of empty stubs
> 
> The maintenance aspect hasn't been a real problem so far. Even the NV
> support is only about 200 lines of stubs. But what you have in mind is
> going to be much more invasive, and I wouldn't want an unused feature to
> get in the way.
> 
> What I may end-up doing is to send a RFC series to remove the 32bit host
> support from the tree during in the 5.6 cycle, targeting 5.7. If someone
> shouts loudly during that time frame, we keep it and you'll have to work
> around it. If nobody cares, then dropping it is the right thing to do.
> 
> Would that be OK with you?

Absolutely. And yes, if there are users of the 32 bits port, it'll be on
us to work around in a clean way, but I think this is perfectly fair.
I'll be happy to try and test your RFC series when it goes on the list
if that can help.

Thanks!
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
