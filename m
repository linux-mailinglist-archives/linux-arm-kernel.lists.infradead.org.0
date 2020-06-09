Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30B91F3A79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2aoAmyOjHeAhSzFXAl1j/65F2QcvmR3SAuMn33ka/E=; b=Hgi2auWudGK4y+
	sQVL0u1UFtfRTrpfaFh9NgVt8631nBPFddS4vzuI5/PidGBe6KAZ7f8RJCRQZMbBn+/Wwiu4zlqqF
	9O1BaPwj+Cy/4IKIhHWoleHjNHB+jYAbDi7wwg4693X5DUZTyx2sMMQvkm8tVLNdRclw7Z65d4d8Z
	Kj1GH16iaywK2xhb06e1MisW+h1jMu8IXqmPzZVlDbeP1O/oh+BgCYqqCJXpS/c6u3O0O2gIOQnQo
	CQhZw9Q5kFTN7SCqHKaNFyiIx0IcHKiPE4hD8nA2o39dy9wPBSXSuJtelQnZCQJZccDwKJysi6Wqf
	uqgV1Ir4bfgMe7MhOWaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidA2-0008Bz-1n; Tue, 09 Jun 2020 12:15:22 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jid9t-0007pa-1D
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:15:14 +0000
Received: by mail-pj1-x1029.google.com with SMTP id ne5so1318164pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 05:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0dKW+Kd5iAiFQPX60Bp7aaI38nX4AF0yQ8hLDeb5gc8=;
 b=KBfezS03XZHLwY+2mBULAXoYYfvOAwPXvOpLQ4oldt9JOjJj5BCo87GEH1U634kCDU
 h9+NoNelKMT0YAbAYjhKOTqfTV+tZviVfeDEGQj6Gm3fkm5fN2JBAgMKpZ/C2Fm5T6TJ
 UIWr65WS202gyJv0e/vjq1AwykOBvPJ1XUM6aoJ9xuGBve2+KEqxmBhwS2u1RbGQEevt
 ZEZcpxXjaasTlvOrgOTujW8C+/ygguQ/kb0lqJRDnxdOkl/NGHm31IZZLhtZHYwbO/6h
 UECM4cHEaKe1I5i6V8ua8N/hBFjqvkCFZBeHWY9kaMHeFc2fqYO2A7ahjn632SC8WWeR
 ApOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0dKW+Kd5iAiFQPX60Bp7aaI38nX4AF0yQ8hLDeb5gc8=;
 b=CXy8cHci8F84yLfqO+57H4wG4hv6TOXCrIEh9DlEFIbKdw464003onf+j70e4BvXOt
 5JNSy/noM2KBqV1HRNMd53f7jpQwXIsPmsNLeFOSjscC/QthVFqG55CEutjGxTV/mWLZ
 Lfd19cpN8VN0l+dRw6wgVf92SPgPyBBTOdUgM/4uJcbfwZu6YgMd0ZjUo++a0RXDZKnw
 +5kWdh1FsHT5R5LVyn7scbvN3F68FUSi+obdQQwQQ803G9xXR/4CFI/JkVsg1U9wJWPA
 pC9ihSsnXadUpognybmVCRpSnNgNTh/xAHW9l8dyj+Vr2rJJG3FwjDGh5GsEygKTpXJ7
 DCcw==
X-Gm-Message-State: AOAM530xKee1n6Zo9UY+GrnJmU5jcTd36szkYF0ytiw0jQhQ7nA1IsQ1
 pGmVUQ92GYKs72i3cZ3yBvhiJXxy
X-Google-Smtp-Source: ABdhPJzgMu3yWE9LnAFG9gGAMC7UrErODLlG4QecO4O0nsWOWfTXYEv2cpZuEl1oLyvhscdLH5us0Q==
X-Received: by 2002:a17:902:ea92:: with SMTP id
 x18mr3046191plb.157.1591704909657; 
 Tue, 09 Jun 2020 05:15:09 -0700 (PDT)
Received: from localhost ([49.207.50.180])
 by smtp.gmail.com with ESMTPSA id k7sm7624998pfp.84.2020.06.09.05.15.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 09 Jun 2020 05:15:08 -0700 (PDT)
Date: Tue, 9 Jun 2020 17:45:06 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: vmsplit 4g/4g
Message-ID: <20200609121506.GA7846@afzalpc>
References: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514133545.GA5020@afzalpc>
 <CAK8P3a1PVwkAi8ycUAB-7EMk4nQ_qOu0rC5vJAQk_q9j5xvOJw@mail.gmail.com>
 <20200516060624.GA6371@afzalpc>
 <CAK8P3a01FYoWY9sZKU1q=UQ3ut4srwXXUeGRzW6APi+GpoKo1w@mail.gmail.com>
 <20200607125932.GA4576@afzalpc>
 <CAK8P3a2=o6RkONUoHTaR-2jpXg-wa-YnCYi0a4gAknYmvu8X7Q@mail.gmail.com>
 <20200608111834.GB5736@afzalpc>
 <CAK8P3a1q51=_DUS1A8k67c3TyQ+7LTpeo98LmzoFK=qg+8Fktw@mail.gmail.com>
 <20200608151727.GA5017@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608151727.GA5017@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_051513_100833_8781EB43 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1029 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 08, 2020 at 08:47:27PM +0530, afzal mohammed wrote:
> On Mon, Jun 08, 2020 at 04:43:57PM +0200, Arnd Bergmann wrote:

> > There is another difference: get_user_pages_fast() does not return
> > a  vm_area_struct pointer, which is where you would check the access
> > permissions. I suppose those pointers could not be returned to callers
> > that don't already hold the mmap_sem.
> 
> Ok, thanks for the details, i need to familiarize better with mm.

i was & now more confused w.r.t checking access permission using
vm_area_struct to deny write on a read only user page.

i have been using get_user_pages_fast() w/ FOLL_WRITE in copy_to_user.
Isn't that sufficient ?, afaiu, get_user_pages_fast() will ensure that
w/ FOLL_WRITE, pte has write permission, else no struct page * is
handed back to the caller.

One of the simplified path which could be relevant in the majority of
the cases that i figured out as follows,

 get_user_pages_fast
  internal_user_pages_fast
   gup_pgd_range [ no mmap_sem acquire path]
    gup_p4d_range 
     gup_pud_range
      gup_pmd_range
       gup_pte_range
		if (!pte_access_permitted(pte, flags & FOLL_WRITE))
                 [ causes to return NULL page if access violation ]

   __gup_longterm_unlocked [ mmap_sem acquire path]
    get_user_pages_unlocked
     __get_user_pages_locked
      __get_user_pages
       follow_page_mask
        follow_p4d_mask
         follow_pud_mask
          follow_pmd_mask
           follow_page_pte
	        if ((flags & FOLL_WRITE) && !can_follow_write_pte(pte, flags))
                 [ causes to return NULL page if access violation ]

As far as i could see none of the get_user_pages() caller are passing
struct vm_area_struct ** to get it populated.

And Ingo's series eons ago didn't either pass it or check permission
using it (it was passing a 'write' arguement, which i believe
corrresponds to FOLL_WRITE)

Am i missing something or wrong in the analysis ?

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
