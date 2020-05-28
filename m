Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EC81E5673
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 07:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+AQE1ysPOFVXKROfWOmKrzXbw79no9z7mJcHg9rk1dc=; b=kwwzxb2ln5/5Jc
	OP4QRJQa2EMUQTxnjPnMQeJGT6l/jYeBAm5zd4hKZ/FxwKITY00iOEz/0cy8eM1FMqYSz+YxTmN6q
	8pg7iF1OL61Ul3EQCTFBLUAmtFrg5Qxx2GRpPt1ukL5Z1PAVjv9jbYIW2ESmJ4UVmlWmQMxYfTq5w
	PeB2R1GVL+aFF3vuxrQRjyYpd0QXrKL8XXIaSPcVB3THUwuM7Ca8zkTndf7E8kU3tyzUo2tvBTSER
	MFZ23PpmwlnFN9Jdc+qdPZypo/pAQek1HMSvlWn3bSeglABuLZmys832Yu/yFWonwvL+FFjI+drtg
	DCWjqf0Ty/non15P8IKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeB0A-0004yc-Gg; Thu, 28 May 2020 05:22:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeAzx-0004xf-Be
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 05:22:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590643351;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J+iKV2WQ6lOBXo37IQKk0z/KDQxyIDc+E74qSJBHsLY=;
 b=OKOARx7BkpiMICv2pzmLgGgjeglp4xzkNrgqYosRwBTkmJp/Sl2sHxuIwEu0A8QdjBfdnr
 bTm+FCSoQ70GwlyHAsxUSKzn1CMJo92Cdhk6mVXcmS0V50qVGgxmirS/s3GuG7y1Yk1evX
 RHTuTa9Q/ZjmBqJd3r+8R1pLyCEs5a8=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-TqOtAAc0PJqDhQ497voLsQ-1; Thu, 28 May 2020 01:22:30 -0400
X-MC-Unique: TqOtAAc0PJqDhQ497voLsQ-1
Received: by mail-ed1-f71.google.com with SMTP id i93so6991500edi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 22:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J+iKV2WQ6lOBXo37IQKk0z/KDQxyIDc+E74qSJBHsLY=;
 b=EWqmgA4H8kJ5FSy7zN9jlFhSdeZuJE0PzceX6Sqq3jxtYhkx1kTvKA2Dqoht28eFwd
 spHfVXVCQM1J8qckGfIOTwe2tx37v09oD1YUNRMyJxfr3m+1N2/AuAqfKSo/Odajukgo
 3VK0QvMFm1+98F6gnisl37ZvzCI6whD/7bscch7V8IkB9o2Bxi/T9wkRb8uRpkAvaoL0
 WJftW4PQIgHE9NpotWzB/w/IQFRMwqOeHN9g3UdoNxlEyofcvhY7maMKoPatJo2DSylf
 bUmmmh+MM67p3R0jduC/WCwrLt1oBIfgJMkIMfeMB7Ar+yogJaO5pZUkn++g1wtc96JM
 tv2A==
X-Gm-Message-State: AOAM533ciCvIy/ks+UQ93XYNtw9B1+H0HW0OohqNGvZwX00EZpteNLqV
 4vYvMOb+i2tcEVEXh9Py8OrnYy7wjpXfjUDhkjkNNHTJx1+IO9IXxTZMvKry7QCsKbjS11K8NRB
 623wai46RtxmM3gJpCi2+23iCT6AUL4Oz9cI=
X-Received: by 2002:a50:d6d0:: with SMTP id l16mr1387305edj.317.1590643348991; 
 Wed, 27 May 2020 22:22:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJyu6Bj2R7xQtg6fbTx+WdDfElhcWjvy2DluItTe1wU0Un+QkFMtlI7BVZ+bXqt+0zrNq85A==
X-Received: by 2002:a50:d6d0:: with SMTP id l16mr1387289edj.317.1590643348729; 
 Wed, 27 May 2020 22:22:28 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id g23sm4521316ejo.28.2020.05.27.22.22.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 22:22:28 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
To: David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
 <b6fa4439-c6b8-63a4-84fd-fbac3d4f10fd@gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <c33f59e4-36ca-8fa9-af8f-b4cec4896b00@redhat.com>
Date: Thu, 28 May 2020 07:22:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <b6fa4439-c6b8-63a4-84fd-fbac3d4f10fd@gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_222233_481802_D3FB6B08 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 netdev@vger.kernel.org,
 Emanuele Giuseppe Esposito <e.emanuelegiuseppe@gmail.com>,
 linux-kernel@vger.kernel.org, kvm-ppc@vger.kernel.org,
 Jonathan Adams <jwadams@google.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Andrew Lunn <andrew@lunn.ch>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/05/20 00:21, David Ahern wrote:
> On 5/27/20 3:07 PM, Paolo Bonzini wrote:
>> I see what you meant now.  statsfs can also be used to enumerate objects
>> if one is so inclined (with the prototype in patch 7, for example, each
>> network interface becomes a directory).
> 
> there are many use cases that have 100's to 1000's have network devices.
> Having a sysfs entry per device already bloats memory usage for these
> use cases; another filesystem with an entry per device makes that worse.
> Really the wrong direction for large scale systems.

Hi David,

IMO the important part for now is having a flexible kernel API for
exposing statistics across multiple subsystems, so that they can be
harvested in an efficient way.  The userspace API is secondary, and
multiple APIs can be added to cater for different usecases.

For example, as of the first five patches the memory usage is the same
as what is now in the mainline kernel, since all the patchset does is
take existing debugfs inodes and move them to statsfs.  I agree that, if
the concept is extended to the whole kernel, scalability and memory
usage becomes an issue; and indeed, the long-term plan is to support a
binary format that is actually _more_ efficient than the status quo for
large scale systems.

In the meanwhile, the new filesystem can be disabled (see the difference
between "STATS_FS" and "STATS_FS_API") if it imposes undesirable overhead.

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
