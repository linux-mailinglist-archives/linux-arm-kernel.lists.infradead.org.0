Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A941F469C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 20:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LWyXTCeplWrU/yLpXdf3hOjXBzbnUhM3+yanGtJDvo=; b=NSIxeTwM9vIt/c
	nLljEqVq0B71XfyWP+fT7sZ1794T6PG+jp9Fv8BDV5tSeCbBs6KimUqlQDpmIJR1pc1pMLYx7hQqk
	E6/eotG8w92Py0JKK1RfLdZFNs3LiGxlCJ12Gjq5iaELtjzyfHT/6ACdWjKAdXpkDbAwk9WpgK/o3
	buVTQUAj576MfNJnx6sisEpzejQPCuRANsnX3H068xWcuE2mTNv9I98NOmPxj8Ujsb/C3Ca9ymhrC
	z7zbjVxE3mMD7T5UNh90VY2T+eoU38aMIfgjqjIkOmQKSRTq3w6DQ9oDk5lThpgYYH7nbjm2HmbIN
	iDz3YX+R+JHKgvYmvkNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jijIM-0002Mt-Qu; Tue, 09 Jun 2020 18:48:22 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jijIA-0002Ln-71
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 18:48:12 +0000
Received: by mail-pj1-x1043.google.com with SMTP id h95so1787542pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=j2PL+pbfi1kh+J0AmLH2dyW1hfo8dchWmGFi/N5y4y0=;
 b=doetDBC8GLhAH/GPYh2nF/OZwCESJtT3x/5JwmFQppNQJr5rFhUwRcyR9FtefDzGs1
 RdTitQklosNO5HKOvlQUQJc+B3qoYVCfPRU7nKjg3lVc0+kFRfhloN8Q1BIilhESUAsl
 UifY/flT3XKb72YemuUE0ejI83VnmR69D+rOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=j2PL+pbfi1kh+J0AmLH2dyW1hfo8dchWmGFi/N5y4y0=;
 b=GlLVfmLSU+M7LFNNFxE+pxncXWhxHO5rTnrYiGqaQ/zvS9DSC0u1/kndckvz1RUkOg
 jcNoiwhrBjzoYsCGE06jplfehT9lDee6XJOOp3evbInyA9Qns45nWbdX6+Lv/RFbgXej
 7IZJHvFuYzRlbrPeB3pufXsMwrtegMcJ1hikgQty8B04atGGPB0pDoqCu8zoaUBn7Pgl
 ciinPYB2JZs/Ds9qSSNhBz4/O7aflmmcIVr+FjYP/ZhZ5NsfIirV/WnyZ/jbKAw8Rp7U
 ny5N5cfrSaEYLxpb4MYYd0BfemfZQEjh5Rvvyquid2+fAH5K9uwWyciqlhhPed+wCzs7
 rYMQ==
X-Gm-Message-State: AOAM5302PIU02dJOj4CHLFOoQD4Tch2hgWvgnalLnGct9QjWi7O47eNS
 OxXnIUpgo+L8GjXIjV+cr0GqeA==
X-Google-Smtp-Source: ABdhPJyddt1fAWGutCRi8Fa6NrDKr2oQjU7wdUGjNSxmmyNx0/oNHsTyK+GsePEnmx8lD9WMuMMOGA==
X-Received: by 2002:a17:90a:2647:: with SMTP id
 l65mr6474171pje.20.1591728489562; 
 Tue, 09 Jun 2020 11:48:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j13sm3223850pje.25.2020.06.09.11.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 11:48:08 -0700 (PDT)
Date: Tue, 9 Jun 2020 11:48:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 4/5] gcc-plugins/stackleak: Don't instrument itself
Message-ID: <202006091147.1B8E3ABE@keescook>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-5-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-5-alex.popov@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_114810_454188_EFB4943D 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Thu, Jun 04, 2020 at 04:49:56PM +0300, Alexander Popov wrote:
> There is no need to try instrumenting functions in kernel/stackleak.c.
> Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
> is disabled.
> 
> Signed-off-by: Alexander Popov <alex.popov@linux.com>

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
