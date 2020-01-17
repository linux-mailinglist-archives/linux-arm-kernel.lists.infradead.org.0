Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D606140F7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITR/yNf56qlyZzHrDLE47UOHoFGnbWIWK/Zt0iNBFvI=; b=jCs8aeUMH2W59r
	qIo2Txm+mL4rJW0iFsk9xnNGV5975UPw7atg1i/QoszLLaLR0tgV3Micvfv2SvMRk3c7fNwXnH1Ty
	mW/6hKRFIqJ6p8f0NWCX+mbokEpNO86QGn1AExIJ0h2ZuTSNSeHsStueXIvkwzsTiznx2dPtawsM6
	2Cxx+w7udf7uV7gmuqALBEOeI6fOocJevwclmAXHJmpew+0xIfcWO755BOxWfucHg8q0OdaqEu0RL
	sImhB66jU+RqXh4GXqJX9V5RK/pAurCLEb9r+FFNpaADoVkew6ol0CtgNANvMsnL/VDza57z8gySz
	Nn9GiLfDnGorBoY4if4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUy7-0004Et-5y; Fri, 17 Jan 2020 16:59:35 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUxu-0004Dt-HV; Fri, 17 Jan 2020 16:59:27 +0000
Received: by mail-qk1-x741.google.com with SMTP id c17so23307409qkg.7;
 Fri, 17 Jan 2020 08:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=zUnqRXYQtoyEF5UfPwWmYzCrDBoI5jZ6BUT1W4OJSHA=;
 b=dNwidGHTaO65iLrmuRFYsedrAORZcj1dlBJc6RMBU146ZCPVPbdo76G9xqEUHi/4Pt
 EOjOovq0mE5jq+flTugwLRNLMe/HfRwsgkV8518vOU7/DmxMI7XRE8vFRc/XRTgb/ICe
 rDke18QDeVAgygvYrcv/rpZui2Gx8OXVHY42jmMcwi2MkfLMXzY2zcHKratTxPYePE5C
 6/+6UJTgCLdF/6Q0CmUKGsNVRYhdpnM89yIl1USuXStY8jSq35oPPXc0UDZcFon7c8E7
 I38FBOrLF5KnNZx0uQLQ11UdW+T1YiVS3L6zDZSMoGQuQQo1a/NONcwN9ay/gtbQB1Jz
 70Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=zUnqRXYQtoyEF5UfPwWmYzCrDBoI5jZ6BUT1W4OJSHA=;
 b=tB3dE02vEeRZ9f34WzlV3v5qEPs5S0POTHHTxGbXb+P9EyNSt+izx/zdG5pjJSxsjj
 +uslg8S44HlhUMwMw3UtQXpJ9Dmy513LumVirvB0mrYOWBcGTPr0ReFubmosfKOrEF6V
 Zr1ywEz8zMlj/ps+liUQ4G4oxtzvX3DlY0yt7G55IYT9zIq04FA8PoX8pivlnn7SGNzI
 PiqWHk1aBWZ2LWPwIrs084EBrzsaRTIB1BelBU/hh8pq61J6aO9Nk40fWatuadqCwX5W
 K3FkIlo8vUigbgJo4rznRweSMrii3+CZrXLADGZiBQXcYDye8zNMYP6Gw3iAcRJ9CFjX
 lllw==
X-Gm-Message-State: APjAAAUODukK3vJfhELqBDnvT/XaEwpkNB88Ayb+boKjEqkubAw93occ
 ixIHHp8RcNgcXY26FYCI3YQ=
X-Google-Smtp-Source: APXvYqxftns8R04Lq7DlRW0QHAR4L0VpzrsayZtZp6bJXTKdCVV6PA2/eZmoZzleZqMOolzPC/QbPA==
X-Received: by 2002:a37:7005:: with SMTP id l5mr37840890qkc.334.1579280361177; 
 Fri, 17 Jan 2020 08:59:21 -0800 (PST)
Received: from localhost ([2620:10d:c091:500::1:7d10])
 by smtp.gmail.com with ESMTPSA id g18sm12021690qki.13.2020.01.17.08.59.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 Jan 2020 08:59:20 -0800 (PST)
Date: Fri, 17 Jan 2020 08:59:18 -0800
From: Tejun Heo <tj@kernel.org>
To: Michal =?iso-8859-1?Q?Koutn=FD?= <mkoutny@suse.com>
Subject: Re: [PATCH 1/3] cgroup: Unify css_set task lists
Message-ID: <20200117165918.GJ2677547@devbig004.ftw2.facebook.com>
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
 <20200117151533.12381-2-mkoutny@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117151533.12381-2-mkoutny@suse.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_085922_584685_DB4996E4 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (htejun[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, Li Zefan <lizefan@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-kselftest@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, matthias.bgg@gmail.com,
 cgroups@vger.kernel.org, alex.shi@linux.alibaba.com, kernel-team@android.com,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 04:15:31PM +0100, Michal Koutn=FD wrote:
> We track tasks of css_set in three different lists. The iterators
> unnecessarily process each list specially.
> Use an array of lists and simplify the iterator code. This is
> refactoring with no intended functional change.
> =

> Signed-off-by: Michal Koutn=FD <mkoutny@suse.com>
> ---
>  include/linux/cgroup-defs.h | 15 ++++---
>  include/linux/cgroup.h      |  4 +-
>  kernel/cgroup/cgroup.c      | 81 +++++++++++++++++++------------------
>  kernel/cgroup/debug.c       | 16 ++++----
>  4 files changed, 60 insertions(+), 56 deletions(-)

So, I get the urge to move the lists into an array and thought about
doing that while adding the third list for sure.  However, it does
make code paths which don't walk all lists wordier and the code path
is already tricky like hell.  Given that there aren't that many places
which loop over the lists, if you really wanna clean it up, maybe add
an interator over the lists so that both parts of code can look lean?

Thanks.

-- =

tejun

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
