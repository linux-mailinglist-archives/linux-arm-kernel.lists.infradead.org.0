Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF01DFC4E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 03:47:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1zjkMVxUsrtkRLL9Nt+OLh1Ga2q8pL08Sik342SOFk=; b=tXCTpaHKh90c77
	huys3a1WUzibKQVxdQOZBxJJT3QYP6VKfe1qKJypFt7ZIuJwcYo8fLA00MjsDChZhLoWq8Fqldgvi
	CdvWgmz8H5LXUIE7/YV7IFpKOCvI8wJQG6CPCacfqBTfTNhbL+RZp/d5wH96n4sSj+TwaRWcS0pZ2
	9hhmbQ2VyACKS0sfjOkkaLWOrnUYeRn2v6Za0AHmhwh3lGcqZB3EncX2qCBbQXgdKCL1m2qRryb64
	dIxOJGMyMRsdCzLYHGY3t9e4eYpj3bOw9YtJm2Eq4zV+U4lu0d6y4NihslTJGjp+gssXekynL3hkv
	rj1yLtBMwLKBfgDQ+/jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcfjq-0007Y1-1R; Sun, 24 May 2020 01:47:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcfja-0007Wb-Tr
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 01:47:32 +0000
Received: by mail-pg1-x542.google.com with SMTP id d10so6899730pgn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 18:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MiZtZyUhvNO0RTN36GUvH+7s5VqvfFaGqxQpJXB604Y=;
 b=DlWRE4keNL1xYGr6LP7Z9dr6iDQDPvvYMwJuIn/pIXRqNGmrDDcSmH4wOySMJOlu9r
 R/3Z0WdpikEsiyrTcig2R+2qjmyfTURUOR87OLthliUvOkWLr+oxZCIaPSv71Ud6iaxX
 pP2YDXyvqEQbtJn4eptzd7DafNQ6zhj58PcaPV2KE2+G0fVR5zxHQuOocRcxPhFR88Q+
 KAG5cI2D618nv/MPnp65P3cyjOG+ntOCqmBZOZvEdfgGay76oZN5Lpot8t/Pl+i6I/3Y
 b4eIvWXswrLd2PWDQcO+2sqHOsK6mh0ymYGWdwXwwp6lYiz1svI+ZzUR8uJdv5YbWJpm
 qWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MiZtZyUhvNO0RTN36GUvH+7s5VqvfFaGqxQpJXB604Y=;
 b=Vf/1BGBa9Uw5ulensoHRHTzLlKYa1HVKq1UlwZuRo7zfGujvcYqi8gY0NdUNlE11o7
 lE5fpMGhEVjw7LcNUXp2ka9jq2yHBrDXOz2S7qawDmb/CXMXYfj2KfudDlPxJ/y1Tx1E
 75Bq5hPNfZ3fMcAI2gGIDXrfaUnYcxne6AghlEIZMEj6+B8IB9hclnsJMGoH/5RMCRJv
 dn5FLsWUTyJ6Q4WsXvKBVFTWaYD171slDHPuPXCtTbzXQfaX9N6pmQN5+vvZG4XemZnr
 vD6cgY9fkRmpYnkD3EqVjCn27yijlEyD3wVMB46sp8usqZRzPLDiopf0p65mHWyjkp3T
 JZ3Q==
X-Gm-Message-State: AOAM530KAyLLc69RpbPW2Az1c7YOf++YsYYoC7MQvYEtDhoek7LbwPcB
 XDOKp6JOb6gPmTFGLXBzctE=
X-Google-Smtp-Source: ABdhPJzNPkHzT4jcUH5lzJbYJGrTRfk3+5AMtRKlysF8ZixPkX7Nsuntu1LZYVVTbFr81nsx5i4U/Q==
X-Received: by 2002:a63:68c3:: with SMTP id
 d186mr20864807pgc.269.1590284845176; 
 Sat, 23 May 2020 18:47:25 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id q3sm9871423pfg.22.2020.05.23.18.47.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 18:47:24 -0700 (PDT)
Date: Sat, 23 May 2020 18:47:21 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Message-ID: <20200524014721.GB335@localhost>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522083724.38182-11-jianyong.wu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_184731_268974_C2563175 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark.Rutland@arm.com, maz@kernel.org, justin.he@arm.com, Wei.Chen@arm.com,
 kvm@vger.kernel.org, suzuki.poulose@arm.com, netdev@vger.kernel.org,
 Steve.Capper@arm.com, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, steven.price@arm.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, yangbo.lu@nxp.com, pbonzini@redhat.com,
 tglx@linutronix.de, nd@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 04:37:23PM +0800, Jianyong Wu wrote:

> To use this feature, you should call PTP_EXTTS_REQUEST(2) ioctl with flag
> set bit PTP_KVM_ARM_PHY_COUNTER in its argument then call
> PTP_SYS_OFFSET_PRECISE(2) ioctl to get the cross timestamp and phyical
> counter will return. If the bit not set or no call for PTP_EXTTS_REQUEST2,
> virtual counter will return by default.

I'm sorry, but NAK on this completely bizarre twisting of the user
space API.

> diff --git a/drivers/ptp/ptp_chardev.c b/drivers/ptp/ptp_chardev.c
> index fef72f29f3c8..8b0a7b328bcd 100644
> --- a/drivers/ptp/ptp_chardev.c
> +++ b/drivers/ptp/ptp_chardev.c
> @@ -123,6 +123,9 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
>  	struct timespec64 ts;
>  	int enable, err = 0;
>  
> +#ifdef CONFIG_ARM64
> +	static long flag;
> +#endif
>  	switch (cmd) {
>  
>  	case PTP_CLOCK_GETCAPS:
> @@ -149,6 +152,24 @@ long ptp_ioctl(struct posix_clock *pc, unsigned int cmd, unsigned long arg)
>  			err = -EFAULT;
>  			break;
>  		}
> +
> +#ifdef CONFIG_ARM64
> +		/*
> +		 * Just using this ioctl to tell kvm ptp driver to get PHC
> +		 * with physical counter, so if bit PTP_KVM_ARM_PHY_COUNTER
> +		 * is set then just exit directly.
> +		 * In most cases, we just need virtual counter from host and
> +		 * there is limited scenario using this to get physical counter
> +		 * in guest.
> +		 * Be careful to use this as there is no way to set it back
> +		 * unless you reinstall the module.
> +		 * This is only for arm64.
> +		 */
> +		if (req.extts.flags & PTP_KVM_ARM_PHY_COUNTER) {
> +			flag = 1;
> +			break;
> +		}
> +#endif

This file contains the generic PTP Hardware Clock character device
implementation.  It is no place for platform specific hacks.

Sorry,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
