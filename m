Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5309514D66B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 07:31:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6G5u6BeCQE4iAbQOi/yIGGFobLid4RV4SSuUV/4L+VE=; b=rGBe97gWVD537d
	JOHxe7LGMXv9LOeXE6nu5mG+k+hg1CaLDLZ5bSQF2PW7Rkmymj2jpZM5WQRdN4VuRrnmLu1u9c2WS
	+6z375mBKBhK+tpnOT4ep3UsYCq5VaQyXUUi5dvzCKEB8Owkt/ZV6DosJ2DuPRQlIKk78vmSVI6Tr
	wN9+qXu6e9UNeJyY8gzLa9Vc6bld9Fyfu9czvHe/wRw9W40JgSw+DN47FycXmYoy4K/JsRL2hq6sO
	8NZPUNdR19DVbOWXsNABFORtLRaZzKT6g+uERrf9+AMHl+DJVY7+ec9aYT9SV5QrfsorCXv/ZJxfX
	y3WVqqM8vkfI4O9Uj/HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3M8-0006at-JX; Thu, 30 Jan 2020 06:31:12 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3Lw-0006aH-Qx
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 06:31:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so952859pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 22:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:subject:to:from:cc:user-agent:date;
 bh=0tFsYcjfOOa4j0wNofi5s1JbHK10UxRY/7iGvUSf+kk=;
 b=KbnW8hcVBL+cjoPJI4C8c4WYYBRdr3lVrJlK+VN35PtAz96+RJuL/ELLxdLSp0mLQr
 U9iIpV6CcuvgD2XX6SiYM16zJwlenQUU/44+VCqojADOc8i5f1SrK9zHJA1yIoDzcTsb
 JyPMx/3lnzwjm2LBn+HJSPUK6x2NxxcpNjT24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:subject:to:from:cc
 :user-agent:date;
 bh=0tFsYcjfOOa4j0wNofi5s1JbHK10UxRY/7iGvUSf+kk=;
 b=j5s48l0ZYHwsoXE5VEtv/Qry6laFRSYPREyxEJ/AEhm6crxv2aYV3rhvoSoetZN4NN
 +OGK8sf2yCYUEIeixsmGSO5ad3eF80I57yY/cdflGWZEd44QyQWWOxpkbg0fW6q3Cxkz
 UmeGtVD/39R8xzr4e6EQexpe+l0VT+UrN89FOMqvCoeL0o0othHAYBvcrZJGnzCmHCGP
 j0DtTdU5qjZAWbOFkXDSkpLpLhbUsW2LMcUUMebYASL0Vqg3qdYa0qt6Slsmjyqpmty5
 sDWQyj0cmjFs3brcuq9vUl9V3yXvfkTIkU1ALFaAh8wIU+mMh7E10AZpj3Ux3JenR92t
 KsHw==
X-Gm-Message-State: APjAAAXqWJuHO3fy53Gz3vWYhl0pSDAIaPHgKOy2vYH6ZDDY4LRaoY0v
 JViTmhfd/8iZIZETDMWaOd0D1A==
X-Google-Smtp-Source: APXvYqxkoOSz3EElUiJyrS7XLxT4E2RrTKPRQZsLo3gTD8kEkuzwObe1rg6ylHw8yiou5ZegP9TqoA==
X-Received: by 2002:a63:e911:: with SMTP id i17mr3199910pgh.42.1580365859422; 
 Wed, 29 Jan 2020 22:30:59 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id q12sm4862272pfh.158.2020.01.29.22.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jan 2020 22:30:58 -0800 (PST)
Message-ID: <5e327822.1c69fb81.80136.dfc1@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <202001271525.E6EB4FDD6@keescook>
References: <20200123160031.9853-1-saiprakash.ranjan@codeaurora.org>
 <202001271525.E6EB4FDD6@keescook>
Subject: Re: [PATCH] pstore: Fix printing of duplicate boot messages to console
To: Kees Cook <keescook@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date: Wed, 29 Jan 2020 22:30:57 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_223100_899033_256B8C33 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
 Anton Vorontsov <anton@enomsg.org>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Colin Cross <ccross@android.com>, Joel Fernandes <joel@joelfernandes.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Kees Cook (2020-01-27 15:27:33)
> On Thu, Jan 23, 2020 at 09:30:31PM +0530, Sai Prakash Ranjan wrote:
> > Since commit f92b070f2dc8 ("printk: Do not miss new messages
> > when replaying the log"), CON_PRINTBUFFER flag causes the
> > duplicate boot messages to be printed on the console when
> > PSTORE_CONSOLE and earlycon (boot console) is enabled.
> > Pstore console registers to boot console when earlycon is
> > enabled during pstore_register_console as a part of ramoops
> > initialization in postcore_initcall and the printk core
> > checks for CON_PRINTBUFFER flag and replays the log buffer
> > to registered console (in this case pstore console which
> > just registered to boot console) causing duplicate messages
> > to be printed. Remove the CON_PRINTBUFFER flag from pstore
> > console since pstore is not concerned with the printing of
> > buffer to console but with writing of the buffer to the
> > backend.
> 
> I agree this patch isn't the solution, but I'm trying to understand
> where better logic could be added. Is the issue that printk sees both
> earlycon and CON_PRINTBUFFER active? Can we add a new CON_* flag that
> means "not actually printing anything"? (Or maybe a new flag for
> non-printing to replace CON_PRINTBUFFER that lets pstore still work?)
> 

This seems to be fixed by commit def97da13651 ("printk: fix
exclusive_console replaying"). I think there's nothing to do.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
