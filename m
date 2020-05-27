Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D491E4FD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAgW2eLm2DsjCkIBOjVNM5iThaTz+kJ5fTMbXMMqoYc=; b=AGgs9LibAtJ02d
	NJ3QRgjAsS4ckE7vYq8FPwE2tcr2UOK3bDqCvN5Bc+26otYWb4+XpY+ZO7ltBo18/NBvZSEmWCiay
	CdrFp3T3+40fY9AZ2pc+xNrsH7T8311vqNY7r+mq2ZjX/kIguJDZ80KVqJMqmZ2dIknlLJrlpAlja
	Vj/GmMPIrZRAKpAOcwvk33zaLnszxrCgD7gxjXLHGw5Hx3etYSkZuFaPP0dRhfLdi1OdqPS9NkCzT
	1P4gbsd0Taflpkf5BQVnXqfMpr6JAXx2qDv6e1XudH3M4kj3zwIiXlD3pcmrgx3fVq/GoCPQrDQmF
	2zYL7hUSSGaRqKP0IBaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3Hd-0002EO-4I; Wed, 27 May 2020 21:08:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3HP-0002DC-ID
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:08:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590613681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3sSNRFYrb0CdmbwXzPVaN6Wl+qrkOkjvYM/9vtvRcHo=;
 b=Wvcvd2qty/6nMECvyDauW30OyC5QDVB51wRwSxuhItNMT8rkQE+D2VD471RRLS5pIRqw1S
 tVERUUP2BOmEJs5+prld19JF2mO40pPn6EzAvsotBm8X0Z0O0uZ5QkOT3AGxdLu6Y5zuIO
 Tji2zLno2fg6U3oKX4OLhI06g4PkFoE=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-199-PLp7VJzhP2esKvBpXuVY7A-1; Wed, 27 May 2020 17:07:57 -0400
X-MC-Unique: PLp7VJzhP2esKvBpXuVY7A-1
Received: by mail-wr1-f71.google.com with SMTP id o1so176561wrm.17
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 14:07:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3sSNRFYrb0CdmbwXzPVaN6Wl+qrkOkjvYM/9vtvRcHo=;
 b=EXS3VYFU8JG9ABLzRYtyIMU6cLQ6WvVfhr9kGEbW7Dh2241ZzH4gvII3K29nEt4kSI
 OWIzaYjnt4F3CgoE32ZV05QcGjZKgbdFaTmuaxnqCL9EPsgsofdk3XEJsg/GTAQBcdFK
 AQ78OFyhQvVv3TI7Y0pVDI3xQBRZN7xMJsCeCtBJBEctMUnHPnGwedh2f2LDGPSbpFIA
 A+0r/Hmct/AauUa2QtYnZw8R3oC29qBxLABRmSOwpUlsE30yfACJqp4zfBQ/U7VdgSmL
 MMBxEZXvkI3Pu/eW+BZNE86B+a3d86aMPzJU3tArHCy90ojjKKwZ9D/chI/mKGdYiNWG
 oZ8w==
X-Gm-Message-State: AOAM533Td1Ge4YZ21vrv46WbLxqTz4W/4fw1VxLlyV9r8vsLy2AjuLKf
 MgeflRRfDRGxYLaKqWoLYxJGJUu4ouu+0btLCWD6PDaSbEIWjYSU0sDzDvrOHsX+dY2OyTJ/L9u
 eovO8M62jGPAit+RXXV5hfuUYvaroqAIgFTw=
X-Received: by 2002:adf:e908:: with SMTP id f8mr195578wrm.184.1590613676662;
 Wed, 27 May 2020 14:07:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz/MqK9aixnJqSNydmC9tSwCyqyq7nI9EAoQtkXsEPNQuE8I0JoA6xnM6f4HETfKsks8bq+5g==
X-Received: by 2002:adf:e908:: with SMTP id f8mr195551wrm.184.1590613676318;
 Wed, 27 May 2020 14:07:56 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id v27sm4074887wrv.81.2020.05.27.14.07.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 14:07:55 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
To: Jakub Kicinski <kuba@kernel.org>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
Date: Wed, 27 May 2020 23:07:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_140803_679564_E252D5FD 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
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

On 27/05/20 22:23, Jakub Kicinski wrote:
> On Wed, 27 May 2020 15:14:41 +0200 Emanuele Giuseppe Esposito wrote:
>> Regarding the config, as I said the idea is to gather multiple 
>> subsystems' statistics, therefore there wouldn't be a single 
>> configuration method like in netlink.
>> For example in kvm there are file descriptors for configuration, and 
>> creating them requires no privilege, contrary to the network interfaces.
>
> Enumerating networking interfaces, addresses, and almost all of the
> configuration requires no extra privilege. In fact I'd hope that
> whatever daemon collects network stats doesn't run as root :)
> 
> I think enumerating objects is of primary importance, and statistics 
> of those objects are subordinate.

I see what you meant now.  statsfs can also be used to enumerate objects
if one is so inclined (with the prototype in patch 7, for example, each
network interface becomes a directory).

> Again, I have little KVM knowledge, but BPF also uses a fd-based API,
> and carries stats over the same syscall interface.

Can BPF stats (for BPF scripts created by whatever process is running in
the system) be collected by an external daemon that does not have access
to the file descriptor?  For KVM it's of secondary importance to gather
stats in the program; it can be nice to have and we are thinking of a
way to export the stats over the fd-based API, but it's less useful than
system-wide monitoring.  Perhaps this is a difference between the two.

Another case where stats and configuration are separate is CPUs, where
CPU enumeration is done in sysfs but statistics are exposed in various
procfs files such as /proc/interrupts and /proc/stats.

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
