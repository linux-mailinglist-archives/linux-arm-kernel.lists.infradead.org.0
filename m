Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA31DFC61
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 04:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2zsZL9rOSy9X3d5qby9QNwJZFUxgL1dbQ+wRYq4jq0=; b=qK27E9xJySNo0a
	CdxZjqXJzJh5sgeq3dldDRhMvE2ycDUUEnS2DGU5B3/LxHm+UioWfD1kU4fo1zSB2Lh0r04yNFsrV
	fmX9AECGHgJvAXD1M6BAPMU23YZCq3pCkqb5fygfSTTF82U5n4qpG+chg6ht+DqS/xm74nlHpl0q5
	k4nXuE9ctTIv0qVoNC+MhnCDcz/IMWLbHXI+wGroByJaHeL0cKrPohMzxpLS0yVthCH2VNYkfZ0vy
	tfcJrj6zUo/qn0Fi9c1N3iuna37KrbTkgCEZeASLCKq11k3TOVNdNY2RV1XTnVJx/Z0/jUbhaeb2d
	9xLFSkHZSlLh2W2isA6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcg6l-0005iI-F7; Sun, 24 May 2020 02:11:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcg6b-0005gl-E2
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 02:11:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id u22so5990025plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 19:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1NYHauUBWTQgbc43oFTAJCreNKv+baIo/68K96Zs4rc=;
 b=J786UewExllUKHofcVvgLTI358KCYatvgJpAOm0F2OufvL+pVNAtJGo1pj6JUBbbpC
 3NF7ePvGe1k+NcGAVJWA2jqXhGQgat6fKQL9C+cfS+HDIRW3Ap1PV2RjfeIRroac1Ezk
 KhFr6z8QBUa1W8cUNJnD/40ivm8kFHrTlkiHK7cocLe4YIU63lxvhlKVJLa1uVkKSRXG
 K5T/3uWMrNaxJoDU2eQqFcsAoD5BLt9X90hzco/4eRKjYTM1gkTYB1q7X53w991RSW2v
 1MVV+EKruZWQnr+ZrRghABtNQQDfIE7Sfy1pYYOvIS3EeWc8l92vFliiDW9EjpixaL1h
 Qflg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1NYHauUBWTQgbc43oFTAJCreNKv+baIo/68K96Zs4rc=;
 b=FeVxoKgSysl6A4nC73tU360fT51VwSAk/AzhkdZhAUEEoC8A2IXcVZhhWaVVFJM3VA
 yuahVo4QQzi+5U68x7FJhDpI1KAJQyYHvyY3OB7w5nOQAcy0fga3X/yjv2Gr0sufX1E7
 FG9rlTq69T9oEyI4t8NylsYZsI20F+KUjp4Q1S2hHljYL+l41A3AvOfl2G2QFrmHhuNg
 jnziyspb7SlmWf+Rwnd6N7KbP30uaZJoqoIdHuc2aANepHT+zDAs5+mWfE6NsONX8oYM
 2+LE2tLT3TZ+1e+2M8TQqe18/DwmgqCgTonD0NJU8CQhS7QUGFSsHa/1qFH6YkerxC6v
 ZLhQ==
X-Gm-Message-State: AOAM533fQBgymwbI99cNw294Rqe/AcyM+SsGXc5YyGKKwHfVQxaTeIW3
 hJiYBBkj3xcj/s/v7Jcl9js=
X-Google-Smtp-Source: ABdhPJzjaswgBjGeZOebznwn3ru9lufOX3WhHax+o+4Bd9NRfLzG3TqcRXoKe1CoWCEUQMaErKCTqQ==
X-Received: by 2002:a17:90a:10c1:: with SMTP id
 b1mr7863131pje.232.1590286270773; 
 Sat, 23 May 2020 19:11:10 -0700 (PDT)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id p1sm1961780pjz.36.2020.05.23.19.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 19:11:10 -0700 (PDT)
Date: Sat, 23 May 2020 19:11:06 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [RFC PATCH v12 10/11] arm64: add mechanism to let user choose
 which counter to return
Message-ID: <20200524021106.GC335@localhost>
References: <20200522083724.38182-1-jianyong.wu@arm.com>
 <20200522083724.38182-11-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522083724.38182-11-jianyong.wu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_191113_473506_F0B54B22 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
> In general, vm inside will use virtual counter compered with host use
> phyical counter. But in some special scenarios, like nested
> virtualization, phyical counter maybe used by vm. A interface added in
> ptp_kvm driver to offer a mechanism to let user choose which counter
> should be return from host.

Sounds like you have two time sources, one for normal guest, and one
for nested.  Why not simply offer the correct one to user space
automatically?  If that cannot be done, then just offer two PHC
devices with descriptive names.

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

static?  This is not going to fly.

> +		 * In most cases, we just need virtual counter from host and
> +		 * there is limited scenario using this to get physical counter
> +		 * in guest.
> +		 * Be careful to use this as there is no way to set it back
> +		 * unless you reinstall the module.

How on earth is the user supposed to know this?

From your description, this "flag" really should be a module
parameter.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
