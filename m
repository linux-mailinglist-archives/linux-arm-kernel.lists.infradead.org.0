Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6FCB44FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 02:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mewM2e1j5/f2UA4T3Dr9TSmKp6fClVbVG+b3jDFKx1c=; b=OdVaC5CXmmqk9T
	CbbSDEPuseLCOf4xvUFXquWSew45bIAZrxh3SqtrTPhgrTeJLQlltlebYhy2K+Z8jBMXzq6x051zf
	vd+iUkJ2Fe2Azj02rPTYyxwGStfZ0tGdPY3lI/rl2OlPJsCBO2oSQ5nYAecveQlAGDpyB4ixSM/8A
	yqCe5cXh4YjSGfjM1YtMqWoexhKIwmKJMrle3C2Jn7FwLKW7g4Md1I6Sbjh+XFQCYZWzxgPXHDzu3
	dKjK3uY5CgK/cPFz3HgjhbrwzGb+c09tZ1GKqBFZHxoAdRvDVZL+tJX9wbfNciuwfYB6/p6fe9bE8
	JL3ses7Ups/DbK9ex6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA1ko-0000ge-CT; Tue, 17 Sep 2019 00:54:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA1kX-0000fx-Uo
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 00:53:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id k1so702640pls.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 17:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bb3WgUuPlwJWlYbzoUQVlukqZNU/xGNNtLsMKZAKSWI=;
 b=JJiE+j6yomdxr6HSuUweYXgimT2ZE+elZD7yXoRYTuhZwLroQjRbf33BiGhl+/ecw1
 Z9r/FP6bqd9jN8I9Hoz4Vl5u/19RTPOqvefNOGfqtSSxMUQu/8SS4r3RmlsaQDPfeJr3
 eeNzl1kYYq0UrvUDshYHOC5YpIERwW8isPEgNbuDlaM7sIIAiZa7ca16WICZguqkcGl/
 aCGcwWn2N++7fdU99NbfKxrTFr5E1tfFIjWIHLe3nrmgh3fIDbxEoE0AREy0Z1g3Z9l2
 IPsMwpB95rnV9lJn6rjxAsdKIj9/lS3sW474ujoVQWbwvmWs2VnYpceyk3kFvGYKReCm
 2gKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bb3WgUuPlwJWlYbzoUQVlukqZNU/xGNNtLsMKZAKSWI=;
 b=G3CJQMB9PJMFAO+Dc+qQvq5EYvvLLZTHu+hfh0ryl+fptSz3OufBiQyYDkk42Ja5sB
 A7z2MUThqgyFeN35MSeNuw3Ta0t+Xi7yf59jpJhCBKwfAFiFh/gb+xENPJeP82cizUe2
 QMPoOO9JCFL4OQ3bf0Pm917Plf+KpLLibCxzV6cdXgBxjDMXDWis9sYlEkwHKpttv4/q
 ZaJYUWbJmo5svz3UbKRjZJTb6nz29m7R7rcbGQ59kuImZ/Bp6Laq1uFgL3IQ+sf8SPQe
 k0pdFIJekuUJS9FDR4ayVvXuI0cdhQrHwYN+OAuMiu1kLWif+C5OWKOikTdNxrM1vrMF
 7OAQ==
X-Gm-Message-State: APjAAAVHc39KF4kr/aV+pgweye8mICUvArUUwcL0g9lhoWMus5JGcmCa
 qL/SuqSnRUNRN359BpgNqLCnHett
X-Google-Smtp-Source: APXvYqxWmGkNGIvP0iApQpIgZ+XbGCgnNGJDgqVmTf07dDFscLXble+QsYvpdfkGJt5n1L26rkvQWg==
X-Received: by 2002:a17:902:166:: with SMTP id 93mr944351plb.195.1568681624214; 
 Mon, 16 Sep 2019 17:53:44 -0700 (PDT)
Received: from localhost ([110.70.27.73])
 by smtp.gmail.com with ESMTPSA id bx18sm336950pjb.26.2019.09.16.17.53.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 17:53:43 -0700 (PDT)
Date: Tue, 17 Sep 2019 09:53:40 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: page_alloc.shuffle=1 + CONFIG_PROVE_LOCKING=y = arm64 hang
Message-ID: <20190917005340.GA9679@jagdpanzerIV>
References: <1566509603.5576.10.camel@lca.pw>
 <1567717680.5576.104.camel@lca.pw>
 <1568128954.5576.129.camel@lca.pw>
 <20190911011008.GA4420@jagdpanzerIV>
 <1568289941.5576.140.camel@lca.pw>
 <20190916104239.124fc2e5@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916104239.124fc2e5@gandalf.local.home>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_175346_019900_A36AAA93 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Theodore Ts'o <tytso@mit.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Waiman Long <longman@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On (09/16/19 10:42), Steven Rostedt wrote:
[..]
> > 
> > This will also fix the hang.
> > 
> > Sergey, do you plan to submit this Ted?
> 
> Perhaps for a quick fix (and a comment that says this needs to be fixed
> properly).

I guess it would make sense, since LTS and -stable kernels won't get new
printk().

	-ss

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
