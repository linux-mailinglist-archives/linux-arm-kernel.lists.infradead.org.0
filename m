Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DCA18249A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:18:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5ULOSBR6+KmatwXImdBNg/2hh3jbducq1DIw74NsVA=; b=oPbKg7Yzvt0rDB
	599bJazHrXP7gqfR+WmbqhTBtdmD///2+xJYonJl6LddM5rMc08o15QpGD7QD3e+UCUIDRnvP9HoZ
	vfxgElGMKYgYXKPxQnS20VsVuhJlNZpqo6n2UyBGF0Vd3rvtubIdW7oBemLPYQQEXT9hgrTtP7nsa
	eP2Sc1Q4p+QDoPFPGOxSfMcpDbDvxTPdNruVjFZGakcuKPzKwlizUwNuzz6qkuhq/bzX8el56FcwI
	AVdJr2Rz51W8X3WXs4uaNJnbH20LRNpurOcOHxcLBqGbvk3SB53OUyAYpJnj6SjRYFg+q4pHh5uYD
	efsJwGLFgwun64ZupA+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9fy-0000sP-L9; Wed, 11 Mar 2020 22:18:06 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9fr-0000rq-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:18:00 +0000
Received: by mail-pj1-x1043.google.com with SMTP id y7so1655286pjn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 15:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nRYie0QyD+cdnhyddPb9ZD6MZri8AoRElYc1Lmc36hE=;
 b=e+V1sIESfX0FctKsPmQvgrEDc4zbPfgdr9ALswG6YdboRPAAfcRvBQkR2Q4av0ZVpN
 FYScNTZbenpdyA2htFDRlNsrMWF00GPDxFC1OCVkZfugBjd9PQWJq4TZP63Dqzci4+0Y
 mAqrh4aG5ekBqBm0iPNRj3MD4lal8Rre/NPxJebAUNhTYsipARs7EcLXB0GMAQQ65GAN
 fgDYmsLNIheUbFFGZsob4cz32SzBXbtShOntOwJNybjwA80gECzoNZDlN8YCt7bjrCsj
 nOPPwUzYST3PRS/gHU4ILUz7X8foFzcoturMNV0gqr2bQiw6uBa3hTXpknxyW5zRbRkY
 Okug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nRYie0QyD+cdnhyddPb9ZD6MZri8AoRElYc1Lmc36hE=;
 b=rjSLlO5OPe3iS9swZPwG9Bmu2aDqgBOaZ2JmoQi6Rer7+28fBN753SQpBLKzPKQfq7
 IqBPTnypx6zHS/tx3BqfuuiwhYBDyKEhCbLOoqpyxdCc2CbLqjeXkKqXOfXfFqJsBLWM
 06+VJktgI8n2P2l101SfQLg+slg9IppT+8OX5P34KkfD5ScA5pRFaDF/TF0PvvQdbBT1
 zHSuYf48RG5UtUlpcYLC/rLY5HOF9lpZTdEO5T4hLJeOwstW+OQssl96izoRxas/uIi0
 508x7Km3oTZSgbGWVwgF59Hu/PE0a9XHIAnY8igxo/mIwk69w/ixJnvgqthRMawg+JDd
 waRg==
X-Gm-Message-State: ANhLgQ1FePmjjIBxnBdqD/EkaFwLcOw2cQxwdSElGXBd4L9rIp7s7M0W
 2LS8pSRSy/Eazkr2yGlb4MTG7A==
X-Google-Smtp-Source: ADFU+vuqclAJuGflnAIq8cnrsyrMIS5uLHU9vn4bhcJZpIKT78qUgs2mCU42WQim5LsEXlDajXLjmA==
X-Received: by 2002:a17:902:9f86:: with SMTP id
 g6mr4715169plq.299.1583965078277; 
 Wed, 11 Mar 2020 15:17:58 -0700 (PDT)
Received: from [192.168.1.11] (97-126-123-70.tukw.qwest.net. [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id
 a3sm29439695pfi.161.2020.03.11.15.17.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 15:17:57 -0700 (PDT)
Subject: Re: [PATCH v2 19/19] arm64: mte: Add Memory Tagging Extension
 documentation
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200226180526.3272848-1-catalin.marinas@arm.com>
 <20200226180526.3272848-20-catalin.marinas@arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <0857cca0-9f75-398d-e755-f645d2d8a594@linaro.org>
Date: Wed, 11 Mar 2020 15:17:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200226180526.3272848-20-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_151759_288823_8FCC15E1 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 10:05 AM, Catalin Marinas wrote:
> +    /*
> +     * From include/uapi/linux/prctl.h
> +     */
> +    #define PR_SET_TAGGED_ADDR_CTRL 55
> +    #define PR_GET_TAGGED_ADDR_CTRL 56
> +    # define PR_TAGGED_ADDR_ENABLE  (1UL << 0)
> +    # define PR_MTE_TCF_SHIFT       1
> +    # define PR_MTE_TCF_NONE        (0UL << PR_MTE_TCF_SHIFT)
> +    # define PR_MTE_TCF_SYNC        (1UL << PR_MTE_TCF_SHIFT)
> +    # define PR_MTE_TCF_ASYNC       (2UL << PR_MTE_TCF_SHIFT)
> +    # define PR_MTE_TCF_MASK        (3UL << PR_MTE_TCF_SHIFT)
> +    # define PR_MTE_TAG_SHIFT       3
> +    # define PR_MTE_TAG_MASK        (0xffffUL << PR_MTE_TAG_SHIFT)

Is there a reason not to include TCMA into the set of bits that userland can
control with this prcrl?

I know that ordinarily TCR_ELx requires expensive syncing, but for this
particular field there is a note about "software may change this control bit on
a context switch".  Which I take to mean that the usual TLB-related syncing may
be omitted.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
