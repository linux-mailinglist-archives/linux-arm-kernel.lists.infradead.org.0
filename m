Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B4ED0ABB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R1ohxqWbTrxl+DUcsDNn6mxHh4duIDLcb72dJvFzQk=; b=eyExvSLccOcJlL
	YoFXKhgXCMa1BUiQCOT/qTuwUGiySx/wVOduZW9qBiG/xDsV+wfsUS0peXkFE+S3makFmU2KmlCOk
	avOmE3B4Hvod5O7kQRsFM5iPM/cr5lcGi3BQqHhyETdpY2SiFupMH++EFrBxgz9izhY85dv8EDNyr
	Iz0bUTacOq18P/q779h5g4RMYMweREmicJ5xiWHT6NwZF63D6qgKSpg3HeGPLH7QBXhjGPVMZlYDy
	z85Mp0vPeplKzyVjxDPmCVLPNdlpZW1raL1KyKMr0ip60dJbS0d28weGhF/LfUr26tOJCi1RWr0if
	VfvXAovdH8cwKEcauEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI82x-0002TS-78; Wed, 09 Oct 2019 09:14:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI82O-0002EP-Cm
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570612418;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=cZvwRNK0EK2nVjw8oRG2qh7gftxLlqc06mSiL5eetn4=;
 b=QI/ialJNeAhazVCnlfbxJy1tX0U0fhYfKrvlm0fQlzaYW6mPMJlseivGXi9fVDSOtkHTN/
 hbRMR4QFwNJnN9TpegPKbfmaX6/1Tw/g4/KwtLczIc3kkUBkUHfeQYWI55Ttk+BcaLEvo3
 qWc98XwEkefijzOJCwCYbm0hlXRNmNw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-48-rG6rQrZdOIuByx8OZY2VHA-1; Wed, 09 Oct 2019 05:13:30 -0400
Received: by mail-wm1-f71.google.com with SMTP id j125so758258wmj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 02:13:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Kg2KEa3btbJJz7gSq4olohGQOCWfoKGhQXiDkLfxFuQ=;
 b=Tq/7eCgkYrBenxNJ09V+Ra4JYNO1GqLsrsugDLP9Fq6wrdSVKO6463L0Nc/wT6YbbG
 JHPfuSHDCq20MuW2dYcR6GZfdAlRNQo3fWIrY3gIAtf7sQ34cTuQaXkSev/WZDG8+7od
 HTra+skyP6P40MzHWlwocP3aKSO08xT0kmBxR6CnY5gDj495fuQ1LR6Qg/hDML2oQmqq
 G2JJmWL3Kn+sZDfh05LMOFVqNYufLXLZXLbuRTnW2wKi7TIg1I3wqxKK32mqirjUD93I
 A+t/dapKYdOmzA1XVC+vcJwrCzEQY1tjodfIw9uJ/7J1g2RCfx2vA2qmydOD+k9Hi9mQ
 bCjQ==
X-Gm-Message-State: APjAAAWD3vpolENOSHbZcgNAvYJavy01BBgA8WcMDhagmAQ89hc+mnPW
 HXmpPGqV/KKSTPGspHmsmtgrtkJ1QOFoFK88BNKRHWVwfvFAS21UUZgPs5CH/gc6uAmvXtoqOi4
 S7K7Uft/MwwVE1Q964HYgAXJoUbPraLoN1Rs=
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr1874130wml.31.1570612408502; 
 Wed, 09 Oct 2019 02:13:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyLOYwIk6SUEWDWI7Ogctb8DPrp2tNv5YirX6y3gAP4cOVc6ZTZZ4OcRelLJPbF+BRnisnwJw==
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr1874100wml.31.1570612408241; 
 Wed, 09 Oct 2019 02:13:28 -0700 (PDT)
