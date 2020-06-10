Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36CE1F5C5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 22:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM6A60u7Vy45LpTDQv74gLc0GILzPJeMTD/EZFtkjU4=; b=EOZEaoE2T2hYGH
	4x3woxIdeoLC5URiISx0smr0FGxLGdiAiGwZQg07OlAJ0kXuw+KPiMnVrGJ7+gJIV/O8EXicQZU3A
	gxPwxBKtBFllanS8xUYqudjBUFtebeaq6DundKold9yUBpR6xip4/kOBV9S837sVnFvZpfTx6cyhK
	JSYAunqyuebV2r/MKEiPrOJiklc+O4gJzsSQ1Lux65g4sY38tlQXYd3FZZnf0DVgZMx/kxVvk15q/
	GuV7vyLDcaPaJ679EV0jhwvLdBGQoRZPCvUTcLjPofLitthjWB1yUK6UrvkK7OZx5IEXz31MeRyUi
	4qoxhFnYcS10TuK+z15w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj6wl-0005DZ-14; Wed, 10 Jun 2020 20:03:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj6wc-0005D6-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 20:03:32 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh7so1370243plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 13:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gMJmfBXQHkqYBkdWFgkIELmfTMw2QzimZzoX9rnpMvg=;
 b=VmhHMiuh5ohUCH3fDJnKjrDQRFL0Ji8PnJG1vfqLFDTNpxPKF/jUW6bjeiV5SjTR6o
 WXLVjXgIO5BzDsgibhA+L18doG6dCY7DA2U8R4aA2THMwHzIRdDqPqVTIOT51M5UhGjo
 pbeqxJDSxr/3GPDIEZHoH3PhBmMXdRDJJDdIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gMJmfBXQHkqYBkdWFgkIELmfTMw2QzimZzoX9rnpMvg=;
 b=ZilQ39PmTxd5PgLhUtfe/iTVQox/lPfhVs5WYDumor51fPN5aC9MKehAXzAvs+VqcL
 0XZYSF0k6pu9uU9rTASahDL56mfeb4IH9O/6E55YsUIhYVyqWEpNg5olJxNuFtba/szB
 NOGtDOZ36Ct8EjEubfKbTI5dEmgBE8r1V3WzEQV/meoDsi6sw740KJxuc0d+nYz7sR5S
 iaNRM7S22qLSRclca0GdC/l9WFkA11b2XPxxx3j9jRoN/yu6nS1PiNJA6BduThCfnWC0
 5VVBUPwmLaUpp1Zf/TTW95Xlh9Kc0S7i5K+DwRnfNMRO/r+pAfMEqrq7H4ZPHiXTuOCt
 //VQ==
X-Gm-Message-State: AOAM531b5FwPmiibFlbPqcb+MrTTM5Ha221fXFngUZTyzAGJnPEG6Kga
 RTI4oADJEAu1ezHHHPUbBn5FeQ==
X-Google-Smtp-Source: ABdhPJzkqdGCWRf/l2Trk3MffvrvqWcW6Bumgrl4Vv2VZmme66jypNqah8ksfCDrx7bzuNc50pX7OQ==
X-Received: by 2002:a17:90a:cb8d:: with SMTP id
 a13mr4644611pju.175.1591819409470; 
 Wed, 10 Jun 2020 13:03:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l63sm724636pfd.122.2020.06.10.13.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 13:03:28 -0700 (PDT)
Date: Wed, 10 Jun 2020 13:03:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 2/5] gcc-plugins/stackleak: Use asm instrumentation to
 avoid useless register saving
Message-ID: <202006101302.AC218FA1@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-3-alex.popov@linux.com>
 <202006091143.AD1A662@keescook>
 <757cbafb-1e13-8989-e30d-33c557d33cc4@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <757cbafb-1e13-8989-e30d-33c557d33cc4@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_130330_932633_9D2A54A4 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Sven Schnelle <svens@stackframe.org>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 06:47:14PM +0300, Alexander Popov wrote:
> On 09.06.2020 21:46, Kees Cook wrote:
> The inline asm statement that is used for instrumentation is arch-specific.
> Trying to add
>   asm volatile("call stackleak_track_stack")
> in gcc plugin on aarch64 makes gcc break spectacularly.

Ah! Thank you, that eluded my eyes. :)

> I pass the target arch name to the plugin and check it explicitly to avoid that.
> 
> Moreover, I'm going to create a gcc enhancement request for supporting
> no_caller_saved_registers attribute on aarch64.

For arm64 right now it looks like the plugin will just remain
"inefficient" in these cleanup, as before, yes?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
