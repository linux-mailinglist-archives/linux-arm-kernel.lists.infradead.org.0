Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FD55F7FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 14:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p87Ka7r1JGlK4Y8BV/02ubHBK1R3FTM4aVKzysVGnio=; b=nsWyhOsPPLvQXX
	Br7O+/xPDBYUDxFWBcigxDPeMvjgMFXXgpK/QLiPo83zg1OG7eMwlY6fWf3TaE46FFChvOAAMjTdf
	PwxIpCb917ZV5h7xJqpjSlH3BMxmfzWoVSvnxfWGOiCzt8HzthjkoH3ybZjt96OLTKhD5xB8Odg1Y
	Q6HEX7MpewXRihnFRZUmKqf3y/rj0I886JCFIHoxFavdphVWnBlwMUGQA5oBtSfwn98Uvo6NCt3Cy
	1F42QeDlZWzydKbVrFDz7U593lB2nT79HBBR903f8tE1jlnEyowDu+i7Gqk5L+SDyGtAeR8MgCr9L
	gb8bpUi0acwjvjv03O1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0nM-0004Af-1V; Thu, 04 Jul 2019 12:25:00 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0n8-00049s-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 12:24:49 +0000
Received: by mail-wm1-f66.google.com with SMTP id n9so5580016wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 05:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KPSqPEoe1r6Dxc7vF7+sN1C5dmgHnFsD6yHp+UiwzX4=;
 b=mta7QcZX2g6UYlMeIbEKELQ/08jIwkuW66mMtuEsPnKJwIdLjZXS7tj3uY0aPNTEh9
 /zCfOtla7cIKHEe2Y3hZLEGmCKrSpc6ORnk03rRLM8QD1if918JcciEf75UkbaJlNbiH
 BP5Wg5HHLKU95Xjm0YB8FgjfXWwz7GoMOr10qw9hIFz5uJU5ZBbh+53VAjm5l+ll8j9T
 Uf8aioz6UlED/IWqlbtAK2P3Kho06uWkgj1Fxn7NP/sjbZq8l9kKv/cm4++/cwWzOz8j
 aUUQwWfH4fqyN7pqUsSW2VezUDDCzLOc6pe62aBRyi/cZYXcHjKFyY/8Apji6GWUG+Zp
 hqxg==
X-Gm-Message-State: APjAAAVJYQwJzqL0gM2T0lhvzanVLsA+BvQPDA1rZEru4/jsDmWbMvX2
 pJXQzaVG/fgsRlrt6qGGlojNPA==
X-Google-Smtp-Source: APXvYqzQG/PaUQQ9qHqVztBsqXVCipBrlmnMaYGswHNZvR/NBHYz4F7WBJigYoQ5tyRLPoX0TXFIMA==
X-Received: by 2002:a1c:b782:: with SMTP id h124mr12390007wmf.20.1562243084421; 
 Thu, 04 Jul 2019 05:24:44 -0700 (PDT)
Received: from [10.201.49.68] (nat-pool-mxp-u.redhat.com. [149.6.153.187])
 by smtp.gmail.com with ESMTPSA id g131sm3675169wmf.37.2019.07.04.05.24.43
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Jul 2019 05:24:43 -0700 (PDT)
Subject: Re: [PATCH] KVM: arm64/sve: Fix vq_present() macro to yield a bool
To: Marc Zyngier <marc.zyngier@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>
References: <1562175770-10952-1-git-send-email-Dave.Martin@arm.com>
 <86wogynrbt.wl-marc.zyngier@arm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <1f39cc48-12d5-2e56-c218-b6b0dd05d8ce@redhat.com>
Date: Thu, 4 Jul 2019 14:24:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <86wogynrbt.wl-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_052446_608404_28654A43 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 Okamoto Takayuki <tokamoto@jp.fujitsu.com>,
 Christoffer Dall <cdall@kernel.org>, kvm <kvm@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/19 10:20, Marc Zyngier wrote:
> +KVM, Paolo and Radim,
> 
> Guys, do you mind picking this single patch and sending it to Linus?
> That's the only fix left for 5.2. Alternatively, I can send you a pull
> request, but it feels overkill.

Sure, will do.

Paolo

> Either way, please let me know.
> 
> Thanks,
> 
> 	M.
> 
> On Wed, 03 Jul 2019 18:42:50 +0100,
> Dave Martin <Dave.Martin@arm.com> wrote:
>>
>> From: Zhang Lei <zhang.lei@jp.fujitsu.com>
>>
>> The original implementation of vq_present() relied on aggressive
>> inlining in order for the compiler to know that the code is
>> correct, due to some const-casting issues.  This was causing sparse
>> and clang to complain, while GCC compiled cleanly.
>>
>> Commit 0c529ff789bc addressed this problem, but since vq_present()
>> is no longer a function, there is now no implicit casting of the
>> returned value to the return type (bool).
>>
>> In set_sve_vls(), this uncast bit value is compared against a bool,
>> and so may spuriously compare as unequal when both are nonzero.  As
>> a result, KVM may reject valid SVE vector length configurations as
>> invalid, and vice versa.
>>
>> Fix it by forcing the returned value to a bool.
>>
>> Signed-off-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
>> Fixes: 0c529ff789bc ("KVM: arm64: Implement vq_present() as a macro")
>> Signed-off-by: Dave Martin <Dave.Martin@arm.com> [commit message rewrite]
>> Cc: Viresh Kumar <viresh.kumar@linaro.org>
>>
>> ---
>>
>> Posting this under Zhang Lei's authorship, due to the need to turn this
>> fix around quickly.  The fix is as per the original suggestion [1].
>>
>> Originally observed with the QEMU KVM SVE support under review:
>> https://lists.gnu.org/archive/html/qemu-devel/2019-06/msg04945.html
>>
>> Bug reproduced and fix tested on the Arm Fast Model, with
>> http://linux-arm.org/git?p=kvmtool-dm.git;a=shortlog;h=refs/heads/sve/v3/head
>> (After rerunning util/update_headers.sh.)
>>
>> (the --sve-vls command line argument was removed in v4 of the
>> kvmtool patches).
>>
>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/664633.html
>> ---
>>  arch/arm64/kvm/guest.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
>> index c2afa79..dfd6264 100644
>> --- a/arch/arm64/kvm/guest.c
>> +++ b/arch/arm64/kvm/guest.c
>> @@ -208,7 +208,7 @@ static int set_core_reg(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>>  
>>  #define vq_word(vq) (((vq) - SVE_VQ_MIN) / 64)
>>  #define vq_mask(vq) ((u64)1 << ((vq) - SVE_VQ_MIN) % 64)
>> -#define vq_present(vqs, vq) ((vqs)[vq_word(vq)] & vq_mask(vq))
>> +#define vq_present(vqs, vq) (!!((vqs)[vq_word(vq)] & vq_mask(vq)))
>>  
>>  static int get_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
>>  {
>> -- 
>> 2.1.4
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
