Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01A6D7DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:36:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuxnEkcuIdTNY67/TS/LIDh2lOEhF9N5/xMHAX1NpGY=; b=Rgxnb0xnsaHd6S
	O+K2ozVJTCJwIF6WVDnZhatM13gw9B2pMx4cmqMOOGWnHjZI5ImjjC5doVbHwhWgxMjnsfz+QDnJi
	wrxC5/iGAhqXnKDeCO1o8YP6rq5zxWNCl4oJsx6Zxz951KRq5pquOHjkT6bV6Dbj+d56MAAzp0rdU
	MdW6WERo9KJYtDD/7kx9uojCWp2HYY2JOtUnD2Syq3arl6+/8QEOf+KJyXKF+pm/jJ9h4JXdMNTC4
	nIfdsivSAtqTdeiQL/xp9OgLo42I6Eplbxr7O3YW7Y0BMw8TUKhtD64qvWIf9L9sdi+HydQVM2Nhy
	tAk2q8R4Oe6EtiVPlCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQkM-00012S-JN; Tue, 15 Oct 2019 17:36:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQkC-000125-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:36:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so12925553pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 10:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=m+oSkq2BGDVnMXCTCZOGBY+AVAcaQgizlBaC3TfYgbk=;
 b=JV+TKEsIejeoGguft/smdhcOhD8TznOS3FDgaThCNzjFd/zO9Gf+USti5K/cmcvGGL
 VL+DN5u7ePo4IWynJI4kZyUxYCOiGUo31kRO4IGsw0RDA7MEE9P0Lx+Gh5T4vmOLDPmO
 nAWj+aCJO3XdoGRVZfY2JbnQgqczJYP20lPBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=m+oSkq2BGDVnMXCTCZOGBY+AVAcaQgizlBaC3TfYgbk=;
 b=MaBw8pYZ8t8BfvX7wTbfHGKYBaguBy01+6IKymOtiZyILFGdEAv1uQ+1h95CB31uOk
 D1nYUMDCzVcKUAGJx3Fe+l/+ZFxkt/PgaIqs0tYpE/+bsf8YPmJcYweClEvdKl6++qOC
 05Vap36hX6PHbnLcRS/HN4hSyT1IaWiWCEuoc2kyebCbyjNblQjjUr1gF2RRWruFfZRN
 Yx8uToFbtVdFboq+fm4clA+pP6cdoLjN5DHSXUgccOJD5BHGvSUGmDKniUU4VkeWI4VL
 te04Ul4B/RIGgJlpa9J+M3/YWSGE/Xfg+tkLwdtbf+48SkQOlSqFF1qm/h5Io0wp3F7C
 47XA==
X-Gm-Message-State: APjAAAXQaMvw/GSGMLt3jvqp3sYWMjdTHZr+m8JXQbwTb65MOnlJBxHi
 4xx7i7k7i9QcGc0o9HN1966m8w==
X-Google-Smtp-Source: APXvYqyiR4aQoe1gYk78ERJu5vF+BWIQdBY7ufngAKMkxwambAKLD5Wy/+2CK6+2hmVn878fjUO5OQ==
X-Received: by 2002:a62:b504:: with SMTP id y4mr39162264pfe.124.1571160984162; 
 Tue, 15 Oct 2019 10:36:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f74sm25484564pfa.34.2019.10.15.10.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 10:36:23 -0700 (PDT)
Date: Tue, 15 Oct 2019 10:36:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH v2 01/29] powerpc: Rename "notes" PT_NOTE to "note"
Message-ID: <201910151034.A21FDCA32@keescook>
References: <20191011000609.29728-1-keescook@chromium.org>
 <20191011000609.29728-2-keescook@chromium.org>
 <20191011082519.GI9749@gate.crashing.org>
 <201910110910.48270FC97@keescook>
 <20191011162552.GK9749@gate.crashing.org>
 <20191015165412.GD596@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015165412.GD596@zn.tnic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103624_873019_195FA3AB 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Dave Hansen <dave.hansen@linux.intel.com>,
 linux-ia64@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Segher Boessenkool <segher@kernel.crashing.org>, linux-xtensa@linux-xtensa.org,
 Will Deacon <will@kernel.org>, x86@kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 Rick Edgecombe <rick.p.edgecombe@intel.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 06:54:13PM +0200, Borislav Petkov wrote:
> On Fri, Oct 11, 2019 at 11:25:52AM -0500, Segher Boessenkool wrote:
> > Names *matter*, internal names doubly so.  So why replace a good name with
> > a worse name?  Because it is slightly less work for you?
> 
> So if we agree on the name "notes" and we decide to rename the other
> arches, this should all be done in a separate patchset anyway, and ontop
> of this one. And I believe Kees wouldn't mind doing it ontop since he's
> gotten his hands dirty already. :-P

Yeah, I'm fine with that. I would prefer to do it as a separate step,
just to minimize the logical steps each patch takes. Shall I spin a v3
with the Acks added and a final rename for this?

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
