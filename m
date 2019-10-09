Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5DDD138E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIPnsrpe74w84ReYWpR1ZF7quHXXn+5axspRLrDG/HI=; b=oc99suoOzrH2an
	Zi0BAx0LHluEnFllOykEJ3/tJEETz29v/nf1ZVhDNa/ug1/EE+fiLQH631iymI0rXmPvT+RASTfcN
	wmVizvNVFkfVCuQny2DtOtC8Cg4BtPMnW+inMRKRjKxdTcq2jxTxT84wh0pjqTAfhAn5Xg5E0eoXH
	HVQD50ir3vh6WPiz28gklFKvytf+VG5SQ704pR4//jnXTgR7RSHfyRfhRaSONqrwyflTr4WYZPUXp
	0njYGrAB1QLpxYdtme2egn4F8mHVuw72rPSy8UEdko6AY8TbQ8upqRgK95JB6sW5G1yZ9Z04scYAk
	1sgnv+TROcvecy1PGYdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIETJ-00040M-Rx; Wed, 09 Oct 2019 16:05:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIET9-0003zU-Va
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:05:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id r17so5079742wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 09:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OcoDswvcpgORUe+MjF3j+myWKBr/y/JxVMKqWxIZdns=;
 b=PlMwn9qd6erojZKwrGuwRQoT3mBFtPJPdxKkIoi+g/d953cHVVQVDyFhTmkAOHq9HS
 VH6Kz+ynJOta/5jpwjQNaOKkCz8EqFOd8eFpwMkcdLBa/lGr9vFX4ZH9Odb0ZasRfZfg
 hL4ixrbd5H9Gn9ce4slb2XkurFpkRA99mVhAJRq0EpElm5jcHAq+hLY5NEFSOcYi8T5c
 XDGKEmdJaOWe6vEv1mdkMetvYaOe5w19Ke0Q6x3RRBcLXohUpsQ+H+tsU7xqCcKjV69C
 oJPkEMkoDqtuEHAJMbrD0RUQcVb80wtCimLZE2tavU+7cfhJGR2bsMlGyBuIYnXcbGRM
 T4sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OcoDswvcpgORUe+MjF3j+myWKBr/y/JxVMKqWxIZdns=;
 b=HICiybl2VuXLWJNaERu0HFzjPELA5oDRaDeymo+/itGLVCUQW4Aain8fMO4m8V6YRk
 jmNBwlj1fU7LWVnipRRoykaz/k9uzu4hchGzaJozf1AgBz+h0IhhzKFgetzCdpKlWzgf
 1POidAvifu3B6Imi497YCciA/vZlSMJ6cJryr5Lv4odhdJmZgbORPEM3bh310oADrVOv
 cuFRSAAA/YCxes4Hs9/CToIJQ5rKKPYkHrxd5rapfvms9jLv/nsYSJ3Z8WVyFmXLOV1B
 lDMFStB1W4Xaca6jKhJ61XLtkemg5xsZLE+8uLrrYV7F+WXzeL5XREAUf70nEaULkz6h
 alRw==
X-Gm-Message-State: APjAAAWxLVuCEASl+pN3tP2rwLsdYPYdMehk4s4xIqauw9z40PliFbaS
 lyi7f/SF2r8znozE9i4e1Xmn4ha269WHjGWQs8byxw==
X-Google-Smtp-Source: APXvYqwf2k+wes8U4KHH/Mq/y7m8PrdEQhLEFToIcu4WDfCk10VCZnURO4OVa/kXncgoav9k+nk3ezXxb9qFfCb0MU8=
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr3238811wme.152.1570637140793; 
 Wed, 09 Oct 2019 09:05:40 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <6b8b59b2-a07e-7e33-588c-1da7658e3f1e@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 9 Oct 2019 09:05:29 -0700
Message-ID: <CALAqxLVa-BSY0i007GfzKEVU1uak4=eY=TJ3wj6JL_Y-EfY3ng@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/6] psci: Add hvc call service for ptp_kvm.
To: Paolo Bonzini <pbonzini@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_090544_024046_EDB71D9D 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

On Wed, Oct 9, 2019 at 2:13 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> On 09/10/19 10:18, Jianyong Wu (Arm Technology China) wrote:
> >
> > We must ensure both of the host and guest using the same clocksource.
> > get_device_system_crosststamp will check the clocksource of guest and we also need check
> > the clocksource in host, and struct type can't be transferred from host to guest using arm hypercall.
> > now we lack of a mechanism to check the current clocksource. I think this will be useful if we add one.
>
> Got it---yes, I think adding a struct clocksource to struct
> system_time_snapshot would make sense.  Then the hypercall can just use
> ktime_get_snapshot and fail if the clocksource is not the ARM arch counter.
>
> John (Stultz), does that sound good to you?  The context is that
> Jianyong would like to add a hypercall that returns a (cycles,
> nanoseconds) pair to the guest.  On x86 we're relying on the vclock_mode
> field that is already there for the vDSO, but being able to just use
> ktime_get_snapshot would be much nicer.

I've not really looked at the code closely in awhile, so I'm not sure
my suggestions will be too useful.

My only instinct is maybe to not include the clocksource pointer in
the system_time_snapshot, as I worry that structure will then be
abused by the interface users.  If you're just wanting to make sure
the clocksource is what you're expecting, would instead putting only
the clocksource name in the structure suffice?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
