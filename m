Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE92169AF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 00:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJgCHZSDqqMii3Jf+D/IwvFaPC8rNE5KetI+UQKwo7Y=; b=Gfc7ZXNITkW0NG
	xyJVqBi70782QhTn2WBMZltXpfHj1mCBAn8JYFxtDJsWqf692oMQ5JC4uMRe88Mn9fI4l8DjB4NkS
	wflorAubWniJKnaRVIQBgElpfK5t7EGssJ0vphOAW+dc1wQIWZPXNuTHCvJ4kCm9NDZXHJNTJp6mO
	C2wpNLU7PDWi1YDi+V8zNAR1OyFUza6AhP5soPY7E4FUFbquW+o06r5N0f//oHANf60mDGVhE//eS
	IvcCZ17YHcoCGq5VxpSnPE5ZgeZx5UmliWHuSV8lGFPXTjqm5dHhG73Zp/9n+GMptuE/wnoMQ0cFl
	+Re2Yhgv/onU5POC5y7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j60he-0006Dr-9J; Sun, 23 Feb 2020 23:30:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j60hV-0006DB-EF
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 23:30:18 +0000
Received: by mail-pf1-x444.google.com with SMTP id s1so4364786pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Feb 2020 15:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BHvuL1JKTAOYifV/CjMNtfxfmXNZrw8/BIhfR9Y1A9A=;
 b=ggVP7LgwmoN8STUuj3mWba1bX30zmHY8CmaaZqN2n8hkUiwVxT2D236tdCePXHrakm
 NWqrvN0EDjd0EWtssVj7Q4gBFU/Kw+hsM8BYTpC4HPrfm7jo0koB5Hn9ba9AIBWpbVsa
 TMGDevIFAV7aMSY7npz2JijEoOxrC0EB30XKK37QyJMdRKLenkQcfvQFnh9dJvMgPN+m
 tVhDBNkq80xeU8slJPd6VOtdBnWMXHQAThm+FTb3uAFXn/49OIjnM8molXwhHBuM4rtx
 BB0GJgitUHg7+D9005tqrB6LQq6oKEwaQQQkQXhqJ+/f6y6Gzefkjw9n9Z4D454X9bDv
 +XOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BHvuL1JKTAOYifV/CjMNtfxfmXNZrw8/BIhfR9Y1A9A=;
 b=aT+efV6H/TaQ7cYrYXbPUjmHpwi9UqSKOSNJW+TadqPao1Dg8Na5SNdOVMx06qPRUE
 9CY4oTLV1TVA5F+TJ7j2S3Z3sk1niFbXUEkqdbqsFn8oVlsCcYnvvEwiJIFpimCs2AHA
 ZMf+bRe9CY1ySEDrsaC83YVd8+2w2TqGE2ezpX/2J9fDRwgL0HAwp6XOgImP93IGW8dl
 QmNZ/SdNl22egm4ANVKkc1IZwbfFFI29BDwKuE0fdwG1jXjNyFfgO7M/RKwDLCCAk4DT
 AZMNwU922f3ILljrUCT+mlkkA2tC1m3tZ6vM1o7PFbdMfpCZCVMVrLxiqY8IjEdemQjW
 JH+Q==
X-Gm-Message-State: APjAAAVqBfwW6YLA2uAiLKndbwy/1DP/lFrtrd4lplXOqOdq8T6M14qT
 DyDk4DygBzMwUHTvVP3awqY=
X-Google-Smtp-Source: APXvYqwkvpjyGn5lU3qH+jbJ8b//vzZVj3gZxwDU6iE+AEDPoIzSjbWJzvdR3JYo8IjRWKxmWZPH6Q==
X-Received: by 2002:a63:cb52:: with SMTP id m18mr12736278pgi.291.1582500615701; 
 Sun, 23 Feb 2020 15:30:15 -0800 (PST)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id c19sm10303501pfc.144.2020.02.23.15.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 Feb 2020 15:30:14 -0800 (PST)
Date: Sun, 23 Feb 2020 15:30:13 -0800
From: Andrei Vagin <avagin@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 5/5] arm64/vdso: Restrict splitting VVAR VMA
Message-ID: <20200223233013.GB349924@gmail.com>
References: <20200204175913.74901-1-avagin@gmail.com>
 <20200204175913.74901-6-avagin@gmail.com>
 <df8fa53c-5c21-b620-0254-ffefdd3a8834@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df8fa53c-5c21-b620-0254-ffefdd3a8834@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_153017_507507_CCD20757 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 2.4 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 12:22:52PM +0000, Vincenzo Frascino wrote:
> Hi Andrei,
> 
> On 04/02/2020 17:59, Andrei Vagin wrote:
> > Forbid splitting VVAR VMA resulting in a stricter ABI and reducing the
> > amount of corner-cases to consider while working further on VDSO time
> > namespace support.
> > 
> > As the offset from timens to VVAR page is computed compile-time, the pages
> > in VVAR should stay together and not being partically mremap()'ed.
> > 
> 
> I agree on the concept, but why do we need to redefine mremap?
> special_mapping_mremap() (mm/mmap.c +3317) seems doing already the same thing if
> we leave mremap == NULL as is.
> 

Hmmm. I have read the code of special_mapping_mremap() and I don't see where
it restricts splitting the vvar mapping.

Here is the code what I see in the source:

static int special_mapping_mremap(struct vm_area_struct *new_vma)
{
        struct vm_special_mapping *sm = new_vma->vm_private_data;

        if (WARN_ON_ONCE(current->mm != new_vma->vm_mm))
                return -EFAULT;

        if (sm->mremap)
                return sm->mremap(sm, new_vma);

        return 0;
}

And I have checked that without this patch, I can remap only one page of
the vvar mapping.

Thanks,
Andrei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
