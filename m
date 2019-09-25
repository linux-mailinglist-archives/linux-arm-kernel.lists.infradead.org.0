Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA633BE5C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TyhicSn3Yq7dWkrcLWhT8zJV+mA4Jz8lUZBEknTXxRc=; b=fn+BgLduFaAMY8RrPvVF94im6
	GDo60m0EASKv+62v3MpLC6T19zq/cwNyPw3OJUUrnjYjgqh7yP2Mc2kQpdDgqYk1UiclDExd6C3FN
	m4gHNE8wUcOokM0cRp3p0pcNu+1fTy12k37P6nqnC/0SsL9+J6tphJr0S23SDqGdbCBZ73WDXpzKF
	Q4Gl/cz1gtS8oOm60YP/6rtLZ3vyVQMs9qPwskeMu/u70cg1OXoDxlqcubYHOARc2AAxCuWml7Gog
	sf0QzX6z0VdS78fyuzn4cxybJG7Gt/VYpdRg0pd77Hq47zd2aVisFPTAJz0wZYn9wfFUyovqBjw7n
	IOuf6VqLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDD5W-0002Xe-Gn; Wed, 25 Sep 2019 19:36:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDD5H-0002We-RD
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:36:21 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9EB021D7A;
 Wed, 25 Sep 2019 19:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569440179;
 bh=8Grs7LRppFCyZ3JutL0fp5q5ZY3bi7rRdE0tG+CC9ko=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=C4OXA8IRly1/koag00wpkKy6fxTogThu9rb3n13g1NEADdTUd19KiCTuoHIE3HHjN
 oLOf5gW5VWSi9Oql4blr4ujIa5+ftneZAvst1GLAlFMIWZXSHnh5kz5pqlWXoKR+IF
 6AV5uqoEXC46Usyn7BMfvSvk0MN3uhDR21Ahc/fc=
Subject: Re: [PATCH 1/2] kselftest: add capability to skip chosen TARGETS
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190925132421.23572-1-cristian.marussi@arm.com>
From: shuah <shuah@kernel.org>
Message-ID: <e8848069-124d-a236-30c9-b8915471db16@kernel.org>
Date: Wed, 25 Sep 2019 13:36:04 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925132421.23572-1-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_123619_906389_1AAA5856 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: shuah <shuah@kernel.org>, dave.martin@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/25/19 7:24 AM, Cristian Marussi wrote:
> Let the user specify an optional TARGETS skiplist through the new optional
> SKIP_TARGETS Makefile variable.
> 
> It is easier to skip at will a reduced and well defined list of possibly
> problematic targets with SKIP_TARGETS then to provide a partially stripped
> down list of good targets using the usual TARGETS variable.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
>   tools/testing/selftests/Makefile | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index 25b43a8c2b15..103936faa46d 100644
> --- a/tools/testing/selftests/Makefile
> +++ b/tools/testing/selftests/Makefile
> @@ -132,6 +132,10 @@ else
>   		ARCH=$(ARCH) -C $(top_srcdir) headers_install
>   endif
>   
> +# User can optionally provide a TARGETS skiplist.
> +SKIP_TARGETS ?=
> +TARGETS := $(filter-out $(SKIP_TARGETS), $(TARGETS))
> +
>   all: khdr
>   	@for TARGET in $(TARGETS); do		\
>   		BUILD_TARGET=$$BUILD/$$TARGET;	\
> 

Thanks for doing this. This looks good to me. Would you like to
update the documentation file?

thanks,
-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
