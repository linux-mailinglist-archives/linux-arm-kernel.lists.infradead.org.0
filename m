Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E564ED83D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8tAixSCI73R23U6zXQVbTL6U+t6K/aYPwTpN3itom8=; b=hpRfTpWB3ydcdQ
	tBXMY1i6Dgk6el4t2JMyHuJPg7leUwVXhT/x6rfPkkwLuenxtrHtlH4uV0bGjWKumIBLM74qvNuuz
	15YHGZR1fRRwYrLc0nB1Zw55gNi947pYh9uf3w5/VTFTX33+a+63Yk/T2J9DPTNUNr9eWxgASccwt
	yMYREAq9aOyhuTDR/k0oUNwnSFlRUyPN5QEBRoc5QSs5LA7kxQ2qTo+mkpNf5sl0NFDjDjgrnxdVF
	7Vv82pCL7w91bEKqJmpu1wEj1hGfT+yOXMQfDKMXvgmQOoupCdk9j3OEfM6WqkiRsFouPHLiBX1r4
	2S5+twrBLsYJVDc/Q+Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVR7-0007hv-1x; Tue, 15 Oct 2019 22:37:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVQz-0007gl-3y
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571179006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=wSh+n+8u5QLmMxe2hYGq+Rqu0J/BQ5npWNcVhzyY+e4=;
 b=DwvqdxmAIq1tPxrBzakC8cnsu57armpiMvMNOhTjTXk6TIaODHzknS9tMnRxJ6vMwHs/zo
 sewvryoICqcsFJL+Dmzg/tIBEKQ3GhURgSnk4MffH/QeIIwsDT4AjD6rb36ythNby5d9mt
 2vBa42qMEAsMjnWko56GmI6Gd4lEO7o=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-LBDNhuuYMt6WgmRMOa8jwg-1; Tue, 15 Oct 2019 18:36:44 -0400
Received: by mail-wr1-f71.google.com with SMTP id f4so7089348wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lwwAcBIi9gz4rDVsHFX2Q7ZJ02GG7jdgtvkZrgQZWFY=;
 b=E8YKry6SO6WthUKT1Gt7kS84UMj8VDRmwYAODW3iOGZkMGmXKLgV6xCJ50tOhhb8D9
 ZZkhtJZTsO2096PwR5uOGZR/nstI8i400+siiehGYfz7bWA3ev1fT673LOttKDOxTrxr
 QGae/cEYph9mKvgGyy9NDb+WL1mMPUV/UN24MBmTkPJa0e6NR46VEC+NbBOQkDGJ2kIr
 ClomWkbtIzpruwPvdRMMzCZVMidCTiDnNJR/hsdwff2nFg1r3+TT1FKnT1CEZ+vgUp9N
 EvLZv6hsAd4bTYwNOv54eiBVUL4f7H+8hhkL9SMunm8dfB2Mry8xZdyJO3+3zeJuvCeI
 RhNQ==
X-Gm-Message-State: APjAAAVV7zSiIuDljZQZGCxCXKwiLHhO7WyjrCU8B7FHm/JPDjpFxhsn
 Exrdv9z71hrWhue3K0DiK9DfUigx44IL8V1lMw0wSgebnr7Sa5hIiWVWCs4NLzH/vpmruv7iN4a
 wA4/4Y/NB2O5wNrRPsRejKnShdAnoq/UXv4Y=
X-Received: by 2002:a05:600c:3cb:: with SMTP id
 z11mr537732wmd.134.1571179003421; 
 Tue, 15 Oct 2019 15:36:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyR41EszL4/UT/53Ec9vQZG6o/Omkzfs8QOJ0pfXMxxw7MFiXPeS9FywecPK4MHNGK9zwKlCQ==
X-Received: by 2002:a05:600c:3cb:: with SMTP id
 z11mr537711wmd.134.1571179003137; 
 Tue, 15 Oct 2019 15:36:43 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:ddc7:c53c:581a:7f3e?
 ([2001:b07:6468:f312:ddc7:c53c:581a:7f3e])
 by smtp.gmail.com with ESMTPSA id c18sm20828908wrv.10.2019.10.15.15.36.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Oct 2019 15:36:42 -0700 (PDT)
Subject: Re: [PATCH v5 3/6] timekeeping: Add clocksource to
 system_time_snapshot
To: Thomas Gleixner <tglx@linutronix.de>
References: <20191015104822.13890-1-jianyong.wu@arm.com>
 <20191015104822.13890-4-jianyong.wu@arm.com>
 <9274d21c-2c43-2e0d-f086-6aaba3863603@redhat.com>
 <alpine.DEB.2.21.1910152212580.2518@nanos.tec.linutronix.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <aa1ec910-b7b6-2568-4583-5fa47aac367f@redhat.com>
Date: Wed, 16 Oct 2019 00:36:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1910152212580.2518@nanos.tec.linutronix.de>
Content-Language: en-US
X-MC-Unique: LBDNhuuYMt6WgmRMOa8jwg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153653_232317_96A1DF38 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

On 15/10/19 22:13, Thomas Gleixner wrote:
> On Tue, 15 Oct 2019, Paolo Bonzini wrote:
>> On 15/10/19 12:48, Jianyong Wu wrote:
>>>  
>>>
>>
>> Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
> 
> You're sure about having reviewed that in detail?

I did review the patch; the void* ugliness is not in this one, and I do
have some other qualms on that one.

> This changelog is telling absolutely nothing WHY anything outside of the
> timekeeping core code needs access to the current clocksource. Neither does
> it tell why it is safe to provide the pointer to random callers.

Agreed on the changelog, but the pointer to a clocksource is already
part of the timekeeping external API via struct system_counterval_t.
get_device_system_crosststamp for example expects a clocksource pointer
but provides no way to get such a pointer.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
