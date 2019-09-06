Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5A7ABCC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xS+xVY6TajuM/ldjoqTIcwtLDxQ3HOmSSNhQvq4T2o4=; b=b3GOuoG/I0Mlrm
	GnX+AHdyTV9iMboE4vyah4l5ycEKa2V925ns6JsUpndUFxldzG+X5TND/BQBgJ0h/XNzMKFUMRPGa
	XaKZW2hZqGCcACXja5JQ/GxIg13IJsZfmGKp1+jRfS5MOq8e5KbwQ2qalhFDED8cjzLrSPJ/N07nH
	lRv0VZXsE+EVUJgKWKTj3lp2C2GBDwAGvfYXjxcetnLNO+hpuDec8ylhE0ipZAj++bNCoNWAfzYF+
	Ps+jRqfiBAuVoZ3sFg65XZ9ml+XAv5jijK535BVPg1cammyBLRJUn3DYWKHsCz1e6AuTixwU4iyV5
	iSHRTxOi60CuLozJP3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GMc-0006Gn-G3; Fri, 06 Sep 2019 15:41:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GMN-0006F1-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:41:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id i1so6711023edv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E/TcN7fOifPGax1Jq40PHMF0EK7SlDS08IkccSojTBY=;
 b=UHpvjhj/b+3iPmUiNVdPjXOFzdSR9u8eZg6v7FAfkypqULaESyzADB/3E0G1AkEkNR
 Lp8I3t1bftgwOcuzcW2n2byutpV5BbBWkG00d6zYMuBg0Wf4juih5hnIVQ30wERZkO42
 orJl08eujiOsHl+blX6Hkfe0UnzoOC8HeNQyn2zEw6FuD2liDmdKTiQwOCOOPWUUQUrq
 i0UfvMU0TYqLIyuRgY978I+xXrDXcSjX7hTdo9RtugdRgTB6Ij+Esu3cAjKLJTX0AxAF
 M0acuyTnKUC/IW05ASrd/FZQtsdbwbSCUpPxWnd4khMHCCnwBz2K2dMpQDeoOrFxf1IL
 qPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E/TcN7fOifPGax1Jq40PHMF0EK7SlDS08IkccSojTBY=;
 b=RCFSh8D6i7t6yO2V6+XiHeXbkD+xECLQeU9oodsEDeBH66gQIoEQZa/jeJSQiOM2rX
 T4/gxt1BAmNP2k2qWPpHYuL3py/rL0SIBWaV/wOe0d3/yNvMwVv3qP6DRmro7hljhXM1
 PBC1RfUH16tAzuUi3xkj89t9XGaDdpG6NGfQzQKfgTolkC4T4h5X3MhLx9zQPC+v385Q
 ZYdH9BwxPSaoW1ole9PZEQQx/ffqLOqYq88ePSLmU9sIBk6br8rx8VtiqorfaklkED8n
 3ssVqkz21IoI0iNXfZ0UNLpjTKh9RTklNL3VXrHCW11gBvp3hgarjd5beFRJ6KeMxX7F
 fv9Q==
X-Gm-Message-State: APjAAAUAQtWkkfbaWlRoy/HobMt4mdJ7EwyiUTGKlvHXuagGcfUtPxVI
 I1ANTmi0LNuKQrsOxa7Zb8+vlQ1q8CAH+GLQoTDXXg==
X-Google-Smtp-Source: APXvYqxqjBbmqD7LIj2EqKBKAdltdsP4QbI+ZnJq02VDIJPVUgUjKlLGn6euHlVgtpT+xdsUOX7pyuDO609XO9GYCmk=
X-Received: by 2002:a17:906:bb0f:: with SMTP id
 jz15mr7785513ejb.264.1567784474126; 
 Fri, 06 Sep 2019 08:41:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-5-pasha.tatashin@soleen.com>
 <2e826560-4005-fa16-8bbb-fc0e25763dcc@arm.com>
In-Reply-To: <2e826560-4005-fa16-8bbb-fc0e25763dcc@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:41:03 -0400
Message-ID: <CA+CK2bDU9ZZbXsqfEzMV9JDRUq0vMRNHObpQ0q-YtwbEbq702w@mail.gmail.com>
Subject: Re: [PATCH v3 04/17] arm64,
 hibernate: rename dst to page in create_safe_exec_page
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084115_634840_6238AF7B 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:17 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > create_safe_exec_page() allocates a safe page and maps it at a
> > specific location, also this function returns the physical address
> > of newly allocated page.
> >
> > The destination VA, and PA are specified in arguments: dst_addr,
> > phys_dst_addr
> >
> > However, within the function it uses "dst" which has unsigned long
> > type, but is actually a pointers in the current virtual space. This
> > is confusing to read.
>
> The type? There are plenty of places in the kernel that an unsigned-long is actually a
> pointer. This isn't unusual.
>
>
> > Rename dst to more appropriate page (page that is created), and also
> > change its time to "void *"
>
> If you think its clearer,
> Reviewed-by: James Morse <james.morse@arm.com>

Thank you for your review.

Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