Received: from [192.168.10.150] ([93.56.166.5])
 by smtp.gmail.com with ESMTPSA id z22sm1311808wmf.2.2019.10.09.02.13.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 02:13:27 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: "Jianyong Wu (Arm Technology China)" <Jianyong.Wu@arm.com>,
 Marc Zyngier <maz@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "john.stultz@linaro.org" <john.stultz@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 Mark Rutland <Mark.Rutland@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>
References: <20190918080716.64242-1-jianyong.wu@arm.com>
 <20190918080716.64242-5-jianyong.wu@arm.com>
 <83ed7fac-277f-a31e-af37-8ec134f39d26@redhat.com>
 <HE1PR0801MB1676F57B317AE85E3B934B32F48E0@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <629538ea-13fb-e666-8df6-8ad23f114755@redhat.com>
 <HE1PR0801MB167639E2F025998058A77F86F4890@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <ef6ab8bd-41ad-88f8-9cfd-dc749ca65310@redhat.com>
 <a1b554b8-4417-5305-3419-fe71a8c50842@kernel.org>
 <56a5b885-62c8-c4ef-e2f8-e945c0eb700e@redhat.com>
 <HE1PR0801MB1676115C248E6DF09F9DD5A6F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
 <1cc145ca-1af2-d46f-d530-0ae434005f0b@redhat.com>
 <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
Date: Wed, 9 Oct 2019 11:13:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR0801MB1676B1AD68544561403C3196F4950@HE1PR0801MB1676.eurprd08.prod.outlook.com>
Content-Language: en-US
X-MC-Unique: rG6rQrZdOIuByx8OZY2VHA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021340_515122_274133B6 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Steve Capper <Steve.Capper@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/19 10:18, Jianyong Wu (Arm Technology China) wrote:
> Hi Paolo,
> 
>> -----Original Message-----
>> From: Paolo Bonzini <pbonzini@redhat.com>
>> Sent: Wednesday, October 9, 2019 2:36 PM
>> To: Jianyong Wu (Arm Technology China) <Jianyong.Wu@arm.com>; Marc
>> Zyngier <maz@kernel.org>; netdev@vger.kernel.org; yangbo.lu@nxp.com;
>> john.stultz@linaro.org; tglx@linutronix.de; sean.j.christopherson@intel.com;
>> richardcochran@gmail.com; Mark Rutland <Mark.Rutland@arm.com>; Will
>> Deacon <Will.Deacon@arm.com>; Suzuki Poulose
>> <Suzuki.Poulose@arm.com>
>> Cc: linux-kernel@vger.kernel.org; kvm@vger.kernel.org; Steve Capper
>> <Steve.Capper@arm.com>; Kaly Xin (Arm Technology China)
>> <Kaly.Xin@arm.com>; Justin He (Arm Technology China)
>> <Justin.He@arm.com>; nd <nd@arm.com>; linux-arm-
>> kernel@lists.infradead.org
>> Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
>>
>> On 09/10/19 07:21, Jianyong Wu (Arm Technology China) wrote:
>>> As ptp_kvm clock has fixed to arm arch system counter in patch set v4,
>>> we need check if the current clocksource is system counter when return
>>> clock cycle in host, so a helper needed to return the current
>>> clocksource. Could I add this helper in next patch set?
>>
>> You don't need a helper.  You need to return the ARM arch counter
>> clocksource in the struct system_counterval_t that you return.
>> get_device_system_crosststamp will then check that the clocksource
>> matches the active one.
>
> We must ensure both of the host and guest using the same clocksource.
> get_device_system_crosststamp will check the clocksource of guest and we also need check
> the clocksource in host, and struct type can't be transferred from host to guest using arm hypercall.
> now we lack of a mechanism to check the current clocksource. I think this will be useful if we add one.

Got it---yes, I think adding a struct clocksource to struct
system_time_snapshot would make sense.  Then the hypercall can just use
ktime_get_snapshot and fail if the clocksource is not the ARM arch counter.

John (Stultz), does that sound good to you?  The context is that
Jianyong would like to add a hypercall that returns a (cycles,
nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
field that is already there for the vDSO, but being able to just use
ktime_get_snapshot would be much nicer.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
