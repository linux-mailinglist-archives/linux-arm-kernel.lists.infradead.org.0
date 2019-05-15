Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB751F786
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMhjfMOW1CDmbxosPBU6BuFfUVm76Rd2mp8kGhySImc=; b=iyy50QqO33HFFe
	XUvwngdVhUoCWgQ/lGTn2mAmcGo7Lz2VNYWNL5abaiEtXt7vWesjVg22MLOhgVvoWony7g6VY+ES7
	DazJ3TF87Dr5sbftT6qu43XRi7rbUXzuBkttI+ZYhZktYNN1rMAk3xAXoN/x7TAkaHuohusIFlxdr
	YmqU2MYL3aW2pgCvd9RrAWAe3WY+DLUiCqXdDOgu4TU2AHGiHdewkqm4fC7Sa4RtyLrzh8ui5qdMg
	TohwjiqbP891gFJ3cujkq7BE3UZUA7WP5IwoAaT+Z6Sf7qseiG+j1EE5JbyHGHBUpx1bg5TphZ2QO
	6EBTX04NToECh1FjDaWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvrs-0007VE-VU; Wed, 15 May 2019 15:30:57 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvrk-0007TQ-0I
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:30:49 +0000
Received: by mail-ed1-x542.google.com with SMTP id w33so373630edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 08:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aA/9xJj7LTMF1BWw8aRur3CJhiNYxnU3NsvAQ/tm1xk=;
 b=cVOJomieev/iQakiPOTryvyjScY68JwrcjZ9tnp9aeBqv3wRx4Edk6Zam5C4dpe1lU
 ogJ1bz/0uxayIY+dTGNRsGRKQE6a7udSOJYX/3GGdfJsVPiUlo9NIVE5wtEn+5hBwiSU
 gwP9J1DGbHYliH8LbuzUv/B66fmaNK+5+P4Nf0pkHXalxp2DHQe3TjDimH0gP6oUwq5l
 okb7EvO9DMTE9eTKyMdqlLNyrY47JfXoH49cTCN0H2L4KRmjYeMaDxi5FvoPvo3asXpV
 5VjgjpZVUupeOdTmVGMkhRg4ZLi1nCgbsXBRTgk7m9FRnUbqV0616Vj7CPnf3pkdvUzD
 ZpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aA/9xJj7LTMF1BWw8aRur3CJhiNYxnU3NsvAQ/tm1xk=;
 b=AASIXWpHooOOnxTNEFwIHuQBtmvd/yj0hFxDcFqPJscIEI6MWC+lN/ekwuFqYobQwf
 bCn0DvASjoLydWYSd6TLQAOr0/Ugt4TxIRR23ZQweZ7L2pbCA6wSWwTaM6jGiYi7VTE7
 /OPP6bG2iPNQdJocfgzhFKJoxFGBWPdw1tuQ/n+ETAqbs64oyGCuTHUNBuTBt1X4ORpH
 cS0W4xd3WgDdHXlLCXmAZbMEX0wqxeQq6SL7xUBBsta19bG/QFDHjOByU/Hc+QJfs+d9
 S3AvcEuefiotSr7q8fOryfVv6yqYAJ4Acnm5tn1nIWec81QMcLCaI2NwVkcHbr1q4CJg
 WLwQ==
X-Gm-Message-State: APjAAAXmQnZTAoCBCrad6WzQTXsTbqJI6rgShilbxUJKwuuJESQZMtCR
 E1bsXozJszmjhR2kFejTAWWH5A==
X-Google-Smtp-Source: APXvYqw0QCYB7YlBSERFfTRieSPZ+dY7tEzUwoL9QiWp8tjx2MbhTffXtauytMVbchs42mNvhzDMIw==
X-Received: by 2002:a50:99ca:: with SMTP id n10mr44141540edb.279.1557934246270; 
 Wed, 15 May 2019 08:30:46 -0700 (PDT)
Received: from brauner.io ([193.96.224.243])
 by smtp.gmail.com with ESMTPSA id d4sm924077edk.46.2019.05.15.08.30.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 15 May 2019 08:30:45 -0700 (PDT)
Date: Wed, 15 May 2019 17:30:42 +0200
From: Christian Brauner <christian@brauner.io>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515153041.cshzaj7xhf2p4zv7@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <20190515143857.GB18892@redhat.com>
 <20190515144927.f2yxyi6w6lhn3xx7@brauner.io>
 <20190515151912.GE18892@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515151912.GE18892@redhat.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083048_089124_AE3B0773 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-mips@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, cyphar@cyphar.com, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 05:19:13PM +0200, Oleg Nesterov wrote:
> On 05/15, Christian Brauner wrote:
> >
> > On Wed, May 15, 2019 at 04:38:58PM +0200, Oleg Nesterov wrote:
> > >
> > > it seems that you can do a single check
> > >
> > > 	tsk = pid_task(p, PIDTYPE_TGID);
> > > 	if (!tsk)
> > > 		ret = -ESRCH;
> > >
> > > this even looks more correct if we race with exec changing the leader.
> >
> > The logic here being that you can only reach the thread_group leader
> > from struct pid if PIDTYPE_PID == PIDTYPE_TGID for this struct pid?
> 
> Not exactly... it is not that PIDTYPE_PID == PIDTYPE_TGID for this pid,
> struct pid has no "type" or something like this.
> 
> The logic is that pid->tasks[PIDTYPE_XXX] is the list of task which use
> this pid as "XXX" type.
> 
> For example, clone(CLONE_THREAD) creates a pid which has a single non-
> empty list, pid->tasks[PIDTYPE_PID]. This pid can't be used as TGID or
> SID.
> 
> So if pid_task(PIDTYPE_TGID) returns non-NULL we know that this pid was
> used for a group-leader, see copy_process() which does

Ah, this was what I was asking myself when I worked on thread-specific
signal sending. This clarifies quite a lot of things!

Though I wonder how one reliably gets a the PGID or SID from a
PIDTYPE_PID.

> 
> 	if (thread_group_leader(p))
> 		attach_pid(p, PIDTYPE_TGID);
> 
> 
> If we race with exec which changes the leader pid_task(TGID) can return
> the old leader. We do not care, but this means that we should not check
> thread_group_leader().

Nice!

Thank you, Oleg! :)
Christian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
