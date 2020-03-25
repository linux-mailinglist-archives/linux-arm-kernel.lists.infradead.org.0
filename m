Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819BA1931E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 21:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pxf+99ohQNE7199j/P6B7lw/d8CM5llngRWkHB1NaSA=; b=MmbfnPgjFaXrsM
	LC1FB1ObJHfmpZlRNPccDPdzpja3E5zrbjQvBqisM34zEFmEUrUtM3SgPS9TFhF+OYvXe/AnF5/TQ
	xowNd7LOaO6gtDdGRomqWR4csABLznd12k8IUGleN19M/PDIJp8sKP1BWCWY9menTQ8lfORG3QfGZ
	oGT4EREvS0Pabn2NNWbH9GywxSB+9D8uxisIKvlHdE0AkJdS15gxhZr0p69OiX6404roB66kSZm0o
	xN9gEK0Epxm3F52PkNY3LLwUhFQIEMXHZDWSdH6/APgXz8QVIR9xzh3GupLwp5IqykP8nBV1h3t2h
	UwpZN987D4/jZ/AiYm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCcM-0004Qh-E7; Wed, 25 Mar 2020 20:27:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCcD-0004QA-MS
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 20:27:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so1242147plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 13:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6SzOvwdTQqkZQCjlviRpZUVdzAyX4BMCYO6WRGnsRMg=;
 b=V04eeOZmpXZz9+n2K8s89RAUlNtFI2i3/IBt6L+R3HaP2VRpUcKrX06reMGWIzc2c+
 XwtCJxYWfVvX423KhbuO1h44rQttz9YLq0WAz9cdrMlR19jmIZbXEYme+Erycyi1IU2U
 88GPKoBsjo0xyDjf5T8gvQ6OIx9M3dosv2wAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6SzOvwdTQqkZQCjlviRpZUVdzAyX4BMCYO6WRGnsRMg=;
 b=qsw9XDvpb4HpphAbX6GgXxxKVW5D1h8mlH6Yb04MZoffc7KJyT/1gCNGHzQZw/VAKv
 mi/KojXfscY+P5sXLOMrmJGB3vpQ5EHlwlLMP02VUYJU/q7ZAScOkEecRM4RknI2SpAC
 wYnaNFiy8sq4yH6ZeF2KzxQsOgb018+gYVmBawdrQO4wqU9wY5d+EHMqv6Fa4Y0lsMKt
 IZSeoOyw+NUMo3+/EUc3LrtXIShaJ0lY238+ZR1REiodjqPjQ2Y+hSK7aCD8P3VHbHOL
 yPcxlDJhJYPwRIQxCft/D6zccs5NaRVr9FXYuFfzchceTSY7wu6n4PnC7HgbIh5gJFyk
 Bp8w==
X-Gm-Message-State: ANhLgQ0kwlqUeQddb8pioQJ/uvFj15NZZlFLiYzYqYiPJlTIBmMK64RO
 r8cHwIhEY1BOgoXOxxlsjgNkwQ==
X-Google-Smtp-Source: ADFU+vswtN+46ClgfmDrS2YQ0+gwH0oaxyACQpe8SmgU+n/NeZSp3mJwpEGmc/BXB2B7g4eNvcGW5w==
X-Received: by 2002:a17:902:fe97:: with SMTP id
 x23mr4918671plm.167.1585168024550; 
 Wed, 25 Mar 2020 13:27:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n22sm100777pjq.36.2020.03.25.13.27.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 13:27:03 -0700 (PDT)
Date: Wed, 25 Mar 2020 13:27:02 -0700
From: Kees Cook <keescook@chromium.org>
To: "Reshetova, Elena" <elena.reshetova@intel.com>
Subject: Re: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
Message-ID: <202003251322.180F2536E@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
 <202003241604.7269C810B@keescook>
 <BL0PR11MB3281D8D615FA521401B8E320E7CE0@BL0PR11MB3281.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR11MB3281D8D615FA521401B8E320E7CE0@BL0PR11MB3281.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_132705_736050_850AF31A 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:15:12PM +0000, Reshetova, Elena wrote:
> > > Also, are you sure that it isn't possible to make the syscall that
> > > leaked its stack pointer never return to userspace (via ptrace or
> > > SIGSTOP or something like that), and therefore never realign its
> > > stack, while keeping some controlled data present on the syscall's
> > > stack?
> 
> How would you reliably detect that a stack pointer has been leaked
> to userspace while it has been in a syscall? Does not seem to be a trivial
> task to me. 

Well, my expectation is that folks using this defense are also using
panic_on_warn sysctl, etc, so attackers don't get a chance to actually
_use_ register values spilled to dmesg.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
