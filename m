Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 169121B184C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PoMG42NTZOmmfCNZDotzxs76CJJV4m34xx4tieIm+M=; b=n0kRa7Xw+rNfgA
	NBYUwwOSc8QZL+6+5itc7MUCHA70kIXrFDQIZlq2EvAFrceqURbr0hLq87qwBE39I7pgf/ybwmCJq
	MMj5/704tkori4Rk/MJcesqQQ8YIT5qGu2g2bZaYsznjFhmiRtv67VcfwFsQ2C+zQx+soFEtwqBdH
	hPZM/kBXvBdAX9XYffQCW7tebPW4KzVcMhoGEomI3xVq/CBh2kJFzjTr1W1Sg6CJKEzPr3a+HO8vd
	pP9U69sx7Wlt9xbxAON5J8fSr7NwlTDUzzGn67nl4tLatK/n4UX2o0s7kDhEM3YS1lkPdDbdsENBX
	rIwRVTEMcktPQjCO7zhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdrC-0001zx-5t; Mon, 20 Apr 2020 21:21:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdqz-0001yv-LU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:21:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id d17so5727042pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uz86WyXpZD4aK01AvgFxQcTobO1DIrQdnvHxYZU+v1g=;
 b=s2gZRkkKndLNkblWDyduoAGXU7tONSnx+h22+LKPEu1xCNTfj167lk3xFNDWULdibf
 QMmXoDoT+rU+/n0juU+cbwD3L89pQX8B7RqM6b/aCSeqv4YXlqrOO4AKDghtv3+qqQ5c
 9xGQ4xxcmUoGHJ2YasmZ+sQeoagJSOnbrLjQzqJ1Ny1eOugWVGpZQbRU3wquHEACr5DE
 jB6hPIIYqEb0mnGVUYO1tWwukp01nqN8oS52m7KJbvQ/CcUKezRRcKNOfYp8yr3Bvgwr
 WbhbJEhTDJz7ylqzkcGzSU7/R6hGkYphU0+6heCLt/VkVdVJD5Ozhfv8SC5l0apGuE7i
 dUUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uz86WyXpZD4aK01AvgFxQcTobO1DIrQdnvHxYZU+v1g=;
 b=ffZsplorNHq1f2oA2EbjUrtoIBxrdPu3RZUS9uWz3u/008E8OjlAC0L08APw5TOn0/
 rHgP1SAjYNxYuRQ7+SteTe6zTDZ6rY2/TqxHK31nEjszYXN/rz6AMr+gl2RI/4bGaI20
 0opzlEmuMQjIySpih0atf12+u3DJ6m9MewMfN+YcKdKmrNuto1GfiFOXnj1y9VOGMvGA
 FRbaACECD0iFTCYozi2ZF0vkRGvZk7t2ZBirTME6w7ual1wcMuPKhSlss9psE7pYtJ6L
 OMe1KnIRyYqQ0M3xwGFoHfSbrQ1fr2JWBPP5BXwuqamBu/2bqk4AjT4XGj0iF94idjYX
 F7xQ==
X-Gm-Message-State: AGi0Pua46AcMkh3pywnhaLHzJN0ekEhyekOCyvwVWnVAYioxJXZ7lD7p
 D/A8gAFx6sDJXq1GIiRQ9J1+xg==
X-Google-Smtp-Source: APiQypIJ5dgZXInWQPnOxgl2H83kMh9t0kDEIPA3YY9dlUHOLn8dCodScN3RstdO6CqW8s/+YrPGlA==
X-Received: by 2002:a63:145a:: with SMTP id 26mr19419317pgu.238.1587417680555; 
 Mon, 20 Apr 2020 14:21:20 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
 by smtp.gmail.com with ESMTPSA id 127sm423902pfw.72.2020.04.20.14.21.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:21:19 -0700 (PDT)
Date: Mon, 20 Apr 2020 14:21:14 -0700
From: Sami Tolvanen <samitolvanen@google.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v11 02/12] scs: add accounting
Message-ID: <20200420212114.GA77284@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-3-samitolvanen@google.com>
 <20200420171753.GD24386@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420171753.GD24386@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_142121_705818_3A6E18F7 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 06:17:55PM +0100, Will Deacon wrote:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
> > +#endif
> 
> Why not just use KB everywhere instead of repeated division by 1024?

This was to correctly calculate memory usage with shadow stacks <1024
bytes. I don't think we need that anymore, so I'll change this to _KB in
the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
