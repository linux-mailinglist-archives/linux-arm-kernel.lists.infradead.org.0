Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0BD86D32
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 00:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5HiDaY/YdCX4rplqZ7V7T9p387ZRpOfYpOpjS/zvNJQ=; b=c2gmW1ExeSM+5adqQZkyVyMtf
	815Luccvqzz2TfQ7txmj3HkBtbye9oaw4cyY95nUJzHSkAROSfJitfSntnEei4hbevx6QKeU1C1jO
	2XH1cXQb9nIqDZKp4rB3WTXTbZ9agUcRAf/eIDn9DEhU0gN+K6t0azD2VCkhz7o0faehlYbKHLwzv
	zRCpIqSCr4QcHxCeL+GZz0MyBfRwUlOghFIZOLZwlSOqfQHNZffbI/ae/nZjCkkApoOEZIf3QrkoS
	/JSvMsIbMbxHDszEV1YHwUfFGUKfc1paHEf48+Loh+Aer+WMEg5A6w6QbTOOS8oRuEkrB/OpKT5Of
	9xuESR5+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqsG-0007Zj-LC; Thu, 08 Aug 2019 22:27:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqs9-0007Yt-AS
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 22:27:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB72F15A2;
 Thu,  8 Aug 2019 15:26:58 -0700 (PDT)
Received: from c02sv19cfvh4.usa.arm.com (c02sv19cfvh4.usa.arm.com
 [10.118.108.51])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D02DF3F575;
 Thu,  8 Aug 2019 15:26:58 -0700 (PDT)
Subject: Re: [Tee-dev] [RFC v2 2/6] tee: enable support to register kernel
 memory
To: Sumit Garg <sumit.garg@linaro.org>, keyrings@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-security-module@vger.kernel.org
References: <1564489420-677-1-git-send-email-sumit.garg@linaro.org>
 <1564489420-677-3-git-send-email-sumit.garg@linaro.org>
From: Stuart Yoder <stuart.yoder@arm.com>
Message-ID: <99777010-db74-096a-ce1a-da30539d6fb5@arm.com>
Date: Thu, 8 Aug 2019 17:26:58 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1564489420-677-3-git-send-email-sumit.garg@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_152701_410114_38691091 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: corbet@lwn.net, daniel.thompson@linaro.org, ard.biesheuvel@linaro.org,
 jejb@linux.ibm.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 zohar@linux.ibm.com, tee-dev@lists.linaro.org, jarkko.sakkinen@linux.intel.com,
 dhowells@redhat.com, casey@schaufler-ca.com,
 linux-arm-kernel@lists.infradead.org, serge@hallyn.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 7/30/19 7:23 AM, Sumit Garg wrote:

> @@ -264,7 +266,17 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
>   		goto err;
>   	}
>   
> -	rc = get_user_pages_fast(start, num_pages, FOLL_WRITE, shm->pages);
> +	if (flags & TEE_SHM_USER_MAPPED) {
> +		rc = get_user_pages_fast(start, num_pages, FOLL_WRITE,
> +					 shm->pages);
> +	} else {
> +		const struct kvec kiov = {
> +			.iov_base = (void *)start,
> +			.iov_len = PAGE_SIZE
> +		};
> +
> +		rc = get_kernel_pages(&kiov, num_pages, 0, shm->pages);

Passing a single kvec struct is temporary I assume?  Because as currently
written this will only work with num_pages==1.

Stuart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
