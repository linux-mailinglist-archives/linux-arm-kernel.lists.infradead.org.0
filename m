Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74869144397
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB6m8JV5LlIAkcl28vJGGMKjjAYogbeDvhEdZS2yLr4=; b=S8OU7npMNRRGZi
	brqCd9KOiDQbHNA6Z2kSpID/1dNoDQHViH2RLsa7mq8x0xnNiIFpm2Pm4xKkRk8KKmMVQt3fBGLvB
	tDrpHy5a7Pg9LdhRtWhlmYE/qF8YNIlZ1mzK4lnh1uKYY1CW2P57vjEr968sb7DS/pCBUIrW1ZSIN
	c1rQe+xKuoXHbl189zmuMBtm9KgEa2V71BtNzNQo9a4FCHJ9LLQGyPmaWsKCX781SE9L7fD9uD7BE
	PRdtEV/Z9rQr5Fb5bhExoLxvTnPV2tEoXSjvTWK1QgVOvowFrbRmTrsVMypLtDH0dHy3O7EN8w93e
	KVmZNHSsM0Bvji6oo19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxfW-0007ZD-0L; Tue, 21 Jan 2020 17:50:26 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxfF-0007TM-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579629007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ae5Z+En0sqtjb39dBwdtiY6FkcMFIgmXM3FcN+xtsjE=;
 b=Xy60esaQvChiTQVbz1eOkL9QNyn5Qwa96n/F1QNqOn3YdobEO/GpxcUeiMk3qDGr/iO7nO
 MpXAmBKDoDo6XLvavCnNZLFsaRLufJSIXW/nX/D2DFSboNCoL0Fz46GlKTDUPbfPVazcWZ
 BUD5gRUnpXe/Q994luOX91LbEB5putw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-295-ozcYZBHiPnaFXzkGo2UiIg-1; Tue, 21 Jan 2020 12:50:06 -0500
X-MC-Unique: ozcYZBHiPnaFXzkGo2UiIg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDD5C18B5FA2;
 Tue, 21 Jan 2020 17:50:04 +0000 (UTC)
Received: from treble (ovpn-122-154.rdu2.redhat.com [10.10.122.154])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FA1E8BE2F;
 Tue, 21 Jan 2020 17:50:03 +0000 (UTC)
Date: Tue, 21 Jan 2020 11:50:01 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [RFC v5 00/57] objtool: Add support for arm64
Message-ID: <20200121175001.5jltrjuxrjklq5o2@treble>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200120150711.GD14897@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120150711.GD14897@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_095009_308206_75BA62AE 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <jthierry@redhat.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, raphael.gault@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 04:07:11PM +0100, Peter Zijlstra wrote:
> On Thu, Jan 09, 2020 at 04:02:03PM +0000, Julien Thierry wrote:
> > In the mean time, any feedback on the current state is appreciated.
> > 
> > * Patches 1 to 18 adapts the current objtool code to make it easier to
> >   support new architectures.
> 
> In the interrest of moving things along; I've looked through these
> and 1-14,16 look good to me, 17,18 hurt my brain.
> 
> Josh, what say you?

Agreed.

Julien, thanks a lot for splitting these up nicely.  If you post 1-14
(updated based on the recent comments), we can look at merging those
sooner.

15-18 also hurt my brain -- probably a symptom of the existing fragile
mess -- so I'll need to spend more time staring at them.

-- 
Josh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
