Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2737144658
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 22:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KRy3AomrvpsHBpZw/EBZq5hSqsji/ty9od0gXh6MBU=; b=AEnKGZ+uD6/XEu
	pjTRc/TYGaBvPnr0OIPh+kXqZ0DvxHMizxHB81QdRPC8+Ckt29XcJHaTvzhO/ReA0Rsu8/5M2o8Yi
	dVpowqAnH8dRPfLyeEKvDIV6Iwwu3l9pnIDw5MlTSH2VX7J2lpj1KcU9Vaf+LNFFLWgysfVTyzRu6
	X6C2RrLMcaF92n9fMqiTOT0bFglqHHootrTrtSnm9QargfMLz7rjjr3HA5HT8f7s0rR6m2azeWs1E
	Diui27/fKc5DFFIuoU49RHpNyXqDnjs0W0+xtzwonYOXbdc/02R4rH1dLy3g/Q0uWB0CvWv+BYweZ
	Cz/mWxl3o3Azd93yND1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0y2-0008En-Nq; Tue, 21 Jan 2020 21:21:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0xs-0008EO-DF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 21:21:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579641691;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hUDc746gEw7bmqdrDee21GPcvrO5Acs+G0v791qb43c=;
 b=LCFblu8jxwa+SjR9sDpIjVLoadROAbtP8I41qViEFUFpMSjrAxgzPaD/pSSyUdCnyKWrgb
 AmueiRydKZZcCpd3XYdICKMxAhQznDFY8qFRot5G4o84vQmg2a94LWDH1DMA42lF439oVw
 BRdFmYMtpeOTVjYOaporxkLFk4PHCR8=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-382-pYP9aLwFMPaf7UKeemBSpw-1; Tue, 21 Jan 2020 16:19:36 -0500
Received: by mail-wr1-f69.google.com with SMTP id u12so2002745wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 13:19:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hUDc746gEw7bmqdrDee21GPcvrO5Acs+G0v791qb43c=;
 b=HCJJs57y//YT6L43X1sly8dXmBUBq68QGSFvWixjZEi40nFUL+mxGXYcmYmUkMh0J3
 Z2XMwglERyJqLiAJXS0ysFuDfv57ZwbNlbVQobaWY4NHr33/fWP9QPeKILlpW5VrhgRC
 w1iB7xE/Cy2JMb83HU33A9Zv4MwdkNtP9khDDnzvv/Qn2XspyqcZy9tgrfUo3vGPN458
 70UtHKP8daxiGtUhdw6+k0p9LYm0vbhVR4fHuGU3Zkphf8/sa5TENAyiLmR3/eJU/XGy
 YQsX1XbXEbhuHHYk0We9PLv6GTCwnHR5h6ltIbkDgKitzjJzQl+rBxIYN/1OxFTkwwdq
 a9/w==
X-Gm-Message-State: APjAAAVJmc3+UC2/otPQ0ChlSy8cS1cLNetNDpz0j7++F9tCz3E/ikeX
 dS8SWHaPvD58nKZBr840W0trCTxZAVeDq9yRpd54bKOENcaMR2lRBe0HHK8V5RyuLDlR8mIY2UL
 2QlyLO8297NABrAhK+wCVlMVprcHdG4cZbzw=
X-Received: by 2002:a5d:6a02:: with SMTP id m2mr7108165wru.52.1579641574577;
 Tue, 21 Jan 2020 13:19:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqxoPnkxLxUGe7WRD6VylEoIv+x6W5+cow3h5Z9Uz8mj37YpcfxZ7pVN18YIIyxft0zVUg14Tg==
X-Received: by 2002:a5d:6a02:: with SMTP id m2mr7108137wru.52.1579641574308;
 Tue, 21 Jan 2020 13:19:34 -0800 (PST)
Received: from x1.bristot.me ([83.136.205.253])
 by smtp.gmail.com with ESMTPSA id v22sm872400wml.11.2020.01.21.13.19.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jan 2020 13:19:33 -0800 (PST)
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
To: Peter Zijlstra <peterz@infradead.org>, Alex Kogan <alex.kogan@oracle.com>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <20200121135034.GA14946@hirez.programming.kicks-ass.net>
From: Daniel Bristot de Oliveira <bristot@redhat.com>
Message-ID: <e10414a6-dbfc-a666-18b8-a0499c93a203@redhat.com>
Date: Tue, 21 Jan 2020 22:19:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200121135034.GA14946@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-MC-Unique: pYP9aLwFMPaf7UKeemBSpw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_132136_528185_7191DB99 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 dave.dice@oracle.com, jglauber@marvell.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk, steven.sistare@oracle.com,
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 longman@redhat.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/21/20 2:50 PM, Peter Zijlstra wrote:
> On Tue, Jan 21, 2020 at 02:29:49PM +0100, Peter Zijlstra wrote:
>> On Mon, Dec 30, 2019 at 02:40:41PM -0500, Alex Kogan wrote:
>>
>>> +/*
>>> + * Controls the threshold for the number of intra-node lock hand-offs before
>>> + * the NUMA-aware variant of spinlock is forced to be passed to a thread on
>>> + * another NUMA node. By default, the chosen value provides reasonable
>>> + * long-term fairness without sacrificing performance compared to a lock
>>> + * that does not have any fairness guarantees. The default setting can
>>> + * be changed with the "numa_spinlock_threshold" boot option.
>>> + */
>>> +int intra_node_handoff_threshold __ro_after_init = 1 << 16;
>> There is a distinct lack of quantitative data to back up that
>> 'reasonable' claim there.
>>
>> Where is the table of inter-node latencies observed for the various
>> values tested, and on what criteria is this number deemed reasonable?
>>
>> To me, 64k lock hold times seems like a giant number, entirely outside
>> of reasonable.
> Daniel, IIRC you just did a paper on constructing worst case latencies
> from measuring pieces. Do you have data on average lock hold times?
> 

I am still writing the paper, but I do not have the (avg) lock times. It is it
is in the TODO list, though!

-- Daniel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
