Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D65D1AAAED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:53:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6RDdy0H6cBg+obniUhJRBtNwBfzZjJ+XU7MWfEOj4E=; b=pDsuuEF/doi3t1
	aFqj0Lc/yw59zKDckk0LVbecWN9KxnwYaSiY2C5QyQLyE7QqbwJm+kHxF6SULGCVGx6mt1Ik+IqqS
	gcNq+4JfV0yVmFzn1PJVB7ihAs7UU5QEGRZdgAL8tIwIGIyShuQUx7NF8Nu/KuX3EYtkLT+fDbJ3r
	Q3zyFlSEiQpT/PXEuo+MRAaphtETSKmqxYGxmjU30FmViQyMy0QlLKwXOYGVtXc0Z2Jwz5gx0soaf
	TdkRPhnKz9CgNKksoVErXaIk3NwFa9eJHoIpWLuBpZR6kNfJfQggvyjGVeW+/ifZJFhmsSErLD482
	waAFalH+kDkZi2mE3UjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjQD-00076d-4y; Wed, 15 Apr 2020 14:53:49 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjQ5-00075u-5e
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:53:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586962418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K5aShlaM4L7LBpzpuTEwY9oR96TrokeSvhA+JevS168=;
 b=Wal63IyxJ0VO1zx1UTRg2tmi9EgPdYH3FVza6QBkj/drUsoO/XjEBQNvW6QcYcKIzUTmHE
 WXVk1bPXmglO1SsoiGaf8AcZ9FZ5W6wRM9sAoyGWqmdTeFLxGdqnRCSKjAxxNS6cA2qNaw
 ki7ZuQmN4S787OFeqVo1oucMdFn/7ms=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-1KnQsT9MObuwehK1ESPc5w-1; Wed, 15 Apr 2020 10:53:32 -0400
X-MC-Unique: 1KnQsT9MObuwehK1ESPc5w-1
Received: by mail-wr1-f69.google.com with SMTP id h95so30903wrh.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 07:53:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K5aShlaM4L7LBpzpuTEwY9oR96TrokeSvhA+JevS168=;
 b=d2T8txe6wtBGmKT7W9qGoPjZYF/Hstpn7kOeANPAGDbMMGZcuRL4hJNJaUMxNw4p/5
 0ZWDT7DjfFKTGBs48tFH/Ft2LxJJJ29qfsySL3Ivb9KT6GTZI6bbX/1KAnuVXsH5iLyQ
 7iYGp33C43TTyZdt3EBkAkEh/GkvOna1oVdsnpT/kdOpArIYrkAAg5kZz6voVi1BUVkE
 OJLioMX8S/gtx7MU8NLItxkd1lQfqCwDjrCdXjGN8u4BvkvxF+g1hw8mg9LbCEuC9ngk
 RIfIWk+A1XhniIk7fbrupWTrKF3pr4Mc3J3Oqolh3JY8bnSlwnSIIuxdj1xncV7fgbRQ
 G3jA==
X-Gm-Message-State: AGi0PuZt/zFYW/zBpJ6ync/MBnOfEG81y2oYz0dBwX5Eem7P0cKCbZet
 AKiKG7XNt9E2ku0XQsgkmBp5tpq1ZyBIE4MCo4VQaGmmBnMa5TxpaMWNsfL809A67rBYcHhzTCn
 3fRQ+H4mbTB7KcNFtb3624mKvL1vgBzX1HoE=
X-Received: by 2002:a1c:4ca:: with SMTP id 193mr5676274wme.18.1586962410827;
 Wed, 15 Apr 2020 07:53:30 -0700 (PDT)
X-Google-Smtp-Source: APiQypKgkkaOjvC7IzHh45gZluJBlRAB0EDDEKLC5J1nBzdDb/gCljFCcJsnBzwUJEmVbAtBvAy4Yw==
X-Received: by 2002:a1c:4ca:: with SMTP id 193mr5676247wme.18.1586962410610;
 Wed, 15 Apr 2020 07:53:30 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9066:4f2:9fbd:f90e?
 ([2001:b07:6468:f312:9066:4f2:9fbd:f90e])
 by smtp.gmail.com with ESMTPSA id p10sm22953476wrm.6.2020.04.15.07.53.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2020 07:53:30 -0700 (PDT)
Subject: Re: [PATCH] KVM: Optimize kvm_arch_vcpu_ioctl_run function
To: Vitaly Kuznetsov <vkuznets@redhat.com>,
 Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
References: <20200413034523.110548-1-tianjia.zhang@linux.alibaba.com>
 <875ze2ywhy.fsf@vitty.brq.redhat.com>
 <cc29ce22-4c70-87d1-d7aa-9d38438ba8a5@linux.alibaba.com>
 <87a73dxgk6.fsf@vitty.brq.redhat.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <9e122372-249d-3d93-99ed-a670fff33936@redhat.com>
Date: Wed, 15 Apr 2020 16:53:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <87a73dxgk6.fsf@vitty.brq.redhat.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_075341_291424_FD5C5D22 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: wanpengli@tencent.com, kvm@vger.kernel.org, suzuki.poulose@arm.com,
 maz@kernel.org, joro@8bytes.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 sean.j.christopherson@intel.com, mingo@redhat.com, bp@alien8.de,
 julien.thierry.kdev@gmail.com, hpa@zytor.com, james.morse@arm.com,
 tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, jmattson@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/04/20 11:07, Vitaly Kuznetsov wrote:
> In case this is no longer needed I'd suggest we drop 'kvm_run' parameter
> and extract it from 'struct kvm_vcpu' when needed. This looks like a
> natural add-on to your cleanup patch.

I agree, though I think it should be _instead_ of Tianjia's patch rather
than on top.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
