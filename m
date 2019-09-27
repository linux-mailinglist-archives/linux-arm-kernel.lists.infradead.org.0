Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0277BC022A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 11:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3P+BqbXGPwdBD3sIyXtfjSAh+0AG0vPDU9ZgZ0g9mzI=; b=FlaWF0hsRy3pa0jwKZVcE4oWG
	L7qRgjCom31upI+enTCjbTHoApLWxdB6YPkXEyNDgtgTxAKG+8ENL+VxAKNaoGTyx6donuuzk07JI
	bi7c5hfKzrQKo07SltRO1eEPinziTv8qyvSCnu2qMyMVlXp95jO9rR94v3h0DiEWGQuW4o7ypwR19
	/VDlmyxXfG+bo2B7jGdKoXFWQcOzGhP5APlxQzbBVVUHMebCxouR7/L/1yLvwIEigtxYWAS7aMuK6
	TXZAl1lCKaX9LqNQ1Rth1sW4FxbaD/LbGz8uJ9FYjSYDgr6aZeDrYkZ4b70NydIMcCVui3Hg+T5Rj
	bhlfRp5CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDmQi-0005Dp-SJ; Fri, 27 Sep 2019 09:20:48 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDmQY-0005D8-MU
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 09:20:39 +0000
Received: by mail-lf1-x142.google.com with SMTP id u3so1365014lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 02:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZUJ1/Iwwp/mWKX1v6738rug/Uwulg67MH6fF2LkIHoU=;
 b=fYnQUV9aHYiNDRG0ybNWFU/6abt78WerVfUTzWshQ7e1bblOYhLBDafRZrDnXFV55j
 5PJQgGUdwzn0Iy4m1el8QIV1iolOzPuYN8+EuXFNmCo4UL24h5Qng08HNEHJpI/E/ZKg
 07tLg877fK5O/XHo9kLAzHdxN8xnw3Zso3rMnyu0SqQvM8/jFGnGsys3PStlTFcQJTDi
 71kh9G7Cr3kOlRrNjt010xNmqHm/5tIAwYiiK4Ag/US4I/Xc39F4Kq6S+9Ivhs6ArJho
 FJduxbBX7qveLEe7UlrGWHtaMw5etZ3DtAP4BEoYARJQL843vFrcQi/99OAVbzyZDWkF
 MlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZUJ1/Iwwp/mWKX1v6738rug/Uwulg67MH6fF2LkIHoU=;
 b=JF+MZLK7cdIEQi99L7Xp+Kikkgmx9hUGWxG7t9XNC/JmpM+fq1+gwSOxoenucPWwPz
 kxueEYHPRnPEtlFBMwcX/FusZthq1QNeNqK/r0bBVcexuf021NC3dz+OnTMKdr9eejkT
 2MQi/shuh7J8SVhgQVf6MhGoVcogM61sU+68VBRSr+0hi/2h9cHu76aKPGDc0foWkXx7
 RzqF4B+FjFF4v1ae0KGg7eud5YFPdAbbveAu+FE7WU0zFiU9jhguCYv/TWkUObCLC4Ri
 JTWEFVW2esSc0W/1X8gkKybs/wPp6Lhb1puc9VMmkOSrneQdedIPAZKF3NHvUEvo5H7W
 CemQ==
X-Gm-Message-State: APjAAAWiXVWD97Xnfm/kkFE6Hgj6QKG22RKMY/vi/PMJQAPiHPd05FRn
 dWFOoV8n+aVepw5OhIl8miXBeQ==
X-Google-Smtp-Source: APXvYqyaCrwz/qm98j1MtO5pqAPgEl3ED11Gh+OFBBX48Aefnwmp87aL9fjMp6c5WyO4uFR7GlAuDA==
X-Received: by 2002:a19:f247:: with SMTP id d7mr1946420lfk.191.1569576037260; 
 Fri, 27 Sep 2019 02:20:37 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:8df:57d9:c46b:3c97:5028:3a4f?
 ([2a00:1fa0:8df:57d9:c46b:3c97:5028:3a4f])
 by smtp.gmail.com with ESMTPSA id q3sm341838ljq.4.2019.09.27.02.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Sep 2019 02:20:36 -0700 (PDT)
Subject: Re: [RFC PATCH v4 3/5] psci: Add hvc call service for ptp_kvm.
To: Jianyong Wu <jianyong.wu@arm.com>, netdev@vger.kernel.org,
 yangbo.lu@nxp.com, john.stultz@linaro.org, tglx@linutronix.de,
 pbonzini@redhat.com, sean.j.christopherson@intel.com, maz@kernel.org,
 richardcochran@gmail.com, Mark.Rutland@arm.com, Will.Deacon@arm.com,
 suzuki.poulose@arm.com
References: <20190926114212.5322-1-jianyong.wu@arm.com>
 <20190926114212.5322-4-jianyong.wu@arm.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <3586ca5b-7abb-12b2-2368-cbc09fe3777f@cogentembedded.com>
Date: Fri, 27 Sep 2019 12:20:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190926114212.5322-4-jianyong.wu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_022038_736479_38C6E876 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: justin.he@arm.com, kvm@vger.kernel.org, Steve.Capper@arm.com,
 linux-kernel@vger.kernel.org, Kaly.Xin@arm.com, nd@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 26.09.2019 14:42, Jianyong Wu wrote:

> This patch is the base of ptp_kvm for arm64.
> ptp_kvm modules will call hvc to get this service.
> The service offers real time and counter cycle of host for guest.
> 
> Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>
> ---
>   include/linux/arm-smccc.h | 12 ++++++++++++
>   virt/kvm/arm/psci.c       | 18 ++++++++++++++++++
>   2 files changed, 30 insertions(+)

[...]
> diff --git a/virt/kvm/arm/psci.c b/virt/kvm/arm/psci.c
> index 0debf49bf259..3f30fc42a5ca 100644
> --- a/virt/kvm/arm/psci.c
> +++ b/virt/kvm/arm/psci.c
[...]
> @@ -431,6 +433,22 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
>   	case ARM_SMCCC_VENDOR_HYP_KVM_FEATURES_FUNC_ID:
>   		val[0] = BIT(ARM_SMCCC_KVM_FUNC_FEATURES);
>   		break;
> +	/*
> +	 * This will used for virtual ptp kvm clock. three
                     ^ be?                            ^ T

[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
