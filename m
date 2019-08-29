Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78CAA1AC0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OyxIbANruAFWPgwoiZ4/x46noxY88zLX39L6vOtGyLQ=; b=AYZLVXml9BeiIK
	ACwZ7Q1s7sQHAYeT01gDXqMV675sU0PhO/2GVS4AxUaa8LvhMIq6nYTvqudsif6aZvGR98YvFmtzR
	TaTNkW7vN0SClHySSW282KoYk4uq85vg0BAumeMDLn4bl4n6w106J4ZLnSdmIq7N3peFvTaD+72W+
	S9chC+XxmG+HmztKvhnaHALLjvhYqU6/WAOCqZnFcJBg6RtBg7Y0Baopg6aFscdWrUBFPy8w/JBgd
	vbq3tUDz22VRZ54h4Ocoy/FY5nFkkhTDqwcdFkxLMNTdi7RfyGgNDHFoQbbDWFgHfCU2pA6iORuJg
	CCa522WcAFgx2EiRA4mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3K76-0000VE-9O; Thu, 29 Aug 2019 13:05:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3K6w-0000Ur-90
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:05:11 +0000
Received: by mail-lf1-x142.google.com with SMTP id z21so2492692lfe.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 06:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+pz1tJCvEpXqhYntc4a+eXdQw4YkeZzY/CUqzEnQfhI=;
 b=VwOF8bMUMlpcVPjnH7KLm7q9YPGAJyoJCaqTHg0eB7cJNs33HPtWse0a6S+38yOz8O
 NHVqczdRdynKQIjzWAF9I3YpK+wBqgWsLCV+xSrpqG8v5x5MeuksDGvoajweRjwbjZ5a
 38t56VL/f1C5Tbh/lNpCLIQcFzQtYKavA1iaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+pz1tJCvEpXqhYntc4a+eXdQw4YkeZzY/CUqzEnQfhI=;
 b=Y9H8giXllXRValISFi332jSQHX+Z9F38UOhRu9pGXaZUfeakYUgWizHa+N1YS5QLE+
 d0wWO+d4LCBdzqWSGJJ10rZEdAj0huHc0rLPPa2LxoITB5TUka5TRk3Vm7EiGBOqmzp0
 4/TDSUf9Wl+u7X+T8QI5tiYZcN5PNSTWs+IhYijTtLwr/MQo7dSzKN8ZjlsXOODoxyDp
 xPHWR+B0OAjWrB3t6WwasgAcpH+kcEpjrOtsJ9LN2hoNOlEJQaI3eHSSgGkMiL0YzETy
 mhRBVp0OVO1OgA0PrXUXDtZjYJVDDMQIMAcvV2xvKqQqtbKiUQs5AcyNrGvS5ds+L/Ci
 /9ig==
X-Gm-Message-State: APjAAAVCLzJUkv7y/UmIHh7lYvOKV2E8AZtyv8BxySaMe9Wwon3SUELc
 HM7aB3xsggzUs+LT/MAOWQ4FwaWMoOYzEJTw2aU=
X-Google-Smtp-Source: APXvYqzC/znEm7g6SWABzaV06VBY2y9BWKEbRXRSbaRH8cAy80Qu1m8PhCO/oz8TivPdICdvt4gS+A==
X-Received: by 2002:a19:ef05:: with SMTP id n5mr6063058lfh.192.1567083908173; 
 Thu, 29 Aug 2019 06:05:08 -0700 (PDT)
Received: from [172.16.11.28] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id j23sm346381ljc.6.2019.08.29.06.05.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 06:05:07 -0700 (PDT)
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
To: Aleksa Sarai <cyphar@cyphar.com>, Daniel Colascione <dancol@google.com>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com>
 <CAKOZuesfxRBJe314rkTKXtjXdz6ki3uAUBYVbu5Q2rd3=ADphQ@mail.gmail.com>
 <20190829121527.u2uvdyeatme5cgkb@yavin>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <899401fa-ff0a-2ce9-8826-09904efab2d2@rasmusvillemoes.dk>
Date: Thu, 29 Aug 2019 15:05:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829121527.u2uvdyeatme5cgkb@yavin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_060510_321737_2B8A8F74 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 14.15, Aleksa Sarai wrote:
> On 2019-08-24, Daniel Colascione <dancol@google.com> wrote:

>> Why pad the structure when new functionality (perhaps accommodated via
>> a larger structure) could be signaled by passing a new flag? Adding
>> reserved fields to a structure with a size embedded in the ABI makes a
>> lot of sense --- e.g., pthread_mutex_t can't grow. But this structure
>> can grow, so the reservation seems needless to me.
> 
> Quite a few folks have said that ->reserved is either unnecessary or
> too big. I will be changing this, though I am not clear what the best
> way of extending the structure is. If anyone has a strong opinion on
> this (or an alternative to the ones listed below), please chime in. I
> don't have any really strong attachment to this aspect of the API.
> 
> There appear to be a few ways we can do it (that all have precedence
> with other syscalls):
> 
>  1. Use O_* flags to indicate extensions.
>  2. A separate "version" field that is incremented when we change.
>  3. Add a size_t argument to openat2(2).
>  4. Reserve space (as in this patchset).
> 
> (My personal preference would be (3), followed closely by (2).)

3, definitely, and instead of having to invent a new scheme for every
new syscall, make that the default pattern by providing a helper

int __copy_abi_struct(void *kernel, size_t ksize, const void __user
*user, size_t usize)
{
	size_t copy = min(ksize, usize);

	if (copy_from_user(kernel, user, copy))
		return -EFAULT;

	if (usize > ksize) {
		/* maybe a separate "return user_is_zero(user + ksize, usize -
ksize);" helper */
		char c;
		user += ksize;
		usize -= ksize;
		while (usize--) {
			if (get_user(c, user++))
				return -EFAULT;
			if (c)
				return -EINVAL;
		}
	} else if (ksize > usize) {
		memset(kernel + usize, 0, ksize - usize);
	}
	return 0;
}
#define copy_abi_struct(kernel, user, usize)	\
	__copy_abi_struct(kernel, sizeof(*kernel), user, usize)

> Both (1) and (2) have the problem that the "struct version" is inside
> the struct so we'd need to copy_from_user() twice. This isn't the end of
> the world, it just feels a bit less clean than is ideal. (3) fixes that
> problem, at the cost of making the API slightly more cumbersome to use
> directly (though again glibc could wrap that away).

I don't see how 3 is cumbersome to use directly. Userspace code does
struct openat_of_the_day args = {.field1 = x, .field3 = y} and passes
&args, sizeof(args). What does glibc need to do beyond its usual munging
of the userspace ABI registers to the syscall ABI registers?

Rasmus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
