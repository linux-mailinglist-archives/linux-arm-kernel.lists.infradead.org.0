Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A0F1647E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:09:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XasgCP4vnMJViY9SlobqONaxV9bUKh6GstOVRhZhWCk=; b=AMDvfUgq4rdhsL
	+oxOJSesfw4LyJ7y4etwx2BBsoOYLIeQShWVjiIStdQdf2xhDdv+BePN69ZLH9+2rFLaMHGIEFbaE
	MTiBAlmxlRB4wHaKFmCjWZ07LIy7fRrpCiI/33IB1oDb+Rrr2tg5JPJXQVVk1xqo5d6Q2mCLU31z2
	FRuNtND8o4P6uPG9MlItI8Y4nRJBSdma7QvctfR6aCi8M369Ei+kJ4f++j58ISbxg2hm5uw0OAI9P
	wYw9TnCUPPZFobr7ItdDxyj0dxYFWh5JsVQa6Utz7AI8XyMk09TFnqJxY/x3W79JJ/rkWgwfRtsOn
	3jZ3XvHm8kmmrDeeOiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qz5-0006r8-4D; Wed, 19 Feb 2020 15:09:55 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qyr-0006q3-8z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:09:42 +0000
Received: from mail-qv1-f52.google.com ([209.85.219.52]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M42X0-1j4Qyk3lYW-00088H for <linux-arm-kernel@lists.infradead.org>; Wed,
 19 Feb 2020 16:09:35 +0100
Received: by mail-qv1-f52.google.com with SMTP id s6so323187qvq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:09:34 -0800 (PST)
X-Gm-Message-State: APjAAAUldZ4ZpCuUakyfOFEgt1bsx7RPFdOxx/19cwMKTphywUtuoNjV
 qsLIUopEosCOXYQhS8yuB0akg/M9ULsF6ilA5+w=
X-Google-Smtp-Source: APXvYqy3rlxWW3PibWcS7Utz29Jg0Z9gTgANCeAjjrXu+xhh/WzI1/Ni7Mlpywm71HMgkez+fQvQf5f2uWJlSlHGL2o=
X-Received: by 2002:ad4:52eb:: with SMTP id p11mr20046350qvu.211.1582124973474; 
 Wed, 19 Feb 2020 07:09:33 -0800 (PST)
MIME-Version: 1.0
References: <20200210141324.21090-1-maz@kernel.org>
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 19 Feb 2020 16:09:17 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3V=ur4AgLfat2cSyw8GrkCS2t06eqkzC-gXcc0xBpEPw@mail.gmail.com>
Message-ID: <CAK8P3a3V=ur4AgLfat2cSyw8GrkCS2t06eqkzC-gXcc0xBpEPw@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
To: Marc Zyngier <maz@kernel.org>
X-Provags-ID: V03:K1:gNOa1KfCDYq9U2nx9Br28h+AkeGMKHWhuyImd3VUTAtgAlG8HQe
 GVsArrAiOiaUc6Git7LuJfDl7j2F29v3do08vMLWNvG5V80TX8D5ynW+iAIKLqjCbvwvM1F
 cg2KKcbmCURo9iDk0byvZWZcZ289HgebRTJzjMK3OK5CVJMDCaV2V6kx9KutRBUgRp34sVE
 RDb4RmTtefBkftpCYnfJQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0/ap4Yels3c=:dNmYUQAj1W0DRIuGUwdD32
 jL1QUq07s+eFIGfDBB2RzvFnXnaxCMFshbxPk6B20xKG6lobHk9tkR730o15BchfWx6lpk/7U
 85udCbZEUePaIzKAFnfZGBn+cvKVR7yy0gdLBU4zA/OgbioDI22/Urx6j9oclEvL2X0Fl7MtF
 SEYPfcYM8HnX3m+Cx5PMxPmPrdWVF7ady68ogHRVXXMhN/xtb9U4RVVTjndoggvCqATOhVWjI
 Bhfunbh4c2r+eZ3/AiPBKLRnTVK3F2/bzBnoGqhGopmi1H21af5n6t3V8AgWRgy3SkEj/1zLz
 zYdjtz6Vl2dM9zupnJwvL2HBj53xkVZ4wviciVfUENZhNuCRBF7d528cfNsBc//iuz0PWDWtF
 6xQT3XQydNAwFBPQR78xEAAs5vl8Lw+b6kVdx3PVnJsSK2aLIBrECaPdA/OxdmzBXh7eFrvnS
 7051opZZ8kcFNAevNne8u8Q/CqBL8s5xwb9lY0UdcGPV8h5YIHByym9+qVo/YXz57DnnRrwjh
 okL0zECSNKF2Q3f+mLbyKIQ2uvYL+mDAs7/DKX9k7UMbRsoPwJNnmewBpSB9+4HnFDI2Z73V9
 XO85SSDUg/eRx86+S4CJom2TlXgZjChMVX/uIebIKAaItHkwlCMVUDvoB6/Nci+dqoxSLAHM1
 W+cDJqcLucUQtZ8dWeu/YjXC4IXCyNARuYXAI+clO4fxo114DzrElw6pgjA8/EkoweaBEO6ku
 JaqTUVVBeFQ6JQu1ztZblDcmKeL+25u4u/EvgDARm43r2FMJnXUzGFp5Jbcmh1n2c8F+/K3xI
 pAKWwqg62OO4+It1A+QQXrdLgX4Vfk9ODwO2qfNRw1ftBdjFIY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_070941_615647_CD734B58 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jailhouse-dev@googlegroups.com, Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm list <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, jean-philippe.brucker@arm.com,
 Jan Kiszka <jan.kiszka@siemens.com>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>
> KVM/arm was merged just over 7 years ago, and has lived a very quiet
> life so far. It mostly works if you're prepared to deal with its
> limitations, it has been a good prototype for the arm64 version,
> but it suffers a few problems:
>
> - It is incomplete (no debug support, no PMU)
> - It hasn't followed any of the architectural evolutions
> - It has zero users (I don't count myself here)
> - It is more and more getting in the way of new arm64 developments
>
> So here it is: unless someone screams and shows that they rely on
> KVM/arm to be maintained upsteam, I'll remove 32bit host support
> form the tree. One of the reasons that makes me confident nobody is
> using it is that I never receive *any* bug report. Yes, it is perfect.
> But if you depend on KVM/arm being available in mainline, please shout.
>
> To reiterate: 32bit guest support for arm64 stays, of course. Only
> 32bit host goes. Once this is merged, I plan to move virt/kvm/arm to
> arm64, and cleanup all the now unnecessary abstractions.
>
> The patches have been generated with the -D option to avoid spamming
> everyone with huge diffs, and there is a kvm-arm/goodbye branch in
> my kernel.org repository.

Just one more thought before it's gone: is there any shared code
(header files?) that is used by the jailhouse hypervisor?

If there is, are there any plans to merge that into the mainline kernel
for arm32 in the near future?

I'm guessing the answer to at least one of those questions is 'no', so
we don't need to worry about it, but it seems better to ask.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
