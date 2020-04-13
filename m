Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404DB1A6E73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 23:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/Xoem8LIkcTaNrSix9JyFBChpi3vYfusdds1WsQ3jM=; b=sAQWRSEcx38umQ
	a5YxLtndi7U2F2468mJCIuTkyeEtZ2jyKnuLDC3VM8qTMz77a0qjnalJt6a6wez04nnYY00Gu6srR
	IqwEHENpA36926MsGK6KiNDxiri4h4pFheSZ6fYXuaJRLGARFytUWKynb9jZyY6xoQ8VxU5RW9MKs
	Kp+iOdwqY4K7vNDmkB99syUD/x2Tti1Y/95Rey7POxS+3HAAc6Tw89JeIS6dMqyCt7Oxmv58BJBK1
	m70/i/MCQC2Z7YCgp224AYAyWBbEBFDllVm9ZI6LXpf5oDjaOSSg7EpjFV+0uM0TtZhQcFzbbfu7o
	5tV34+y+QUBd9ctfB3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO6ix-00059R-F9; Mon, 13 Apr 2020 21:34:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO6im-00058M-JS
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 21:34:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id d17so4945618wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 14:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WDLpX6un52/AMwecGbJF0+8vb65HmQ8qFANqOY0XK7Y=;
 b=IuYqFbiHvSBMhlKLU88FQD6ph6l8u5128kLqE8SenvYihQJEPGmJINrkyvIh6vpW2u
 /atBvA75QL7UmEbyidSfCXE9VeE6SdB9IhYX6B3aHhwgMX0tmJ1dGgq1iHOBxSuH5Ezk
 VCWc51OJuo2eWBiWuYxF2kVCeRK0CX7KJ1dT2S+MSOGnulH5DMjtn5pZ88A/Y0yof0T2
 UcJ+AiMZeX97qHo6+sK6kWsJjsp0iuoGeKviv5k/BbU7JcMcpQXEn6SjrQEbaon0dw6S
 y7IERsJ3FCFJptrbidN9ACEH4G0Eg5BXm3yzzlYa9opYGLDAD1VPzulRpYMvxfhhzH+p
 vOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WDLpX6un52/AMwecGbJF0+8vb65HmQ8qFANqOY0XK7Y=;
 b=GvFMnhgYACZVQsbiwHQEu9za40yI+B6kvTTWn1TCc6N4hcU5oQBSTKpZ5ScQHJHy5k
 wA3TVDYM2S1yphWSu8bP+ExgSealCtNIzRzGBQ2wag9SGQOvf+XVbUpLC1pnuiGEt+7i
 HGHOCrTZpy5q7XHUlStO/VFF8Z+7ueQRpYIVWclKSffVSux9Gqqf5zoFQASxurUkuJq/
 r7ICGVPnIJN0ghdaDwckz/1lU/UazQQAuJxhkHE5Ob5hftKKDwUPLGCV44S3BUWll5xr
 HmkFuR4N1lRIF9p8wFdpSt3rU+mVk70suQEn3CuK2iADiqmQY/WCqlcDAchaPuV5lZBq
 sTqg==
X-Gm-Message-State: AGi0PuaMNURfvm8DEFsGj3rIW129y9XKd6QfPNLqhzJqqXWXzoMwm35i
 1P85IRQ7U9ODrXwdYEYYysw=
X-Google-Smtp-Source: APiQypIaudaXPJ6rENC31BASdvEjjHEOZ24liPPj6hbZ7Im0hP2KXUJDynYo1n+j8lgnYgsqwzYqNQ==
X-Received: by 2002:a5d:5230:: with SMTP id i16mr14472562wra.71.1586813661849; 
 Mon, 13 Apr 2020 14:34:21 -0700 (PDT)
Received: from [192.168.1.39] (116.red-83-42-57.dynamicip.rima-tde.net.
 [83.42.57.116])
 by smtp.gmail.com with ESMTPSA id b11sm16503963wrq.26.2020.04.13.14.34.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Apr 2020 14:34:21 -0700 (PDT)
Subject: Re: [PATCH] kvm_host: unify VM_STAT and VCPU_STAT definitions in a
 single place
