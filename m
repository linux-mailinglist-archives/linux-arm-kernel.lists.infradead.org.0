Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F83218A2FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 20:11:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+pSsgkDQ+F9vyH1xzVewWYpYdYEUl3uAKILN53GWCw=; b=PpAK8umE69vSsG
	Eye617sjUlR5+LVNpPHrgxYujnj4Bp0X2tXZbEQlGBeR+NwiKx3Yh7k+ipIxnMAGeyUuoHY75cWo2
	rE1gnLfr1y5pwkbC6AXXhxk4PtQG7svXJw+DddjMztwpNMpZRhhtAn3AnqVmXf7NUQZHXkcPk3bu0
	1lJKCV6JVDjZKiOvgo1b+XtV1jnpuPxJtdQD1h/51QV2r9evCblJJrIU1A+UDBJFvw/pv83pOtWa8
	WO+Zt4gk4bdVjnAx9GSnUng4mrjk/r/mQkUZd+VDsW2s1rvMaVeKVJPlpZKfCaOQe8hkjizEHKA7R
	bDFl9BexExq9aSUV/4Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEe6K-0002N3-4I; Wed, 18 Mar 2020 19:11:36 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEe67-0002IQ-Mn
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 19:11:25 +0000
Received: by mail-ot1-x342.google.com with SMTP id a49so23967730otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 12:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YEcNvKoxRLNncmofEeVv4yeDWdrbk4dUuTY3/HM5SJg=;
 b=lkxzxSmPoiFVrjW+D44Nlzoy7Y9BTyZ6PQpCllGw154b100MP5WuWaOD8/idtKRdN1
 eW54dVH6b4J85Yh7iKi6bJJfbSelvRDFyXBx3wyvx0oFFus1AOlmctj2Z5JvbyIEHHUZ
 /Jr09tDhinfXqXBq2oebzgol6mVeYcC+UyXyTHDzlp5RJD7V8dU38+VbiMAZuPGG6YF9
 hvBVYwDFqmUd6ydHL8N8g88fq/GSAzaTFW8j6JuF/V3UyExsBxHJS4eMrACrNI4o5nLl
 sC+7J1xx3mn9ikCZuhxsvKAh6qOSY243TaGZYevQ1VsO2EVhb25BOP3Gwdm7RCayZFKz
 QIhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YEcNvKoxRLNncmofEeVv4yeDWdrbk4dUuTY3/HM5SJg=;
 b=H7zrjN4fk9FqIe0R3k/uPuSHY7lGu5j2dyPfup2TQJMEhY7bGMPRsST4j992IYflq8
 fWA/bY5l3WTK9R+1IBEVqB8Q2IzAeHi82TeMT6Rt49QNDeI8kgbMoNEWr1+xQv1Porza
 hzoOfzM+5zCJp80TQrRbtS6ju0CA5HDxk0GoZYRjIrANcFXqZHdFbT4vzA6ck9+MITN/
 p+XwQwWvJbKgoKIvxd2sDZezDWrV3Pulo4yaQ6OLlhsZK4ZoPHk+pPHc5UMiP5T2NFOa
 BkKPNwS/n4+FDDJB9JS5yCXex6tLDWWg43y/kT+Xfx40kpH8bbiJmSVyaSM2ZmPWizal
 38Ig==
X-Gm-Message-State: ANhLgQ2GWRJmghXSez4uChCcPFbMRhJQWxIBFp0jI0SR0yfzaAK/bUen
 Ns8D7ubpwUojByRiMKLXk06SU06/GLhB1F81ZPHUNg==
X-Google-Smtp-Source: ADFU+vuQqQyKYY3GzReouxvk6jJyqQUm+Irep1pzseE+uxctbZi52pzI8VMFuxyNWh599gkbGFQoVDq1JwgQY4XyDz8=
X-Received: by 2002:a9d:6186:: with SMTP id g6mr5088006otk.236.1584558679434; 
 Wed, 18 Mar 2020 12:11:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
In-Reply-To: <20200317065452.236670-1-saravanak@google.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 18 Mar 2020 12:10:43 -0700
Message-ID: <CAGETcx-uZ3YJHCYqFm3so8-woTvL3SSDY2deNonthTetcE+mXQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Fix device links functional breakage in 4.19.99
To: stable <stable@vger.kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_121123_760946_42370E13 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux PM <linux-pm@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Android Kernel Team <kernel-team@android.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 11:54 PM Saravana Kannan <saravanak@google.com> wrote:
>
> As mentioned in an earlier email thread [1], 4.19.99 broke the ability
> to create stateful and stateless device links between the same set of
> devices when it pulled in a valid bug fix [2]. While the fix was valid,
> it removes a functionality that was present before the bug fix.
>
> This patch series attempts to fix that by pulling in more patches from
> upstream. I've just done compilation testing so far. But wanted to send
> out a v1 to see if this patch list was acceptable before I fixed up the
> commit text format to match what's needed for stable mailing list.
>
> Some of the patches are new functionality, but for a first pass, it was
> easier to pull these in than try and fix the conflicts. If these patches
> are okay to pull into stable, then all I need to do is fix the commit
> text.

I took a closer look at all the patches. Everyone of them is a bug fix
except Patch 4/6. But Patch 4/6 is a fairly minimal change and I think
it's easier/cleaner to just pick it up too instead of trying to
resolve merge conflicts in the stable branch.

1/6 - Fixes what appears to be a memory leak bug in upstream.
2/6 - Fixes error in initial state of the device link if it's created
under some circumstances.
3/6 - Fixes a ref count bug in upstream. Looks like it can lead to memory leaks?
4/6 - Adds a minor feature to kick off a probe attempt of a consumer
5/6 - Fixes the break in functionality that happened in 4.19.99
6/6 - Fixes bug in 5/6 (upstream bug)

Greg

Do these patches look okay for you to pull into 4.19 stable? If so,
please let me know if you need me to send v2 with commit fix up.

The only fix up needed is to these patches at this point is changing
"(cherry picked from commit ...)" with "[ Upstream commit ... ]". The
SHAs themselves are the correct SHAs from upstream.

Thanks,
Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
