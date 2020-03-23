Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B418FE04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+asXLMKJPe2ZrvY51L8rRtDkSRrHR8UI5WrtuBhvxE=; b=lGzQUaqzvW/gjk
	56vfX8zHs90YyW8ED/oRpMxQPku+XRIY+fSk7FvNVbgInoCNDKl77DEHu2P/LrsvImK2QVq3Mq0sT
	1c9iOYV8pjGPRm7+Cqst+SN9W2Uu3w7hvDJ6VhBF7avWiU3MVV/w6tLVfZfA6/szKP4rjWDdahVOL
	UdQjUxfDaw8mfJia0cQkXo6iQwVzDdPsfgKE1dGxknMTb8sVzarL62+A7H8Ts677V3Rh+hhmhrl8h
	lhlTKB95n+6uFobuxIXoK/cIU9TQnyA+CWuqCXOU00F6ghNzmfuVa3iqHCpzUmykLK6lR+ByKMjkP
	F4xrvaCZflnhNq+KpsgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGT2o-0007Dv-JI; Mon, 23 Mar 2020 19:47:30 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGT2e-0007D9-Mf
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584992836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S9IrSlxfJapkU8CWMBvfg1IPzMz8/r3SznAfCQ6EPKg=;
 b=fQG03NJpQ+zWBsn6HDLq6/mAaOgfeEOCuQRGryWwBrW0fzHaegQXQGOW8fvzuADOFJejEg
 N0grNn/3RaMzi2TmTFcEjxLovcsAWaI31rjBOONkAeu0TuPI53Sl1UmUukX0ooXJH3Fiim
 KF8OK6lmBGdZe9RKp4BX816huKSFIBM=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-437-mY-gZvAiMNSxD2vzAZ3OXw-1; Mon, 23 Mar 2020 15:47:09 -0400
X-MC-Unique: mY-gZvAiMNSxD2vzAZ3OXw-1
Received: by mail-wm1-f71.google.com with SMTP id s14so243457wmj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 12:47:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S9IrSlxfJapkU8CWMBvfg1IPzMz8/r3SznAfCQ6EPKg=;
 b=kwi07/pQNyTCfvnyiPY7e6HxEPfX78mRlYbMnBlOKu3xXN1ZC82jQGWuCzRaPoJ85n
 EFRRL0m7eL1v1vPywvLnZuA244aG0CQYZtylox0+H07BQ+gUpuiHLcnld9GE7k89UGr5
 8OujBZRWV6kxJLxihNF+VSI7/oMgCV1xkIpX9LmmjcImJVGGISZAt15zOxShItHncdHi
 6DCLJTk+M3HDN5PxOSh8Cvrgj8c4leP3F9sQMEL/FVegqUcqxtZyvlDN1bN1BYqkQZZK
 FC6rhXbRtMuw260XY7wCCWdIXk3m9quqb7yWwNnC9i495cVh/A8JIqLd/ylpPKkTeERP
 dLgQ==
X-Gm-Message-State: ANhLgQ0UfvuJenS2zUpTIBYdoiGyIwQKV0NLow9DH78kVIg0lFKPMISe
 JoOvKGKF39X2ZiwllKq3O8xhFYdUOp9vmbgnd/PwLuceV9/HumVEItqj++gGQGP9XPTaWELGWSK
 vt0jj4VzbasvOPfCnBnVGWVE5qCzjdKGd4Wg=
X-Received: by 2002:a5d:674f:: with SMTP id l15mr13381448wrw.196.1584992828067; 
 Mon, 23 Mar 2020 12:47:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtUWmDK4thpwexQ8hdryAgmCprB22NosAirhPOI+x5C3asXpfwyOua+gaEuAwr0M9NrGpUzvQ==
X-Received: by 2002:a5d:674f:: with SMTP id l15mr13381412wrw.196.1584992827855; 
 Mon, 23 Mar 2020 12:47:07 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:24d8:ed40:c82a:8a01?
 ([2001:b07:6468:f312:24d8:ed40:c82a:8a01])
 by smtp.gmail.com with ESMTPSA id a186sm756486wmh.33.2020.03.23.12.47.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Mar 2020 12:47:07 -0700 (PDT)
Subject: Re: [PATCH v3 2/9] KVM: x86: Move init-only kvm_x86_ops to separate
 struct
To: Vitaly Kuznetsov <vkuznets@redhat.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <20200321202603.19355-1-sean.j.christopherson@intel.com>
 <20200321202603.19355-3-sean.j.christopherson@intel.com>
 <87lfnr9sqn.fsf@vitty.brq.redhat.com>
 <20200323152909.GE28711@linux.intel.com>
 <87o8sn82ef.fsf@vitty.brq.redhat.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <30b847cf-98db-145f-8aa0-a847146d5649@redhat.com>
Date: Mon, 23 Mar 2020 20:47:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87o8sn82ef.fsf@vitty.brq.redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_124720_824929_057E0056 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wanpeng Li <wanpengli@tencent.com>, Janosch Frank <frankja@linux.ibm.com>,
 kvm@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Mackerras <paulus@ozlabs.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/03/20 17:24, Vitaly Kuznetsov wrote:
> Sounds cool! (not sure that with only two implementations people won't
> call it 'over-engineered' but cool). 

Yes, something like

#define KVM_X86_OP(name) .name = vmx_##name

(svm_##name for svm.c) and then

	KVM_X86_OP(check_nested_events)

etc.

> My personal wish would just be that
> function names in function implementations are not auto-generated so
> e.g. a simple 'git grep vmx_hardware_setup' works

Yes, absolutely; the function names would still be written by hand.

Paolo

> but the way how we
> fill vmx_x86_ops in can be macroed I guess.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
