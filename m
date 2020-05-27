Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 919C51E50A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFR7z2f8grk/evoP2DayJZpzze3/DPezAqzjkcaG72A=; b=PvjwI2qo2IJ5wt
	/Xd6PyFzmQtHC0kmJhmBQrXN4V2w61WRDhnlfT74TIKtfp7VWudfZSgTp3VxorRWAqztwDyfQiHOp
	tuHz5gViGo3pCxCXcP/v0c1ff2D5cMq1RM6UB/xQW6zarPtvBPIExGEtL2LEsJWbHsE39z92BxQbm
	vFSjKdEsAemvv47Cd9J9VGR5hZw9e5BAmB8B/L7+fWqjr027ymcmGoPs2QBDvq5oedr5L5e5WUcss
	epyB64nUDBpFJXD7YekLVcqkFhqX1u8B2QeEds/OTe5w3fqHOwY6SjGXKPXKXMIkI6Cad0HipSzs5
	Yv/ag1v9eKiVkIT5yvGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3rX-00019w-A9; Wed, 27 May 2020 21:45:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3r9-00017J-V3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590615894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fBvAWYmBdzgrA5U0LT3xtBczNhEDcnN6W5IKb+q9W/4=;
 b=e5pa/J2nRnQ8WudYJBwm8zN6/wgx7gvJjV/SVlLp0Hzf7CoNns4MfuoEyEDJbiPXWPRKzP
 1DsFpd/TzoC27nwii9uTUKARqxtvq9yxtasx7g4OB6NZ7A7dAxHm2pe7HVUFIQN6XD+4ok
 g3JHOQTT5ZmPGWnuoid2EVkaGZuqtNk=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-jXPDNM-HOo6-28QJfD61jQ-1; Wed, 27 May 2020 17:44:50 -0400
X-MC-Unique: jXPDNM-HOo6-28QJfD61jQ-1
Received: by mail-wr1-f71.google.com with SMTP id l1so8070925wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 14:44:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fBvAWYmBdzgrA5U0LT3xtBczNhEDcnN6W5IKb+q9W/4=;
 b=ioAdtPcw96hS2eGPzvM3oLH/JqE9Rkj2d+2+uoD73prf8LOCsXMVdCApO5Ozxs6U2W
 epubSYc8FdallgpZDmqRN3B4K5JY968un76wWX+7z9zn5iSv49AX+obAX7Osr8I3z8Xq
 46YlQpmdcXQBNS4V57/+65grigSznJNpHuvLBcOBCASbJWIhXYu0NUiBkw9/vRmV8cJn
 Jy3cXYEnaefcAo4e9hY0xPZ3GTfkM4CZWEWMnmvCsrdMvpcxJtUMPcbCfdVi7oEkpLkd
 +IU8k88dwHK5tgJ1PiOiP+o7rGscnio5aXH05aeHTAq07xdLnyswa/kSa1b0Ag9GCJv7
 7VEg==
X-Gm-Message-State: AOAM5316Bzmfos3EHZ7xNUtC806TLBxZkVcMLviqMqYrEB4v8oYjV/L4
 r8656lFojHEPiwjoqRo77dF1hcqBHZGeI77Bw6uq1Yr5bdEFok+zvnht6g7l+rIzGAScszL9Q4W
 iZui2U9729vxAEztt/z3+pjZkCbaB1Ei2eaA=
X-Received: by 2002:a1c:790a:: with SMTP id l10mr144597wme.80.1590615888699;
 Wed, 27 May 2020 14:44:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy3Af0J2CmuPpUG32rxwXfc1KYndN+k+SQB+Tn++8tDC1cfUbE9HPS7Kypz3xsxeZWawipQoA==
X-Received: by 2002:a1c:790a:: with SMTP id l10mr144569wme.80.1590615888450;
 Wed, 27 May 2020 14:44:48 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id j135sm4749631wmj.43.2020.05.27.14.44.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 14:44:47 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
To: Jakub Kicinski <kuba@kernel.org>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527132321.54bcdf04@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <af2ba926-73bc-26c3-7ce7-bd45f657fd85@redhat.com>
 <20200527142741.77e7de37@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <925502d6-875a-4d19-b574-1ffd47a9c2ce@redhat.com>
Date: Wed, 27 May 2020 23:44:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200527142741.77e7de37@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_144500_076910_A6787FE1 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
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
Cc: Emanuele Giuseppe Esposito <eesposit@redhat.com>,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
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

On 27/05/20 23:27, Jakub Kicinski wrote:
> On Wed, 27 May 2020 23:07:53 +0200 Paolo Bonzini wrote:
>>> Again, I have little KVM knowledge, but BPF also uses a fd-based API,
>>> and carries stats over the same syscall interface.  
>>
>> Can BPF stats (for BPF scripts created by whatever process is running in
>> the system) be collected by an external daemon that does not have access
>> to the file descriptor?  For KVM it's of secondary importance to gather
>> stats in the program; it can be nice to have and we are thinking of a
>> way to export the stats over the fd-based API, but it's less useful than
>> system-wide monitoring.  Perhaps this is a difference between the two.
> 
> Yes, check out bpftool prog list (bpftool code is under tools/bpf/ in
> the kernel tree). BPF statistics are under a static key, so you may not
> see any on your system. My system shows e.g.:
> 
> 81: kprobe  name abc  tag cefaa9376bdaae75  gpl run_time_ns 80941 run_cnt 152
> 	loaded_at 2020-05-26T13:00:24-0700  uid 0
> 	xlated 512B  jited 307B  memlock 4096B  map_ids 66,64
> 	btf_id 16
> 
> In this example run_time_ns and run_cnt are stats.
> 
> The first number on the left is the program ID. BPF has an IDA, and
> each object gets an integer id. So admin (or CAP_BPF, I think) can
> iterate over the ids and open fds to objects of interest.

Got it, thanks.  But then "I'd hope that whatever daemon collects [BPF]
stats doesn't run as root". :)

>> Another case where stats and configuration are separate is CPUs, where
>> CPU enumeration is done in sysfs but statistics are exposed in various
>> procfs files such as /proc/interrupts and /proc/stats.
> 
> True, but I'm guessing everyone is just okay living with the legacy
> procfs format there. Otherwise I'd guess the stats would had been added
> to sysfs. I'd be curious to hear the full story there.

Yeah, it's a chicken-and-egg problem in that there's no good place in
sysfs to put statistics right now, which is part of what this filesystem
is trying to solve (the other part is the API).

You can read more about Google's usecase at
http://lkml.iu.edu/hypermail/linux/kernel/2005.0/08056.html, it does
include both network and interrupt stats and it's something that they've
been using in production for quite some time.  We'd like the statsfs API
to be the basis for including something akin to that in Linux.

To be honest, it's unlikely that Emanuele (who has just finished his
internship at Red Hat) and I will pursue the networking stats further
than the demo patch at the end of this series. However, we're trying to
make sure that the API is at least ready for that, and to probe whether
any developers from other subsystems would be interested in using
statsfs.  So thanks for bringing your point of view!

Thanks,

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