To: Emanuele Giuseppe Esposito <eesposit@redhat.com>, kvm@vger.kernel.org
References: <20200413140332.22896-1-eesposit@redhat.com>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>
Autocrypt: addr=f4bug@amsat.org; keydata=
 mQINBDU8rLoBEADb5b5dyglKgWF9uDbIjFXU4gDtcwiga9wJ/wX6xdhBqU8tlQ4BroH7AeRl
 u4zXP0QnBDAG7EetxlQzcfYbPmxFISWjckDBFvDbFsojrZmwF2/LkFSzlvKiN5KLghzzJhLO
 HhjGlF8deEZz/d/G8qzO9mIw8GIBS8uuWh6SIcG/qq7+y+2+aifaj92EdwU79apZepT/U3vN
 YrfcAuo1Ycy7/u0hJ7rlaFUn2Fu5KIgV2O++hHYtCCQfdPBg/+ujTL+U+sCDawCyq+9M5+LJ
 ojCzP9rViLZDd/gS6jX8T48hhidtbtsFRj/e9QpdZgDZfowRMVsRx+TB9yzjFdMO0YaYybXp
 dg/wCUepX5xmDBrle6cZ8VEe00+UQCAU1TY5Hs7QFfBbjgR3k9pgJzVXNUKcJ9DYQP0OBH9P
 ZbZvM0Ut2Bk6bLBO5iCVDOco0alrPkX7iJul2QWBy3Iy9j02GnA5jZ1Xtjr9kpCqQT+sRXso
 Vpm5TPGWaWljIeLWy/qL8drX1eyJzwTB3A36Ck4r3YmjMjfmvltSZB1uAdo1elHTlFEULpU/
 HiwvvqXQ9koB15U154VCuguvx/Qnboz8GFb9Uw8VyawzVxYVNME7xw7CQF8FYxzj6eI7rBf2
 Dj/II6wxWPgDEy3oUzuNOxTB7sT3b/Ym76yOJzWX5BylXQIJ5wARAQABtDFQaGlsaXBwZSBN
 YXRoaWV1LURhdWTDqSAoRjRCVUcpIDxmNGJ1Z0BhbXNhdC5vcmc+iQJVBBMBCAA/AhsPBgsJ
 CAcDAgYVCAIJCgsEFgIDAQIeAQIXgBYhBPqr514SkXIh3P1rsuPjLCzercDeBQJd660aBQks
 klzgAAoJEOPjLCzercDe2iMP+gMG2dUf+qHz2uG8nTBGMjgK0aEJrKVPodFA+iedQ5Kp3BMo
 jrTg3/DG1HMYdcvQu/NFLYwamUfUasyor1k+3dB23hY09O4xOsYJBWdilkBGsJTKErUmkUO2
 3J/kawosvYtJJSHUpw3N6mwz/iWnjkT8BPp7fFXSujV63aZWZINueTbK7Y8skFHI0zpype9s
 loU8xc4JBrieGccy3n4E/kogGrTG5jcMTNHZ106DsQkhFnjhWETp6g9xOKrzZQbETeRBOe4P
 sRsY9YSG2Sj+ZqmZePvO8LyzGRjYU7T6Z80S1xV0lH6KTMvq7vvz5rd92f3pL4YrXq+e//HZ
 JsiLen8LH/FRhTsWRgBtNYkOsd5F9NvfJtSM0qbX32cSXMAStDVnS4U+H2vCVCWnfNug2TdY
 7v4NtdpaCi4CBBa3ZtqYVOU05IoLnlx0miKTBMqmI05kpgX98pi2QUPJBYi/+yNu3fjjcuS9
 K5WmpNFTNi6yiBbNjJA5E2qUKbIT/RwQFQvhrxBUcRCuK4x/5uOZrysjFvhtR8YGm08h+8vS
 n0JCnJD5aBhiVdkohEFAz7e5YNrAg6kOA5IVRHB44lTBOatLqz7ntwdGD0rteKuHaUuXpTYy
 CRqCVAKqFJtxhvJvaX0vLS1Z2dwtDwhjfIdgPiKEGOgCNGH7R8l+aaM4OPOd
