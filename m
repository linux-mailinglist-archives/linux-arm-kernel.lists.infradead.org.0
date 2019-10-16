Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4699BD8A15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TNNalhigK2AVqwg/SZ3L5lDAh8o7vsnLy/YtyhhJZg=; b=jT9QbQ5G7kSk47
	RDzh+wDObLd4hF9QBC0NGm6DeOaWNGiBY6+PS8Mr68bRQETZdLrW7eKxXYl/h/zTn5CBAl0zhDZyZ
	omcR+M8Yj7qRaZq4LGt+KXZZPALQLvlb42jWlQ2Xra8Zay1dNE+Gj4NRDLEO1xngS4ReeADMpTe/8
	Cz4CVW7ZiMBzIWJf1xzxzh9wDMWHFJfYdbss7n9Lg/HrlKloJ1EdWebrpNDCsxYl3QTPbdWPhcuz2
	WfmiAPUSm4r1RicwCUeZkrGhXvA9paa2EldssHlQrnxg8lURekUgKcnygIIGpRIY3vn6QPiAZInnX
	hr/R1vmoywYGFAJzUZig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdy3-00089v-EV; Wed, 16 Oct 2019 07:43:35 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdxt-00089O-KD
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571211804;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=2TZPYczZMoe38v6J5VmGL4LQBizJV5OWL5TaFj5ByLo=;
 b=Zg+XMJAst9xvzV+tdQ/bZRxBfHPEto4K8GEvkGmZUrTmHhjYDeQCZZQg6g1FiG3TrPZhhk
 3bHIblFlVx3dXw+e9jiukKaP8n6fM7EO5EhU3iLfNuwTRWODR11EDy4qDVLVjkAE+lhr1U
 R4gOaAPJYhp4m9zni12FSDnyxpSE8X4=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-E5IO_siuNKKfZ2KTk6mEEw-1; Wed, 16 Oct 2019 03:43:20 -0400
Received: by mail-wm1-f70.google.com with SMTP id m6so606594wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2TZPYczZMoe38v6J5VmGL4LQBizJV5OWL5TaFj5ByLo=;
 b=Dgt5h/8co1gFsJD6FqseOgXshSyAxaUGgjOp0UoGuOZhuOl9qMNfG4Z/Tr4hr61D/m
 YorWKdBvwcLAIukEQ85AcMSJyT7zBlhZyWQvLnKb4udyQNz2RyTt4JI10r4x0o6Mns2W
 iH4F0I10fhk4UBgkRjcWSWqsZhVLDVVzGc3aeOz4s5/E0J3jwUsMeQdP301YgcC53icu
 z/XNtVmc37+gpKRSHrEV/ZtgdbDMhv/8r9EoD2fxi+VhqMnPkPhKyYOOPdGe/mW3LW5p
 aO2NbbZ+OoV2yTIyeA1eB92e+nMnIF+DNmv6dcNQ+ZVaKsVWsv8ASG2+mvEfmIFlxMR9
 2Xvw==
X-Gm-Message-State: APjAAAWKlCAC/bErgPeReVGOgGOyrMhx0vZrJ9+mkNrUJmwfsjFXqPV5
 tBxydvB4+GcPlkJrMPeXRItfTGEcUs6hABsb0jcK1U2vrbSEeRWqgT+MGgtTZvQRSlJhmSLwyTt
 fxdtiobimOfszBI90zR3U4lNDroaKSU3jEF4=
X-Received: by 2002:a5d:6203:: with SMTP id y3mr1414791wru.142.1571211799706; 
 Wed, 16 Oct 2019 00:43:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYE+zEFsYqXUGvnl9sFNQ8c4wx17KGf+Az81W3+WtMXjrT9dBRLwLjKr90BAhiAxvpImSuwQ==
X-Received: by 2002:a5d:6203:: with SMTP id y3mr1414773wru.142.1571211799459; 
 Wed, 16 Oct 2019 00:43:19 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id d78sm1595639wmd.47.2019.10.16.00.43.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Oct 2019 00:43:18 -0700 (PDT)
Subject: Re: [PATCH v5 4/6] psci: Add hvc call service for ptp_kvm.
To: Thomas Gleixner <tglx@linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-5-jianyong.wu@arm.com>
 <9641fbff-cfcd-4854-e0c9-0b97d44193ee@redhat.com>
 <alpine.DEB.2.21.1910160929500.2518@nanos.tec.linutronix.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <5e344920-1460-337c-9950-858165d37d14@redhat.com>
Date: Wed, 16 Oct 2019 09:42:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1910160929500.2518@nanos.tec.linutronix.de>
Content-Language: en-US
X-MC-Unique: E5IO_siuNKKfZ2KTk6mEEw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_004325_743102_06D35A98 
X-CRM114-Status: GOOD (  11.42  )
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
Cc: Mark.Rutland@arm.com, justin.he@arm.com, kvm@vger.kernel.org,
 suzuki.poulose@arm.com, maz@kernel.org, richardcochran@gmail.com,
 Jianyong Wu <jianyong.wu@arm.com>, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, yangbo.lu@nxp.com, Kaly.Xin@arm.com,
 john.stultz@linaro.org, netdev@vger.kernel.org, nd@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Steve.Capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/10/19 09:31, Thomas Gleixner wrote:
>> 3) move the implementation of the hypercall to
>> drivers/clocksource/arm_arch_timer.c, so that it can call
>> ktime_get_snapshot(&systime_snapshot, &clocksource_counter);
>
> And then you implement a gazillion of those functions for every
> arch/subarch which has a similar requirement. Pointless exercise.
>
> Having the ID is trivial enough and the storage space is not really a
> concern.

Ok, good.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
