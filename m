Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C05483B14
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 23:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdkssnjg3+HXbEU/DWpbkl7biGx8zJ85FhzJ0T87kGc=; b=WkAygTcV4mavjm
	iamrYIPo0HB407FHC8dHfJN/ylznXvhvwp2VGC7miQwt8gA/iypnRdqskGqhBYNEEFIY4s/MWs08l
	yg/nHA9QuaXZmCzPuU5i/UsiIzye6iLiHyjHNG5uXIr5DdeNk0gAUoKDnUFQQmnbL1CGlhMwdWSX9
	rxtodvsOl8sxlhhbwnkHxlJu3gjEc0v7a3cMc91iOKHVlnGuer1ahrJ1h3RqfdftthFqY623060DT
	IJ7N3gp41ORddi4KVVX0B1eJbmQo2FwGn203bL8grIcLmoFSwaQ+ktr+WetfBmbK/lSLHqkiC5dXI
	tEplmZpSus7OD2DhHd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv71e-0000lJ-RC; Tue, 06 Aug 2019 21:29:46 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv71P-0000jm-Nm
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 21:29:33 +0000
Received: by mail-qk1-x742.google.com with SMTP id s145so64165417qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 14:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3nDyENKB38R0uDM7hzocjvJMgcMblLNFl99d81wPXq0=;
 b=B1fQq7Olm//etuiMshyzmR6nSITrP4xNB2SwIKDtHN5C821cmc3nhuNNwgaDWMZGto
 1qYoxibjR9Z9Oigna5Oiuk2AYfsr+1BH8D00qhDVSSA1ZyZ4B/N59UUHC+FsVGq2FWHl
 CtGq2qFPjmvD53RUyCsRTToG3Z22W2bFRi1zs9A+4fJEk+NVMXUqDTKSaHZu3bYzxFxr
 D8fjEqe/NPo4IKE8KJKVG3k7PNY/7kPcZBU4/FL+gkuooHMkjb9V6OTyRPVJgE+mZpsK
 zi9/sADR3/muEXHww/dsvT39wNnXqIjhUpuDogkcSLgvusdYd9NyTzpgxtbqIIZJxq8e
 DQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3nDyENKB38R0uDM7hzocjvJMgcMblLNFl99d81wPXq0=;
 b=JGU6eqZTH4wESky8GunYTPXVEyiGgunxtEBBtrp3VX7dxxScvzxKhe0uDpl+/gEo96
 aHAESlpZwK9aKO+0/IIIQrlAHoxbY1velV9Z2PPgCZhgfFo4fUA/NJufz9w80Ha1oK0w
 rFw05driRdJle94ULYIZCdSdydWCDUJRRJDQf8uzTUbm2128jDziTsA0SpY0C6vpQDr4
 4RoW0uc063hxCZoNWhzcZfawkFFs329nxguYwjYvCw/L14SwAF1QzPLWLtSXVahTadTk
 ilE/Wdzusy97xfTqp4JqeCCrlInQfiHdCmLZrIZA+9ZagL8V8syYOS43PCbxf9sXDL6M
 +ADw==
X-Gm-Message-State: APjAAAWIDvxjyKXUbAQKTd2yNiM66ePj8ttXI75STmvljOiQC+FstNUb
 AJ6zaX8l/ZzX/x+0gutFvQoSpY+XhnZWd2JgbbIF7w==
X-Google-Smtp-Source: APXvYqwMhpodfcmFZmigtZ2ZQfdNe3smtprv7hGk7bV/GFr4e1nUIfOgE0olXMdgZCEEf2V/pzG/GSvH0OLHgF7TDz4=
X-Received: by 2002:a37:4d82:: with SMTP id a124mr5158808qkb.72.1565126967750; 
 Tue, 06 Aug 2019 14:29:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190801231046.105022-1-nhuck@google.com>
 <01222982-4206-9925-0482-639a79384451@arm.com>
 <CAJkfWY6StuyMuKG7XdEJrqMsA_Xy02QZKp8r0K2jwSZwBCt+9Q@mail.gmail.com>
 <20190805133940.GA10425@arm.com>
In-Reply-To: <20190805133940.GA10425@arm.com>
From: Nathan Huckleberry <nhuck@google.com>
Date: Tue, 6 Aug 2019 14:29:16 -0700
Message-ID: <CAJkfWY5EL+MyRzSfcfJF2H8WoX73FEO0bOrwcoR4c4ekvaWvOQ@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_142931_773632_76E7C10E 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tri Vo <trong@google.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm not sure that we should disable a broken feature instead of
attempting a fix.

CONFIG_FUNCTION_GRAPH_TRACER is dependent on CONFIG_FRAME_POINTER and
there have been reports by MediaTek that the frame pointer unwinder is
faster in some cases.

On Mon, Aug 5, 2019 at 6:39 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Fri, Aug 02, 2019 at 10:27:30AM -0700, Nathan Huckleberry wrote:
> > You're right. Would pushing an extra register be an adequate fix?
>
> Would forcing CONFIG_ARM_UNWIND=y for clang work as an alternative to
> this?
>
> Assuming clang supports -funwind-tables or equivalent, this may just
> work.
>
> [...]
>
> Cheers
> ---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
