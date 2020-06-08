Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 962F31F14D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y21yNtW/d2GiZ3GwKeJ9ih/ilC0PxLzw6K4P2mpCkxI=; b=ijpXq57dVp0tL9
	iOFH/IqxmZTosPhXGmEVxMpjOuKcLtZmlzRELAoBmre+3c1oadLNrKfwhXRQT2jm7TGwi5Bq6TOTO
	q6/1J+A/dDbJE9R4dJytGqHsS4pJvTETsfUi/xTNydj4Y22IXo9JWn3DnPRQnaREW+4Ehy1K/Muuw
	mRQhYXn+/5QZeiC5KsXbjQjnaseBuT3NiMxkB8WjUTkjcFBCdponOeMOxLyJi8/gUs9qUJXuBPEdX
	iTKS8FuznonybsLLypFG/KnvIFMvc6HfBJLN+qLh2Io0uCZw3PeXduk4WCYfXI6zsQqnO05w9y1no
	c5t8kHLP+bWHAqgddysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDaq-0005aP-Oa; Mon, 08 Jun 2020 08:57:20 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDad-0005ZT-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:57:08 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so5407378iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dl5xv/IGmW59O6enCMfcyhbX0k4Cox4q6lQplQWI50g=;
 b=n69Rj4B317q2AUkFxmxxCNdE3kD8/kgP//csqFWYb9IxlektA3qJLb4csUHzN4Fl8y
 ivL16ciXx349vbCQZrEMphHtlcbJhKgT+WhtCA5zhYOwtHbhwhbKfz8hJgAuXmfwGBMI
 lHPk7EDSgfwr1fd45vQJ0S22yScT0iaSX+RSzdjB3oRkMMUjC6GPDTBD98pV+ws2GRIj
 M4iE/ZZKSMW8pIaaGox0gwC+xA5qMBAHAXCHldJvqPjqBfikj+7cM9KCYtQaxCT29K5c
 XqqXB2VvOI0boHGZ2KbezKV2THiExcTvbSfxJx2gyqKEDQZvFA3J4KaZgqDULPn9HkEZ
 fjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dl5xv/IGmW59O6enCMfcyhbX0k4Cox4q6lQplQWI50g=;
 b=aoTXqAmoQM1MhYSVrOJKW7KDLDC6qLOYnNyWC7NBo3sN27bac3uDkZBTNdkiClVzK6
 t9npS7xes9ktgTsNNc3NjzQqO4jWZAcqBFlIZzR+45b1iD1S8Qfm1mli5qgyMPacTtAE
 Dl90LbSLus50fJ8DHB3/JjuvGoLY/ofhaRNvXkdliUZYowCJaTnxjATZvaNLebbemq++
 RXM7ObWnIyEf6W6F9M4RYk6tFhdB3THv1mNprAlhJwOZ+9ll8lpj9gx7MBJwDPyrr4sJ
 NI+46MgmMYNiHstJES4IUuFWCNrSxZfPNAbd4DfbP608sS7SABxWAyMUoZAjrsWn9VBg
 MAxg==
X-Gm-Message-State: AOAM532AiM45nBoiqpwBNlrHP38DMpYGN0og9+5XSoY6+LMlv3rJlfPy
 UFHLFsY0HVcjyozEEtwlCO91lkDM/83xCQvdvOM=
X-Google-Smtp-Source: ABdhPJyqapi7KbQS7kw+93/4pmWdcph1yT6gP2ngPU+7u2tF0I6b3vpCSASJKLF1zq7aDFqM5yDJCLKmeao6ImlWGzc=
X-Received: by 2002:a05:6638:dd3:: with SMTP id
 m19mr21525269jaj.106.1591606626515; 
 Mon, 08 Jun 2020 01:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200605213853.14959-1-sean.j.christopherson@intel.com>
 <20200605213853.14959-21-sean.j.christopherson@intel.com>
In-Reply-To: <20200605213853.14959-21-sean.j.christopherson@intel.com>
From: Huacai Chen <chenhuacai@gmail.com>
Date: Mon, 8 Jun 2020 16:56:55 +0800
Message-ID: <CAAhV-H6eyj2ihKAygqkCvgfCnBnAhx7Eu6Vooh2FHqQdRcdhrA@mail.gmail.com>
Subject: Re: [PATCH 20/21] KVM: MIPS: Account pages used for GPA page tables
To: Sean Christopherson <sean.j.christopherson@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_015707_412895_B5040732 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chenhuacai[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoffer Dall <christoffer.dall@arm.com>,
 Wanpeng Li <wanpengli@tencent.com>, kvm <kvm@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@ozlabs.org>, Ben Gardon <bgardon@google.com>,
 Claudio Imbrenda <imbrenda@linux.ibm.com>, kvmarm@lists.cs.columbia.edu,
 Janosch Frank <frankja@linux.ibm.com>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Junaid Shahid <junaids@google.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jim Mattson <jmattson@google.com>, Cornelia Huck <cohuck@redhat.com>,
 Peter Shier <pshier@google.com>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Peter Feiner <pfeiner@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reviewed-by: Huacai Chen <chenhc@lemote.com>

On Sat, Jun 6, 2020 at 5:40 AM Sean Christopherson
<sean.j.christopherson@intel.com> wrote:
>
> Use GFP_KERNEL_ACCOUNT instead of GFP_KERNEL when allocating pages for
> the the GPA page tables.  The primary motivation for accounting the
> allocations is to align with the common KVM memory cache helpers in
> preparation for moving to the common implementation in a future patch.
> The actual accounting is a bonus side effect.
>
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/mips/kvm/mmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/kvm/mmu.c b/arch/mips/kvm/mmu.c
> index 94562c54b930..41a4a063a730 100644
> --- a/arch/mips/kvm/mmu.c
> +++ b/arch/mips/kvm/mmu.c
> @@ -32,7 +32,7 @@ static int mmu_topup_memory_cache(struct kvm_mmu_memory_cache *cache, int min)
>         if (cache->nobjs >= min)
>                 return 0;
>         while (cache->nobjs < ARRAY_SIZE(cache->objects)) {
> -               page = (void *)__get_free_page(GFP_KERNEL);
> +               page = (void *)__get_free_page(GFP_KERNEL_ACCOUNT);
>                 if (!page)
>                         return -ENOMEM;
>                 cache->objects[cache->nobjs++] = page;
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
