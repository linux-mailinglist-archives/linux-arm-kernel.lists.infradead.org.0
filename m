Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C01E2A58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 20:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRbR5so/GTEBuQYRkP2kq0PU7qojTUwfNUpvh4Y05/o=; b=HulWIjTUvl3ycv
	p6vuBbC/xH+c7fhR6THO6973lnQ4GmLPc8FffgH/zU8iD5hHhrMiBJ3nLslRB+w4OGQ5uv4syD/Nh
	VXdpgmTDSKVrbrBbQJisCcHIvPN/Ii/To73YjINlflO5wD60dqdiXUWTb3gNLbKn7jnBAb9iYQXGS
	owpwWlK5X0IUGEPfIqrNHIlvK6yjMyZcqtQJiq7zzHf2FXKad988BDnIHAHEJAEEFycbinQk7h7hX
	cAqas+SFSywSN0ao3VCuOqmwHEVTO821+8d33KeIvbL83uEsTnvTdVM9dwM6ObnlypT1gqZp3SMQv
	bRN3FEAtbBpXjlsmU58A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdek2-00015B-Td; Tue, 26 May 2020 18:55:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdejq-0000tn-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 18:55:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id fs4so173141pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 11:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=mP6Cu0mgfRIdytKJmT/JbpqFGV5hti6hDDcYjXsp/n8=;
 b=csLBG7MWmFDFdyDmAAKhK0DYdONM8BHZYeFGTC879KpVj6Y5Xk9doyuUkTKGKdCiHi
 HfmAj4dC0cDcFBzY60F/ZTZbf47RRLBKsfVyQ+yGxEpMt/1nTlSUAcKXI8s+ieYL+zUU
 X8wuWyyDODagttgQCaEPsRv5TGBmu1cP5EwDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=mP6Cu0mgfRIdytKJmT/JbpqFGV5hti6hDDcYjXsp/n8=;
 b=JafJp1KkCoLCXoEPRL9F5eOIsC2ymeKNFogTQMDViSYeuhgmBNmZB8JFHUfwCDU40F
 WzkTqPkBNu0P1/RFmROaWBbK796coh+ZUnQywf93xIm3l1h210cei7aKpcHALQEpjj50
 42yMONezs6VTVW59ruzjhBoFR9nQO6xClEvJwWvMMEwkNOKbqrqnrW0KWDUa+t+d1lV6
 xT2iLcR/mld+XSP+x6Y4XjIuTFHxTfQKwax7gxFGI4yXzRdGYXYJMMr401+ovRo3lmqZ
 esAxgaEpDhy2NeFNRRrsccvn5boerOScQg250mZfYPKYEsksrysfBf2Z3d8g3MsKTaAD
 HWyQ==
X-Gm-Message-State: AOAM530aGBK41XRDI4SJCvwVDBr/PcoviGp85nRDndp7pJr24Yt6NpmD
 i3cljRkWb47HMFEWXEQETZGe0w==
X-Google-Smtp-Source: ABdhPJwQICMwBntB9aeujLedOj2O9kL1o7DOX7kSwX8RdQ0FSeMECkQjs44736Z3YvI7DbRdr2NpLg==
X-Received: by 2002:a17:90a:e016:: with SMTP id
 u22mr707865pjy.28.1590519344815; 
 Tue, 26 May 2020 11:55:44 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x191sm263045pfd.37.2020.05.26.11.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 11:55:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200526173117.155339-1-ndesaulniers@google.com>
References: <20200526173117.155339-1-ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
From: Stephen Boyd <swboyd@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>
Date: Tue, 26 May 2020 11:55:43 -0700
Message-ID: <159051934304.88029.10469584232447870375@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_115550_016105_FEAC1E9B 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nick Desaulniers (2020-05-26 10:31:14)
> Custom toolchains that modify the default target to -mthumb cannot
> compile the arm64 compat vdso32, as
> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> always.
> 
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084372
> Cc: Stephen Boyd <swboyd@google.com>
> Reported-by: Luis Lozano <llozano@google.com>
> Tested-by: Manoj Gupta <manojgupta@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
