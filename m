Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE163ABCD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1EyVboBKzFN8L6LVwPiaI+KjgYoELOWN7OFxKcAaxqc=; b=ekSxs9tvrSAkDF
	w7gIDihtJnD28Ae/81yuT46XielANIbA4HQ/Ki6s/9RLnVYwUVD92QwL1b1IQK3TluoCfDuQuFpnd
	1IvJZVKNm3GRcExnclUFjc7nhYAbY4nl8UKkwwRfCJVcq98p/LwwsNtaOa9VS8F6KM7qsbWVLBrRc
	2C4CutC8BION0xgAY0ogeMPeRMGSC0MpUhcUYJ1CR+6jiMKKs0B03eG1o5t33Qxa6C2kIaqnJnrs3
	zr7YCy/tg44yq5l9MekNFYWrIYHj5xsVBUfbsbLmTDyud7oLBTxTyvaUYo2ZO39nHnm0ikW5py7Ev
	atOf9GbELCXvmluFEa6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GPZ-0007bC-Mh; Fri, 06 Sep 2019 15:44:33 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GPP-0007aY-1e
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:44:24 +0000
Received: by mail-ed1-x542.google.com with SMTP id f2so346460edw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 08:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UXzffckHlrDd2GxMkcUegpxPLxQbezYI5SKZXnOnJzk=;
 b=GOMgzAf/lkF5c2eKwXgjCw9a3KXnWR5APRE7h0mk6NdXu79AGiO8sODfHid9N6Xl5h
 M/C8KT/SLLU5H1Aqg4nwEKOuTu5OkbyrUQJTErU8uVcm673iUBJEH32XMXPStUacK9QI
 xCMSuQrJe1j8CHQBTWz9PB+Jomp1+g+QD9Tkd9KMYHmJWFzG5xyCzw8xyfNgbLXZwkrs
 5FlS9o5FS4p8okYBPzuG2ITgzJGemxFxUkm3aSbDG/x0MDmUmazIm6dOMXX9j66GMFk+
 3cLHZkaYpm/muQI+jLdcObCu1m/ydijbn1wGNoRDjuAv/Fx5CRGdTNnFLVIVNVPLSSN2
 qWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UXzffckHlrDd2GxMkcUegpxPLxQbezYI5SKZXnOnJzk=;
 b=dc6lPBBz75s1Kt5cxf7GlPaa/QYwb2nSYrY6hciWHeFntUNwwIsFJcDiF+hUWHt/DV
 VuK+q5VrrWdWCBE9QnjFcLNmxrsRElasf02gCy26psB64jJMVddbhFI/awWEPCvu1uR3
 do5rA/zfY5Gm9BUXM8Bt04k3iSVBf8OBi7D054jQi8qZ4PCr0Pt0tCkwJbySM6CUsdti
 N8jKUirmqsrAgqjeTPZUy/HPc3DIsF8k8Qb5PUD9g11UA9vUNTiCbIZyy8IN2pZck3wU
 KAn7R2zbsc08JnF6HsDwpZ1CC0sQiAt9psM6Lb1r1pNOLCtIxkfkmcqLWtXTRKGco399
 Jwug==
X-Gm-Message-State: APjAAAWSJsJOuCGJqS3p4jmE5782MmqAL12MQfARN/UEocA+rTPv7lHa
 lZpaM32vr+I3GnF0IiB2rJqs02S3r5lnMyfoTzZHhQ==
X-Google-Smtp-Source: APXvYqwplMA0AW8lXkCWQuG9K8cCsGpwcuOwcj3r1h53xYTkZkNhYGGnMNAxboAR+e2euONipoiDRfZvyN8jJZQFWsM=
X-Received: by 2002:a17:906:f04:: with SMTP id
 z4mr8127839eji.209.1567784661783; 
 Fri, 06 Sep 2019 08:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-6-pasha.tatashin@soleen.com>
 <ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com>
In-Reply-To: <ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 11:44:10 -0400
Message-ID: <CA+CK2bBXfa0MFspOpWAGL4Q7iYH9UMdKAwMD-PyL7Wp4s64x+Q@mail.gmail.com>
Subject: Re: [PATCH v3 05/17] arm64, hibernate: check pgd table allocation
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084423_084027_237B9FCC 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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
> > There is a bug in create_safe_exec_page(), when page table is allocated
> > it is not checked that table is allocated successfully:
> >
> > But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).
>
> If there is a bug, it shouldn't be fixed part way through a series. This makes it
> difficult to backport the fix.
>
> Please split this out as an independent patch with a 'Fixes:' tag for the commit that
> introduced the bug.
>
>
> > Another issue,
>
> So this patch does two things? That is rarely a good idea. Again, this makes it difficult
> to backport the fix.
>
>
> > is that phys_to_ttbr() uses an offset in page table instead
> > of pgd directly.
>
> If you were going to reuse this, that would be a bug. But because the only page that is
> being mapped, is mapped to PAGE_SIZE, all the top bits will be 0. The offset calls are
> boiler-plate. It doesn't look intentional, but its harmless.

Yes, it is harmless otherwise the code would not work. But it is
confusing to read, and looks broken. I will separate this change as
two patches as you suggested.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
