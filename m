Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847711B51C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 03:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=457z49RJ9p5f3YG8q21hoN1nIyL4q3pjjBxK77nxd0Q=; b=fUl2lSprLszb9zJCIMyASUnXO
	JIu3jo/Y3ZV9q+2A34joRULGplnE77vdBt/OgjO1w1Rh7T6SzEq+SH0fy5N0bdpzKuMDt9iHXtI06
	Zvg7LjuPGD0ESW74Xo0hQ3NzBhJv6LurmXhh8Fg0tiz4XPauJJ0fzBhe588M7+sKcdPWvtaQTYkJ0
	92kBzV4DbHRIdTLzuhSElREQnWocmMXLGoYCkx93OBLwN/wZyuObt9+3To8NbdcAruq2nVHjXhSrx
	rE9rGEEeSpUTYns5ZF1bqiIEbq+ZLRzimuCdxLUkNjqb1f86HnMHQhaMXMt+SnUOoy/4V/ygNj9s8
	jYnzlXhdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRQYV-0007Dh-Uy; Thu, 23 Apr 2020 01:21:31 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRQYI-0007BL-CE; Thu, 23 Apr 2020 01:21:19 +0000
Received: by mail-pg1-f194.google.com with SMTP id x26so2030042pgc.10;
 Wed, 22 Apr 2020 18:21:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HuA0hxQTe90PJtZs9WSSy8kDWUbxSlnvi9VsPza7S2Y=;
 b=ZDTujw6fZ5jY3XQ65wjFG3v3OifNL8dO72xLpax9866UPGEHX+COqqw8MbkahcsvKK
 +YsqnpA8Ehg+MZn+MG5eYsYvN5OsFOBCjiedGHVCXf4UKWL5NxqksXplCpV3Zc5x7OMa
 NRONt1Ytv3x8F4tiCbsBGVvEDTdGr4+iS2c7Fu+HkLzQzARQCTzqcjsXaXRvbmAoRajw
 ITyL8J4FoZ6XgaTCUKjOEkCmIOoHocqNy6GAYEdz3atKIJxKKM7ZzdbQFOtaa7U+acbB
 UUe2UZwurfNkZ35YUBl9Y6Vw9p7kGHy3h26j7F0bm9fKXT8cZWwxE4/HdhLvtamz5qBq
 Y0Hw==
X-Gm-Message-State: AGi0PuZrSeekER0SbnDA//1TTcYQFU/GcTgR55vmu4fibCDU12yAJpJu
 j+1X7JfhuGmqtyIMIzspyxs=
X-Google-Smtp-Source: APiQypKxBlGRT0F6vEFPhi5oneOUM697xMXU65q00ggKMra7UIbFqy/Kx++vjPJ34SrVHIxn8OpClA==
X-Received: by 2002:aa7:80cf:: with SMTP id a15mr1441540pfn.124.1587604876968; 
 Wed, 22 Apr 2020 18:21:16 -0700 (PDT)
Received: from [100.124.12.67] ([104.129.198.222])
 by smtp.gmail.com with ESMTPSA id n23sm471545pjq.18.2020.04.22.18.21.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 18:21:16 -0700 (PDT)
Subject: Re: [PATCH v2] stacktrace: cleanup inconsistent variable type
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200421013511.5960-1-walter-zh.wu@mediatek.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d2a9f155-f309-0182-73c9-5c02d7014574@acm.org>
Date: Wed, 22 Apr 2020 18:21:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200421013511.5960-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_182118_418106_091EF4D1 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bart.vanassche[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-mm@kvack.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream <wsd_upstream@mediatek.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/20/20 6:35 PM, Walter Wu wrote:
> Modify the variable type of 'skip' member of struct stack_trace.
> In theory, the 'skip' variable type should be unsigned int.
> There are two reasons:
> - The 'skip' only has two situation, 1)Positive value, 2)Zero
> - The 'skip' of struct stack_trace has inconsistent type with struct
>    stack_trace_data, it makes a bit confusion in the relationship between
>    struct stack_trace and stack_trace_data.

Reviewed-by: Bart Van Assche <bvanassche@acm.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
