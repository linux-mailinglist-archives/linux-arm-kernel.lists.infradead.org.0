Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA41643CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0B9nWxMoTBLq2WvKsT/VDhD9C70Dsn1SSjp9+dlk+1k=; b=ACT5AqQHmOIEQY
	HZh+RpNv+NJ/BLXy+tV6kGnvJ6n3u/eGbHmpIGz8V7frXKhbuzsaFzGyxfq0B2As6EzuYuyaBEVYJ
	YdlkM34DL9TtzDKINDVD1JnUznY6IOphHC6bx4eUWe9CYDbwSr4HgPnvlmFYqVewOEA0Pa9dHuHIt
	/hncmnzmGZagFyHF53jmdtk7lSuEOff3iScI0qZtfR4zLmermAnOqK4D9KR1R/VFqnx0nzbP+VAqr
	efqdLurrpDglGzQ3V97sEBmmnmkEwaLdazmhHtt9ffj5MGkiJTqFeDwSEjU9Y58251qnBsIxuqtvx
	hD3Gok/k/pV4iE2L8AFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4O0V-00073Q-6x; Wed, 19 Feb 2020 11:59:11 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4O0J-000723-C5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:59:04 +0000
Received: by mail-wm1-f67.google.com with SMTP id b17so367728wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 03:58:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hMj17EsNTTVBvIYortqF9yZ/0MuAB2i6oYeLezbsqUE=;
 b=N1pQ73OoSCBLsEF2jV9tqmAq73Jts7MGPYyqddLziNF1HpTBI68WjfcdQa4n+Ltfnh
 rQ9otIfacARjOjabldYhbmWMLpl2F56lCwfWmV2jeg6HkDT0+wRekG+V1lnnpO3m6C9g
 PFaLaC/fh29yNf0FDv6e/puoZ0RrbFhqnvq38xQtPq7/MYMcP1myj4YhXroddEAkWfO+
 NaTquwYjm80j10UXjRpGAfv5qCjT49VAQqmHBXfmgIfAmipxhI5vNatMzQPa8KV6CniC
 dbMaEeUqpi9kZ/s5pj3juatgxLERJNJ+lSze6gZ6pZeLd8CMJ4tHKutX5fqKDLsyEvQs
 5KXw==
X-Gm-Message-State: APjAAAWot6Y8lUsGUjPy5ZIXEHOhMCOeUAZ+oyQ011dTcum7TTlgwrBR
 rumbJbsbH/T8IFvcTqQvVhI=
X-Google-Smtp-Source: APXvYqyJLNBDsyGu5ycOv4YzZpKZsQi+8mdg5QMCtZtvivgqipvSvIX9TS7n9r8PLIChj38ff/LUbw==
X-Received: by 2002:a7b:c190:: with SMTP id y16mr9797015wmi.107.1582113537324; 
 Wed, 19 Feb 2020 03:58:57 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id t1sm2829859wma.43.2020.02.19.03.58.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 03:58:56 -0800 (PST)
Date: Wed, 19 Feb 2020 12:58:55 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 1/2] mm: use_mm: fix for arches checking mm_users to
 optimize TLB flushes
Message-ID: <20200219115855.GR4151@dhcp22.suse.cz>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-2-aarcange@redhat.com>
 <20200218113103.GB4151@dhcp22.suse.cz>
 <20200218185618.GB14027@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218185618.GB14027@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_035902_698418_D56C23E0 
X-CRM114-Status: GOOD (  25.10  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 18-02-20 13:56:18, Andrea Arcangeli wrote:
> Hi Michal!
> 
> On Tue, Feb 18, 2020 at 12:31:03PM +0100, Michal Hocko wrote:
> > On Mon 03-02-20 15:17:44, Andrea Arcangeli wrote:
> > > alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
> > > mm->mm_users to know if they can skip some remote TLB flushes for
> > > single threaded processes.
> > > 
> > > Most callers of use_mm() tend to invoke mmget_not_zero() or
> > > get_task_mm() before use_mm() to ensure the mm will remain alive in
> > > between use_mm() and unuse_mm().
> > > 
> > > Some callers however don't increase mm_users and they instead rely on
> > > serialization in __mmput() to ensure the mm will remain alive in
> > > between use_mm() and unuse_mm(). Not increasing mm_users during
> > > use_mm() is however unsafe for aforementioned arch TLB flushes
> > > optimizations. So either mmget()/mmput() should be added to the
> > > problematic callers of use_mm()/unuse_mm() or we can embed them in
> > > use_mm()/unuse_mm() which is more robust.
> > 
> > I would prefer we do not do that because then the real owner of the mm
> > cannot really tear down the address space and the life time of it is
> > bound to a kernel thread doing the use_mm. This is undesirable I would
> > really prefer if the existing few users would use mmget only when they
> > really need to access mm.
> 
> If the existing few users that don't already do the explicit mmget
> will have to start doing it too, the end result will be exactly the
> same that you described in your "cons" (lieftime of the mm will still
> be up to who did mmget;use_mm and didn't call unuse_mm;mmput yet).

Well, they should use mmget only for moments when they access the
address space.

> One reason to prefer adding the mmget to the callers to forget it,
> would be to avoid an atomic op in use_mm (for those callers that
> didn't forget it), but if anybody is doing use_mm in a fast path that
> won't be very fast anyway so I didn't think this was worth the
> risk. If that microoptimization in a slow path is the reason we should
> add mmget to the callers that forgot it that would be fine with me
> although I think it's risky because if already happened once and it
> could happen again (and when it happens it only bits a few arches if
> used with a few drivers).

The primary concern really is that use_mm is usually not bound in time
and we do not want to pin the address space for such a long time without
any binding to a killable process.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
