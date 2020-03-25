Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43E9192F55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 18:34:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iacSB913XXiL1x8fd4v8VjgJb3QHuawvuLQ/N/Bdns8=; b=cQvHI3n9T9zAZp
	Jvk9g2lld29Liwn0eQNGp/rjgQ3eFYUPHr+Tql28ODG46mtL5BHcyAB09NRWyqrVMaWVXPoMIpXCh
	xktJhwufn7wAGXD4IIHgrsBRIGk7J/d5E+/2x01HVmvcPjzOJm34KAjO0Dlsg7fKqHEwGNPf/bqcA
	v8cy8ua9QAeNC/liCPlN80yWzm30HVxkSAJIsk4906194EiVffIyg3EFk03zX64g/1ZhkcXu0aWMY
	/sjsBlBE5jOhiBnhSj8faMEOVrhqniGFslM9auwq7wOGOC+BIxTRTppKZjY4k+hKz0L0xBXXU1iEF
	ApmSQ9ZtqX8n9+Sb5Azw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH9ur-0002LB-Ke; Wed, 25 Mar 2020 17:34:09 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9uh-0002Kq-2t
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 17:34:00 +0000
Received: by mail-lf1-x142.google.com with SMTP id c20so2550923lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 10:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WD9sJ7e0VtDn+ggzAl5BJdUvSH4xHuF+tQFUtVO3ypE=;
 b=WGZT23GW3l1IUkI7B+xGcDt5rMqhhi90Mt39Ps79pv2c3a8o2pdcaPJk3WEzm7iMag
 4GyBo7pyJ0/uI2VvnGfWdYXgj4wXPU+3x6UoAr4UZYQKI8253uLtZshqu0KsCeSb0lQU
 0fQ5OqX98L/OxmrWufaXldfncoyLhcc3w3DhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WD9sJ7e0VtDn+ggzAl5BJdUvSH4xHuF+tQFUtVO3ypE=;
 b=ABn0XKf4+zGJ1SbpMeXRnwBXj6FzYC1tJ8DYnJE9TCukhfVlhocML8gJqV4vNgqWJA
 RcQsxtn1FksFSxlAy7yHC1bYOU/CgqLn8IwJrwarLAYkLxrg4lJmT5rkYTY3xrzHK9HM
 QdNSJfof2nS4+D7FCRr4XSf5CGuAI3mLb6zeLTYhFMaiWP9WFyiqUx7vekxDjqKCJVIq
 nRqth7OohuO5RjxHBSbBm1OPtdn0VAOiYIyIugauT9EfWza+clmhiXoAijWwLryrvlBU
 yJXZGtfwE0zPyxLEIpcIXDICk3xcFm/lN2GOhGifpMJwGXz7fgi4OYqeQlmt/5xptctX
 GhfQ==
X-Gm-Message-State: ANhLgQ2A86YSf9HQo29nCfn42tWizIx+wnlqEuf5ZW4ONMMrtDjBwmDm
 J58Dyb/I5fNc3tBvcG7/U2WdMyh8RKQ=
X-Google-Smtp-Source: ADFU+vuHvWn1uslRdL+mFzTFUTs89utfslpOHRc1F4lcWlH8keAJM7BwMrfhDrZdxuI/e7mwh1bk1w==
X-Received: by 2002:a19:2d15:: with SMTP id k21mr3049704lfj.137.1585157636583; 
 Wed, 25 Mar 2020 10:33:56 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id d21sm7062882ljc.49.2020.03.25.10.33.55
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Mar 2020 10:33:55 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id v16so3350438ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 10:33:55 -0700 (PDT)
X-Received: by 2002:a2e:a58e:: with SMTP id m14mr2579577ljp.204.1585157635185; 
 Wed, 25 Mar 2020 10:33:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200325111347.32553-1-will@kernel.org>
In-Reply-To: <20200325111347.32553-1-will@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 25 Mar 2020 10:33:39 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgymj+aXjTwjRkhA0j0u7t1-74fLUmp1pW7Jntf=Q+eOw@mail.gmail.com>
Message-ID: <CAHk-=wgymj+aXjTwjRkhA0j0u7t1-74fLUmp1pW7Jntf=Q+eOw@mail.gmail.com>
Subject: Re: [PATCH] mm/mremap: Add comment explaining the untagging behaviour
 of mremap()
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_103359_130989_EAC5EF76 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Android Kernel Team <kernel-team@android.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 4:13 AM Will Deacon <will@kernel.org> wrote:
>
> Add a comment justifying the untagging behaviour in mremap().

Ack. This makes that odd "do it on one address, not the other" thing clear.

Otherwise I bet somebody would come along in a few years and go "Oh,
people missed that other case".

             Linus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
