Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3431F18FB60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 18:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niK0cxkzCWQF4YRKukTC2G1ffivA4Xb1rV2vFvfIlUg=; b=ry5/nrxfWyOEvI
	90W3tuaHJFF+nARNtt6Q5ToBEEZCvH0ydavXJICaK6mB0NfDjysIFJmb6DVxsxKFesr4Q89nI6QQe
	HxYkDGHUAlo8jEK381lsVSt73qBLtozukAG73kSQ1DhIiX/o54Q7yAsv296S6UP+WBVhHgB27Qbnr
	fBuanlgg7cofO+3+VGA//OC068VNO14w5JSRPDE5wxpsngVwJCvzel4WDRpZ37+BFi+56HxPbzn85
	2/eWU2LIg6dRFzVUUyFrkFS8A7aDb0fIQfV75MKfI2ywz4664ZWaPwIEyqBVVZJ3xGjVtvK4QPXee
	XMoFs3tLJ11e5N4BQxsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGQmI-0007TS-3J; Mon, 23 Mar 2020 17:22:18 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGQl0-0006JF-HH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 17:21:01 +0000
Received: by mail-pf1-x444.google.com with SMTP id j10so7790690pfi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 10:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G33GucGUpf7/OJos6cI68PxFAvCJCakeR7MrrB4yhOw=;
 b=xNUiB0i24A5k9G3lHwcmrEALWU/30OU8yRFBTjXBtxtlZlecmkO2n/QMaQk4YDIDxe
 NX+nI3XZ+2WAoZ09W9VFzkQ/jh65ai/HRmNlB9JmEDAe0lsphW/ILAJ2RE4xAL/UjPC3
 5wWoUeNhVG6ZzM8ee35Jhm11rYpF2JxhcOW5HOxiUc7dVosv0x3k8FDFM18uQJDHIXsn
 m+oQCE6MKpSmxTnDnpG6JGp6dvJL4CQ6eEi9o+GOT9dJlfdFTbnj62iybAJGH+1aSimD
 unHEckswTkURF+PuQ5yvD32DToVbjyatqABBmTwVYhI9+uJXcQbjwhFmDUtDaoDCYTY4
 DdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G33GucGUpf7/OJos6cI68PxFAvCJCakeR7MrrB4yhOw=;
 b=MrZnYliuIkPi8vv79+E8/+RAxgednPZ/pypVuYElM1zaGOplKmyBxxiX0WWmu0+Zf5
 LIpwUOs1Kb9f8hbWD5PqEn+giAD8e/FVzzokKbFab9SBEaOPQXsmp7nekXc21DhkrrqZ
 71/CWkw525fGxtZhPttbfnRIO8jyFsO7GXdjmpgpUg6QSypKEwalrg0mO0fS+30xQZbx
 v3f78Xdg+XTK8pr1Eq4P+ok7pbKzRxLIDdYFr11wnIqeql3wZAHFKvKfa/BkOX499rz7
 H7ga4hg9/Js58p/M3O8t55P20uKkaqHVfq8gmxk2OkPY2laaGe8dnuOm4u3kiMpN9TqW
 BYmA==
X-Gm-Message-State: ANhLgQ1P5NbgbWgwVjOKkwrRVd7LFJuBL3KG/MX+ScgmYPSE0oeE7hz9
 SQNCAuP8wwerkVB35/d0e5AUmpeON+E=
X-Google-Smtp-Source: ADFU+vsT0+leS6MTUQxm8jSGA6B0eQIlUuhjTWMLPX1oVxqTf1CjesLTnnNqVmZDjDft3w7IYcKtzQ==
X-Received: by 2002:aa7:9566:: with SMTP id x6mr3236287pfq.104.1584984056928; 
 Mon, 23 Mar 2020 10:20:56 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id na18sm154599pjb.31.2020.03.23.10.20.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 10:20:56 -0700 (PDT)
Date: Mon, 23 Mar 2020 11:20:54 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] docs: trace: coresight-ect.rst: fix a build warning
Message-ID: <20200323172054.GA25141@xps15>
References: <049f74b1db84cf08a02d0922bfa7567a895d46f1.1584966380.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <049f74b1db84cf08a02d0922bfa7567a895d46f1.1584966380.git.mchehab+huawei@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_102058_639741_653AF322 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 01:26:24PM +0100, Mauro Carvalho Chehab wrote:
> Sphinx wants a line after "..", as otherwise it complains with:
> 
> 	Documentation/trace/coresight/coresight-ect.rst:2: WARNING: Explicit markup ends without a blank line; unexpected unindent.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  Documentation/trace/coresight/coresight-ect.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
> index ecc1e57012ef..a93e52abcf46 100644
> --- a/Documentation/trace/coresight/coresight-ect.rst
> +++ b/Documentation/trace/coresight/coresight-ect.rst
> @@ -1,4 +1,5 @@
>  .. SPDX-License-Identifier: GPL-2.0
> +

Applied.

Thanks,
Mathieu

>  =============================================
>  CoreSight Embedded Cross Trigger (CTI & CTM).
>  =============================================
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
