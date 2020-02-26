Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 900B316F7A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 06:50:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJUJmdZcfaNbnFtibK6Qbqjolm7wUS5BXfWniSV41zk=; b=FZIbeCPjgMYELf
	KX7nsWJoAC6CNFnS9w6LHk8alX39eGFMPgRTxJ6KEiIOerFNXftdIPPpoVVZXU0mflFPf3zDGoXrR
	wOLmpL8TZoUclo6bhkds8jeUZ7cqgl3VmZO+wnFW3ogefCpgHkjgUzFVkJwJxdGfw6KWEoj+35Q3N
	DVqKZkqY5fFHWUJU9+R4Rm/oUS8b4Uk1IdRhz++HVtizoK8dvja1RFOHLDYGWue/hk43iz+eS0SNh
	6QN4c3V6WaBf3CHcIqrCqHOndqBe6SGvhDhqr9KhBHrgW/FtO+0mZI2X4Q5dIZUTj/lg3mmakkMiI
	UMOqXJUFoDn+4Kvn+Gcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6pZu-0001z3-4Y; Wed, 26 Feb 2020 05:49:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6pZk-0001yF-Cs
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 05:49:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id p11so828360plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 21:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+o0Cxx8HmQdXWrejhdC3RH6moiQGlThNZB33TEB2/R0=;
 b=QVngWJphiEqTsggSbaGZG6KKVe/5xdUUs9fF1c8wpFIBC85uu6w0X4OjARiK7hiHsy
 YirmKlA8+5ufTIQVNnhu+cRiDjjkVNg+kDVeOmLSZcaJcnc/+CklCyb23K9XK4TexOyP
 w+JOHDZPBRFCgI7qgLAo6vpCvdZb8ga/AW3GI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+o0Cxx8HmQdXWrejhdC3RH6moiQGlThNZB33TEB2/R0=;
 b=AWo0NJr7cnS8P9GN5b0UDxeujlBRp3N0t+qSzXjyewVa49HaCX4YWpJbwmMqnPF7kU
 v6mjgwIZ/VXT1R3wRTtndheY/YWrtlqan3Y3bKZ3ERowHimWbcc6NfmAJrBzWLjGGqJo
 KgvIm4mLGiO6M5TV/0tgnhFdiFp/l3n667E5wBKwB0j1HEetND6ydbD2WsRoWKhmGY54
 iUbJU0BchJNcQfg1vrce0sMTgGwd52R+/OT3dfquVoxUunWp3k8NsMJG2yWKxQihAIqE
 rY896BdMV1dtwO92cpkkDFVl4MP+7f3SiSu0FBe0vixxo9u4ar9FT1EK2ShKtDqFoIiJ
 skvA==
X-Gm-Message-State: APjAAAWWuM53td1fqXABAh47vn9HjagdKMZ5AxFd03z0elBq8ZC3tLze
 kERfLz6NRqEFn0V7DjUOw55U3w==
X-Google-Smtp-Source: APXvYqx8Hr/Cj5VybYqFNkztZ4OEH69rhUqXd7K5EOJh00EissLfKhJ2zFA3IUzdAa6QW4zPXy4nZg==
X-Received: by 2002:a17:902:6ac7:: with SMTP id
 i7mr2245702plt.314.1582696177733; 
 Tue, 25 Feb 2020 21:49:37 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q6sm1057628pfh.127.2020.02.25.21.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 21:49:36 -0800 (PST)
Date: Tue, 25 Feb 2020 21:49:35 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v6 01/11] ELF: UAPI and Kconfig additions for ELF program
 properties
Message-ID: <202002252147.7BFF9EE@keescook>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212192906.53366-2-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_214940_435596_5FC2B3F4 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 07:28:56PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> Pull the basic ELF definitions relating to the
> NT_GNU_PROPERTY_TYPE_0 note from Yu-Cheng Yu's earlier x86 shstk
> series.

Both BTI and SHSTK depend on this. If BTI doesn't land soon, can this
and patch 2 land separately? I don't like seeing the older version in
the SHSTK series -- I worry there will be confusion and the BTI version
(which is more up to date) will get missed.

What's left to land BTI support?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
