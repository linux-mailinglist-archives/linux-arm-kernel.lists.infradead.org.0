Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC354D1A2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 22:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DTrf6VDciKChtOHc7LQBHf2u2eqnM61ax6iW+K05NXg=; b=jQfUotZlvGfY6c
	Zuel4blfF98eNEL+5A8Ywv9tto5figEYdNWwQAYCTC+I1x2seupKnyHaURiBvHYH08Q8eFxj9EKcq
	17n9CdESUUeSaBqDSpY1Tvn/JEdHiEh/K+jiB/4DcrZb3bNIJWGpoipCduMFWqVibMbHSbGEhVASq
	YYgN0pUCEyMZT728qS/R+/YS0bXh2++IfrUQCrJLrM5vBpE2BJZbeUbjWfAyuYDeFOyC7u6W1P1VP
	3yXaaDGLjw0z/QU237uhfKTHPGS/Er5htH0OMRO2x0v4B1+MdKwbISsbAf+RrycFq3AbEaip0Rz3S
	T5WJLvw+atZIVO37y1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJ13-0003Sb-E7; Wed, 09 Oct 2019 20:57:01 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJ0s-0003S1-Ox
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 20:56:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570654609;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:openpgp;
 bh=ghIP95f1Z5BF2VVaSb+qX/U3Se4vmJoP2nIW78TEjoY=;
 b=fbAMSDzDhd7hqSH10xuAaVSNsOqqpDARzuJGdBsLeSiJlMuuaenV/G+pOQ07qJhUP6lF3j
 hk/MI4hq4miPX8vpSS9o9eniwGKcd9q1V9jwNjN4t8j6ZnnrGqqTL7yumByNbKkGnRM7Sh
 GXOn8zchFw1lVzlzHR3yhxP0VoR1JV0=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-NlBxs8jjMxyhoY62MlQJbw-1; Wed, 09 Oct 2019 16:56:47 -0400
Received: by mail-wr1-f70.google.com with SMTP id w2so1664507wrn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 13:56:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XMFIvbI7tuwGap0RnIGe77DNy9RYz81HW2Xoa3VtEyQ=;
 b=Io30ogDxo/m9VVuvHHSFNfiAkihNTXyMqran9EHbm38pV0VY2NxXytpgV/uhQBopjE
 QbvhT/RtVo8W66XY9/HxqxdtbN4UHNxlAah4QFGegNneQw6ONyQiz1dGBkYvUxZR3pM/
 rYcQXOO9hpuBx0CzuePZKcj7lsKwhttWCR/h9NHjiidsjrdOJm67I4K/uOLeRgdzmqcE
 LzjjA2/tf3mv6yrglJryvns8NXSZeoqfYdYIITeubigItWPT+Zl7mRfvtSg8LnJ8DY8o
 8nZiX9uT+acbrxsm0+VOScT2KF+CeDQieoJKof6WjmIaTKeq+u6mdKdmeg4VywGdSGFq
 AAHA==
X-Gm-Message-State: APjAAAUzBlugTjgUArGxWHLtD/ZKZ7yuSObLuscqIrVCq2ITkp6XBcTv
 laEGV1InKYS4jD+aaFN/izu1jZgq/VVIK9UNqncCe8RofsqjCeO/BL7Ua6K1wRYMws9BKHogCF8
 MgwA2Baic4D/LuaPOTpxl8QlOMrD398DvvXo=
X-Received: by 2002:adf:dc8c:: with SMTP id r12mr4466713wrj.107.1570654606024; 
 Wed, 09 Oct 2019 13:56:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwZbo4bXoTjFZE108uPgBJL+qA7fSP/aC9lBHXyp9WbL/rbcJp5yfR1JCu/z5rB8uYb5DGCLQ==
X-Received: by 2002:adf:dc8c:: with SMTP id r12mr4466689wrj.107.1570654605662; 
 Wed, 09 Oct 2019 13:56:45 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:1032:7ea1:7f8f:1e5?
 ([2001:b07:6468:f312:1032:7ea1:7f8f:1e5])
 by smtp.gmail.com with ESMTPSA id z189sm6026703wmc.25.2019.10.09.13.56.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 13:56:44 -0700 (PDT)
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: John Stultz <john.stultz@linaro.org>
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
 <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
 <CALAqxLVa-BSY0i007GfzKEVU1uak4=eY=TJ3wj6JL_Y-EfY3ng@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <797af843-6ed4-349c-55bf-73a0dab1249b@redhat.com>
Date: Wed, 9 Oct 2019 22:56:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CALAqxLVa-BSY0i007GfzKEVU1uak4=eY=TJ3wj6JL_Y-EfY3ng@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: NlBxs8jjMxyhoY62MlQJbw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_135650_930703_AFCEE694 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "Jianyong Wu \(Arm Technology China\)" <Jianyong.Wu@arm.com>,
 Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sean.j.christopherson@intel.com" <sean.j.christopherson@intel.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "yangbo.lu@nxp.com" <yangbo.lu@nxp.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <Steve.Capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/19 18:05, John Stultz wrote:
> On Wed, Oct 9, 2019 at 2:13 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
>> John (Stultz), does that sound good to you?  The context is that
>> Jianyong would like to add a hypercall that returns a (cycles,
>> nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
>> field that is already there for the vDSO, but being able to just use
>> ktime_get_snapshot would be much nicer.
> 
> I've not really looked at the code closely in awhile, so I'm not sure
> my suggestions will be too useful.
> 
> My only instinct is maybe to not include the clocksource pointer in
> the system_time_snapshot, as I worry that structure will then be
> abused by the interface users.  If you're just wanting to make sure
> the clocksource is what you're expecting, would instead putting only
> the clocksource name in the structure suffice?

Well, it would suffice but it would be quite ugly to do a string
comparison later.

What kind of abuse are you thinking of?  We already have struct
system_counterval_t for a clocksource+cycles tuple, so it seemed obvious
to me to make system_time_snapshot a superset of it...  In fact,
system_time_snapshot's cycles member is even unused currently, so it
could even be easily replaced by a struct system_counterval_t, instead
of adding an extra field.

Paolo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