Message-ID: <03a481a8-bcf2-8755-d113-71ef393508bf@amsat.org>
Date: Mon, 13 Apr 2020 23:34:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200413140332.22896-1-eesposit@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_143424_665345_5C8C9DDA 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [philippe.mathieu.daude[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, David Hildenbrand <david@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>, kvmarm@lists.cs.columbia.edu,
 linux-s390@vger.kernel.org, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paolo Bonzini <pbonzini@redhat.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Emanuele,

On 4/13/20 4:03 PM, Emanuele Giuseppe Esposito wrote:
> The macros VM_STAT and VCPU_STAT are redundantly implemented in multiple
> files, each used by a different architecure to initialize the debugfs
> entries for statistics. Since they all have the same purpose, they can be
> unified in a single common definition in include/linux/kvm_host.h
> 
> Signed-off-by: Emanuele Giuseppe Esposito <eesposit@redhat.com>
> ---
>  arch/arm64/kvm/guest.c    | 23 +++++++--------
>  arch/mips/kvm/mips.c      | 61 +++++++++++++++++++--------------------
>  arch/powerpc/kvm/book3s.c |  3 --
>  arch/powerpc/kvm/booke.c  |  3 --
>  arch/s390/kvm/kvm-s390.c  |  3 --
>  arch/x86/kvm/x86.c        |  3 --
>  include/linux/kvm_host.h  |  3 ++
>  7 files changed, 43 insertions(+), 56 deletions(-)
> 
> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
> index 23ebe51410f0..3e3aee8b37c0 100644
> --- a/arch/arm64/kvm/guest.c
> +++ b/arch/arm64/kvm/guest.c
> @@ -29,20 +29,17 @@
>  
>  #include "trace.h"
>  
> -#define VM_STAT(x) { #x, offsetof(struct kvm, stat.x), KVM_STAT_VM }
> -#define VCPU_STAT(x) { #x, offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU }
> -
>  struct kvm_stats_debugfs_item debugfs_entries[] = {
> -	VCPU_STAT(halt_successful_poll),
> -	VCPU_STAT(halt_attempted_poll),
> -	VCPU_STAT(halt_poll_invalid),
> -	VCPU_STAT(halt_wakeup),
> -	VCPU_STAT(hvc_exit_stat),
> -	VCPU_STAT(wfe_exit_stat),
> -	VCPU_STAT(wfi_exit_stat),
> -	VCPU_STAT(mmio_exit_user),
> -	VCPU_STAT(mmio_exit_kernel),
> -	VCPU_STAT(exits),
> +	{ "halt_successful_poll", VCPU_STAT(halt_successful_poll) },
> +	{ "halt_attempted_poll", VCPU_STAT(halt_attempted_poll) },
> +	{ "halt_poll_invalid", VCPU_STAT(halt_poll_invalid) },
> +	{ "halt_wakeup", VCPU_STAT(halt_wakeup) },
> +	{ "hvc_exit_stat", VCPU_STAT(hvc_exit_stat) },
> +	{ "wfe_exit_stat", VCPU_STAT(wfe_exit_stat) },
> +	{ "wfi_exit_stat", VCPU_STAT(wfi_exit_stat) },
> +	{ "mmio_exit_user", VCPU_STAT(mmio_exit_user) },
> +	{ "mmio_exit_kernel", VCPU_STAT(mmio_exit_kernel) },
> +	{ "exits", VCPU_STAT(exits) },
>  	{ NULL }
>  };
>  
[...]
> diff --git a/include/linux/kvm_host.h b/include/linux/kvm_host.h
> index 6d58beb65454..e02d38c7fff1 100644
> --- a/include/linux/kvm_host.h
> +++ b/include/linux/kvm_host.h
> @@ -1130,6 +1130,9 @@ struct kvm_stats_debugfs_item {
>  #define KVM_DBGFS_GET_MODE(dbgfs_item)                                         \
>  	((dbgfs_item)->mode ? (dbgfs_item)->mode : 0644)
>  
> +#define VM_STAT(x, ...) offsetof(struct kvm, stat.x), KVM_STAT_VM, ## __VA_ARGS__
> +#define VCPU_STAT(x, ...) offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU, ## __VA_ARGS__

I find this macro expanding into multiple fields odd... Maybe a matter
of taste. Sugggestion, have the macro define the full structure, as in
the arm64 arch:

#define VM_STAT(n, x, ...) { n, offsetof(struct kvm, stat.x),
KVM_STAT_VM, ## __VA_ARGS__ }

Ditto for VCPU_STAT().

> +
>  extern struct kvm_stats_debugfs_item debugfs_entries[];
>  extern struct dentry *kvm_debugfs_dir;
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
