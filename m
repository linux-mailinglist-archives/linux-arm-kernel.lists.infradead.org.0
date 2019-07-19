Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CA26EB81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 22:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8045gl8SckqE4qX25U5t5C9LYbL02oLVLZL7NCsPA9A=; b=tzjpYDLnw+AJjS
	2uIGW4iI8BXRU8HtYyFAdLB639u+XW+zug2lJ/rL5ZOxjbAksUlETIhHG39hdRL0bg9bUHZYzZl2M
	+wK/wsY6ktp4IcqPIG5UP/3HMClC39+sJ6j++NrBKwYsNE44t+arEzMBYudetvvNsOSDug5HCBKTC
	h0jop88fDMij5wDVze8dFRIinm3kuTkML+Hfg0JTKIFckGNFEPT7+C4H0q67shDIetpG4OwEMPYi7
	iuhdHFF8sM4e8LInEItbmjviey4zcP0ARB83GsBqNoAB6+4qqZLbRfosTqIelZkUUkan3PIJqqYG4
	KFapjsTTTY4+9y9cjNcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoZJR-0000sw-8Z; Fri, 19 Jul 2019 20:17:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoZIe-0000X4-8C
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 20:16:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so30065418wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 13:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qRQ+uU5wn2WQEQOnZ2UubgfeFVqhZgd9kjVnCaHPrfs=;
 b=Im0DR1UFeZCq0zpB8KVCXvKG4l8B7MMe+rdKU9q1VGpDDB5w+wAaQZF6rnhC1qRfWy
 rcJTvwWi6fHM7Ba2khVUk6x8u++hR78UsmpytMV9E/jZmM/uSWALP4WQRh76lXsD3JKm
 JG3pMxHpuN+1zi+Kf5xUGmAj/PyY1nU7rp3gc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qRQ+uU5wn2WQEQOnZ2UubgfeFVqhZgd9kjVnCaHPrfs=;
 b=QEqiPsV/K/4454IalEjyVDrdd7iggMHc60AVVxci8/5pnynkRUtOSHWBk0Lq8nrOQ0
 o5WEmV6uNEeyGsp/rQNqSSONR8N9LcuuPg8V+QgnTz9VF4nOfI0AzRlmQS24d8vCuf7N
 7B8fAyHraIV2aYcuIrERJwtrDNjHCx2GmykBI+CvpRP0F4DG1D9jvTYV/zuJBerJdW8O
 kY5vCg4KLJrrT9Q3HTQTXi4LI0uF4g9sy0IHZSmoeLWAK2ECNfJC45SkTj74/DK0sbPN
 9BPU6ooVI04/mXvwxjb2+bIWoA0ZgbMN4zSrJPQrZDF4FpYNXtmq1EVYtwIxbMYGz6xI
 rDRA==
X-Gm-Message-State: APjAAAWQNS8w6Dw1J6EO+aseeO/IEALuiSqYtud7Q3+P3B5lLg6cDknf
 mz91RfhPOcFxnwLSfNFb8lXWJDN/rmWqXSsoDK1yjw==
X-Google-Smtp-Source: APXvYqwUUphzrItlkDPidpodRtl/C08h8HR9wxM4T7PXeAtVwjCeOoOjvdEgpCVdshASDZhounhK56wQQqk+6ddCGKo=
X-Received: by 2002:a1c:ac81:: with SMTP id
 v123mr51072312wme.145.1563567374453; 
 Fri, 19 Jul 2019 13:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190708154730.16643-1-sudeep.holla@arm.com>
 <20190708154730.16643-8-sudeep.holla@arm.com>
 <CA+-6iNyFToC8QSf042OcqvAStvaF=voy_ohayvQBVCppgtyD7A@mail.gmail.com>
 <20190719110320.GC18022@e107155-lin>
In-Reply-To: <20190719110320.GC18022@e107155-lin>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Fri, 19 Jul 2019 16:16:02 -0400
Message-ID: <CA+-6iNwgza49jmDbTM-_MUx+VPDFpG=1fN8i8v5vXdQNoOk93Q@mail.gmail.com>
Subject: Re: [PATCH 07/11] firmware: arm_scmi: Add support for asynchronous
 commands and delayed response
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_131616_417601_4262E303 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 7:03 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Jul 18, 2019 at 05:38:06PM -0400, Jim Quinlan wrote:
> > Hi Sudeep,
> >
> > Just a comment in general.  The asynchronous commands you are
> > implementing are not really asynchronous to the caller.
>
> Yes, but as per specification, the idea is to release the channel for
> other communication.
>
> > Yes it is is "async" at the low level, but there is no way to use
> > scmi_do_xfer() or scmi_do_xfer_with_response() and have the calling
> > thread be able to continue on in parallel with the command being
> > processed by the platform. This will limit the types of applications
> > that can use SCMI (perhaps this is intentional).
>
> Yes indeed, it's intentional and async is applicable for channel usage.
>
> > I was hoping that true async would be possible, and that the caller
> > could also register a callback function to be invoked when the command
> > was completed.  Is this something that may be added in the future?
>
> This is how notifications are designed and must work. I would suggest
> to use notifications instead. Do you see any issues with that approach ?
>
> > It does overlap with notifications, because with those messages you
> > will need some kind of callback or handler thread.
> >
>
> Ah you do mention about overlap. I am replying as I read, sorry for that.
> Anyways, let me know if we can just use notifications. Also the current
> sync users(mainly clocks and sensors), may need even change in Linux
> infrastructure if we need to make it work in notification style.
>
> It would be good to know the use case you are referring.
Hi Sudeep,

Well, I'm just curious how you would implement notifications.  Would
you have a per-protorcol callback?  The Spec says that multiple agents
can receive them; in our usage we have only one agent and it is Linux.

We have one use case where that this patchset will do wonderfully.  We
have another use case where we would like to go crazy on the
asynchrony of the messages (caller's perspective, that is).
This usage, which I don't think I can talk about, would like to use
notifications and a per-protocol callback function.
>
> > BTW, if scmi_do_xfer_with_response()  returns --ETIMEDOUT the caller
> > has no way of knowing whether it was the command ack timeout or the
> > command execution timeout.
> >
> Yes, I did think about this but I left it as is thinking it may not be
> important. Do you think that makes a difference ? I am fine to change
> if there are users that needs to handle the difference.
I can't think of a case where it would matter.  Just thought I'd mention it.

Cheers,
Jim
>
> --
> Regards,
> Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
