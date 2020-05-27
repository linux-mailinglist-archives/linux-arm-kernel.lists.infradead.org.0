Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20A31E46C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpPHt1cjaoPCalZwMQ28LIK+urgCM4bq+kgbw9rX4XI=; b=nQkPApPNOJRCIo
	ALuTds4uuf0Tnb8IGNwiAdumyud3RpmBcgiPJaWSAXtjtHu4MlpjvbfRdUITG8mH0JKhL408o2BfQ
	wwYKtqbM4q11hEqQJQQaabr4Tf5oQdBV6ocRlzfyM5bZNh45lkYR+rd5eztgzUI1VfKYuyJj/IrAp
	b3d2g8Kapp1ACvnVDGID4butjtm0JlGSjq6/3mbd/iiI5rmYc/T9Bxlo75F9BG+FtcQS/h5hxnrzQ
	H2X9nRLLj2neNxB4+RL1FXf9E7EcsN7M8B1UEpTNQBXI9J14MSzdadvd8LxiJJCqWNVPSQ3TzsICD
	cVMrI/Pvs1X7fVU2FkUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxaI-0007iO-Hc; Wed, 27 May 2020 15:03:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxY7-0007V6-Bx
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 15:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590591651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=S79dLGaDC34U88k/muBN2/cWWvIJSeZD2zX/jWO3DQQ=;
 b=gSPlK0ScyI9DhqTPMyeQV22aVRwlCQggPPFUN+F/sfITuEW6mAYLxDWUeU34ruGMzewqJL
 2xT4pVMsgtK8F2FY8vwoSoOSjiP5iAM8I7TWGlju4TglL/EOhUgT4JF50L4mEqoqhLGwUQ
 3LJsokR4QQtjJtYANjiByr3bjhJRZPo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-upN8D2UTMf6-xWYH86_pWQ-1; Wed, 27 May 2020 11:00:48 -0400
X-MC-Unique: upN8D2UTMf6-xWYH86_pWQ-1
Received: by mail-ed1-f71.google.com with SMTP id ba29so5952962edb.16
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 08:00:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S79dLGaDC34U88k/muBN2/cWWvIJSeZD2zX/jWO3DQQ=;
 b=qdTAul8kaCZFWjrVrbSWtQhjeHUZrpeDZqKNbaG8d0PsmJAB3OV0Z5qJRO57fpj1Ak
 xXGCyvINqiAcpdid6wysi87uo2hOlZhgaZEDKkCB1DSBn0gBn0eORaSNZYT85OXkjJ8X
 MUQjUxoMRuirzUOsQbwfaTcrAX2d8ctmhknL7dB63hMsX9qCNC2exjlg4G7Ut+nE9C/X
 a/ICtWchdkM/lg//vNyw0UX84kcQcrBqkWvAL8Is5bOjE/j4xTBlph86MZmEosXDmegz
 Bot7+lB0yYi0UnBO5POd5iTY7qf77EKUaoQ960Zwh173Y/4d4mi0J/+Yrd1PL1I8GFUL
 KooQ==
X-Gm-Message-State: AOAM533qMK7AbWMGW+mLNyx7M8c5XyNhJH6gR1RpqCIKBYum6wtgJeoZ
 6dqYRdQWWLbXjrzXh/dHtdbk8iSHneSsNyhhFnI+PfhTiNeYa9UEJ5d9wWm5w3sV+oGGztmD7NJ
 2xZkQJaPX9+NSgyAmeFY/+5lR55V0NAfw4G4=
X-Received: by 2002:a17:906:1442:: with SMTP id
 q2mr3491278ejc.33.1590591646004; 
 Wed, 27 May 2020 08:00:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzxzNY5UhO1mssuYEm2F2UYGESNfuhTc2d/FaV+VoTyW39e+803AKyGa34dCi6Lxc3HyJGruA==
X-Received: by 2002:a17:906:1442:: with SMTP id
 q2mr3491234ejc.33.1590591645542; 
 Wed, 27 May 2020 08:00:45 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id l1sm3053400ejd.114.2020.05.27.08.00.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 08:00:45 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Statsfs: a new ram-based file system for Linux
 kernel statistics
To: Andrew Lunn <andrew@lunn.ch>,
 Emanuele Giuseppe Esposito <eesposit@redhat.com>
References: <20200526110318.69006-1-eesposit@redhat.com>
 <20200526153128.448bfb43@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
 <6a754b40-b148-867d-071d-8f31c5c0d172@redhat.com>
 <20200527133309.GC793752@lunn.ch>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <b0d11337-3ea4-d874-6013-ff8c3e9d6f26@redhat.com>
Date: Wed, 27 May 2020 17:00:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200527133309.GC793752@lunn.ch>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_080055_485293_276FEC5E 
X-CRM114-Status: GOOD (  13.29  )
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
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Rientjes <rientjes@google.com>,
 linux-fsdevel@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/05/20 15:33, Andrew Lunn wrote:
>> I don't really know a lot about the networking subsystem, and as it was
>> pointed out in another email on patch 7 by Andrew, networking needs to
>> atomically gather and display statistics in order to make them consistent,
>> and currently this is not supported by stats_fs but could be added in
>> future.
> 
> Do you have any idea how you will support atomic access? It does not
> seem easy to implement in a filesystem based model.

Hi Andrew,

there are plans to support binary access.  Emanuele and I don't really
have a plan for how to implement it, but there are developers from
Google that have ideas (because Google has a similar "metricfs" thing
in-house).

I think atomic access would use some kind of "source_ops" struct
containing create_snapshot and release_snapshot function pointers.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
