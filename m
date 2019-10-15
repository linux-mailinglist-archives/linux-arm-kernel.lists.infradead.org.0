Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13626D7C0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 18:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtnBuQbTwNjM1CWhwUkvDReRd/zPOV7yBNBAZtxxoKw=; b=XsepUdGxKr809e
	bivPR4cwUJJE8VNFK179CCQQ7uLFz0m1otNK3qh/j0OVf9aIMb3XufcfWowgXEgRJGhXi2qX/PCTl
	z57JI1lnTY16tayb9ZlhUl0JD0Zv6xRWWyZq8cbnmERu3W1qzAl4WLJDQgTQePgrq2Ugt+5kb88YL
	e3h7JiQAHUr+OhVWD+L4AJfvdSJUpuSycVP/CCJSfFgnzA8XzDzISM7K1GxLbZ6Swtu57Lx5FbC/y
	CM+yWJ7pmIhkXsjYIHyGtSGTK0XNXaaMIyFc2t13PIwf6sRBC7cGXzFMnno739itwBplUdPvhuxe7
	i4trwtmGSChnUNt6dhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPrS-00034e-0H; Tue, 15 Oct 2019 16:39:50 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPrJ-00032e-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 16:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571157577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=ojp02z/yPeUqI0YPPrqnloEvXX8pMYJM8GdkxYvWth0=;
 b=UzkaD1/3nLiScs5Wo+ezXX0ZEFpD8SC6is0S7AQc4yftgqprWZ3hYHbGFlAEQClpQRTPGp
 8N3usINZKjCn1WigUxLbxccTdKPFxkAqH9HDG3SyKxOBRYyHLZhF3n8Fw3wk1NN+ObnsId
 kCa2BULs8iEBgDcQ6jnxaUzGXch804Y=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-GfGurGTZNm6tAxSbsle0YA-1; Tue, 15 Oct 2019 12:39:29 -0400
Received: by mail-wm1-f71.google.com with SMTP id o128so1292232wmo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 09:39:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o8Yzcui6UO5aokPFK9KbVMAamgpXNzxTPApyteJcIxI=;
 b=Or8pjqFBcYNorWNEUbE7n25w9MRUxfsbmmIHpqNMAFKFPUxXVB8U4MkV9fEKFRT5mw
 zo/KFSTn4lc98bBJMEEdOm8V75xixvYEdt8GbpkExbIVBNeKj4Ww1emTaJcXcC04yH3g
 QadDQd2adwGLu78Qh5Fu4L8hpiuFyryBnpmWNRDaOgd0hvN9O7RSq+R2pQAvLekBqWNV
 Nm7Dbv+50I12aBe3BXp5bUr476salcXORURtk5AqmmO/XewwNJ/GBPWufqt13InEMgW9
 nSV7cvJHgqQdophq+Hqwkr96ZaoZGPY0cudG37Qff83j4peNsbqoo7EQJBFNU9BWQu7c
 wgvg==
X-Gm-Message-State: APjAAAXEggMymmf/y0ZWPOh9wOqM6mDZdd+wMDMFm2ikisUBnaq6Vgpr
 P+UjpCsphQOYDYP7yiLYQPd+JwUZoH3qDKACMdttZJxEXUICkGj3LYl0yYEgaEomoRGsyTlnroZ
 1+UVxQwN8SLdHypqK3BmZv7OQpjZagEm1lw8=
X-Received: by 2002:adf:e747:: with SMTP id c7mr935239wrn.384.1571157568342;
 Tue, 15 Oct 2019 09:39:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyejSMH01cdqlKyvOUSnepj7nqszueGVbjXDXwAp7a2kqRNxQBtic0nSge519tsU28CGqWN0A==
X-Received: by 2002:adf:e747:: with SMTP id c7mr935204wrn.384.1571157568078;
 Tue, 15 Oct 2019 09:39:28 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:d001:591b:c73b:6c41?
 ([2001:b07:6468:f312:d001:591b:c73b:6c41])
 by smtp.gmail.com with ESMTPSA id h7sm20388863wrs.15.2019.10.15.09.39.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 09:39:27 -0700 (PDT)
Subject: Re: [PATCH v5 5/6] ptp: arm64: Enable ptp_kvm for arm64
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 sean.j.christopherson@intel.com, maz@kernel.org, richardcochran@gmail.com,
 Mark.Rutland@arm.com, will@kernel.org, suzuki.poulose@arm.com
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-6-jianyong.wu@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <da62c327-9402-9a5c-d694-c1a4378822e0@redhat.com>
Date: Tue, 15 Oct 2019 18:39:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191015104822.13890-6-jianyong.wu@arm.com>
Content-Language: en-US
X-MC-Unique: GfGurGTZNm6tAxSbsle0YA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_093941_600474_2C92065D 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/19 12:48, Jianyong Wu wrote:
> +int kvm_arch_ptp_get_clock_generic(struct timespec64 *ts,
> +				   struct arm_smccc_res *hvc_res)
> +{
> +	u64 ns;
> +	ktime_t ktime_overall;
> +
> +	arm_smccc_1_1_invoke(ARM_SMCCC_VENDOR_HYP_KVM_PTP_FUNC_ID,
> +				  hvc_res);
> +	if ((long)(hvc_res->a0) < 0)
> +		return -EOPNOTSUPP;
> +
> +	ktime_overall = hvc_res->a0 << 32 | hvc_res->a1;
> +	*ts = ktime_to_timespec64(ktime_overall);
> +
> +	return 0;
> +}
> +

This seems wrong, who uses kvm_arch_ptp_get_clock_fn?

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
