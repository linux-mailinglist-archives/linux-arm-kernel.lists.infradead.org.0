Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D05D4BBF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQfUMrQfu39X0LaAUom3TlyRTxNlnY9SM2HMjipQ7DY=; b=l9K91Qq6Io5DJ8
	N0VyTXqrDp7OBc0tLywW1B0bZfYOY3YImxUxyZp1ymOOyexIUwR6+RZtA04Rl6lUWTTi7DWO+0zwe
	vLOYAch6pB+iU9l/yJduJv8S0Qlt5a53vi4CeXo9pG9nJhERc1+A3jqDmE9wQ2uvPuGAwloE4L4hQ
	jKegaY0/UAm75XxG6WMZpXlfhjEw/0PcT09OSIzg96iALmoF5JXNc+9U/CCotVtc/9Jg8lZnvIzPH
	b+GHuTXVFbalymHj9Jbs3cqu7fN0++Azf+p2ohGopg5du3/5kWV5O9Rsi6XMZKueatssoQbO/xncU
	if2G24RhDAQDRlSVRuCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbq1-0001bC-6i; Wed, 19 Jun 2019 14:45:25 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbpr-0001af-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:45:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so9899354pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8fT/vuEA7OU0dJVEYE3r7kPp1EiCp3ty74wiME2Ad6k=;
 b=EvIEznAc2XDTlXpBOjY12Pc2q1rIxcWk6U40JWRUJTQeG8doG5XM7cV9g4/aAvpAbm
 r3Vk1xob0ZSfzJTTT+FaHc9R0h1eLHkawgh+Y2HeR9XjGIs5zVJz5vVbm53lpriaFfb7
 WLyV/uAQNAYVDSY/FjIXmEn/qRI4X4yYKhErVQMtfpicAASkyevJQubb5nypERO8S2Td
 5b/ik5O20WuHwXvtTFgmOoa0CziwFqCIOtcjre2VZ/5fgyUl+9VVN5r0dUvXPdBUWYAX
 74ptz4qqjfqvUzObFkRm/Ek6sICgg7UMvCYbjzj6hCVv3sQaFa6vMFhwyadaNP4W/A/J
 GtIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8fT/vuEA7OU0dJVEYE3r7kPp1EiCp3ty74wiME2Ad6k=;
 b=suEdlftCMWSpvY+8RXkrY6Nhqge30JQvEFrG1nj/+fiZ0PlCszWK9mbogvku6F4vbQ
 r3x3yjmo02Kqs1x4rqs1dzuwxXyA/uWumpNf6mvsvkumtE7SGDvwHrusdr6uxIlR0Gut
 6wgm5VyPIblyUsG1tQI+IpyInt4rmvh9A/FMTJhHPw4K9OiLvBTr6P+ud5Z1nAxSaeWg
 RbXxThL8rSD67mu/Tf5l4UqSHYvxCb5NhU5szTIA4KSnWRiP66JztXNTpjavLGlrlh9C
 4iWnvbmJvgFJdGY07vhu8ZfjjENX4OIPee3ADxdHmEx6DxDzrlhuGpOfEsNyZvptqdZC
 U3jA==
X-Gm-Message-State: APjAAAUagiCCjSyBBk5tCHZbW0Om7LvkOOLgOp9LXnKkkncqzz4zPHpg
 P0TM+xah/Q4Igy6Weqq1g/6oSpOZSMwjKc1i7e5jXWFYLCo=
X-Google-Smtp-Source: APXvYqxml1AJCp6VXxhzIr0ScKXgidc4P55u7fkRG0uKH1TmixS7V2epvHYKLjz4L0moJR3Tz7zj8BeYkr14oUMqT1c=
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr11521374pjp.47.1560955513903; 
 Wed, 19 Jun 2019 07:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
In-Reply-To: <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 19 Jun 2019 16:45:02 +0200
Message-ID: <CAAeHK+xvtqALY9DESF048mR17Po=W++QwWOUOOeSXKgriVTC-w@mail.gmail.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
To: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 Linux Memory Management List <linux-mm@kvack.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_074515_077805_1556AAC4 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 1:43 PM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> From: Catalin Marinas <catalin.marinas@arm.com>
>
> It is not desirable to relax the ABI to allow tagged user addresses into
> the kernel indiscriminately. This patch introduces a prctl() interface
> for enabling or disabling the tagged ABI with a global sysctl control
> for preventing applications from enabling the relaxed ABI (meant for
> testing user-space prctl() return error checking without reconfiguring
> the kernel). The ABI properties are inherited by threads of the same
> application and fork()'ed children but cleared on execve().
>
> The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
> MTE-specific settings like imprecise vs precise exceptions.
>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Catalin, would you like to do the requested changes to this patch
yourself and send it to me or should I do that?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
