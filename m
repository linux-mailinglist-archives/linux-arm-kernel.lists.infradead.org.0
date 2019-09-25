Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4196BE5C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=khgDVmWwMRXUQVAEqrL6AzgQhBuUhkQ50hZuh2woZnA=; b=r39YLzJ6lo8uzrM3vTXsgHLoi
	U9OVUHVBpQQbBqBmY4gIJWmG66jXJzvwlixB3DJIdnX/OEbSViEdQM2Gc7KAdQP7sCO2jb5a1lC2e
	/xucUfv1m9FDaRqODlNufGMSslIVdA8vPxg44CIXOp2m9vrIc6i5LZyKp7uUSpX6itXSP/kHglZgG
	AIrw/al3CVpFmUtsYcfkXe5jsDTT+jd2R21Oz65SdsevSo4tbPlMefhDRhALDwTJMBp/QRGU+EZjU
	C0/N9oZ9aaZzsLj/233AtgTFlqNHizv2jwY//EJax55fHV4vIKJmL7OmDr/FEzE1A2vqAqcK5dr7k
	G/wk6v28Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDD6G-00036p-KX; Wed, 25 Sep 2019 19:37:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDD5g-0002q9-La
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:36:47 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 096CF21D7A;
 Wed, 25 Sep 2019 19:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569440204;
 bh=5Gm1h33RuHVX6DX/tp8dYOGoNk7nNRxZvLsX8xAjiEs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=g/W0J48ReDDn0f5ap0TBcejsFoEq5uE4KOq9RcgbdS6bW5GjlIhhr4cl3ILlNEhKA
 Mv4aWCMhOSxQHTwoneDcE4pm7/7W3F5e1J5jGCINyLsxfbpYBLD9L9yE9+yQfdpmHT
 QP19hWhnnLIcHBynngLmRdgaY8//nOKvd1oG+ubY=
Subject: Re: [PATCH 2/2] kselftest: exclude failed TARGETS from runlist
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kselftest@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190925132421.23572-1-cristian.marussi@arm.com>
 <20190925132421.23572-2-cristian.marussi@arm.com>
From: shuah <shuah@kernel.org>
Message-ID: <ca1c013b-4f8f-fe63-a6d1-008d961416e3@kernel.org>
Date: Wed, 25 Sep 2019 13:36:43 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925132421.23572-2-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_123644_866029_9A979968 
X-CRM114-Status: GOOD (  18.09  )
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
> A TARGET which failed to be built/installed should not be included in the
> runlist generated inside the run_kselftest.sh script.
> 
> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
> ---
> As an example, here BPF failed to compile but was included in the runlist
> and attempted to run anyway:
> 
> ...
> ./KSFT_LAST_2/run_kselftest.sh: 37: cd: can't cd to bpf
> TAP version 13
> 1..49
> \# selftests: KSFT_LAST_2: test_verifier
> \# Warning: file test_verifier is missing!
> not ok 1 selftests: KSFT_LAST_2: test_verifier
> \# selftests: KSFT_LAST_2: test_tag
> \# Warning: file test_tag is missing!
> ---
>   tools/testing/selftests/Makefile | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
> index 103936faa46d..e11ace11b07c 100644
> --- a/tools/testing/selftests/Makefile
> +++ b/tools/testing/selftests/Makefile
> @@ -202,8 +202,12 @@ ifdef INSTALL_PATH
>   	echo "  cat /dev/null > \$$logfile" >> $(ALL_SCRIPT)
>   	echo "fi" >> $(ALL_SCRIPT)
>   
> +	@# While building run_kselftest.sh skip also non-existent TARGET dirs:
> +	@# they could be the result of a build failure and should NOT be
> +	@# included in the generated runlist.
>   	for TARGET in $(TARGETS); do \
>   		BUILD_TARGET=$$BUILD/$$TARGET;	\
> +		[ ! -d $$INSTALL_PATH/$$TARGET ] && echo "Skipping non-existent dir: $$TARGET" && continue; \
>   		echo "[ -w /dev/kmsg ] && echo \"kselftest: Running tests in $$TARGET\" >> /dev/kmsg" >> $(ALL_SCRIPT); \
>   		echo "cd $$TARGET" >> $(ALL_SCRIPT); \
>   		echo -n "run_many" >> $(ALL_SCRIPT); \
> 

This is great. Thanks for the patch.

-- Shuah

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
