Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB69168563
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85kWOElXXbALZjzYyj5/eNMlQ2lEJUDyLllHMwPvIJc=; b=PKRxAMt8mMFBaP
	8k6Eun/WgBUkqV+4vX4QUAvR3thC9STHOqci/W5/ENUbenlkL9z0c7OzCoF5WaQmre2SbDamCshIP
	ovTJjMYjME159cEUJVHv3nbKvmhmqU+dgKaiBipOlq3qvXALjwI7s3rUQYdfIRzs4QdbxqPNi3B4C
	jPeaSkdqCAsUh71J4wDlgolvIqD93kkNI/2i6TPj/9TNOmjZ+7fe7z4YiUNivUTDBuCc5g7rfpn+y
	Y1dR3TDOojj2WEMQwDsigIsOvtKpZ7mHxLazX09HHq5KUxwRLrrkUroyV84XZEldsaGEQZKPLXGW2
	UyFfsY8yJhpUbhV03/Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CPV-00083l-Jg; Fri, 21 Feb 2020 17:48:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPL-00081i-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:48:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582307287;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RrMvZJoVJBWqnzqNr9KyLlzqZ46CEJlOdAIqg//g6XU=;
 b=c513uy7B6BjjGhico40ZJQAwI8u2BqD6wMaFz4VNYsEux0LhKtytwnMNYYufO5mKWgf9Bl
 tffwg7c5otkZR8UHHuAnYqdehqbf61BKzb7+KmMr+wO60ud3jqpkiS/h14mqRb8Od8b+eW
 dWdCfBbasA45Ad50sdMnojB5yQzDfno=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-Bs5fj0h-NQGcmRHYo7u7EA-1; Fri, 21 Feb 2020 12:47:57 -0500
X-MC-Unique: Bs5fj0h-NQGcmRHYo7u7EA-1
Received: by mail-wr1-f72.google.com with SMTP id d8so1331923wrq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 09:47:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RrMvZJoVJBWqnzqNr9KyLlzqZ46CEJlOdAIqg//g6XU=;
 b=nkMQea9Hy0BvcbgKNXIW/oE0SuxuYTt3NTEX31JcnCk7sWFxNWfvvL62xu7p3mPgRU
 uxG3LRK3weTbVJzrecIaTqu8+Ej9q2N53yMQrkPP5kP5YVkHHRzZPK5PBuwhovg/rrKL
 tywHL5Jqrxytj83xFJbQ+zcrTcU9sabKKXyL7Nxy90X1sTIijhu5x4Z3d5CAfmPTSvOg
 SzqpfJtpHOaqkLT7arJLSTTH0rshJDOV9AgIiBHXla/T51g0+TMVP8oyR3ENdoKz09Qk
 BV0zUXdL7xJ7qUR8PcxXgFDLPQkXF8d+ZwBM4R299fEZFC+1NdxDPa5bqihx2IodgokB
 7S8Q==
X-Gm-Message-State: APjAAAURjdvGMZk9MVdvnMJqS/4zYzUZjUnzsLSOSNfjyD8im7r21EpX
 ds0JlUosHslQDMu1BAlfL4Z0DdZqBGvOcoMy6wLRKCI83YDUpe1u0Xv7jczwd6oUUPINUZ3xeTu
 pIsI6Mmx9+e06qt7LIMF8yyZ8sx23C4CRFyM=
X-Received: by 2002:adf:e68d:: with SMTP id r13mr49225892wrm.349.1582307275644; 
 Fri, 21 Feb 2020 09:47:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqzI29TQnMTxhegOPTR5SZPy7HDTeZP8mdmwqeW3b3wvRv6t/VcN7GX1ZnOVCmuZ9M9Iv9A8Vg==
X-Received: by 2002:adf:e68d:: with SMTP id r13mr49225876wrm.349.1582307275388; 
 Fri, 21 Feb 2020 09:47:55 -0800 (PST)
Received: from [192.168.178.40] ([151.20.135.128])
 by smtp.gmail.com with ESMTPSA id x6sm4531952wmi.44.2020.02.21.09.47.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 21 Feb 2020 09:47:54 -0800 (PST)
Subject: Re: [PATCH v6 17/22] KVM: Terminate memslot walks via used_slots
To: Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200218210736.16432-1-sean.j.christopherson@intel.com>
 <20200218210736.16432-18-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <216d647a-e598-d5d6-e20f-9c44c9ca157f@redhat.com>
Date: Fri, 21 Feb 2020 18:47:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20200218210736.16432-18-sean.j.christopherson@intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_094811_137738_F8203703 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/20 22:07, Sean Christopherson wrote:
>  	tmp = id_to_memslot(__kvm_memslots(kvm, as_id), id);
> -	old = *tmp;
> -	tmp = NULL;
> +	if (tmp) {
> +		old = *tmp;
> +		tmp = NULL;
> +	} else {
> +		memset(&old, 0, sizeof(old));
> +		old.id = id;
> +	}
>  

So much for my previous brilliant suggestion. :)

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
